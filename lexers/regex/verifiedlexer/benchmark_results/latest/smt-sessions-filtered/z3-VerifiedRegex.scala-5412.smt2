; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!275200 () Bool)

(assert start!275200)

(declare-fun b!2832425 () Bool)

(declare-fun b_free!81501 () Bool)

(declare-fun b_next!82205 () Bool)

(assert (=> b!2832425 (= b_free!81501 (not b_next!82205))))

(declare-fun tp!905370 () Bool)

(declare-fun b_and!207211 () Bool)

(assert (=> b!2832425 (= tp!905370 b_and!207211)))

(declare-fun b_free!81503 () Bool)

(declare-fun b_next!82207 () Bool)

(assert (=> b!2832425 (= b_free!81503 (not b_next!82207))))

(declare-fun tp!905376 () Bool)

(declare-fun b_and!207213 () Bool)

(assert (=> b!2832425 (= tp!905376 b_and!207213)))

(declare-fun b!2832429 () Bool)

(declare-fun b_free!81505 () Bool)

(declare-fun b_next!82209 () Bool)

(assert (=> b!2832429 (= b_free!81505 (not b_next!82209))))

(declare-fun tp!905375 () Bool)

(declare-fun b_and!207215 () Bool)

(assert (=> b!2832429 (= tp!905375 b_and!207215)))

(declare-fun b_free!81507 () Bool)

(declare-fun b_next!82211 () Bool)

(assert (=> b!2832429 (= b_free!81507 (not b_next!82211))))

(declare-fun tp!905374 () Bool)

(declare-fun b_and!207217 () Bool)

(assert (=> b!2832429 (= tp!905374 b_and!207217)))

(declare-fun b!2832423 () Bool)

(declare-fun res!1179049 () Bool)

(declare-fun e!1793372 () Bool)

(assert (=> b!2832423 (=> (not res!1179049) (not e!1793372))))

(declare-datatypes ((LexerInterface!4600 0))(
  ( (LexerInterfaceExt!4597 (__x!22218 Int)) (Lexer!4598) )
))
(declare-fun thiss!11007 () LexerInterface!4600)

(declare-datatypes ((List!33531 0))(
  ( (Nil!33407) (Cons!33407 (h!38827 (_ BitVec 16)) (t!231528 List!33531)) )
))
(declare-datatypes ((TokenValue!5240 0))(
  ( (FloatLiteralValue!10480 (text!37125 List!33531)) (TokenValueExt!5239 (__x!22219 Int)) (Broken!26200 (value!161128 List!33531)) (Object!5363) (End!5240) (Def!5240) (Underscore!5240) (Match!5240) (Else!5240) (Error!5240) (Case!5240) (If!5240) (Extends!5240) (Abstract!5240) (Class!5240) (Val!5240) (DelimiterValue!10480 (del!5300 List!33531)) (KeywordValue!5246 (value!161129 List!33531)) (CommentValue!10480 (value!161130 List!33531)) (WhitespaceValue!10480 (value!161131 List!33531)) (IndentationValue!5240 (value!161132 List!33531)) (String!36721) (Int32!5240) (Broken!26201 (value!161133 List!33531)) (Boolean!5241) (Unit!47386) (OperatorValue!5243 (op!5300 List!33531)) (IdentifierValue!10480 (value!161134 List!33531)) (IdentifierValue!10481 (value!161135 List!33531)) (WhitespaceValue!10481 (value!161136 List!33531)) (True!10480) (False!10480) (Broken!26202 (value!161137 List!33531)) (Broken!26203 (value!161138 List!33531)) (True!10481) (RightBrace!5240) (RightBracket!5240) (Colon!5240) (Null!5240) (Comma!5240) (LeftBracket!5240) (False!10481) (LeftBrace!5240) (ImaginaryLiteralValue!5240 (text!37126 List!33531)) (StringLiteralValue!15720 (value!161139 List!33531)) (EOFValue!5240 (value!161140 List!33531)) (IdentValue!5240 (value!161141 List!33531)) (DelimiterValue!10481 (value!161142 List!33531)) (DedentValue!5240 (value!161143 List!33531)) (NewLineValue!5240 (value!161144 List!33531)) (IntegerValue!15720 (value!161145 (_ BitVec 32)) (text!37127 List!33531)) (IntegerValue!15721 (value!161146 Int) (text!37128 List!33531)) (Times!5240) (Or!5240) (Equal!5240) (Minus!5240) (Broken!26204 (value!161147 List!33531)) (And!5240) (Div!5240) (LessEqual!5240) (Mod!5240) (Concat!13641) (Not!5240) (Plus!5240) (SpaceValue!5240 (value!161148 List!33531)) (IntegerValue!15722 (value!161149 Int) (text!37129 List!33531)) (StringLiteralValue!15721 (text!37130 List!33531)) (FloatLiteralValue!10481 (text!37131 List!33531)) (BytesLiteralValue!5240 (value!161150 List!33531)) (CommentValue!10481 (value!161151 List!33531)) (StringLiteralValue!15722 (value!161152 List!33531)) (ErrorTokenValue!5240 (msg!5301 List!33531)) )
))
(declare-datatypes ((C!16984 0))(
  ( (C!16985 (val!10504 Int)) )
))
(declare-datatypes ((Regex!8401 0))(
  ( (ElementMatch!8401 (c!457973 C!16984)) (Concat!13642 (regOne!17314 Regex!8401) (regTwo!17314 Regex!8401)) (EmptyExpr!8401) (Star!8401 (reg!8730 Regex!8401)) (EmptyLang!8401) (Union!8401 (regOne!17315 Regex!8401) (regTwo!17315 Regex!8401)) )
))
(declare-datatypes ((String!36722 0))(
  ( (String!36723 (value!161153 String)) )
))
(declare-datatypes ((List!33532 0))(
  ( (Nil!33408) (Cons!33408 (h!38828 C!16984) (t!231529 List!33532)) )
))
(declare-datatypes ((IArray!20755 0))(
  ( (IArray!20756 (innerList!10435 List!33532)) )
))
(declare-datatypes ((Conc!10375 0))(
  ( (Node!10375 (left!25207 Conc!10375) (right!25537 Conc!10375) (csize!20980 Int) (cheight!10586 Int)) (Leaf!15788 (xs!13487 IArray!20755) (csize!20981 Int)) (Empty!10375) )
))
(declare-datatypes ((BalanceConc!20388 0))(
  ( (BalanceConc!20389 (c!457974 Conc!10375)) )
))
(declare-datatypes ((TokenValueInjection!9908 0))(
  ( (TokenValueInjection!9909 (toValue!7040 Int) (toChars!6899 Int)) )
))
(declare-datatypes ((Rule!9820 0))(
  ( (Rule!9821 (regex!5010 Regex!8401) (tag!5514 String!36722) (isSeparator!5010 Bool) (transformation!5010 TokenValueInjection!9908)) )
))
(declare-datatypes ((List!33533 0))(
  ( (Nil!33409) (Cons!33409 (h!38829 Rule!9820) (t!231530 List!33533)) )
))
(declare-fun rules!1047 () List!33533)

(declare-fun rulesInvariant!4016 (LexerInterface!4600 List!33533) Bool)

(assert (=> b!2832423 (= res!1179049 (rulesInvariant!4016 thiss!11007 rules!1047))))

(declare-fun b!2832424 () Bool)

(declare-fun res!1179048 () Bool)

(assert (=> b!2832424 (=> (not res!1179048) (not e!1793372))))

(declare-datatypes ((Token!9422 0))(
  ( (Token!9423 (value!161154 TokenValue!5240) (rule!7438 Rule!9820) (size!25998 Int) (originalCharacters!5742 List!33532)) )
))
(declare-datatypes ((List!33534 0))(
  ( (Nil!33410) (Cons!33410 (h!38830 Token!9422) (t!231531 List!33534)) )
))
(declare-fun l!4019 () List!33534)

(declare-datatypes ((IArray!20757 0))(
  ( (IArray!20758 (innerList!10436 List!33534)) )
))
(declare-datatypes ((Conc!10376 0))(
  ( (Node!10376 (left!25208 Conc!10376) (right!25538 Conc!10376) (csize!20982 Int) (cheight!10587 Int)) (Leaf!15789 (xs!13488 IArray!20757) (csize!20983 Int)) (Empty!10376) )
))
(declare-datatypes ((BalanceConc!20390 0))(
  ( (BalanceConc!20391 (c!457975 Conc!10376)) )
))
(declare-fun rulesProduceEachTokenIndividually!1116 (LexerInterface!4600 List!33533 BalanceConc!20390) Bool)

(declare-fun seqFromList!3256 (List!33534) BalanceConc!20390)

(assert (=> b!2832424 (= res!1179048 (rulesProduceEachTokenIndividually!1116 thiss!11007 rules!1047 (seqFromList!3256 l!4019)))))

(declare-fun e!1793367 () Bool)

(assert (=> b!2832425 (= e!1793367 (and tp!905370 tp!905376))))

(declare-fun tp!905372 () Bool)

(declare-fun b!2832426 () Bool)

(declare-fun e!1793363 () Bool)

(declare-fun inv!45361 (String!36722) Bool)

(declare-fun inv!45364 (TokenValueInjection!9908) Bool)

(assert (=> b!2832426 (= e!1793363 (and tp!905372 (inv!45361 (tag!5514 (rule!7438 (h!38830 l!4019)))) (inv!45364 (transformation!5010 (rule!7438 (h!38830 l!4019)))) e!1793367))))

(declare-fun b!2832427 () Bool)

(declare-fun e!1793364 () Bool)

(declare-fun e!1793373 () Bool)

(declare-fun tp!905377 () Bool)

(assert (=> b!2832427 (= e!1793364 (and tp!905377 (inv!45361 (tag!5514 (h!38829 rules!1047))) (inv!45364 (transformation!5010 (h!38829 rules!1047))) e!1793373))))

(declare-fun b!2832428 () Bool)

(declare-fun e!1793374 () Bool)

(declare-fun tp!905373 () Bool)

(assert (=> b!2832428 (= e!1793374 (and e!1793364 tp!905373))))

(assert (=> b!2832429 (= e!1793373 (and tp!905375 tp!905374))))

(declare-fun b!2832430 () Bool)

(declare-fun e!1793368 () Bool)

(declare-fun tp!905378 () Bool)

(declare-fun inv!21 (TokenValue!5240) Bool)

(assert (=> b!2832430 (= e!1793368 (and (inv!21 (value!161154 (h!38830 l!4019))) e!1793363 tp!905378))))

(declare-fun b!2832431 () Bool)

(declare-fun res!1179047 () Bool)

(assert (=> b!2832431 (=> (not res!1179047) (not e!1793372))))

(get-info :version)

(assert (=> b!2832431 (= res!1179047 (and ((_ is Cons!33410) l!4019) ((_ is Cons!33410) (t!231531 l!4019))))))

(declare-fun b!2832432 () Bool)

(declare-fun e!1793366 () Bool)

(assert (=> b!2832432 (= e!1793372 (not e!1793366))))

(declare-fun res!1179052 () Bool)

(assert (=> b!2832432 (=> res!1179052 e!1793366)))

(declare-fun separableTokensPredicate!919 (LexerInterface!4600 Token!9422 Token!9422 List!33533) Bool)

(assert (=> b!2832432 (= res!1179052 (not (separableTokensPredicate!919 thiss!11007 (h!38830 l!4019) (h!38830 (t!231531 l!4019)) rules!1047)))))

(declare-fun e!1793365 () Bool)

(assert (=> b!2832432 e!1793365))

(declare-fun res!1179055 () Bool)

(assert (=> b!2832432 (=> (not res!1179055) (not e!1793365))))

(declare-fun rulesProduceIndividualToken!2132 (LexerInterface!4600 List!33533 Token!9422) Bool)

(assert (=> b!2832432 (= res!1179055 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (t!231531 l!4019))))))

(declare-datatypes ((Unit!47387 0))(
  ( (Unit!47388) )
))
(declare-fun lt!1010365 () Unit!47387)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!750 (LexerInterface!4600 List!33533 List!33534 Token!9422) Unit!47387)

(assert (=> b!2832432 (= lt!1010365 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!750 thiss!11007 rules!1047 l!4019 (h!38830 (t!231531 l!4019))))))

(assert (=> b!2832432 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 l!4019))))

(declare-fun lt!1010364 () Unit!47387)

(assert (=> b!2832432 (= lt!1010364 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!750 thiss!11007 rules!1047 l!4019 (h!38830 l!4019)))))

(declare-fun res!1179050 () Bool)

(assert (=> start!275200 (=> (not res!1179050) (not e!1793372))))

(assert (=> start!275200 (= res!1179050 ((_ is Lexer!4598) thiss!11007))))

(assert (=> start!275200 e!1793372))

(assert (=> start!275200 true))

(assert (=> start!275200 e!1793374))

(declare-fun e!1793375 () Bool)

(assert (=> start!275200 e!1793375))

(declare-fun tp!905371 () Bool)

(declare-fun b!2832433 () Bool)

(declare-fun inv!45365 (Token!9422) Bool)

(assert (=> b!2832433 (= e!1793375 (and (inv!45365 (h!38830 l!4019)) e!1793368 tp!905371))))

(declare-fun b!2832434 () Bool)

(declare-fun res!1179054 () Bool)

(assert (=> b!2832434 (=> (not res!1179054) (not e!1793372))))

(declare-fun isEmpty!18419 (List!33533) Bool)

(assert (=> b!2832434 (= res!1179054 (not (isEmpty!18419 rules!1047)))))

(declare-fun b!2832435 () Bool)

(declare-fun size!25999 (BalanceConc!20388) Int)

(declare-fun charsOf!3106 (Token!9422) BalanceConc!20388)

(assert (=> b!2832435 (= e!1793365 (> (size!25999 (charsOf!3106 (h!38830 (t!231531 l!4019)))) 0))))

(declare-fun b!2832436 () Bool)

(declare-fun res!1179053 () Bool)

(assert (=> b!2832436 (=> (not res!1179053) (not e!1793372))))

(declare-fun rulesProduceEachTokenIndividuallyList!1643 (LexerInterface!4600 List!33533 List!33534) Bool)

(assert (=> b!2832436 (= res!1179053 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2832437 () Bool)

(declare-fun res!1179051 () Bool)

(assert (=> b!2832437 (=> res!1179051 e!1793366)))

(assert (=> b!2832437 (= res!1179051 (not (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 l!4019))))))

(declare-fun b!2832438 () Bool)

(assert (=> b!2832438 (= e!1793366 (rulesProduceEachTokenIndividually!1116 thiss!11007 rules!1047 (seqFromList!3256 (t!231531 l!4019))))))

(assert (= (and start!275200 res!1179050) b!2832434))

(assert (= (and b!2832434 res!1179054) b!2832423))

(assert (= (and b!2832423 res!1179049) b!2832436))

(assert (= (and b!2832436 res!1179053) b!2832424))

(assert (= (and b!2832424 res!1179048) b!2832431))

(assert (= (and b!2832431 res!1179047) b!2832432))

(assert (= (and b!2832432 res!1179055) b!2832435))

(assert (= (and b!2832432 (not res!1179052)) b!2832437))

(assert (= (and b!2832437 (not res!1179051)) b!2832438))

(assert (= b!2832427 b!2832429))

(assert (= b!2832428 b!2832427))

(assert (= (and start!275200 ((_ is Cons!33409) rules!1047)) b!2832428))

(assert (= b!2832426 b!2832425))

(assert (= b!2832430 b!2832426))

(assert (= b!2832433 b!2832430))

(assert (= (and start!275200 ((_ is Cons!33410) l!4019)) b!2832433))

(declare-fun m!3262033 () Bool)

(assert (=> b!2832438 m!3262033))

(assert (=> b!2832438 m!3262033))

(declare-fun m!3262035 () Bool)

(assert (=> b!2832438 m!3262035))

(declare-fun m!3262037 () Bool)

(assert (=> b!2832423 m!3262037))

(declare-fun m!3262039 () Bool)

(assert (=> b!2832432 m!3262039))

(declare-fun m!3262041 () Bool)

(assert (=> b!2832432 m!3262041))

(declare-fun m!3262043 () Bool)

(assert (=> b!2832432 m!3262043))

(declare-fun m!3262045 () Bool)

(assert (=> b!2832432 m!3262045))

(declare-fun m!3262047 () Bool)

(assert (=> b!2832432 m!3262047))

(declare-fun m!3262049 () Bool)

(assert (=> b!2832437 m!3262049))

(declare-fun m!3262051 () Bool)

(assert (=> b!2832433 m!3262051))

(declare-fun m!3262053 () Bool)

(assert (=> b!2832436 m!3262053))

(declare-fun m!3262055 () Bool)

(assert (=> b!2832430 m!3262055))

(declare-fun m!3262057 () Bool)

(assert (=> b!2832426 m!3262057))

(declare-fun m!3262059 () Bool)

(assert (=> b!2832426 m!3262059))

(declare-fun m!3262061 () Bool)

(assert (=> b!2832427 m!3262061))

(declare-fun m!3262063 () Bool)

(assert (=> b!2832427 m!3262063))

(declare-fun m!3262065 () Bool)

(assert (=> b!2832434 m!3262065))

(declare-fun m!3262067 () Bool)

(assert (=> b!2832435 m!3262067))

(assert (=> b!2832435 m!3262067))

(declare-fun m!3262069 () Bool)

(assert (=> b!2832435 m!3262069))

(declare-fun m!3262071 () Bool)

(assert (=> b!2832424 m!3262071))

(assert (=> b!2832424 m!3262071))

(declare-fun m!3262073 () Bool)

(assert (=> b!2832424 m!3262073))

(check-sat b_and!207211 (not b!2832438) (not b_next!82209) (not b!2832436) (not b_next!82211) (not b!2832426) (not b_next!82205) (not b!2832428) (not b!2832432) b_and!207217 (not b!2832437) (not b!2832430) (not b!2832435) (not b!2832423) (not b!2832433) b_and!207215 (not b!2832434) (not b!2832424) (not b!2832427) (not b_next!82207) b_and!207213)
(check-sat b_and!207211 (not b_next!82209) (not b_next!82211) (not b_next!82205) b_and!207215 b_and!207217 (not b_next!82207) b_and!207213)
(get-model)

(declare-fun b!2832467 () Bool)

(declare-fun e!1793395 () Bool)

(declare-fun inv!15 (TokenValue!5240) Bool)

(assert (=> b!2832467 (= e!1793395 (inv!15 (value!161154 (h!38830 l!4019))))))

(declare-fun b!2832468 () Bool)

(declare-fun e!1793396 () Bool)

(declare-fun e!1793394 () Bool)

(assert (=> b!2832468 (= e!1793396 e!1793394)))

(declare-fun c!457986 () Bool)

(assert (=> b!2832468 (= c!457986 ((_ is IntegerValue!15721) (value!161154 (h!38830 l!4019))))))

(declare-fun b!2832469 () Bool)

(declare-fun inv!17 (TokenValue!5240) Bool)

(assert (=> b!2832469 (= e!1793394 (inv!17 (value!161154 (h!38830 l!4019))))))

(declare-fun d!821725 () Bool)

(declare-fun c!457987 () Bool)

(assert (=> d!821725 (= c!457987 ((_ is IntegerValue!15720) (value!161154 (h!38830 l!4019))))))

(assert (=> d!821725 (= (inv!21 (value!161154 (h!38830 l!4019))) e!1793396)))

(declare-fun b!2832470 () Bool)

(declare-fun inv!16 (TokenValue!5240) Bool)

(assert (=> b!2832470 (= e!1793396 (inv!16 (value!161154 (h!38830 l!4019))))))

(declare-fun b!2832471 () Bool)

(declare-fun res!1179071 () Bool)

(assert (=> b!2832471 (=> res!1179071 e!1793395)))

(assert (=> b!2832471 (= res!1179071 (not ((_ is IntegerValue!15722) (value!161154 (h!38830 l!4019)))))))

(assert (=> b!2832471 (= e!1793394 e!1793395)))

(assert (= (and d!821725 c!457987) b!2832470))

(assert (= (and d!821725 (not c!457987)) b!2832468))

(assert (= (and b!2832468 c!457986) b!2832469))

(assert (= (and b!2832468 (not c!457986)) b!2832471))

(assert (= (and b!2832471 (not res!1179071)) b!2832467))

(declare-fun m!3262085 () Bool)

(assert (=> b!2832467 m!3262085))

(declare-fun m!3262087 () Bool)

(assert (=> b!2832469 m!3262087))

(declare-fun m!3262089 () Bool)

(assert (=> b!2832470 m!3262089))

(assert (=> b!2832430 d!821725))

(declare-fun d!821727 () Bool)

(declare-fun prefixMatchZipperSequence!740 (Regex!8401 BalanceConc!20388) Bool)

(declare-fun rulesRegex!998 (LexerInterface!4600 List!33533) Regex!8401)

(declare-fun ++!8102 (BalanceConc!20388 BalanceConc!20388) BalanceConc!20388)

(declare-fun singletonSeq!2168 (C!16984) BalanceConc!20388)

(declare-fun apply!7800 (BalanceConc!20388 Int) C!16984)

(assert (=> d!821727 (= (separableTokensPredicate!919 thiss!11007 (h!38830 l!4019) (h!38830 (t!231531 l!4019)) rules!1047) (not (prefixMatchZipperSequence!740 (rulesRegex!998 thiss!11007 rules!1047) (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))))))

(declare-fun bs!518360 () Bool)

(assert (= bs!518360 d!821727))

(declare-fun m!3262091 () Bool)

(assert (=> bs!518360 m!3262091))

(declare-fun m!3262093 () Bool)

(assert (=> bs!518360 m!3262093))

(declare-fun m!3262095 () Bool)

(assert (=> bs!518360 m!3262095))

(assert (=> bs!518360 m!3262091))

(assert (=> bs!518360 m!3262067))

(declare-fun m!3262097 () Bool)

(assert (=> bs!518360 m!3262097))

(assert (=> bs!518360 m!3262067))

(declare-fun m!3262099 () Bool)

(assert (=> bs!518360 m!3262099))

(assert (=> bs!518360 m!3262099))

(declare-fun m!3262101 () Bool)

(assert (=> bs!518360 m!3262101))

(assert (=> bs!518360 m!3262093))

(assert (=> bs!518360 m!3262097))

(assert (=> bs!518360 m!3262101))

(assert (=> b!2832432 d!821727))

(declare-fun d!821729 () Bool)

(assert (=> d!821729 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (t!231531 l!4019)))))

(declare-fun lt!1010370 () Unit!47387)

(declare-fun choose!16724 (LexerInterface!4600 List!33533 List!33534 Token!9422) Unit!47387)

(assert (=> d!821729 (= lt!1010370 (choose!16724 thiss!11007 rules!1047 l!4019 (h!38830 (t!231531 l!4019))))))

(assert (=> d!821729 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821729 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!750 thiss!11007 rules!1047 l!4019 (h!38830 (t!231531 l!4019))) lt!1010370)))

(declare-fun bs!518361 () Bool)

(assert (= bs!518361 d!821729))

(assert (=> bs!518361 m!3262047))

(declare-fun m!3262103 () Bool)

(assert (=> bs!518361 m!3262103))

(assert (=> bs!518361 m!3262065))

(assert (=> b!2832432 d!821729))

(declare-fun d!821731 () Bool)

(declare-fun lt!1010377 () Bool)

(declare-fun e!1793413 () Bool)

(assert (=> d!821731 (= lt!1010377 e!1793413)))

(declare-fun res!1179081 () Bool)

(assert (=> d!821731 (=> (not res!1179081) (not e!1793413))))

(declare-fun list!12484 (BalanceConc!20390) List!33534)

(declare-datatypes ((tuple2!33520 0))(
  ( (tuple2!33521 (_1!19872 BalanceConc!20390) (_2!19872 BalanceConc!20388)) )
))
(declare-fun lex!2018 (LexerInterface!4600 List!33533 BalanceConc!20388) tuple2!33520)

(declare-fun print!1737 (LexerInterface!4600 BalanceConc!20390) BalanceConc!20388)

(declare-fun singletonSeq!2169 (Token!9422) BalanceConc!20390)

(assert (=> d!821731 (= res!1179081 (= (list!12484 (_1!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)))))) (list!12484 (singletonSeq!2169 (h!38830 l!4019)))))))

(declare-fun e!1793414 () Bool)

(assert (=> d!821731 (= lt!1010377 e!1793414)))

(declare-fun res!1179083 () Bool)

(assert (=> d!821731 (=> (not res!1179083) (not e!1793414))))

(declare-fun lt!1010376 () tuple2!33520)

(declare-fun size!26003 (BalanceConc!20390) Int)

(assert (=> d!821731 (= res!1179083 (= (size!26003 (_1!19872 lt!1010376)) 1))))

(assert (=> d!821731 (= lt!1010376 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)))))))

(assert (=> d!821731 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821731 (= (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 l!4019)) lt!1010377)))

(declare-fun b!2832494 () Bool)

(declare-fun res!1179082 () Bool)

(assert (=> b!2832494 (=> (not res!1179082) (not e!1793414))))

(declare-fun apply!7801 (BalanceConc!20390 Int) Token!9422)

(assert (=> b!2832494 (= res!1179082 (= (apply!7801 (_1!19872 lt!1010376) 0) (h!38830 l!4019)))))

(declare-fun b!2832495 () Bool)

(declare-fun isEmpty!18422 (BalanceConc!20388) Bool)

(assert (=> b!2832495 (= e!1793414 (isEmpty!18422 (_2!19872 lt!1010376)))))

(declare-fun b!2832496 () Bool)

(assert (=> b!2832496 (= e!1793413 (isEmpty!18422 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)))))))))

(assert (= (and d!821731 res!1179083) b!2832494))

(assert (= (and b!2832494 res!1179082) b!2832495))

(assert (= (and d!821731 res!1179081) b!2832496))

(assert (=> d!821731 m!3262065))

(declare-fun m!3262127 () Bool)

(assert (=> d!821731 m!3262127))

(assert (=> d!821731 m!3262127))

(declare-fun m!3262129 () Bool)

(assert (=> d!821731 m!3262129))

(assert (=> d!821731 m!3262127))

(declare-fun m!3262131 () Bool)

(assert (=> d!821731 m!3262131))

(declare-fun m!3262133 () Bool)

(assert (=> d!821731 m!3262133))

(assert (=> d!821731 m!3262129))

(declare-fun m!3262135 () Bool)

(assert (=> d!821731 m!3262135))

(declare-fun m!3262137 () Bool)

(assert (=> d!821731 m!3262137))

(declare-fun m!3262139 () Bool)

(assert (=> b!2832494 m!3262139))

(declare-fun m!3262141 () Bool)

(assert (=> b!2832495 m!3262141))

(assert (=> b!2832496 m!3262127))

(assert (=> b!2832496 m!3262127))

(assert (=> b!2832496 m!3262129))

(assert (=> b!2832496 m!3262129))

(assert (=> b!2832496 m!3262135))

(declare-fun m!3262143 () Bool)

(assert (=> b!2832496 m!3262143))

(assert (=> b!2832432 d!821731))

(declare-fun d!821739 () Bool)

(assert (=> d!821739 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 l!4019))))

(declare-fun lt!1010378 () Unit!47387)

(assert (=> d!821739 (= lt!1010378 (choose!16724 thiss!11007 rules!1047 l!4019 (h!38830 l!4019)))))

(assert (=> d!821739 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821739 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!750 thiss!11007 rules!1047 l!4019 (h!38830 l!4019)) lt!1010378)))

(declare-fun bs!518364 () Bool)

(assert (= bs!518364 d!821739))

(assert (=> bs!518364 m!3262045))

(declare-fun m!3262145 () Bool)

(assert (=> bs!518364 m!3262145))

(assert (=> bs!518364 m!3262065))

(assert (=> b!2832432 d!821739))

(declare-fun d!821741 () Bool)

(declare-fun lt!1010380 () Bool)

(declare-fun e!1793415 () Bool)

(assert (=> d!821741 (= lt!1010380 e!1793415)))

(declare-fun res!1179084 () Bool)

(assert (=> d!821741 (=> (not res!1179084) (not e!1793415))))

(assert (=> d!821741 (= res!1179084 (= (list!12484 (_1!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))) (list!12484 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))))

(declare-fun e!1793416 () Bool)

(assert (=> d!821741 (= lt!1010380 e!1793416)))

(declare-fun res!1179086 () Bool)

(assert (=> d!821741 (=> (not res!1179086) (not e!1793416))))

(declare-fun lt!1010379 () tuple2!33520)

(assert (=> d!821741 (= res!1179086 (= (size!26003 (_1!19872 lt!1010379)) 1))))

(assert (=> d!821741 (= lt!1010379 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))))

(assert (=> d!821741 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821741 (= (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (t!231531 l!4019))) lt!1010380)))

(declare-fun b!2832497 () Bool)

(declare-fun res!1179085 () Bool)

(assert (=> b!2832497 (=> (not res!1179085) (not e!1793416))))

(assert (=> b!2832497 (= res!1179085 (= (apply!7801 (_1!19872 lt!1010379) 0) (h!38830 (t!231531 l!4019))))))

(declare-fun b!2832498 () Bool)

(assert (=> b!2832498 (= e!1793416 (isEmpty!18422 (_2!19872 lt!1010379)))))

(declare-fun b!2832499 () Bool)

(assert (=> b!2832499 (= e!1793415 (isEmpty!18422 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))))))

(assert (= (and d!821741 res!1179086) b!2832497))

(assert (= (and b!2832497 res!1179085) b!2832498))

(assert (= (and d!821741 res!1179084) b!2832499))

(assert (=> d!821741 m!3262065))

(declare-fun m!3262147 () Bool)

(assert (=> d!821741 m!3262147))

(assert (=> d!821741 m!3262147))

(declare-fun m!3262149 () Bool)

(assert (=> d!821741 m!3262149))

(assert (=> d!821741 m!3262147))

(declare-fun m!3262151 () Bool)

(assert (=> d!821741 m!3262151))

(declare-fun m!3262153 () Bool)

(assert (=> d!821741 m!3262153))

(assert (=> d!821741 m!3262149))

(declare-fun m!3262155 () Bool)

(assert (=> d!821741 m!3262155))

(declare-fun m!3262157 () Bool)

(assert (=> d!821741 m!3262157))

(declare-fun m!3262159 () Bool)

(assert (=> b!2832497 m!3262159))

(declare-fun m!3262161 () Bool)

(assert (=> b!2832498 m!3262161))

(assert (=> b!2832499 m!3262147))

(assert (=> b!2832499 m!3262147))

(assert (=> b!2832499 m!3262149))

(assert (=> b!2832499 m!3262149))

(assert (=> b!2832499 m!3262155))

(declare-fun m!3262163 () Bool)

(assert (=> b!2832499 m!3262163))

(assert (=> b!2832432 d!821741))

(declare-fun b!2832607 () Bool)

(declare-fun e!1793502 () Bool)

(assert (=> b!2832607 (= e!1793502 true)))

(declare-fun b!2832606 () Bool)

(declare-fun e!1793501 () Bool)

(assert (=> b!2832606 (= e!1793501 e!1793502)))

(declare-fun b!2832605 () Bool)

(declare-fun e!1793500 () Bool)

(assert (=> b!2832605 (= e!1793500 e!1793501)))

(declare-fun d!821743 () Bool)

(assert (=> d!821743 e!1793500))

(assert (= b!2832606 b!2832607))

(assert (= b!2832605 b!2832606))

(assert (= (and d!821743 ((_ is Cons!33409) rules!1047)) b!2832605))

(declare-fun order!17805 () Int)

(declare-fun lambda!103986 () Int)

(declare-fun order!17803 () Int)

(declare-fun dynLambda!14028 (Int Int) Int)

(declare-fun dynLambda!14029 (Int Int) Int)

(assert (=> b!2832607 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103986))))

(declare-fun order!17807 () Int)

(declare-fun dynLambda!14030 (Int Int) Int)

(assert (=> b!2832607 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103986))))

(assert (=> d!821743 true))

(declare-fun e!1793493 () Bool)

(assert (=> d!821743 e!1793493))

(declare-fun res!1179120 () Bool)

(assert (=> d!821743 (=> (not res!1179120) (not e!1793493))))

(declare-fun lt!1010406 () Bool)

(declare-fun forall!6863 (List!33534 Int) Bool)

(assert (=> d!821743 (= res!1179120 (= lt!1010406 (forall!6863 (list!12484 (seqFromList!3256 l!4019)) lambda!103986)))))

(declare-fun forall!6864 (BalanceConc!20390 Int) Bool)

(assert (=> d!821743 (= lt!1010406 (forall!6864 (seqFromList!3256 l!4019) lambda!103986))))

(assert (=> d!821743 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821743 (= (rulesProduceEachTokenIndividually!1116 thiss!11007 rules!1047 (seqFromList!3256 l!4019)) lt!1010406)))

(declare-fun b!2832596 () Bool)

(assert (=> b!2832596 (= e!1793493 (= lt!1010406 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (list!12484 (seqFromList!3256 l!4019)))))))

(assert (= (and d!821743 res!1179120) b!2832596))

(assert (=> d!821743 m!3262071))

(declare-fun m!3262267 () Bool)

(assert (=> d!821743 m!3262267))

(assert (=> d!821743 m!3262267))

(declare-fun m!3262269 () Bool)

(assert (=> d!821743 m!3262269))

(assert (=> d!821743 m!3262071))

(declare-fun m!3262271 () Bool)

(assert (=> d!821743 m!3262271))

(assert (=> d!821743 m!3262065))

(assert (=> b!2832596 m!3262071))

(assert (=> b!2832596 m!3262267))

(assert (=> b!2832596 m!3262267))

(declare-fun m!3262273 () Bool)

(assert (=> b!2832596 m!3262273))

(assert (=> b!2832424 d!821743))

(declare-fun d!821775 () Bool)

(declare-fun fromListB!1473 (List!33534) BalanceConc!20390)

(assert (=> d!821775 (= (seqFromList!3256 l!4019) (fromListB!1473 l!4019))))

(declare-fun bs!518375 () Bool)

(assert (= bs!518375 d!821775))

(declare-fun m!3262275 () Bool)

(assert (=> bs!518375 m!3262275))

(assert (=> b!2832424 d!821775))

(declare-fun d!821777 () Bool)

(declare-fun lt!1010409 () Int)

(declare-fun size!26004 (List!33532) Int)

(declare-fun list!12485 (BalanceConc!20388) List!33532)

(assert (=> d!821777 (= lt!1010409 (size!26004 (list!12485 (charsOf!3106 (h!38830 (t!231531 l!4019))))))))

(declare-fun size!26005 (Conc!10375) Int)

(assert (=> d!821777 (= lt!1010409 (size!26005 (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019))))))))

(assert (=> d!821777 (= (size!25999 (charsOf!3106 (h!38830 (t!231531 l!4019)))) lt!1010409)))

(declare-fun bs!518376 () Bool)

(assert (= bs!518376 d!821777))

(assert (=> bs!518376 m!3262067))

(declare-fun m!3262277 () Bool)

(assert (=> bs!518376 m!3262277))

(assert (=> bs!518376 m!3262277))

(declare-fun m!3262279 () Bool)

(assert (=> bs!518376 m!3262279))

(declare-fun m!3262281 () Bool)

(assert (=> bs!518376 m!3262281))

(assert (=> b!2832435 d!821777))

(declare-fun d!821779 () Bool)

(declare-fun lt!1010412 () BalanceConc!20388)

(assert (=> d!821779 (= (list!12485 lt!1010412) (originalCharacters!5742 (h!38830 (t!231531 l!4019))))))

(declare-fun dynLambda!14031 (Int TokenValue!5240) BalanceConc!20388)

(assert (=> d!821779 (= lt!1010412 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))))

(assert (=> d!821779 (= (charsOf!3106 (h!38830 (t!231531 l!4019))) lt!1010412)))

(declare-fun b_lambda!85063 () Bool)

(assert (=> (not b_lambda!85063) (not d!821779)))

(declare-fun t!231564 () Bool)

(declare-fun tb!154277 () Bool)

(assert (=> (and b!2832425 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) t!231564) tb!154277))

(declare-fun b!2832614 () Bool)

(declare-fun e!1793505 () Bool)

(declare-fun tp!905435 () Bool)

(declare-fun inv!45368 (Conc!10375) Bool)

(assert (=> b!2832614 (= e!1793505 (and (inv!45368 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))) tp!905435))))

(declare-fun result!192340 () Bool)

(declare-fun inv!45369 (BalanceConc!20388) Bool)

(assert (=> tb!154277 (= result!192340 (and (inv!45369 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))) e!1793505))))

(assert (= tb!154277 b!2832614))

(declare-fun m!3262283 () Bool)

(assert (=> b!2832614 m!3262283))

(declare-fun m!3262285 () Bool)

(assert (=> tb!154277 m!3262285))

(assert (=> d!821779 t!231564))

(declare-fun b_and!207235 () Bool)

(assert (= b_and!207213 (and (=> t!231564 result!192340) b_and!207235)))

(declare-fun t!231566 () Bool)

(declare-fun tb!154279 () Bool)

(assert (=> (and b!2832429 (= (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) t!231566) tb!154279))

(declare-fun result!192344 () Bool)

(assert (= result!192344 result!192340))

(assert (=> d!821779 t!231566))

(declare-fun b_and!207237 () Bool)

(assert (= b_and!207217 (and (=> t!231566 result!192344) b_and!207237)))

(declare-fun m!3262287 () Bool)

(assert (=> d!821779 m!3262287))

(declare-fun m!3262289 () Bool)

(assert (=> d!821779 m!3262289))

(assert (=> b!2832435 d!821779))

(declare-fun d!821781 () Bool)

(declare-fun res!1179125 () Bool)

(declare-fun e!1793508 () Bool)

(assert (=> d!821781 (=> (not res!1179125) (not e!1793508))))

(declare-fun isEmpty!18423 (List!33532) Bool)

(assert (=> d!821781 (= res!1179125 (not (isEmpty!18423 (originalCharacters!5742 (h!38830 l!4019)))))))

(assert (=> d!821781 (= (inv!45365 (h!38830 l!4019)) e!1793508)))

(declare-fun b!2832619 () Bool)

(declare-fun res!1179126 () Bool)

(assert (=> b!2832619 (=> (not res!1179126) (not e!1793508))))

(assert (=> b!2832619 (= res!1179126 (= (originalCharacters!5742 (h!38830 l!4019)) (list!12485 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))))))

(declare-fun b!2832620 () Bool)

(assert (=> b!2832620 (= e!1793508 (= (size!25998 (h!38830 l!4019)) (size!26004 (originalCharacters!5742 (h!38830 l!4019)))))))

(assert (= (and d!821781 res!1179125) b!2832619))

(assert (= (and b!2832619 res!1179126) b!2832620))

(declare-fun b_lambda!85065 () Bool)

(assert (=> (not b_lambda!85065) (not b!2832619)))

(declare-fun t!231568 () Bool)

(declare-fun tb!154281 () Bool)

(assert (=> (and b!2832425 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019))))) t!231568) tb!154281))

(declare-fun b!2832621 () Bool)

(declare-fun e!1793509 () Bool)

(declare-fun tp!905436 () Bool)

(assert (=> b!2832621 (= e!1793509 (and (inv!45368 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))) tp!905436))))

(declare-fun result!192346 () Bool)

(assert (=> tb!154281 (= result!192346 (and (inv!45369 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))) e!1793509))))

(assert (= tb!154281 b!2832621))

(declare-fun m!3262291 () Bool)

(assert (=> b!2832621 m!3262291))

(declare-fun m!3262293 () Bool)

(assert (=> tb!154281 m!3262293))

(assert (=> b!2832619 t!231568))

(declare-fun b_and!207239 () Bool)

(assert (= b_and!207235 (and (=> t!231568 result!192346) b_and!207239)))

(declare-fun tb!154283 () Bool)

(declare-fun t!231570 () Bool)

(assert (=> (and b!2832429 (= (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019))))) t!231570) tb!154283))

(declare-fun result!192348 () Bool)

(assert (= result!192348 result!192346))

(assert (=> b!2832619 t!231570))

(declare-fun b_and!207241 () Bool)

(assert (= b_and!207237 (and (=> t!231570 result!192348) b_and!207241)))

(declare-fun m!3262295 () Bool)

(assert (=> d!821781 m!3262295))

(declare-fun m!3262297 () Bool)

(assert (=> b!2832619 m!3262297))

(assert (=> b!2832619 m!3262297))

(declare-fun m!3262299 () Bool)

(assert (=> b!2832619 m!3262299))

(declare-fun m!3262301 () Bool)

(assert (=> b!2832620 m!3262301))

(assert (=> b!2832433 d!821781))

(declare-fun d!821783 () Bool)

(declare-fun res!1179129 () Bool)

(declare-fun e!1793512 () Bool)

(assert (=> d!821783 (=> (not res!1179129) (not e!1793512))))

(declare-fun rulesValid!1852 (LexerInterface!4600 List!33533) Bool)

(assert (=> d!821783 (= res!1179129 (rulesValid!1852 thiss!11007 rules!1047))))

(assert (=> d!821783 (= (rulesInvariant!4016 thiss!11007 rules!1047) e!1793512)))

(declare-fun b!2832624 () Bool)

(declare-datatypes ((List!33536 0))(
  ( (Nil!33412) (Cons!33412 (h!38832 String!36722) (t!231581 List!33536)) )
))
(declare-fun noDuplicateTag!1848 (LexerInterface!4600 List!33533 List!33536) Bool)

(assert (=> b!2832624 (= e!1793512 (noDuplicateTag!1848 thiss!11007 rules!1047 Nil!33412))))

(assert (= (and d!821783 res!1179129) b!2832624))

(declare-fun m!3262303 () Bool)

(assert (=> d!821783 m!3262303))

(declare-fun m!3262305 () Bool)

(assert (=> b!2832624 m!3262305))

(assert (=> b!2832423 d!821783))

(declare-fun d!821785 () Bool)

(assert (=> d!821785 (= (isEmpty!18419 rules!1047) ((_ is Nil!33409) rules!1047))))

(assert (=> b!2832434 d!821785))

(declare-fun bs!518377 () Bool)

(declare-fun d!821787 () Bool)

(assert (= bs!518377 (and d!821787 d!821743)))

(declare-fun lambda!103989 () Int)

(assert (=> bs!518377 (= lambda!103989 lambda!103986)))

(declare-fun b!2832633 () Bool)

(declare-fun e!1793521 () Bool)

(assert (=> b!2832633 (= e!1793521 true)))

(declare-fun b!2832632 () Bool)

(declare-fun e!1793520 () Bool)

(assert (=> b!2832632 (= e!1793520 e!1793521)))

(declare-fun b!2832631 () Bool)

(declare-fun e!1793519 () Bool)

(assert (=> b!2832631 (= e!1793519 e!1793520)))

(assert (=> d!821787 e!1793519))

(assert (= b!2832632 b!2832633))

(assert (= b!2832631 b!2832632))

(assert (= (and d!821787 ((_ is Cons!33409) rules!1047)) b!2832631))

(assert (=> b!2832633 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103989))))

(assert (=> b!2832633 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103989))))

(assert (=> d!821787 true))

(declare-fun lt!1010415 () Bool)

(assert (=> d!821787 (= lt!1010415 (forall!6863 (t!231531 l!4019) lambda!103989))))

(declare-fun e!1793517 () Bool)

(assert (=> d!821787 (= lt!1010415 e!1793517)))

(declare-fun res!1179135 () Bool)

(assert (=> d!821787 (=> res!1179135 e!1793517)))

(assert (=> d!821787 (= res!1179135 (not ((_ is Cons!33410) (t!231531 l!4019))))))

(assert (=> d!821787 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821787 (= (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 l!4019)) lt!1010415)))

(declare-fun b!2832629 () Bool)

(declare-fun e!1793518 () Bool)

(assert (=> b!2832629 (= e!1793517 e!1793518)))

(declare-fun res!1179134 () Bool)

(assert (=> b!2832629 (=> (not res!1179134) (not e!1793518))))

(assert (=> b!2832629 (= res!1179134 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (t!231531 l!4019))))))

(declare-fun b!2832630 () Bool)

(assert (=> b!2832630 (= e!1793518 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 (t!231531 l!4019))))))

(assert (= (and d!821787 (not res!1179135)) b!2832629))

(assert (= (and b!2832629 res!1179134) b!2832630))

(declare-fun m!3262307 () Bool)

(assert (=> d!821787 m!3262307))

(assert (=> d!821787 m!3262065))

(assert (=> b!2832629 m!3262047))

(declare-fun m!3262309 () Bool)

(assert (=> b!2832630 m!3262309))

(assert (=> b!2832437 d!821787))

(declare-fun d!821789 () Bool)

(assert (=> d!821789 (= (inv!45361 (tag!5514 (h!38829 rules!1047))) (= (mod (str.len (value!161153 (tag!5514 (h!38829 rules!1047)))) 2) 0))))

(assert (=> b!2832427 d!821789))

(declare-fun d!821791 () Bool)

(declare-fun res!1179138 () Bool)

(declare-fun e!1793524 () Bool)

(assert (=> d!821791 (=> (not res!1179138) (not e!1793524))))

(declare-fun semiInverseModEq!2082 (Int Int) Bool)

(assert (=> d!821791 (= res!1179138 (semiInverseModEq!2082 (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toValue!7040 (transformation!5010 (h!38829 rules!1047)))))))

(assert (=> d!821791 (= (inv!45364 (transformation!5010 (h!38829 rules!1047))) e!1793524)))

(declare-fun b!2832636 () Bool)

(declare-fun equivClasses!1981 (Int Int) Bool)

(assert (=> b!2832636 (= e!1793524 (equivClasses!1981 (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toValue!7040 (transformation!5010 (h!38829 rules!1047)))))))

(assert (= (and d!821791 res!1179138) b!2832636))

(declare-fun m!3262311 () Bool)

(assert (=> d!821791 m!3262311))

(declare-fun m!3262313 () Bool)

(assert (=> b!2832636 m!3262313))

(assert (=> b!2832427 d!821791))

(declare-fun bs!518378 () Bool)

(declare-fun d!821793 () Bool)

(assert (= bs!518378 (and d!821793 d!821743)))

(declare-fun lambda!103990 () Int)

(assert (=> bs!518378 (= lambda!103990 lambda!103986)))

(declare-fun bs!518379 () Bool)

(assert (= bs!518379 (and d!821793 d!821787)))

(assert (=> bs!518379 (= lambda!103990 lambda!103989)))

(declare-fun b!2832640 () Bool)

(declare-fun e!1793528 () Bool)

(assert (=> b!2832640 (= e!1793528 true)))

(declare-fun b!2832639 () Bool)

(declare-fun e!1793527 () Bool)

(assert (=> b!2832639 (= e!1793527 e!1793528)))

(declare-fun b!2832638 () Bool)

(declare-fun e!1793526 () Bool)

(assert (=> b!2832638 (= e!1793526 e!1793527)))

(assert (=> d!821793 e!1793526))

(assert (= b!2832639 b!2832640))

(assert (= b!2832638 b!2832639))

(assert (= (and d!821793 ((_ is Cons!33409) rules!1047)) b!2832638))

(assert (=> b!2832640 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103990))))

(assert (=> b!2832640 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103990))))

(assert (=> d!821793 true))

(declare-fun e!1793525 () Bool)

(assert (=> d!821793 e!1793525))

(declare-fun res!1179139 () Bool)

(assert (=> d!821793 (=> (not res!1179139) (not e!1793525))))

(declare-fun lt!1010416 () Bool)

(assert (=> d!821793 (= res!1179139 (= lt!1010416 (forall!6863 (list!12484 (seqFromList!3256 (t!231531 l!4019))) lambda!103990)))))

(assert (=> d!821793 (= lt!1010416 (forall!6864 (seqFromList!3256 (t!231531 l!4019)) lambda!103990))))

(assert (=> d!821793 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821793 (= (rulesProduceEachTokenIndividually!1116 thiss!11007 rules!1047 (seqFromList!3256 (t!231531 l!4019))) lt!1010416)))

(declare-fun b!2832637 () Bool)

(assert (=> b!2832637 (= e!1793525 (= lt!1010416 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (list!12484 (seqFromList!3256 (t!231531 l!4019))))))))

(assert (= (and d!821793 res!1179139) b!2832637))

(assert (=> d!821793 m!3262033))

(declare-fun m!3262315 () Bool)

(assert (=> d!821793 m!3262315))

(assert (=> d!821793 m!3262315))

(declare-fun m!3262317 () Bool)

(assert (=> d!821793 m!3262317))

(assert (=> d!821793 m!3262033))

(declare-fun m!3262319 () Bool)

(assert (=> d!821793 m!3262319))

(assert (=> d!821793 m!3262065))

(assert (=> b!2832637 m!3262033))

(assert (=> b!2832637 m!3262315))

(assert (=> b!2832637 m!3262315))

(declare-fun m!3262321 () Bool)

(assert (=> b!2832637 m!3262321))

(assert (=> b!2832438 d!821793))

(declare-fun d!821795 () Bool)

(assert (=> d!821795 (= (seqFromList!3256 (t!231531 l!4019)) (fromListB!1473 (t!231531 l!4019)))))

(declare-fun bs!518380 () Bool)

(assert (= bs!518380 d!821795))

(declare-fun m!3262323 () Bool)

(assert (=> bs!518380 m!3262323))

(assert (=> b!2832438 d!821795))

(declare-fun bs!518381 () Bool)

(declare-fun d!821797 () Bool)

(assert (= bs!518381 (and d!821797 d!821743)))

(declare-fun lambda!103991 () Int)

(assert (=> bs!518381 (= lambda!103991 lambda!103986)))

(declare-fun bs!518382 () Bool)

(assert (= bs!518382 (and d!821797 d!821787)))

(assert (=> bs!518382 (= lambda!103991 lambda!103989)))

(declare-fun bs!518383 () Bool)

(assert (= bs!518383 (and d!821797 d!821793)))

(assert (=> bs!518383 (= lambda!103991 lambda!103990)))

(declare-fun b!2832645 () Bool)

(declare-fun e!1793533 () Bool)

(assert (=> b!2832645 (= e!1793533 true)))

(declare-fun b!2832644 () Bool)

(declare-fun e!1793532 () Bool)

(assert (=> b!2832644 (= e!1793532 e!1793533)))

(declare-fun b!2832643 () Bool)

(declare-fun e!1793531 () Bool)

(assert (=> b!2832643 (= e!1793531 e!1793532)))

(assert (=> d!821797 e!1793531))

(assert (= b!2832644 b!2832645))

(assert (= b!2832643 b!2832644))

(assert (= (and d!821797 ((_ is Cons!33409) rules!1047)) b!2832643))

(assert (=> b!2832645 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103991))))

(assert (=> b!2832645 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!103991))))

(assert (=> d!821797 true))

(declare-fun lt!1010417 () Bool)

(assert (=> d!821797 (= lt!1010417 (forall!6863 l!4019 lambda!103991))))

(declare-fun e!1793529 () Bool)

(assert (=> d!821797 (= lt!1010417 e!1793529)))

(declare-fun res!1179141 () Bool)

(assert (=> d!821797 (=> res!1179141 e!1793529)))

(assert (=> d!821797 (= res!1179141 (not ((_ is Cons!33410) l!4019)))))

(assert (=> d!821797 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821797 (= (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 l!4019) lt!1010417)))

(declare-fun b!2832641 () Bool)

(declare-fun e!1793530 () Bool)

(assert (=> b!2832641 (= e!1793529 e!1793530)))

(declare-fun res!1179140 () Bool)

(assert (=> b!2832641 (=> (not res!1179140) (not e!1793530))))

(assert (=> b!2832641 (= res!1179140 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 l!4019)))))

(declare-fun b!2832642 () Bool)

(assert (=> b!2832642 (= e!1793530 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 l!4019)))))

(assert (= (and d!821797 (not res!1179141)) b!2832641))

(assert (= (and b!2832641 res!1179140) b!2832642))

(declare-fun m!3262325 () Bool)

(assert (=> d!821797 m!3262325))

(assert (=> d!821797 m!3262065))

(assert (=> b!2832641 m!3262045))

(assert (=> b!2832642 m!3262049))

(assert (=> b!2832436 d!821797))

(declare-fun d!821799 () Bool)

(assert (=> d!821799 (= (inv!45361 (tag!5514 (rule!7438 (h!38830 l!4019)))) (= (mod (str.len (value!161153 (tag!5514 (rule!7438 (h!38830 l!4019))))) 2) 0))))

(assert (=> b!2832426 d!821799))

(declare-fun d!821801 () Bool)

(declare-fun res!1179142 () Bool)

(declare-fun e!1793534 () Bool)

(assert (=> d!821801 (=> (not res!1179142) (not e!1793534))))

(assert (=> d!821801 (= res!1179142 (semiInverseModEq!2082 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019))))))))

(assert (=> d!821801 (= (inv!45364 (transformation!5010 (rule!7438 (h!38830 l!4019)))) e!1793534)))

(declare-fun b!2832646 () Bool)

(assert (=> b!2832646 (= e!1793534 (equivClasses!1981 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019))))))))

(assert (= (and d!821801 res!1179142) b!2832646))

(declare-fun m!3262327 () Bool)

(assert (=> d!821801 m!3262327))

(declare-fun m!3262329 () Bool)

(assert (=> b!2832646 m!3262329))

(assert (=> b!2832426 d!821801))

(declare-fun b!2832651 () Bool)

(declare-fun e!1793537 () Bool)

(declare-fun tp_is_empty!14575 () Bool)

(declare-fun tp!905439 () Bool)

(assert (=> b!2832651 (= e!1793537 (and tp_is_empty!14575 tp!905439))))

(assert (=> b!2832430 (= tp!905378 e!1793537)))

(assert (= (and b!2832430 ((_ is Cons!33408) (originalCharacters!5742 (h!38830 l!4019)))) b!2832651))

(declare-fun b!2832665 () Bool)

(declare-fun b_free!81517 () Bool)

(declare-fun b_next!82221 () Bool)

(assert (=> b!2832665 (= b_free!81517 (not b_next!82221))))

(declare-fun tp!905452 () Bool)

(declare-fun b_and!207243 () Bool)

(assert (=> b!2832665 (= tp!905452 b_and!207243)))

(declare-fun b_free!81519 () Bool)

(declare-fun b_next!82223 () Bool)

(assert (=> b!2832665 (= b_free!81519 (not b_next!82223))))

(declare-fun t!231574 () Bool)

(declare-fun tb!154285 () Bool)

(assert (=> (and b!2832665 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) t!231574) tb!154285))

(declare-fun result!192354 () Bool)

(assert (= result!192354 result!192340))

(assert (=> d!821779 t!231574))

(declare-fun t!231576 () Bool)

(declare-fun tb!154287 () Bool)

(assert (=> (and b!2832665 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019))))) t!231576) tb!154287))

(declare-fun result!192356 () Bool)

(assert (= result!192356 result!192346))

(assert (=> b!2832619 t!231576))

(declare-fun tp!905454 () Bool)

(declare-fun b_and!207245 () Bool)

(assert (=> b!2832665 (= tp!905454 (and (=> t!231574 result!192354) (=> t!231576 result!192356) b_and!207245))))

(declare-fun e!1793553 () Bool)

(declare-fun tp!905450 () Bool)

(declare-fun e!1793551 () Bool)

(declare-fun b!2832664 () Bool)

(assert (=> b!2832664 (= e!1793553 (and tp!905450 (inv!45361 (tag!5514 (rule!7438 (h!38830 (t!231531 l!4019))))) (inv!45364 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) e!1793551))))

(declare-fun e!1793550 () Bool)

(assert (=> b!2832433 (= tp!905371 e!1793550)))

(declare-fun tp!905451 () Bool)

(declare-fun e!1793552 () Bool)

(declare-fun b!2832662 () Bool)

(assert (=> b!2832662 (= e!1793550 (and (inv!45365 (h!38830 (t!231531 l!4019))) e!1793552 tp!905451))))

(declare-fun tp!905453 () Bool)

(declare-fun b!2832663 () Bool)

(assert (=> b!2832663 (= e!1793552 (and (inv!21 (value!161154 (h!38830 (t!231531 l!4019)))) e!1793553 tp!905453))))

(assert (=> b!2832665 (= e!1793551 (and tp!905452 tp!905454))))

(assert (= b!2832664 b!2832665))

(assert (= b!2832663 b!2832664))

(assert (= b!2832662 b!2832663))

(assert (= (and b!2832433 ((_ is Cons!33410) (t!231531 l!4019))) b!2832662))

(declare-fun m!3262331 () Bool)

(assert (=> b!2832664 m!3262331))

(declare-fun m!3262333 () Bool)

(assert (=> b!2832664 m!3262333))

(declare-fun m!3262335 () Bool)

(assert (=> b!2832662 m!3262335))

(declare-fun m!3262337 () Bool)

(assert (=> b!2832663 m!3262337))

(declare-fun b!2832676 () Bool)

(declare-fun b_free!81521 () Bool)

(declare-fun b_next!82225 () Bool)

(assert (=> b!2832676 (= b_free!81521 (not b_next!82225))))

(declare-fun tp!905464 () Bool)

(declare-fun b_and!207247 () Bool)

(assert (=> b!2832676 (= tp!905464 b_and!207247)))

(declare-fun b_free!81523 () Bool)

(declare-fun b_next!82227 () Bool)

(assert (=> b!2832676 (= b_free!81523 (not b_next!82227))))

(declare-fun tb!154289 () Bool)

(declare-fun t!231578 () Bool)

(assert (=> (and b!2832676 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) t!231578) tb!154289))

(declare-fun result!192360 () Bool)

(assert (= result!192360 result!192340))

(assert (=> d!821779 t!231578))

(declare-fun t!231580 () Bool)

(declare-fun tb!154291 () Bool)

(assert (=> (and b!2832676 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019))))) t!231580) tb!154291))

(declare-fun result!192362 () Bool)

(assert (= result!192362 result!192346))

(assert (=> b!2832619 t!231580))

(declare-fun b_and!207249 () Bool)

(declare-fun tp!905463 () Bool)

(assert (=> b!2832676 (= tp!905463 (and (=> t!231578 result!192360) (=> t!231580 result!192362) b_and!207249))))

(declare-fun e!1793564 () Bool)

(assert (=> b!2832676 (= e!1793564 (and tp!905464 tp!905463))))

(declare-fun e!1793565 () Bool)

(declare-fun tp!905465 () Bool)

(declare-fun b!2832675 () Bool)

(assert (=> b!2832675 (= e!1793565 (and tp!905465 (inv!45361 (tag!5514 (h!38829 (t!231530 rules!1047)))) (inv!45364 (transformation!5010 (h!38829 (t!231530 rules!1047)))) e!1793564))))

(declare-fun b!2832674 () Bool)

(declare-fun e!1793566 () Bool)

(declare-fun tp!905466 () Bool)

(assert (=> b!2832674 (= e!1793566 (and e!1793565 tp!905466))))

(assert (=> b!2832428 (= tp!905373 e!1793566)))

(assert (= b!2832675 b!2832676))

(assert (= b!2832674 b!2832675))

(assert (= (and b!2832428 ((_ is Cons!33409) (t!231530 rules!1047))) b!2832674))

(declare-fun m!3262339 () Bool)

(assert (=> b!2832675 m!3262339))

(declare-fun m!3262341 () Bool)

(assert (=> b!2832675 m!3262341))

(declare-fun e!1793570 () Bool)

(assert (=> b!2832427 (= tp!905377 e!1793570)))

(declare-fun b!2832690 () Bool)

(declare-fun tp!905481 () Bool)

(declare-fun tp!905478 () Bool)

(assert (=> b!2832690 (= e!1793570 (and tp!905481 tp!905478))))

(declare-fun b!2832689 () Bool)

(declare-fun tp!905479 () Bool)

(assert (=> b!2832689 (= e!1793570 tp!905479)))

(declare-fun b!2832688 () Bool)

(declare-fun tp!905477 () Bool)

(declare-fun tp!905480 () Bool)

(assert (=> b!2832688 (= e!1793570 (and tp!905477 tp!905480))))

(declare-fun b!2832687 () Bool)

(assert (=> b!2832687 (= e!1793570 tp_is_empty!14575)))

(assert (= (and b!2832427 ((_ is ElementMatch!8401) (regex!5010 (h!38829 rules!1047)))) b!2832687))

(assert (= (and b!2832427 ((_ is Concat!13642) (regex!5010 (h!38829 rules!1047)))) b!2832688))

(assert (= (and b!2832427 ((_ is Star!8401) (regex!5010 (h!38829 rules!1047)))) b!2832689))

(assert (= (and b!2832427 ((_ is Union!8401) (regex!5010 (h!38829 rules!1047)))) b!2832690))

(declare-fun e!1793571 () Bool)

(assert (=> b!2832426 (= tp!905372 e!1793571)))

(declare-fun b!2832694 () Bool)

(declare-fun tp!905486 () Bool)

(declare-fun tp!905483 () Bool)

(assert (=> b!2832694 (= e!1793571 (and tp!905486 tp!905483))))

(declare-fun b!2832693 () Bool)

(declare-fun tp!905484 () Bool)

(assert (=> b!2832693 (= e!1793571 tp!905484)))

(declare-fun b!2832692 () Bool)

(declare-fun tp!905482 () Bool)

(declare-fun tp!905485 () Bool)

(assert (=> b!2832692 (= e!1793571 (and tp!905482 tp!905485))))

(declare-fun b!2832691 () Bool)

(assert (=> b!2832691 (= e!1793571 tp_is_empty!14575)))

(assert (= (and b!2832426 ((_ is ElementMatch!8401) (regex!5010 (rule!7438 (h!38830 l!4019))))) b!2832691))

(assert (= (and b!2832426 ((_ is Concat!13642) (regex!5010 (rule!7438 (h!38830 l!4019))))) b!2832692))

(assert (= (and b!2832426 ((_ is Star!8401) (regex!5010 (rule!7438 (h!38830 l!4019))))) b!2832693))

(assert (= (and b!2832426 ((_ is Union!8401) (regex!5010 (rule!7438 (h!38830 l!4019))))) b!2832694))

(declare-fun b_lambda!85067 () Bool)

(assert (= b_lambda!85063 (or (and b!2832425 b_free!81503 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) (and b!2832429 b_free!81507 (= (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) (and b!2832665 b_free!81519) (and b!2832676 b_free!81523 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) b_lambda!85067)))

(declare-fun b_lambda!85069 () Bool)

(assert (= b_lambda!85065 (or (and b!2832425 b_free!81503) (and b!2832429 b_free!81507 (= (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) (and b!2832665 b_free!81519 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) (and b!2832676 b_free!81523 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) b_lambda!85069)))

(check-sat (not b!2832596) (not b_next!82211) (not d!821797) (not b!2832641) (not b_next!82207) (not d!821781) (not d!821775) b_and!207211 (not b!2832470) (not b_next!82221) (not b!2832496) (not d!821729) (not b!2832630) (not b!2832467) (not d!821731) b_and!207243 (not b!2832469) (not b!2832646) (not b!2832614) (not b!2832637) (not b!2832690) (not b!2832498) (not b!2832688) (not b_next!82209) b_and!207249 (not d!821783) (not b!2832651) (not d!821739) (not b_next!82205) (not b_next!82227) (not b!2832636) (not d!821779) (not d!821787) (not b!2832620) (not b!2832643) b_and!207247 (not b_next!82225) (not b_lambda!85069) (not b!2832629) (not d!821795) (not tb!154281) (not b!2832619) (not b!2832495) (not b!2832494) b_and!207239 (not d!821743) (not b!2832689) (not b_next!82223) b_and!207215 (not b!2832692) (not b!2832631) b_and!207241 (not b!2832675) (not d!821793) (not b!2832624) (not b!2832638) (not b!2832664) (not d!821741) b_and!207245 (not tb!154277) (not b!2832674) (not b!2832642) tp_is_empty!14575 (not b!2832693) (not d!821801) (not b!2832663) (not b!2832694) (not b!2832621) (not b!2832497) (not d!821727) (not b_lambda!85067) (not b!2832662) (not b!2832605) (not d!821777) (not d!821791) (not b!2832499))
(check-sat b_and!207211 (not b_next!82221) b_and!207243 (not b_next!82211) (not b_next!82205) (not b_next!82227) b_and!207215 (not b_next!82207) b_and!207241 b_and!207245 (not b_next!82209) b_and!207249 b_and!207247 (not b_next!82225) (not b_next!82223) b_and!207239)
(get-model)

(declare-fun d!821829 () Bool)

(declare-fun res!1179165 () Bool)

(declare-fun e!1793594 () Bool)

(assert (=> d!821829 (=> res!1179165 e!1793594)))

(assert (=> d!821829 (= res!1179165 ((_ is Nil!33410) (t!231531 l!4019)))))

(assert (=> d!821829 (= (forall!6863 (t!231531 l!4019) lambda!103989) e!1793594)))

(declare-fun b!2832723 () Bool)

(declare-fun e!1793595 () Bool)

(assert (=> b!2832723 (= e!1793594 e!1793595)))

(declare-fun res!1179166 () Bool)

(assert (=> b!2832723 (=> (not res!1179166) (not e!1793595))))

(declare-fun dynLambda!14033 (Int Token!9422) Bool)

(assert (=> b!2832723 (= res!1179166 (dynLambda!14033 lambda!103989 (h!38830 (t!231531 l!4019))))))

(declare-fun b!2832724 () Bool)

(assert (=> b!2832724 (= e!1793595 (forall!6863 (t!231531 (t!231531 l!4019)) lambda!103989))))

(assert (= (and d!821829 (not res!1179165)) b!2832723))

(assert (= (and b!2832723 res!1179166) b!2832724))

(declare-fun b_lambda!85073 () Bool)

(assert (=> (not b_lambda!85073) (not b!2832723)))

(declare-fun m!3262383 () Bool)

(assert (=> b!2832723 m!3262383))

(declare-fun m!3262385 () Bool)

(assert (=> b!2832724 m!3262385))

(assert (=> d!821787 d!821829))

(assert (=> d!821787 d!821785))

(declare-fun b!2832750 () Bool)

(declare-fun e!1793612 () Bool)

(declare-fun lt!1010441 () tuple2!33520)

(declare-fun isEmpty!18426 (BalanceConc!20390) Bool)

(assert (=> b!2832750 (= e!1793612 (not (isEmpty!18426 (_1!19872 lt!1010441))))))

(declare-fun b!2832751 () Bool)

(declare-fun e!1793613 () Bool)

(assert (=> b!2832751 (= e!1793613 e!1793612)))

(declare-fun res!1179183 () Bool)

(assert (=> b!2832751 (= res!1179183 (< (size!25999 (_2!19872 lt!1010441)) (size!25999 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))))))))

(assert (=> b!2832751 (=> (not res!1179183) (not e!1793612))))

(declare-fun b!2832752 () Bool)

(declare-fun e!1793611 () Bool)

(declare-datatypes ((tuple2!33524 0))(
  ( (tuple2!33525 (_1!19874 List!33534) (_2!19874 List!33532)) )
))
(declare-fun lexList!1254 (LexerInterface!4600 List!33533 List!33532) tuple2!33524)

(assert (=> b!2832752 (= e!1793611 (= (list!12485 (_2!19872 lt!1010441)) (_2!19874 (lexList!1254 thiss!11007 rules!1047 (list!12485 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))))))))))

(declare-fun b!2832754 () Bool)

(assert (=> b!2832754 (= e!1793613 (= (_2!19872 lt!1010441) (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))))

(declare-fun b!2832753 () Bool)

(declare-fun res!1179184 () Bool)

(assert (=> b!2832753 (=> (not res!1179184) (not e!1793611))))

(assert (=> b!2832753 (= res!1179184 (= (list!12484 (_1!19872 lt!1010441)) (_1!19874 (lexList!1254 thiss!11007 rules!1047 (list!12485 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))))))))))

(declare-fun d!821831 () Bool)

(assert (=> d!821831 e!1793611))

(declare-fun res!1179182 () Bool)

(assert (=> d!821831 (=> (not res!1179182) (not e!1793611))))

(assert (=> d!821831 (= res!1179182 e!1793613)))

(declare-fun c!457999 () Bool)

(assert (=> d!821831 (= c!457999 (> (size!26003 (_1!19872 lt!1010441)) 0))))

(declare-fun lexTailRecV2!892 (LexerInterface!4600 List!33533 BalanceConc!20388 BalanceConc!20388 BalanceConc!20388 BalanceConc!20390) tuple2!33520)

(assert (=> d!821831 (= lt!1010441 (lexTailRecV2!892 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))) (BalanceConc!20389 Empty!10375) (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))) (BalanceConc!20391 Empty!10376)))))

(assert (=> d!821831 (= (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))) lt!1010441)))

(assert (= (and d!821831 c!457999) b!2832751))

(assert (= (and d!821831 (not c!457999)) b!2832754))

(assert (= (and b!2832751 res!1179183) b!2832750))

(assert (= (and d!821831 res!1179182) b!2832753))

(assert (= (and b!2832753 res!1179184) b!2832752))

(declare-fun m!3262405 () Bool)

(assert (=> b!2832751 m!3262405))

(assert (=> b!2832751 m!3262149))

(declare-fun m!3262407 () Bool)

(assert (=> b!2832751 m!3262407))

(declare-fun m!3262409 () Bool)

(assert (=> b!2832750 m!3262409))

(declare-fun m!3262411 () Bool)

(assert (=> b!2832752 m!3262411))

(assert (=> b!2832752 m!3262149))

(declare-fun m!3262413 () Bool)

(assert (=> b!2832752 m!3262413))

(assert (=> b!2832752 m!3262413))

(declare-fun m!3262415 () Bool)

(assert (=> b!2832752 m!3262415))

(declare-fun m!3262417 () Bool)

(assert (=> d!821831 m!3262417))

(assert (=> d!821831 m!3262149))

(assert (=> d!821831 m!3262149))

(declare-fun m!3262419 () Bool)

(assert (=> d!821831 m!3262419))

(declare-fun m!3262421 () Bool)

(assert (=> b!2832753 m!3262421))

(assert (=> b!2832753 m!3262149))

(assert (=> b!2832753 m!3262413))

(assert (=> b!2832753 m!3262413))

(assert (=> b!2832753 m!3262415))

(assert (=> d!821741 d!821831))

(declare-fun d!821835 () Bool)

(declare-fun e!1793616 () Bool)

(assert (=> d!821835 e!1793616))

(declare-fun res!1179187 () Bool)

(assert (=> d!821835 (=> (not res!1179187) (not e!1793616))))

(declare-fun lt!1010444 () BalanceConc!20390)

(assert (=> d!821835 (= res!1179187 (= (list!12484 lt!1010444) (Cons!33410 (h!38830 (t!231531 l!4019)) Nil!33410)))))

(declare-fun singleton!948 (Token!9422) BalanceConc!20390)

(assert (=> d!821835 (= lt!1010444 (singleton!948 (h!38830 (t!231531 l!4019))))))

(assert (=> d!821835 (= (singletonSeq!2169 (h!38830 (t!231531 l!4019))) lt!1010444)))

(declare-fun b!2832757 () Bool)

(declare-fun isBalanced!3130 (Conc!10376) Bool)

(assert (=> b!2832757 (= e!1793616 (isBalanced!3130 (c!457975 lt!1010444)))))

(assert (= (and d!821835 res!1179187) b!2832757))

(declare-fun m!3262423 () Bool)

(assert (=> d!821835 m!3262423))

(declare-fun m!3262425 () Bool)

(assert (=> d!821835 m!3262425))

(declare-fun m!3262427 () Bool)

(assert (=> b!2832757 m!3262427))

(assert (=> d!821741 d!821835))

(assert (=> d!821741 d!821785))

(declare-fun d!821837 () Bool)

(declare-fun list!12488 (Conc!10376) List!33534)

(assert (=> d!821837 (= (list!12484 (_1!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))) (list!12488 (c!457975 (_1!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))))))))))

(declare-fun bs!518392 () Bool)

(assert (= bs!518392 d!821837))

(declare-fun m!3262429 () Bool)

(assert (=> bs!518392 m!3262429))

(assert (=> d!821741 d!821837))

(declare-fun d!821839 () Bool)

(declare-fun lt!1010447 () BalanceConc!20388)

(declare-fun printList!1228 (LexerInterface!4600 List!33534) List!33532)

(assert (=> d!821839 (= (list!12485 lt!1010447) (printList!1228 thiss!11007 (list!12484 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))))

(declare-fun printTailRec!1171 (LexerInterface!4600 BalanceConc!20390 Int BalanceConc!20388) BalanceConc!20388)

(assert (=> d!821839 (= lt!1010447 (printTailRec!1171 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))) 0 (BalanceConc!20389 Empty!10375)))))

(assert (=> d!821839 (= (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))) lt!1010447)))

(declare-fun bs!518393 () Bool)

(assert (= bs!518393 d!821839))

(declare-fun m!3262431 () Bool)

(assert (=> bs!518393 m!3262431))

(assert (=> bs!518393 m!3262147))

(assert (=> bs!518393 m!3262151))

(assert (=> bs!518393 m!3262151))

(declare-fun m!3262433 () Bool)

(assert (=> bs!518393 m!3262433))

(assert (=> bs!518393 m!3262147))

(declare-fun m!3262435 () Bool)

(assert (=> bs!518393 m!3262435))

(assert (=> d!821741 d!821839))

(declare-fun d!821841 () Bool)

(declare-fun lt!1010450 () Int)

(declare-fun size!26008 (List!33534) Int)

(assert (=> d!821841 (= lt!1010450 (size!26008 (list!12484 (_1!19872 lt!1010379))))))

(declare-fun size!26009 (Conc!10376) Int)

(assert (=> d!821841 (= lt!1010450 (size!26009 (c!457975 (_1!19872 lt!1010379))))))

(assert (=> d!821841 (= (size!26003 (_1!19872 lt!1010379)) lt!1010450)))

(declare-fun bs!518394 () Bool)

(assert (= bs!518394 d!821841))

(declare-fun m!3262437 () Bool)

(assert (=> bs!518394 m!3262437))

(assert (=> bs!518394 m!3262437))

(declare-fun m!3262439 () Bool)

(assert (=> bs!518394 m!3262439))

(declare-fun m!3262441 () Bool)

(assert (=> bs!518394 m!3262441))

(assert (=> d!821741 d!821841))

(declare-fun d!821843 () Bool)

(assert (=> d!821843 (= (list!12484 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))) (list!12488 (c!457975 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))))

(declare-fun bs!518395 () Bool)

(assert (= bs!518395 d!821843))

(declare-fun m!3262443 () Bool)

(assert (=> bs!518395 m!3262443))

(assert (=> d!821741 d!821843))

(assert (=> d!821731 d!821785))

(declare-fun d!821845 () Bool)

(assert (=> d!821845 (= (list!12484 (singletonSeq!2169 (h!38830 l!4019))) (list!12488 (c!457975 (singletonSeq!2169 (h!38830 l!4019)))))))

(declare-fun bs!518396 () Bool)

(assert (= bs!518396 d!821845))

(declare-fun m!3262445 () Bool)

(assert (=> bs!518396 m!3262445))

(assert (=> d!821731 d!821845))

(declare-fun d!821847 () Bool)

(declare-fun e!1793617 () Bool)

(assert (=> d!821847 e!1793617))

(declare-fun res!1179188 () Bool)

(assert (=> d!821847 (=> (not res!1179188) (not e!1793617))))

(declare-fun lt!1010451 () BalanceConc!20390)

(assert (=> d!821847 (= res!1179188 (= (list!12484 lt!1010451) (Cons!33410 (h!38830 l!4019) Nil!33410)))))

(assert (=> d!821847 (= lt!1010451 (singleton!948 (h!38830 l!4019)))))

(assert (=> d!821847 (= (singletonSeq!2169 (h!38830 l!4019)) lt!1010451)))

(declare-fun b!2832758 () Bool)

(assert (=> b!2832758 (= e!1793617 (isBalanced!3130 (c!457975 lt!1010451)))))

(assert (= (and d!821847 res!1179188) b!2832758))

(declare-fun m!3262447 () Bool)

(assert (=> d!821847 m!3262447))

(declare-fun m!3262449 () Bool)

(assert (=> d!821847 m!3262449))

(declare-fun m!3262451 () Bool)

(assert (=> b!2832758 m!3262451))

(assert (=> d!821731 d!821847))

(declare-fun d!821849 () Bool)

(declare-fun lt!1010452 () BalanceConc!20388)

(assert (=> d!821849 (= (list!12485 lt!1010452) (printList!1228 thiss!11007 (list!12484 (singletonSeq!2169 (h!38830 l!4019)))))))

(assert (=> d!821849 (= lt!1010452 (printTailRec!1171 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)) 0 (BalanceConc!20389 Empty!10375)))))

(assert (=> d!821849 (= (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))) lt!1010452)))

(declare-fun bs!518397 () Bool)

(assert (= bs!518397 d!821849))

(declare-fun m!3262453 () Bool)

(assert (=> bs!518397 m!3262453))

(assert (=> bs!518397 m!3262127))

(assert (=> bs!518397 m!3262131))

(assert (=> bs!518397 m!3262131))

(declare-fun m!3262455 () Bool)

(assert (=> bs!518397 m!3262455))

(assert (=> bs!518397 m!3262127))

(declare-fun m!3262457 () Bool)

(assert (=> bs!518397 m!3262457))

(assert (=> d!821731 d!821849))

(declare-fun d!821851 () Bool)

(declare-fun lt!1010453 () Int)

(assert (=> d!821851 (= lt!1010453 (size!26008 (list!12484 (_1!19872 lt!1010376))))))

(assert (=> d!821851 (= lt!1010453 (size!26009 (c!457975 (_1!19872 lt!1010376))))))

(assert (=> d!821851 (= (size!26003 (_1!19872 lt!1010376)) lt!1010453)))

(declare-fun bs!518398 () Bool)

(assert (= bs!518398 d!821851))

(declare-fun m!3262459 () Bool)

(assert (=> bs!518398 m!3262459))

(assert (=> bs!518398 m!3262459))

(declare-fun m!3262461 () Bool)

(assert (=> bs!518398 m!3262461))

(declare-fun m!3262463 () Bool)

(assert (=> bs!518398 m!3262463))

(assert (=> d!821731 d!821851))

(declare-fun d!821853 () Bool)

(assert (=> d!821853 (= (list!12484 (_1!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)))))) (list!12488 (c!457975 (_1!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))))))))))

(declare-fun bs!518399 () Bool)

(assert (= bs!518399 d!821853))

(declare-fun m!3262465 () Bool)

(assert (=> bs!518399 m!3262465))

(assert (=> d!821731 d!821853))

(declare-fun b!2832759 () Bool)

(declare-fun e!1793619 () Bool)

(declare-fun lt!1010454 () tuple2!33520)

(assert (=> b!2832759 (= e!1793619 (not (isEmpty!18426 (_1!19872 lt!1010454))))))

(declare-fun b!2832760 () Bool)

(declare-fun e!1793620 () Bool)

(assert (=> b!2832760 (= e!1793620 e!1793619)))

(declare-fun res!1179190 () Bool)

(assert (=> b!2832760 (= res!1179190 (< (size!25999 (_2!19872 lt!1010454)) (size!25999 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))))))))

(assert (=> b!2832760 (=> (not res!1179190) (not e!1793619))))

(declare-fun e!1793618 () Bool)

(declare-fun b!2832761 () Bool)

(assert (=> b!2832761 (= e!1793618 (= (list!12485 (_2!19872 lt!1010454)) (_2!19874 (lexList!1254 thiss!11007 rules!1047 (list!12485 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))))))))))

(declare-fun b!2832763 () Bool)

(assert (=> b!2832763 (= e!1793620 (= (_2!19872 lt!1010454) (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)))))))

(declare-fun b!2832762 () Bool)

(declare-fun res!1179191 () Bool)

(assert (=> b!2832762 (=> (not res!1179191) (not e!1793618))))

(assert (=> b!2832762 (= res!1179191 (= (list!12484 (_1!19872 lt!1010454)) (_1!19874 (lexList!1254 thiss!11007 rules!1047 (list!12485 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))))))))))

(declare-fun d!821855 () Bool)

(assert (=> d!821855 e!1793618))

(declare-fun res!1179189 () Bool)

(assert (=> d!821855 (=> (not res!1179189) (not e!1793618))))

(assert (=> d!821855 (= res!1179189 e!1793620)))

(declare-fun c!458000 () Bool)

(assert (=> d!821855 (= c!458000 (> (size!26003 (_1!19872 lt!1010454)) 0))))

(assert (=> d!821855 (= lt!1010454 (lexTailRecV2!892 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))) (BalanceConc!20389 Empty!10375) (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))) (BalanceConc!20391 Empty!10376)))))

(assert (=> d!821855 (= (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)))) lt!1010454)))

(assert (= (and d!821855 c!458000) b!2832760))

(assert (= (and d!821855 (not c!458000)) b!2832763))

(assert (= (and b!2832760 res!1179190) b!2832759))

(assert (= (and d!821855 res!1179189) b!2832762))

(assert (= (and b!2832762 res!1179191) b!2832761))

(declare-fun m!3262467 () Bool)

(assert (=> b!2832760 m!3262467))

(assert (=> b!2832760 m!3262129))

(declare-fun m!3262469 () Bool)

(assert (=> b!2832760 m!3262469))

(declare-fun m!3262471 () Bool)

(assert (=> b!2832759 m!3262471))

(declare-fun m!3262473 () Bool)

(assert (=> b!2832761 m!3262473))

(assert (=> b!2832761 m!3262129))

(declare-fun m!3262475 () Bool)

(assert (=> b!2832761 m!3262475))

(assert (=> b!2832761 m!3262475))

(declare-fun m!3262477 () Bool)

(assert (=> b!2832761 m!3262477))

(declare-fun m!3262479 () Bool)

(assert (=> d!821855 m!3262479))

(assert (=> d!821855 m!3262129))

(assert (=> d!821855 m!3262129))

(declare-fun m!3262481 () Bool)

(assert (=> d!821855 m!3262481))

(declare-fun m!3262483 () Bool)

(assert (=> b!2832762 m!3262483))

(assert (=> b!2832762 m!3262129))

(assert (=> b!2832762 m!3262475))

(assert (=> b!2832762 m!3262475))

(assert (=> b!2832762 m!3262477))

(assert (=> d!821731 d!821855))

(declare-fun b!2832773 () Bool)

(declare-fun res!1179200 () Bool)

(declare-fun e!1793623 () Bool)

(assert (=> b!2832773 (=> (not res!1179200) (not e!1793623))))

(declare-fun height!1508 (Conc!10375) Int)

(declare-fun ++!8105 (Conc!10375 Conc!10375) Conc!10375)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2832773 (= res!1179200 (<= (height!1508 (++!8105 (c!457974 (charsOf!3106 (h!38830 l!4019))) (c!457974 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))) (+ (max!0 (height!1508 (c!457974 (charsOf!3106 (h!38830 l!4019)))) (height!1508 (c!457974 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))) 1)))))

(declare-fun b!2832774 () Bool)

(declare-fun res!1179203 () Bool)

(assert (=> b!2832774 (=> (not res!1179203) (not e!1793623))))

(assert (=> b!2832774 (= res!1179203 (>= (height!1508 (++!8105 (c!457974 (charsOf!3106 (h!38830 l!4019))) (c!457974 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))) (max!0 (height!1508 (c!457974 (charsOf!3106 (h!38830 l!4019)))) (height!1508 (c!457974 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0)))))))))

(declare-fun b!2832772 () Bool)

(declare-fun res!1179202 () Bool)

(assert (=> b!2832772 (=> (not res!1179202) (not e!1793623))))

(declare-fun isBalanced!3132 (Conc!10375) Bool)

(assert (=> b!2832772 (= res!1179202 (isBalanced!3132 (++!8105 (c!457974 (charsOf!3106 (h!38830 l!4019))) (c!457974 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))))))

(declare-fun d!821857 () Bool)

(assert (=> d!821857 e!1793623))

(declare-fun res!1179201 () Bool)

(assert (=> d!821857 (=> (not res!1179201) (not e!1793623))))

(declare-fun appendAssocInst!716 (Conc!10375 Conc!10375) Bool)

(assert (=> d!821857 (= res!1179201 (appendAssocInst!716 (c!457974 (charsOf!3106 (h!38830 l!4019))) (c!457974 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0)))))))

(declare-fun lt!1010457 () BalanceConc!20388)

(assert (=> d!821857 (= lt!1010457 (BalanceConc!20389 (++!8105 (c!457974 (charsOf!3106 (h!38830 l!4019))) (c!457974 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))))))

(assert (=> d!821857 (= (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))) lt!1010457)))

(declare-fun b!2832775 () Bool)

(declare-fun ++!8106 (List!33532 List!33532) List!33532)

(assert (=> b!2832775 (= e!1793623 (= (list!12485 lt!1010457) (++!8106 (list!12485 (charsOf!3106 (h!38830 l!4019))) (list!12485 (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))))))

(assert (= (and d!821857 res!1179201) b!2832772))

(assert (= (and b!2832772 res!1179202) b!2832773))

(assert (= (and b!2832773 res!1179200) b!2832774))

(assert (= (and b!2832774 res!1179203) b!2832775))

(declare-fun m!3262485 () Bool)

(assert (=> b!2832775 m!3262485))

(assert (=> b!2832775 m!3262099))

(declare-fun m!3262487 () Bool)

(assert (=> b!2832775 m!3262487))

(assert (=> b!2832775 m!3262101))

(declare-fun m!3262489 () Bool)

(assert (=> b!2832775 m!3262489))

(assert (=> b!2832775 m!3262487))

(assert (=> b!2832775 m!3262489))

(declare-fun m!3262491 () Bool)

(assert (=> b!2832775 m!3262491))

(declare-fun m!3262493 () Bool)

(assert (=> b!2832772 m!3262493))

(assert (=> b!2832772 m!3262493))

(declare-fun m!3262495 () Bool)

(assert (=> b!2832772 m!3262495))

(declare-fun m!3262497 () Bool)

(assert (=> d!821857 m!3262497))

(assert (=> d!821857 m!3262493))

(assert (=> b!2832773 m!3262493))

(declare-fun m!3262499 () Bool)

(assert (=> b!2832773 m!3262499))

(assert (=> b!2832773 m!3262493))

(declare-fun m!3262501 () Bool)

(assert (=> b!2832773 m!3262501))

(assert (=> b!2832773 m!3262501))

(declare-fun m!3262503 () Bool)

(assert (=> b!2832773 m!3262503))

(declare-fun m!3262505 () Bool)

(assert (=> b!2832773 m!3262505))

(assert (=> b!2832773 m!3262503))

(assert (=> b!2832774 m!3262493))

(assert (=> b!2832774 m!3262499))

(assert (=> b!2832774 m!3262493))

(assert (=> b!2832774 m!3262501))

(assert (=> b!2832774 m!3262501))

(assert (=> b!2832774 m!3262503))

(assert (=> b!2832774 m!3262505))

(assert (=> b!2832774 m!3262503))

(assert (=> d!821727 d!821857))

(declare-fun d!821861 () Bool)

(declare-fun e!1793630 () Bool)

(assert (=> d!821861 e!1793630))

(declare-fun res!1179210 () Bool)

(assert (=> d!821861 (=> (not res!1179210) (not e!1793630))))

(declare-fun lt!1010463 () BalanceConc!20388)

(assert (=> d!821861 (= res!1179210 (= (list!12485 lt!1010463) (Cons!33408 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0) Nil!33408)))))

(declare-fun singleton!950 (C!16984) BalanceConc!20388)

(assert (=> d!821861 (= lt!1010463 (singleton!950 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0)))))

(assert (=> d!821861 (= (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0)) lt!1010463)))

(declare-fun b!2832782 () Bool)

(assert (=> b!2832782 (= e!1793630 (isBalanced!3132 (c!457974 lt!1010463)))))

(assert (= (and d!821861 res!1179210) b!2832782))

(declare-fun m!3262517 () Bool)

(assert (=> d!821861 m!3262517))

(assert (=> d!821861 m!3262097))

(declare-fun m!3262519 () Bool)

(assert (=> d!821861 m!3262519))

(declare-fun m!3262521 () Bool)

(assert (=> b!2832782 m!3262521))

(assert (=> d!821727 d!821861))

(declare-fun d!821869 () Bool)

(declare-fun lt!1010469 () C!16984)

(declare-fun apply!7806 (List!33532 Int) C!16984)

(assert (=> d!821869 (= lt!1010469 (apply!7806 (list!12485 (charsOf!3106 (h!38830 (t!231531 l!4019)))) 0))))

(declare-fun apply!7807 (Conc!10375 Int) C!16984)

(assert (=> d!821869 (= lt!1010469 (apply!7807 (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019)))) 0))))

(declare-fun e!1793636 () Bool)

(assert (=> d!821869 e!1793636))

(declare-fun res!1179216 () Bool)

(assert (=> d!821869 (=> (not res!1179216) (not e!1793636))))

(assert (=> d!821869 (= res!1179216 (<= 0 0))))

(assert (=> d!821869 (= (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0) lt!1010469)))

(declare-fun b!2832788 () Bool)

(assert (=> b!2832788 (= e!1793636 (< 0 (size!25999 (charsOf!3106 (h!38830 (t!231531 l!4019))))))))

(assert (= (and d!821869 res!1179216) b!2832788))

(assert (=> d!821869 m!3262067))

(assert (=> d!821869 m!3262277))

(assert (=> d!821869 m!3262277))

(declare-fun m!3262527 () Bool)

(assert (=> d!821869 m!3262527))

(declare-fun m!3262529 () Bool)

(assert (=> d!821869 m!3262529))

(assert (=> b!2832788 m!3262067))

(assert (=> b!2832788 m!3262069))

(assert (=> d!821727 d!821869))

(assert (=> d!821727 d!821779))

(declare-fun d!821873 () Bool)

(declare-fun lt!1010512 () Bool)

(declare-fun prefixMatch!808 (Regex!8401 List!33532) Bool)

(assert (=> d!821873 (= lt!1010512 (prefixMatch!808 (rulesRegex!998 thiss!11007 rules!1047) (list!12485 (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!33539 0))(
  ( (Nil!33415) (Cons!33415 (h!38835 Regex!8401) (t!231608 List!33539)) )
))
(declare-datatypes ((Context!4974 0))(
  ( (Context!4975 (exprs!2987 List!33539)) )
))
(declare-fun prefixMatchZipperSequence!742 ((InoxSet Context!4974) BalanceConc!20388 Int) Bool)

(declare-fun focus!294 (Regex!8401) (InoxSet Context!4974))

(assert (=> d!821873 (= lt!1010512 (prefixMatchZipperSequence!742 (focus!294 (rulesRegex!998 thiss!11007 rules!1047)) (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))) 0))))

(declare-fun lt!1010508 () Unit!47387)

(declare-fun lt!1010511 () Unit!47387)

(assert (=> d!821873 (= lt!1010508 lt!1010511)))

(declare-fun lt!1010510 () List!33532)

(declare-fun lt!1010515 () (InoxSet Context!4974))

(declare-fun prefixMatchZipper!224 ((InoxSet Context!4974) List!33532) Bool)

(assert (=> d!821873 (= (prefixMatch!808 (rulesRegex!998 thiss!11007 rules!1047) lt!1010510) (prefixMatchZipper!224 lt!1010515 lt!1010510))))

(declare-datatypes ((List!33540 0))(
  ( (Nil!33416) (Cons!33416 (h!38836 Context!4974) (t!231609 List!33540)) )
))
(declare-fun lt!1010509 () List!33540)

(declare-fun prefixMatchZipperRegexEquiv!224 ((InoxSet Context!4974) List!33540 Regex!8401 List!33532) Unit!47387)

(assert (=> d!821873 (= lt!1010511 (prefixMatchZipperRegexEquiv!224 lt!1010515 lt!1010509 (rulesRegex!998 thiss!11007 rules!1047) lt!1010510))))

(assert (=> d!821873 (= lt!1010510 (list!12485 (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0)))))))

(declare-fun toList!1899 ((InoxSet Context!4974)) List!33540)

(assert (=> d!821873 (= lt!1010509 (toList!1899 (focus!294 (rulesRegex!998 thiss!11007 rules!1047))))))

(assert (=> d!821873 (= lt!1010515 (focus!294 (rulesRegex!998 thiss!11007 rules!1047)))))

(declare-fun lt!1010514 () Unit!47387)

(declare-fun lt!1010506 () Unit!47387)

(assert (=> d!821873 (= lt!1010514 lt!1010506)))

(declare-fun lt!1010513 () (InoxSet Context!4974))

(declare-fun lt!1010507 () Int)

(declare-fun dropList!1007 (BalanceConc!20388 Int) List!33532)

(assert (=> d!821873 (= (prefixMatchZipper!224 lt!1010513 (dropList!1007 (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))) lt!1010507)) (prefixMatchZipperSequence!742 lt!1010513 (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))) lt!1010507))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!224 ((InoxSet Context!4974) BalanceConc!20388 Int) Unit!47387)

(assert (=> d!821873 (= lt!1010506 (lemmaprefixMatchZipperSequenceEquivalent!224 lt!1010513 (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0))) lt!1010507))))

(assert (=> d!821873 (= lt!1010507 0)))

(assert (=> d!821873 (= lt!1010513 (focus!294 (rulesRegex!998 thiss!11007 rules!1047)))))

(declare-fun validRegex!3349 (Regex!8401) Bool)

(assert (=> d!821873 (validRegex!3349 (rulesRegex!998 thiss!11007 rules!1047))))

(assert (=> d!821873 (= (prefixMatchZipperSequence!740 (rulesRegex!998 thiss!11007 rules!1047) (++!8102 (charsOf!3106 (h!38830 l!4019)) (singletonSeq!2168 (apply!7800 (charsOf!3106 (h!38830 (t!231531 l!4019))) 0)))) lt!1010512)))

(declare-fun bs!518417 () Bool)

(assert (= bs!518417 d!821873))

(assert (=> bs!518417 m!3262091))

(declare-fun m!3262599 () Bool)

(assert (=> bs!518417 m!3262599))

(assert (=> bs!518417 m!3262093))

(declare-fun m!3262601 () Bool)

(assert (=> bs!518417 m!3262601))

(declare-fun m!3262603 () Bool)

(assert (=> bs!518417 m!3262603))

(declare-fun m!3262605 () Bool)

(assert (=> bs!518417 m!3262605))

(assert (=> bs!518417 m!3262091))

(declare-fun m!3262607 () Bool)

(assert (=> bs!518417 m!3262607))

(assert (=> bs!518417 m!3262093))

(assert (=> bs!518417 m!3262603))

(assert (=> bs!518417 m!3262091))

(declare-fun m!3262609 () Bool)

(assert (=> bs!518417 m!3262609))

(assert (=> bs!518417 m!3262093))

(declare-fun m!3262611 () Bool)

(assert (=> bs!518417 m!3262611))

(assert (=> bs!518417 m!3262093))

(declare-fun m!3262613 () Bool)

(assert (=> bs!518417 m!3262613))

(declare-fun m!3262615 () Bool)

(assert (=> bs!518417 m!3262615))

(assert (=> bs!518417 m!3262093))

(declare-fun m!3262617 () Bool)

(assert (=> bs!518417 m!3262617))

(assert (=> bs!518417 m!3262615))

(declare-fun m!3262619 () Bool)

(assert (=> bs!518417 m!3262619))

(assert (=> bs!518417 m!3262091))

(assert (=> bs!518417 m!3262611))

(declare-fun m!3262621 () Bool)

(assert (=> bs!518417 m!3262621))

(declare-fun m!3262623 () Bool)

(assert (=> bs!518417 m!3262623))

(assert (=> bs!518417 m!3262091))

(assert (=> bs!518417 m!3262615))

(assert (=> d!821727 d!821873))

(declare-fun d!821899 () Bool)

(declare-fun lt!1010521 () Unit!47387)

(declare-fun lemma!562 (List!33533 LexerInterface!4600 List!33533) Unit!47387)

(assert (=> d!821899 (= lt!1010521 (lemma!562 rules!1047 thiss!11007 rules!1047))))

(declare-fun lambda!104002 () Int)

(declare-fun generalisedUnion!538 (List!33539) Regex!8401)

(declare-fun map!7190 (List!33533 Int) List!33539)

(assert (=> d!821899 (= (rulesRegex!998 thiss!11007 rules!1047) (generalisedUnion!538 (map!7190 rules!1047 lambda!104002)))))

(declare-fun bs!518418 () Bool)

(assert (= bs!518418 d!821899))

(declare-fun m!3262629 () Bool)

(assert (=> bs!518418 m!3262629))

(declare-fun m!3262631 () Bool)

(assert (=> bs!518418 m!3262631))

(assert (=> bs!518418 m!3262631))

(declare-fun m!3262633 () Bool)

(assert (=> bs!518418 m!3262633))

(assert (=> d!821727 d!821899))

(declare-fun d!821903 () Bool)

(declare-fun lt!1010522 () BalanceConc!20388)

(assert (=> d!821903 (= (list!12485 lt!1010522) (originalCharacters!5742 (h!38830 l!4019)))))

(assert (=> d!821903 (= lt!1010522 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))))

(assert (=> d!821903 (= (charsOf!3106 (h!38830 l!4019)) lt!1010522)))

(declare-fun b_lambda!85077 () Bool)

(assert (=> (not b_lambda!85077) (not d!821903)))

(assert (=> d!821903 t!231568))

(declare-fun b_and!207251 () Bool)

(assert (= b_and!207239 (and (=> t!231568 result!192346) b_and!207251)))

(assert (=> d!821903 t!231570))

(declare-fun b_and!207253 () Bool)

(assert (= b_and!207241 (and (=> t!231570 result!192348) b_and!207253)))

(assert (=> d!821903 t!231576))

(declare-fun b_and!207255 () Bool)

(assert (= b_and!207245 (and (=> t!231576 result!192356) b_and!207255)))

(assert (=> d!821903 t!231580))

(declare-fun b_and!207257 () Bool)

(assert (= b_and!207249 (and (=> t!231580 result!192362) b_and!207257)))

(declare-fun m!3262635 () Bool)

(assert (=> d!821903 m!3262635))

(assert (=> d!821903 m!3262297))

(assert (=> d!821727 d!821903))

(declare-fun d!821905 () Bool)

(declare-fun list!12489 (Conc!10375) List!33532)

(assert (=> d!821905 (= (list!12485 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))) (list!12489 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))))))

(declare-fun bs!518419 () Bool)

(assert (= bs!518419 d!821905))

(declare-fun m!3262637 () Bool)

(assert (=> bs!518419 m!3262637))

(assert (=> b!2832619 d!821905))

(declare-fun d!821907 () Bool)

(assert (=> d!821907 true))

(declare-fun lambda!104005 () Int)

(declare-fun order!17811 () Int)

(declare-fun dynLambda!14036 (Int Int) Int)

(assert (=> d!821907 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019))))) (dynLambda!14036 order!17811 lambda!104005))))

(declare-fun Forall2!837 (Int) Bool)

(assert (=> d!821907 (= (equivClasses!1981 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019))))) (Forall2!837 lambda!104005))))

(declare-fun bs!518420 () Bool)

(assert (= bs!518420 d!821907))

(declare-fun m!3262639 () Bool)

(assert (=> bs!518420 m!3262639))

(assert (=> b!2832646 d!821907))

(declare-fun d!821909 () Bool)

(declare-fun lt!1010525 () Int)

(assert (=> d!821909 (>= lt!1010525 0)))

(declare-fun e!1793662 () Int)

(assert (=> d!821909 (= lt!1010525 e!1793662)))

(declare-fun c!458010 () Bool)

(assert (=> d!821909 (= c!458010 ((_ is Nil!33408) (originalCharacters!5742 (h!38830 l!4019))))))

(assert (=> d!821909 (= (size!26004 (originalCharacters!5742 (h!38830 l!4019))) lt!1010525)))

(declare-fun b!2832833 () Bool)

(assert (=> b!2832833 (= e!1793662 0)))

(declare-fun b!2832834 () Bool)

(assert (=> b!2832834 (= e!1793662 (+ 1 (size!26004 (t!231529 (originalCharacters!5742 (h!38830 l!4019))))))))

(assert (= (and d!821909 c!458010) b!2832833))

(assert (= (and d!821909 (not c!458010)) b!2832834))

(declare-fun m!3262641 () Bool)

(assert (=> b!2832834 m!3262641))

(assert (=> b!2832620 d!821909))

(assert (=> b!2832641 d!821731))

(declare-fun bs!518421 () Bool)

(declare-fun d!821911 () Bool)

(assert (= bs!518421 (and d!821911 d!821743)))

(declare-fun lambda!104006 () Int)

(assert (=> bs!518421 (= lambda!104006 lambda!103986)))

(declare-fun bs!518422 () Bool)

(assert (= bs!518422 (and d!821911 d!821787)))

(assert (=> bs!518422 (= lambda!104006 lambda!103989)))

(declare-fun bs!518423 () Bool)

(assert (= bs!518423 (and d!821911 d!821793)))

(assert (=> bs!518423 (= lambda!104006 lambda!103990)))

(declare-fun bs!518424 () Bool)

(assert (= bs!518424 (and d!821911 d!821797)))

(assert (=> bs!518424 (= lambda!104006 lambda!103991)))

(declare-fun b!2832839 () Bool)

(declare-fun e!1793667 () Bool)

(assert (=> b!2832839 (= e!1793667 true)))

(declare-fun b!2832838 () Bool)

(declare-fun e!1793666 () Bool)

(assert (=> b!2832838 (= e!1793666 e!1793667)))

(declare-fun b!2832837 () Bool)

(declare-fun e!1793665 () Bool)

(assert (=> b!2832837 (= e!1793665 e!1793666)))

(assert (=> d!821911 e!1793665))

(assert (= b!2832838 b!2832839))

(assert (= b!2832837 b!2832838))

(assert (= (and d!821911 ((_ is Cons!33409) rules!1047)) b!2832837))

(assert (=> b!2832839 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!104006))))

(assert (=> b!2832839 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!104006))))

(assert (=> d!821911 true))

(declare-fun lt!1010526 () Bool)

(assert (=> d!821911 (= lt!1010526 (forall!6863 (list!12484 (seqFromList!3256 l!4019)) lambda!104006))))

(declare-fun e!1793663 () Bool)

(assert (=> d!821911 (= lt!1010526 e!1793663)))

(declare-fun res!1179244 () Bool)

(assert (=> d!821911 (=> res!1179244 e!1793663)))

(assert (=> d!821911 (= res!1179244 (not ((_ is Cons!33410) (list!12484 (seqFromList!3256 l!4019)))))))

(assert (=> d!821911 (not (isEmpty!18419 rules!1047))))

(assert (=> d!821911 (= (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (list!12484 (seqFromList!3256 l!4019))) lt!1010526)))

(declare-fun b!2832835 () Bool)

(declare-fun e!1793664 () Bool)

(assert (=> b!2832835 (= e!1793663 e!1793664)))

(declare-fun res!1179243 () Bool)

(assert (=> b!2832835 (=> (not res!1179243) (not e!1793664))))

(assert (=> b!2832835 (= res!1179243 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (list!12484 (seqFromList!3256 l!4019)))))))

(declare-fun b!2832836 () Bool)

(assert (=> b!2832836 (= e!1793664 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 (list!12484 (seqFromList!3256 l!4019)))))))

(assert (= (and d!821911 (not res!1179244)) b!2832835))

(assert (= (and b!2832835 res!1179243) b!2832836))

(assert (=> d!821911 m!3262267))

(declare-fun m!3262643 () Bool)

(assert (=> d!821911 m!3262643))

(assert (=> d!821911 m!3262065))

(declare-fun m!3262645 () Bool)

(assert (=> b!2832835 m!3262645))

(declare-fun m!3262647 () Bool)

(assert (=> b!2832836 m!3262647))

(assert (=> b!2832596 d!821911))

(declare-fun d!821913 () Bool)

(assert (=> d!821913 (= (list!12484 (seqFromList!3256 l!4019)) (list!12488 (c!457975 (seqFromList!3256 l!4019))))))

(declare-fun bs!518425 () Bool)

(assert (= bs!518425 d!821913))

(declare-fun m!3262649 () Bool)

(assert (=> bs!518425 m!3262649))

(assert (=> b!2832596 d!821913))

(assert (=> b!2832642 d!821787))

(declare-fun d!821915 () Bool)

(assert (=> d!821915 (= (isEmpty!18423 (originalCharacters!5742 (h!38830 l!4019))) ((_ is Nil!33408) (originalCharacters!5742 (h!38830 l!4019))))))

(assert (=> d!821781 d!821915))

(declare-fun d!821917 () Bool)

(declare-fun lt!1010527 () Int)

(assert (=> d!821917 (>= lt!1010527 0)))

(declare-fun e!1793668 () Int)

(assert (=> d!821917 (= lt!1010527 e!1793668)))

(declare-fun c!458011 () Bool)

(assert (=> d!821917 (= c!458011 ((_ is Nil!33408) (list!12485 (charsOf!3106 (h!38830 (t!231531 l!4019))))))))

(assert (=> d!821917 (= (size!26004 (list!12485 (charsOf!3106 (h!38830 (t!231531 l!4019))))) lt!1010527)))

(declare-fun b!2832840 () Bool)

(assert (=> b!2832840 (= e!1793668 0)))

(declare-fun b!2832841 () Bool)

(assert (=> b!2832841 (= e!1793668 (+ 1 (size!26004 (t!231529 (list!12485 (charsOf!3106 (h!38830 (t!231531 l!4019))))))))))

(assert (= (and d!821917 c!458011) b!2832840))

(assert (= (and d!821917 (not c!458011)) b!2832841))

(declare-fun m!3262651 () Bool)

(assert (=> b!2832841 m!3262651))

(assert (=> d!821777 d!821917))

(declare-fun d!821919 () Bool)

(assert (=> d!821919 (= (list!12485 (charsOf!3106 (h!38830 (t!231531 l!4019)))) (list!12489 (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019))))))))

(declare-fun bs!518426 () Bool)

(assert (= bs!518426 d!821919))

(declare-fun m!3262653 () Bool)

(assert (=> bs!518426 m!3262653))

(assert (=> d!821777 d!821919))

(declare-fun d!821921 () Bool)

(declare-fun lt!1010530 () Int)

(assert (=> d!821921 (= lt!1010530 (size!26004 (list!12489 (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019)))))))))

(assert (=> d!821921 (= lt!1010530 (ite ((_ is Empty!10375) (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019))))) 0 (ite ((_ is Leaf!15788) (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019))))) (csize!20981 (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019))))) (csize!20980 (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019))))))))))

(assert (=> d!821921 (= (size!26005 (c!457974 (charsOf!3106 (h!38830 (t!231531 l!4019))))) lt!1010530)))

(declare-fun bs!518427 () Bool)

(assert (= bs!518427 d!821921))

(assert (=> bs!518427 m!3262653))

(assert (=> bs!518427 m!3262653))

(declare-fun m!3262655 () Bool)

(assert (=> bs!518427 m!3262655))

(assert (=> d!821777 d!821921))

(declare-fun bs!518428 () Bool)

(declare-fun d!821923 () Bool)

(assert (= bs!518428 (and d!821923 d!821907)))

(declare-fun lambda!104007 () Int)

(assert (=> bs!518428 (= (= (toValue!7040 (transformation!5010 (h!38829 rules!1047))) (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019))))) (= lambda!104007 lambda!104005))))

(assert (=> d!821923 true))

(assert (=> d!821923 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14036 order!17811 lambda!104007))))

(assert (=> d!821923 (= (equivClasses!1981 (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (Forall2!837 lambda!104007))))

(declare-fun bs!518429 () Bool)

(assert (= bs!518429 d!821923))

(declare-fun m!3262657 () Bool)

(assert (=> bs!518429 m!3262657))

(assert (=> b!2832636 d!821923))

(declare-fun d!821925 () Bool)

(declare-fun c!458014 () Bool)

(assert (=> d!821925 (= c!458014 ((_ is Node!10375) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))))))

(declare-fun e!1793673 () Bool)

(assert (=> d!821925 (= (inv!45368 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))) e!1793673)))

(declare-fun b!2832848 () Bool)

(declare-fun inv!45372 (Conc!10375) Bool)

(assert (=> b!2832848 (= e!1793673 (inv!45372 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))))))

(declare-fun b!2832849 () Bool)

(declare-fun e!1793674 () Bool)

(assert (=> b!2832849 (= e!1793673 e!1793674)))

(declare-fun res!1179247 () Bool)

(assert (=> b!2832849 (= res!1179247 (not ((_ is Leaf!15788) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))))))))

(assert (=> b!2832849 (=> res!1179247 e!1793674)))

(declare-fun b!2832850 () Bool)

(declare-fun inv!45373 (Conc!10375) Bool)

(assert (=> b!2832850 (= e!1793674 (inv!45373 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))))))

(assert (= (and d!821925 c!458014) b!2832848))

(assert (= (and d!821925 (not c!458014)) b!2832849))

(assert (= (and b!2832849 (not res!1179247)) b!2832850))

(declare-fun m!3262659 () Bool)

(assert (=> b!2832848 m!3262659))

(declare-fun m!3262661 () Bool)

(assert (=> b!2832850 m!3262661))

(assert (=> b!2832614 d!821925))

(declare-fun b!2832851 () Bool)

(declare-fun e!1793676 () Bool)

(assert (=> b!2832851 (= e!1793676 (inv!15 (value!161154 (h!38830 (t!231531 l!4019)))))))

(declare-fun b!2832852 () Bool)

(declare-fun e!1793677 () Bool)

(declare-fun e!1793675 () Bool)

(assert (=> b!2832852 (= e!1793677 e!1793675)))

(declare-fun c!458015 () Bool)

(assert (=> b!2832852 (= c!458015 ((_ is IntegerValue!15721) (value!161154 (h!38830 (t!231531 l!4019)))))))

(declare-fun b!2832853 () Bool)

(assert (=> b!2832853 (= e!1793675 (inv!17 (value!161154 (h!38830 (t!231531 l!4019)))))))

(declare-fun d!821927 () Bool)

(declare-fun c!458016 () Bool)

(assert (=> d!821927 (= c!458016 ((_ is IntegerValue!15720) (value!161154 (h!38830 (t!231531 l!4019)))))))

(assert (=> d!821927 (= (inv!21 (value!161154 (h!38830 (t!231531 l!4019)))) e!1793677)))

(declare-fun b!2832854 () Bool)

(assert (=> b!2832854 (= e!1793677 (inv!16 (value!161154 (h!38830 (t!231531 l!4019)))))))

(declare-fun b!2832855 () Bool)

(declare-fun res!1179248 () Bool)

(assert (=> b!2832855 (=> res!1179248 e!1793676)))

(assert (=> b!2832855 (= res!1179248 (not ((_ is IntegerValue!15722) (value!161154 (h!38830 (t!231531 l!4019))))))))

(assert (=> b!2832855 (= e!1793675 e!1793676)))

(assert (= (and d!821927 c!458016) b!2832854))

(assert (= (and d!821927 (not c!458016)) b!2832852))

(assert (= (and b!2832852 c!458015) b!2832853))

(assert (= (and b!2832852 (not c!458015)) b!2832855))

(assert (= (and b!2832855 (not res!1179248)) b!2832851))

(declare-fun m!3262663 () Bool)

(assert (=> b!2832851 m!3262663))

(declare-fun m!3262665 () Bool)

(assert (=> b!2832853 m!3262665))

(declare-fun m!3262667 () Bool)

(assert (=> b!2832854 m!3262667))

(assert (=> b!2832663 d!821927))

(declare-fun d!821929 () Bool)

(declare-fun res!1179249 () Bool)

(declare-fun e!1793678 () Bool)

(assert (=> d!821929 (=> (not res!1179249) (not e!1793678))))

(assert (=> d!821929 (= res!1179249 (not (isEmpty!18423 (originalCharacters!5742 (h!38830 (t!231531 l!4019))))))))

(assert (=> d!821929 (= (inv!45365 (h!38830 (t!231531 l!4019))) e!1793678)))

(declare-fun b!2832856 () Bool)

(declare-fun res!1179250 () Bool)

(assert (=> b!2832856 (=> (not res!1179250) (not e!1793678))))

(assert (=> b!2832856 (= res!1179250 (= (originalCharacters!5742 (h!38830 (t!231531 l!4019))) (list!12485 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))))))

(declare-fun b!2832857 () Bool)

(assert (=> b!2832857 (= e!1793678 (= (size!25998 (h!38830 (t!231531 l!4019))) (size!26004 (originalCharacters!5742 (h!38830 (t!231531 l!4019))))))))

(assert (= (and d!821929 res!1179249) b!2832856))

(assert (= (and b!2832856 res!1179250) b!2832857))

(declare-fun b_lambda!85079 () Bool)

(assert (=> (not b_lambda!85079) (not b!2832856)))

(assert (=> b!2832856 t!231564))

(declare-fun b_and!207259 () Bool)

(assert (= b_and!207251 (and (=> t!231564 result!192340) b_and!207259)))

(assert (=> b!2832856 t!231566))

(declare-fun b_and!207261 () Bool)

(assert (= b_and!207253 (and (=> t!231566 result!192344) b_and!207261)))

(assert (=> b!2832856 t!231574))

(declare-fun b_and!207263 () Bool)

(assert (= b_and!207255 (and (=> t!231574 result!192354) b_and!207263)))

(assert (=> b!2832856 t!231578))

(declare-fun b_and!207265 () Bool)

(assert (= b_and!207257 (and (=> t!231578 result!192360) b_and!207265)))

(declare-fun m!3262669 () Bool)

(assert (=> d!821929 m!3262669))

(assert (=> b!2832856 m!3262289))

(assert (=> b!2832856 m!3262289))

(declare-fun m!3262671 () Bool)

(assert (=> b!2832856 m!3262671))

(declare-fun m!3262673 () Bool)

(assert (=> b!2832857 m!3262673))

(assert (=> b!2832662 d!821929))

(assert (=> d!821729 d!821741))

(declare-fun d!821931 () Bool)

(assert (=> d!821931 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (t!231531 l!4019)))))

(assert (=> d!821931 true))

(declare-fun _$77!755 () Unit!47387)

(assert (=> d!821931 (= (choose!16724 thiss!11007 rules!1047 l!4019 (h!38830 (t!231531 l!4019))) _$77!755)))

(declare-fun bs!518460 () Bool)

(assert (= bs!518460 d!821931))

(assert (=> bs!518460 m!3262047))

(assert (=> d!821729 d!821931))

(assert (=> d!821729 d!821785))

(declare-fun d!822007 () Bool)

(assert (=> d!822007 (= (inv!45361 (tag!5514 (rule!7438 (h!38830 (t!231531 l!4019))))) (= (mod (str.len (value!161153 (tag!5514 (rule!7438 (h!38830 (t!231531 l!4019)))))) 2) 0))))

(assert (=> b!2832664 d!822007))

(declare-fun d!822009 () Bool)

(declare-fun res!1179276 () Bool)

(declare-fun e!1793754 () Bool)

(assert (=> d!822009 (=> (not res!1179276) (not e!1793754))))

(assert (=> d!822009 (= res!1179276 (semiInverseModEq!2082 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (toValue!7040 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))))))

(assert (=> d!822009 (= (inv!45364 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) e!1793754)))

(declare-fun b!2832981 () Bool)

(assert (=> b!2832981 (= e!1793754 (equivClasses!1981 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (toValue!7040 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))))))

(assert (= (and d!822009 res!1179276) b!2832981))

(declare-fun m!3262853 () Bool)

(assert (=> d!822009 m!3262853))

(declare-fun m!3262855 () Bool)

(assert (=> b!2832981 m!3262855))

(assert (=> b!2832664 d!822009))

(declare-fun d!822011 () Bool)

(assert (=> d!822011 (= (inv!45369 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))) (isBalanced!3132 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))))))

(declare-fun bs!518461 () Bool)

(assert (= bs!518461 d!822011))

(declare-fun m!3262857 () Bool)

(assert (=> bs!518461 m!3262857))

(assert (=> tb!154281 d!822011))

(declare-fun d!822013 () Bool)

(declare-fun charsToBigInt!0 (List!33531 Int) Int)

(assert (=> d!822013 (= (inv!15 (value!161154 (h!38830 l!4019))) (= (charsToBigInt!0 (text!37129 (value!161154 (h!38830 l!4019))) 0) (value!161149 (value!161154 (h!38830 l!4019)))))))

(declare-fun bs!518462 () Bool)

(assert (= bs!518462 d!822013))

(declare-fun m!3262859 () Bool)

(assert (=> bs!518462 m!3262859))

(assert (=> b!2832467 d!822013))

(declare-fun d!822015 () Bool)

(declare-fun lt!1010577 () Token!9422)

(declare-fun apply!7808 (List!33534 Int) Token!9422)

(assert (=> d!822015 (= lt!1010577 (apply!7808 (list!12484 (_1!19872 lt!1010379)) 0))))

(declare-fun apply!7809 (Conc!10376 Int) Token!9422)

(assert (=> d!822015 (= lt!1010577 (apply!7809 (c!457975 (_1!19872 lt!1010379)) 0))))

(declare-fun e!1793757 () Bool)

(assert (=> d!822015 e!1793757))

(declare-fun res!1179279 () Bool)

(assert (=> d!822015 (=> (not res!1179279) (not e!1793757))))

(assert (=> d!822015 (= res!1179279 (<= 0 0))))

(assert (=> d!822015 (= (apply!7801 (_1!19872 lt!1010379) 0) lt!1010577)))

(declare-fun b!2832984 () Bool)

(assert (=> b!2832984 (= e!1793757 (< 0 (size!26003 (_1!19872 lt!1010379))))))

(assert (= (and d!822015 res!1179279) b!2832984))

(assert (=> d!822015 m!3262437))

(assert (=> d!822015 m!3262437))

(declare-fun m!3262861 () Bool)

(assert (=> d!822015 m!3262861))

(declare-fun m!3262863 () Bool)

(assert (=> d!822015 m!3262863))

(assert (=> b!2832984 m!3262153))

(assert (=> b!2832497 d!822015))

(declare-fun d!822017 () Bool)

(declare-fun charsToBigInt!1 (List!33531) Int)

(assert (=> d!822017 (= (inv!17 (value!161154 (h!38830 l!4019))) (= (charsToBigInt!1 (text!37128 (value!161154 (h!38830 l!4019)))) (value!161146 (value!161154 (h!38830 l!4019)))))))

(declare-fun bs!518463 () Bool)

(assert (= bs!518463 d!822017))

(declare-fun m!3262865 () Bool)

(assert (=> bs!518463 m!3262865))

(assert (=> b!2832469 d!822017))

(declare-fun d!822019 () Bool)

(assert (=> d!822019 (= (inv!45369 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))) (isBalanced!3132 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))))))

(declare-fun bs!518464 () Bool)

(assert (= bs!518464 d!822019))

(declare-fun m!3262867 () Bool)

(assert (=> bs!518464 m!3262867))

(assert (=> tb!154277 d!822019))

(declare-fun d!822021 () Bool)

(declare-fun lt!1010580 () Bool)

(assert (=> d!822021 (= lt!1010580 (isEmpty!18423 (list!12485 (_2!19872 lt!1010379))))))

(declare-fun isEmpty!18427 (Conc!10375) Bool)

(assert (=> d!822021 (= lt!1010580 (isEmpty!18427 (c!457974 (_2!19872 lt!1010379))))))

(assert (=> d!822021 (= (isEmpty!18422 (_2!19872 lt!1010379)) lt!1010580)))

(declare-fun bs!518465 () Bool)

(assert (= bs!518465 d!822021))

(declare-fun m!3262869 () Bool)

(assert (=> bs!518465 m!3262869))

(assert (=> bs!518465 m!3262869))

(declare-fun m!3262871 () Bool)

(assert (=> bs!518465 m!3262871))

(declare-fun m!3262873 () Bool)

(assert (=> bs!518465 m!3262873))

(assert (=> b!2832498 d!822021))

(declare-fun d!822023 () Bool)

(declare-fun res!1179280 () Bool)

(declare-fun e!1793758 () Bool)

(assert (=> d!822023 (=> res!1179280 e!1793758)))

(assert (=> d!822023 (= res!1179280 ((_ is Nil!33410) (list!12484 (seqFromList!3256 (t!231531 l!4019)))))))

(assert (=> d!822023 (= (forall!6863 (list!12484 (seqFromList!3256 (t!231531 l!4019))) lambda!103990) e!1793758)))

(declare-fun b!2832985 () Bool)

(declare-fun e!1793759 () Bool)

(assert (=> b!2832985 (= e!1793758 e!1793759)))

(declare-fun res!1179281 () Bool)

(assert (=> b!2832985 (=> (not res!1179281) (not e!1793759))))

(assert (=> b!2832985 (= res!1179281 (dynLambda!14033 lambda!103990 (h!38830 (list!12484 (seqFromList!3256 (t!231531 l!4019))))))))

(declare-fun b!2832986 () Bool)

(assert (=> b!2832986 (= e!1793759 (forall!6863 (t!231531 (list!12484 (seqFromList!3256 (t!231531 l!4019)))) lambda!103990))))

(assert (= (and d!822023 (not res!1179280)) b!2832985))

(assert (= (and b!2832985 res!1179281) b!2832986))

(declare-fun b_lambda!85101 () Bool)

(assert (=> (not b_lambda!85101) (not b!2832985)))

(declare-fun m!3262875 () Bool)

(assert (=> b!2832985 m!3262875))

(declare-fun m!3262877 () Bool)

(assert (=> b!2832986 m!3262877))

(assert (=> d!821793 d!822023))

(declare-fun d!822025 () Bool)

(assert (=> d!822025 (= (list!12484 (seqFromList!3256 (t!231531 l!4019))) (list!12488 (c!457975 (seqFromList!3256 (t!231531 l!4019)))))))

(declare-fun bs!518466 () Bool)

(assert (= bs!518466 d!822025))

(declare-fun m!3262879 () Bool)

(assert (=> bs!518466 m!3262879))

(assert (=> d!821793 d!822025))

(declare-fun d!822027 () Bool)

(declare-fun lt!1010583 () Bool)

(assert (=> d!822027 (= lt!1010583 (forall!6863 (list!12484 (seqFromList!3256 (t!231531 l!4019))) lambda!103990))))

(declare-fun forall!6867 (Conc!10376 Int) Bool)

(assert (=> d!822027 (= lt!1010583 (forall!6867 (c!457975 (seqFromList!3256 (t!231531 l!4019))) lambda!103990))))

(assert (=> d!822027 (= (forall!6864 (seqFromList!3256 (t!231531 l!4019)) lambda!103990) lt!1010583)))

(declare-fun bs!518467 () Bool)

(assert (= bs!518467 d!822027))

(assert (=> bs!518467 m!3262033))

(assert (=> bs!518467 m!3262315))

(assert (=> bs!518467 m!3262315))

(assert (=> bs!518467 m!3262317))

(declare-fun m!3262881 () Bool)

(assert (=> bs!518467 m!3262881))

(assert (=> d!821793 d!822027))

(assert (=> d!821793 d!821785))

(declare-fun d!822029 () Bool)

(declare-fun res!1179282 () Bool)

(declare-fun e!1793760 () Bool)

(assert (=> d!822029 (=> res!1179282 e!1793760)))

(assert (=> d!822029 (= res!1179282 ((_ is Nil!33410) (list!12484 (seqFromList!3256 l!4019))))))

(assert (=> d!822029 (= (forall!6863 (list!12484 (seqFromList!3256 l!4019)) lambda!103986) e!1793760)))

(declare-fun b!2832987 () Bool)

(declare-fun e!1793761 () Bool)

(assert (=> b!2832987 (= e!1793760 e!1793761)))

(declare-fun res!1179283 () Bool)

(assert (=> b!2832987 (=> (not res!1179283) (not e!1793761))))

(assert (=> b!2832987 (= res!1179283 (dynLambda!14033 lambda!103986 (h!38830 (list!12484 (seqFromList!3256 l!4019)))))))

(declare-fun b!2832988 () Bool)

(assert (=> b!2832988 (= e!1793761 (forall!6863 (t!231531 (list!12484 (seqFromList!3256 l!4019))) lambda!103986))))

(assert (= (and d!822029 (not res!1179282)) b!2832987))

(assert (= (and b!2832987 res!1179283) b!2832988))

(declare-fun b_lambda!85103 () Bool)

(assert (=> (not b_lambda!85103) (not b!2832987)))

(declare-fun m!3262883 () Bool)

(assert (=> b!2832987 m!3262883))

(declare-fun m!3262885 () Bool)

(assert (=> b!2832988 m!3262885))

(assert (=> d!821743 d!822029))

(assert (=> d!821743 d!821913))

(declare-fun d!822031 () Bool)

(declare-fun lt!1010584 () Bool)

(assert (=> d!822031 (= lt!1010584 (forall!6863 (list!12484 (seqFromList!3256 l!4019)) lambda!103986))))

(assert (=> d!822031 (= lt!1010584 (forall!6867 (c!457975 (seqFromList!3256 l!4019)) lambda!103986))))

(assert (=> d!822031 (= (forall!6864 (seqFromList!3256 l!4019) lambda!103986) lt!1010584)))

(declare-fun bs!518468 () Bool)

(assert (= bs!518468 d!822031))

(assert (=> bs!518468 m!3262071))

(assert (=> bs!518468 m!3262267))

(assert (=> bs!518468 m!3262267))

(assert (=> bs!518468 m!3262269))

(declare-fun m!3262887 () Bool)

(assert (=> bs!518468 m!3262887))

(assert (=> d!821743 d!822031))

(assert (=> d!821743 d!821785))

(declare-fun d!822033 () Bool)

(declare-fun res!1179288 () Bool)

(declare-fun e!1793766 () Bool)

(assert (=> d!822033 (=> res!1179288 e!1793766)))

(assert (=> d!822033 (= res!1179288 ((_ is Nil!33409) rules!1047))))

(assert (=> d!822033 (= (noDuplicateTag!1848 thiss!11007 rules!1047 Nil!33412) e!1793766)))

(declare-fun b!2832993 () Bool)

(declare-fun e!1793767 () Bool)

(assert (=> b!2832993 (= e!1793766 e!1793767)))

(declare-fun res!1179289 () Bool)

(assert (=> b!2832993 (=> (not res!1179289) (not e!1793767))))

(declare-fun contains!6100 (List!33536 String!36722) Bool)

(assert (=> b!2832993 (= res!1179289 (not (contains!6100 Nil!33412 (tag!5514 (h!38829 rules!1047)))))))

(declare-fun b!2832994 () Bool)

(assert (=> b!2832994 (= e!1793767 (noDuplicateTag!1848 thiss!11007 (t!231530 rules!1047) (Cons!33412 (tag!5514 (h!38829 rules!1047)) Nil!33412)))))

(assert (= (and d!822033 (not res!1179288)) b!2832993))

(assert (= (and b!2832993 res!1179289) b!2832994))

(declare-fun m!3262889 () Bool)

(assert (=> b!2832993 m!3262889))

(declare-fun m!3262891 () Bool)

(assert (=> b!2832994 m!3262891))

(assert (=> b!2832624 d!822033))

(declare-fun d!822035 () Bool)

(declare-fun charsToInt!0 (List!33531) (_ BitVec 32))

(assert (=> d!822035 (= (inv!16 (value!161154 (h!38830 l!4019))) (= (charsToInt!0 (text!37127 (value!161154 (h!38830 l!4019)))) (value!161145 (value!161154 (h!38830 l!4019)))))))

(declare-fun bs!518469 () Bool)

(assert (= bs!518469 d!822035))

(declare-fun m!3262893 () Bool)

(assert (=> bs!518469 m!3262893))

(assert (=> b!2832470 d!822035))

(declare-fun d!822037 () Bool)

(declare-fun lt!1010585 () Bool)

(assert (=> d!822037 (= lt!1010585 (isEmpty!18423 (list!12485 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))))))))))

(assert (=> d!822037 (= lt!1010585 (isEmpty!18427 (c!457974 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019)))))))))))

(assert (=> d!822037 (= (isEmpty!18422 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 (t!231531 l!4019))))))) lt!1010585)))

(declare-fun bs!518470 () Bool)

(assert (= bs!518470 d!822037))

(declare-fun m!3262895 () Bool)

(assert (=> bs!518470 m!3262895))

(assert (=> bs!518470 m!3262895))

(declare-fun m!3262897 () Bool)

(assert (=> bs!518470 m!3262897))

(declare-fun m!3262899 () Bool)

(assert (=> bs!518470 m!3262899))

(assert (=> b!2832499 d!822037))

(assert (=> b!2832499 d!821831))

(assert (=> b!2832499 d!821839))

(assert (=> b!2832499 d!821835))

(declare-fun d!822039 () Bool)

(declare-fun c!458022 () Bool)

(assert (=> d!822039 (= c!458022 ((_ is Node!10375) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))))))

(declare-fun e!1793768 () Bool)

(assert (=> d!822039 (= (inv!45368 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))) e!1793768)))

(declare-fun b!2832995 () Bool)

(assert (=> b!2832995 (= e!1793768 (inv!45372 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))))))

(declare-fun b!2832996 () Bool)

(declare-fun e!1793769 () Bool)

(assert (=> b!2832996 (= e!1793768 e!1793769)))

(declare-fun res!1179290 () Bool)

(assert (=> b!2832996 (= res!1179290 (not ((_ is Leaf!15788) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))))))))

(assert (=> b!2832996 (=> res!1179290 e!1793769)))

(declare-fun b!2832997 () Bool)

(assert (=> b!2832997 (= e!1793769 (inv!45373 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))))))

(assert (= (and d!822039 c!458022) b!2832995))

(assert (= (and d!822039 (not c!458022)) b!2832996))

(assert (= (and b!2832996 (not res!1179290)) b!2832997))

(declare-fun m!3262901 () Bool)

(assert (=> b!2832995 m!3262901))

(declare-fun m!3262903 () Bool)

(assert (=> b!2832997 m!3262903))

(assert (=> b!2832621 d!822039))

(declare-fun d!822041 () Bool)

(declare-fun e!1793772 () Bool)

(assert (=> d!822041 e!1793772))

(declare-fun res!1179293 () Bool)

(assert (=> d!822041 (=> (not res!1179293) (not e!1793772))))

(declare-fun lt!1010588 () BalanceConc!20390)

(assert (=> d!822041 (= res!1179293 (= (list!12484 lt!1010588) (t!231531 l!4019)))))

(declare-fun fromList!583 (List!33534) Conc!10376)

(assert (=> d!822041 (= lt!1010588 (BalanceConc!20391 (fromList!583 (t!231531 l!4019))))))

(assert (=> d!822041 (= (fromListB!1473 (t!231531 l!4019)) lt!1010588)))

(declare-fun b!2833000 () Bool)

(assert (=> b!2833000 (= e!1793772 (isBalanced!3130 (fromList!583 (t!231531 l!4019))))))

(assert (= (and d!822041 res!1179293) b!2833000))

(declare-fun m!3262905 () Bool)

(assert (=> d!822041 m!3262905))

(declare-fun m!3262907 () Bool)

(assert (=> d!822041 m!3262907))

(assert (=> b!2833000 m!3262907))

(assert (=> b!2833000 m!3262907))

(declare-fun m!3262909 () Bool)

(assert (=> b!2833000 m!3262909))

(assert (=> d!821795 d!822041))

(declare-fun d!822043 () Bool)

(assert (=> d!822043 (= (inv!45361 (tag!5514 (h!38829 (t!231530 rules!1047)))) (= (mod (str.len (value!161153 (tag!5514 (h!38829 (t!231530 rules!1047))))) 2) 0))))

(assert (=> b!2832675 d!822043))

(declare-fun d!822045 () Bool)

(declare-fun res!1179294 () Bool)

(declare-fun e!1793773 () Bool)

(assert (=> d!822045 (=> (not res!1179294) (not e!1793773))))

(assert (=> d!822045 (= res!1179294 (semiInverseModEq!2082 (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toValue!7040 (transformation!5010 (h!38829 (t!231530 rules!1047))))))))

(assert (=> d!822045 (= (inv!45364 (transformation!5010 (h!38829 (t!231530 rules!1047)))) e!1793773)))

(declare-fun b!2833001 () Bool)

(assert (=> b!2833001 (= e!1793773 (equivClasses!1981 (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toValue!7040 (transformation!5010 (h!38829 (t!231530 rules!1047))))))))

(assert (= (and d!822045 res!1179294) b!2833001))

(declare-fun m!3262911 () Bool)

(assert (=> d!822045 m!3262911))

(declare-fun m!3262913 () Bool)

(assert (=> b!2833001 m!3262913))

(assert (=> b!2832675 d!822045))

(declare-fun bs!518471 () Bool)

(declare-fun d!822047 () Bool)

(assert (= bs!518471 (and d!822047 d!821797)))

(declare-fun lambda!104017 () Int)

(assert (=> bs!518471 (= lambda!104017 lambda!103991)))

(declare-fun bs!518472 () Bool)

(assert (= bs!518472 (and d!822047 d!821787)))

(assert (=> bs!518472 (= lambda!104017 lambda!103989)))

(declare-fun bs!518473 () Bool)

(assert (= bs!518473 (and d!822047 d!821743)))

(assert (=> bs!518473 (= lambda!104017 lambda!103986)))

(declare-fun bs!518474 () Bool)

(assert (= bs!518474 (and d!822047 d!821911)))

(assert (=> bs!518474 (= lambda!104017 lambda!104006)))

(declare-fun bs!518475 () Bool)

(assert (= bs!518475 (and d!822047 d!821793)))

(assert (=> bs!518475 (= lambda!104017 lambda!103990)))

(declare-fun b!2833006 () Bool)

(declare-fun e!1793778 () Bool)

(assert (=> b!2833006 (= e!1793778 true)))

(declare-fun b!2833005 () Bool)

(declare-fun e!1793777 () Bool)

(assert (=> b!2833005 (= e!1793777 e!1793778)))

(declare-fun b!2833004 () Bool)

(declare-fun e!1793776 () Bool)

(assert (=> b!2833004 (= e!1793776 e!1793777)))

(assert (=> d!822047 e!1793776))

(assert (= b!2833005 b!2833006))

(assert (= b!2833004 b!2833005))

(assert (= (and d!822047 ((_ is Cons!33409) rules!1047)) b!2833004))

(assert (=> b!2833006 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!104017))))

(assert (=> b!2833006 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!104017))))

(assert (=> d!822047 true))

(declare-fun lt!1010589 () Bool)

(assert (=> d!822047 (= lt!1010589 (forall!6863 (list!12484 (seqFromList!3256 (t!231531 l!4019))) lambda!104017))))

(declare-fun e!1793774 () Bool)

(assert (=> d!822047 (= lt!1010589 e!1793774)))

(declare-fun res!1179296 () Bool)

(assert (=> d!822047 (=> res!1179296 e!1793774)))

(assert (=> d!822047 (= res!1179296 (not ((_ is Cons!33410) (list!12484 (seqFromList!3256 (t!231531 l!4019))))))))

(assert (=> d!822047 (not (isEmpty!18419 rules!1047))))

(assert (=> d!822047 (= (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (list!12484 (seqFromList!3256 (t!231531 l!4019)))) lt!1010589)))

(declare-fun b!2833002 () Bool)

(declare-fun e!1793775 () Bool)

(assert (=> b!2833002 (= e!1793774 e!1793775)))

(declare-fun res!1179295 () Bool)

(assert (=> b!2833002 (=> (not res!1179295) (not e!1793775))))

(assert (=> b!2833002 (= res!1179295 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (list!12484 (seqFromList!3256 (t!231531 l!4019))))))))

(declare-fun b!2833003 () Bool)

(assert (=> b!2833003 (= e!1793775 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 (list!12484 (seqFromList!3256 (t!231531 l!4019))))))))

(assert (= (and d!822047 (not res!1179296)) b!2833002))

(assert (= (and b!2833002 res!1179295) b!2833003))

(assert (=> d!822047 m!3262315))

(declare-fun m!3262915 () Bool)

(assert (=> d!822047 m!3262915))

(assert (=> d!822047 m!3262065))

(declare-fun m!3262917 () Bool)

(assert (=> b!2833002 m!3262917))

(declare-fun m!3262919 () Bool)

(assert (=> b!2833003 m!3262919))

(assert (=> b!2832637 d!822047))

(assert (=> b!2832637 d!822025))

(declare-fun d!822049 () Bool)

(assert (=> d!822049 true))

(declare-fun lambda!104020 () Int)

(declare-fun order!17815 () Int)

(declare-fun dynLambda!14037 (Int Int) Int)

(assert (=> d!822049 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14037 order!17815 lambda!104020))))

(assert (=> d!822049 true))

(assert (=> d!822049 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14037 order!17815 lambda!104020))))

(declare-fun Forall!1240 (Int) Bool)

(assert (=> d!822049 (= (semiInverseModEq!2082 (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (Forall!1240 lambda!104020))))

(declare-fun bs!518476 () Bool)

(assert (= bs!518476 d!822049))

(declare-fun m!3262921 () Bool)

(assert (=> bs!518476 m!3262921))

(assert (=> d!821791 d!822049))

(declare-fun d!822051 () Bool)

(declare-fun lt!1010590 () Token!9422)

(assert (=> d!822051 (= lt!1010590 (apply!7808 (list!12484 (_1!19872 lt!1010376)) 0))))

(assert (=> d!822051 (= lt!1010590 (apply!7809 (c!457975 (_1!19872 lt!1010376)) 0))))

(declare-fun e!1793779 () Bool)

(assert (=> d!822051 e!1793779))

(declare-fun res!1179297 () Bool)

(assert (=> d!822051 (=> (not res!1179297) (not e!1793779))))

(assert (=> d!822051 (= res!1179297 (<= 0 0))))

(assert (=> d!822051 (= (apply!7801 (_1!19872 lt!1010376) 0) lt!1010590)))

(declare-fun b!2833011 () Bool)

(assert (=> b!2833011 (= e!1793779 (< 0 (size!26003 (_1!19872 lt!1010376))))))

(assert (= (and d!822051 res!1179297) b!2833011))

(assert (=> d!822051 m!3262459))

(assert (=> d!822051 m!3262459))

(declare-fun m!3262923 () Bool)

(assert (=> d!822051 m!3262923))

(declare-fun m!3262925 () Bool)

(assert (=> d!822051 m!3262925))

(assert (=> b!2833011 m!3262133))

(assert (=> b!2832494 d!822051))

(declare-fun d!822053 () Bool)

(assert (=> d!822053 true))

(declare-fun lt!1010593 () Bool)

(declare-fun rulesValidInductive!1726 (LexerInterface!4600 List!33533) Bool)

(assert (=> d!822053 (= lt!1010593 (rulesValidInductive!1726 thiss!11007 rules!1047))))

(declare-fun lambda!104023 () Int)

(declare-fun forall!6868 (List!33533 Int) Bool)

(assert (=> d!822053 (= lt!1010593 (forall!6868 rules!1047 lambda!104023))))

(assert (=> d!822053 (= (rulesValid!1852 thiss!11007 rules!1047) lt!1010593)))

(declare-fun bs!518477 () Bool)

(assert (= bs!518477 d!822053))

(declare-fun m!3262927 () Bool)

(assert (=> bs!518477 m!3262927))

(declare-fun m!3262929 () Bool)

(assert (=> bs!518477 m!3262929))

(assert (=> d!821783 d!822053))

(assert (=> b!2832629 d!821741))

(declare-fun d!822055 () Bool)

(declare-fun lt!1010594 () Bool)

(assert (=> d!822055 (= lt!1010594 (isEmpty!18423 (list!12485 (_2!19872 lt!1010376))))))

(assert (=> d!822055 (= lt!1010594 (isEmpty!18427 (c!457974 (_2!19872 lt!1010376))))))

(assert (=> d!822055 (= (isEmpty!18422 (_2!19872 lt!1010376)) lt!1010594)))

(declare-fun bs!518478 () Bool)

(assert (= bs!518478 d!822055))

(declare-fun m!3262931 () Bool)

(assert (=> bs!518478 m!3262931))

(assert (=> bs!518478 m!3262931))

(declare-fun m!3262933 () Bool)

(assert (=> bs!518478 m!3262933))

(declare-fun m!3262935 () Bool)

(assert (=> bs!518478 m!3262935))

(assert (=> b!2832495 d!822055))

(declare-fun d!822057 () Bool)

(declare-fun res!1179298 () Bool)

(declare-fun e!1793780 () Bool)

(assert (=> d!822057 (=> res!1179298 e!1793780)))

(assert (=> d!822057 (= res!1179298 ((_ is Nil!33410) l!4019))))

(assert (=> d!822057 (= (forall!6863 l!4019 lambda!103991) e!1793780)))

(declare-fun b!2833014 () Bool)

(declare-fun e!1793781 () Bool)

(assert (=> b!2833014 (= e!1793780 e!1793781)))

(declare-fun res!1179299 () Bool)

(assert (=> b!2833014 (=> (not res!1179299) (not e!1793781))))

(assert (=> b!2833014 (= res!1179299 (dynLambda!14033 lambda!103991 (h!38830 l!4019)))))

(declare-fun b!2833015 () Bool)

(assert (=> b!2833015 (= e!1793781 (forall!6863 (t!231531 l!4019) lambda!103991))))

(assert (= (and d!822057 (not res!1179298)) b!2833014))

(assert (= (and b!2833014 res!1179299) b!2833015))

(declare-fun b_lambda!85105 () Bool)

(assert (=> (not b_lambda!85105) (not b!2833014)))

(declare-fun m!3262937 () Bool)

(assert (=> b!2833014 m!3262937))

(declare-fun m!3262939 () Bool)

(assert (=> b!2833015 m!3262939))

(assert (=> d!821797 d!822057))

(assert (=> d!821797 d!821785))

(assert (=> d!821739 d!821731))

(declare-fun d!822059 () Bool)

(assert (=> d!822059 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 l!4019))))

(assert (=> d!822059 true))

(declare-fun _$77!756 () Unit!47387)

(assert (=> d!822059 (= (choose!16724 thiss!11007 rules!1047 l!4019 (h!38830 l!4019)) _$77!756)))

(declare-fun bs!518479 () Bool)

(assert (= bs!518479 d!822059))

(assert (=> bs!518479 m!3262045))

(assert (=> d!821739 d!822059))

(assert (=> d!821739 d!821785))

(declare-fun bs!518480 () Bool)

(declare-fun d!822061 () Bool)

(assert (= bs!518480 (and d!822061 d!821797)))

(declare-fun lambda!104024 () Int)

(assert (=> bs!518480 (= lambda!104024 lambda!103991)))

(declare-fun bs!518481 () Bool)

(assert (= bs!518481 (and d!822061 d!821787)))

(assert (=> bs!518481 (= lambda!104024 lambda!103989)))

(declare-fun bs!518482 () Bool)

(assert (= bs!518482 (and d!822061 d!821743)))

(assert (=> bs!518482 (= lambda!104024 lambda!103986)))

(declare-fun bs!518483 () Bool)

(assert (= bs!518483 (and d!822061 d!821911)))

(assert (=> bs!518483 (= lambda!104024 lambda!104006)))

(declare-fun bs!518484 () Bool)

(assert (= bs!518484 (and d!822061 d!821793)))

(assert (=> bs!518484 (= lambda!104024 lambda!103990)))

(declare-fun bs!518485 () Bool)

(assert (= bs!518485 (and d!822061 d!822047)))

(assert (=> bs!518485 (= lambda!104024 lambda!104017)))

(declare-fun b!2833020 () Bool)

(declare-fun e!1793786 () Bool)

(assert (=> b!2833020 (= e!1793786 true)))

(declare-fun b!2833019 () Bool)

(declare-fun e!1793785 () Bool)

(assert (=> b!2833019 (= e!1793785 e!1793786)))

(declare-fun b!2833018 () Bool)

(declare-fun e!1793784 () Bool)

(assert (=> b!2833018 (= e!1793784 e!1793785)))

(assert (=> d!822061 e!1793784))

(assert (= b!2833019 b!2833020))

(assert (= b!2833018 b!2833019))

(assert (= (and d!822061 ((_ is Cons!33409) rules!1047)) b!2833018))

(assert (=> b!2833020 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!104024))))

(assert (=> b!2833020 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (dynLambda!14029 order!17805 lambda!104024))))

(assert (=> d!822061 true))

(declare-fun lt!1010595 () Bool)

(assert (=> d!822061 (= lt!1010595 (forall!6863 (t!231531 (t!231531 l!4019)) lambda!104024))))

(declare-fun e!1793782 () Bool)

(assert (=> d!822061 (= lt!1010595 e!1793782)))

(declare-fun res!1179301 () Bool)

(assert (=> d!822061 (=> res!1179301 e!1793782)))

(assert (=> d!822061 (= res!1179301 (not ((_ is Cons!33410) (t!231531 (t!231531 l!4019)))))))

(assert (=> d!822061 (not (isEmpty!18419 rules!1047))))

(assert (=> d!822061 (= (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 (t!231531 l!4019))) lt!1010595)))

(declare-fun b!2833016 () Bool)

(declare-fun e!1793783 () Bool)

(assert (=> b!2833016 (= e!1793782 e!1793783)))

(declare-fun res!1179300 () Bool)

(assert (=> b!2833016 (=> (not res!1179300) (not e!1793783))))

(assert (=> b!2833016 (= res!1179300 (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (t!231531 (t!231531 l!4019)))))))

(declare-fun b!2833017 () Bool)

(assert (=> b!2833017 (= e!1793783 (rulesProduceEachTokenIndividuallyList!1643 thiss!11007 rules!1047 (t!231531 (t!231531 (t!231531 l!4019)))))))

(assert (= (and d!822061 (not res!1179301)) b!2833016))

(assert (= (and b!2833016 res!1179300) b!2833017))

(declare-fun m!3262941 () Bool)

(assert (=> d!822061 m!3262941))

(assert (=> d!822061 m!3262065))

(declare-fun m!3262943 () Bool)

(assert (=> b!2833016 m!3262943))

(declare-fun m!3262945 () Bool)

(assert (=> b!2833017 m!3262945))

(assert (=> b!2832630 d!822061))

(declare-fun d!822063 () Bool)

(declare-fun e!1793787 () Bool)

(assert (=> d!822063 e!1793787))

(declare-fun res!1179302 () Bool)

(assert (=> d!822063 (=> (not res!1179302) (not e!1793787))))

(declare-fun lt!1010596 () BalanceConc!20390)

(assert (=> d!822063 (= res!1179302 (= (list!12484 lt!1010596) l!4019))))

(assert (=> d!822063 (= lt!1010596 (BalanceConc!20391 (fromList!583 l!4019)))))

(assert (=> d!822063 (= (fromListB!1473 l!4019) lt!1010596)))

(declare-fun b!2833021 () Bool)

(assert (=> b!2833021 (= e!1793787 (isBalanced!3130 (fromList!583 l!4019)))))

(assert (= (and d!822063 res!1179302) b!2833021))

(declare-fun m!3262947 () Bool)

(assert (=> d!822063 m!3262947))

(declare-fun m!3262949 () Bool)

(assert (=> d!822063 m!3262949))

(assert (=> b!2833021 m!3262949))

(assert (=> b!2833021 m!3262949))

(declare-fun m!3262951 () Bool)

(assert (=> b!2833021 m!3262951))

(assert (=> d!821775 d!822063))

(declare-fun lt!1010597 () Bool)

(declare-fun d!822065 () Bool)

(assert (=> d!822065 (= lt!1010597 (isEmpty!18423 (list!12485 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))))))))))

(assert (=> d!822065 (= lt!1010597 (isEmpty!18427 (c!457974 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019))))))))))

(assert (=> d!822065 (= (isEmpty!18422 (_2!19872 (lex!2018 thiss!11007 rules!1047 (print!1737 thiss!11007 (singletonSeq!2169 (h!38830 l!4019)))))) lt!1010597)))

(declare-fun bs!518486 () Bool)

(assert (= bs!518486 d!822065))

(declare-fun m!3262953 () Bool)

(assert (=> bs!518486 m!3262953))

(assert (=> bs!518486 m!3262953))

(declare-fun m!3262955 () Bool)

(assert (=> bs!518486 m!3262955))

(declare-fun m!3262957 () Bool)

(assert (=> bs!518486 m!3262957))

(assert (=> b!2832496 d!822065))

(assert (=> b!2832496 d!821855))

(assert (=> b!2832496 d!821849))

(assert (=> b!2832496 d!821847))

(declare-fun d!822067 () Bool)

(assert (=> d!822067 (= (list!12485 lt!1010412) (list!12489 (c!457974 lt!1010412)))))

(declare-fun bs!518487 () Bool)

(assert (= bs!518487 d!822067))

(declare-fun m!3262959 () Bool)

(assert (=> bs!518487 m!3262959))

(assert (=> d!821779 d!822067))

(declare-fun bs!518488 () Bool)

(declare-fun d!822069 () Bool)

(assert (= bs!518488 (and d!822069 d!822049)))

(declare-fun lambda!104025 () Int)

(assert (=> bs!518488 (= (and (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toChars!6899 (transformation!5010 (h!38829 rules!1047)))) (= (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toValue!7040 (transformation!5010 (h!38829 rules!1047))))) (= lambda!104025 lambda!104020))))

(assert (=> d!822069 true))

(assert (=> d!822069 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019))))) (dynLambda!14037 order!17815 lambda!104025))))

(assert (=> d!822069 true))

(assert (=> d!822069 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019))))) (dynLambda!14037 order!17815 lambda!104025))))

(assert (=> d!822069 (= (semiInverseModEq!2082 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toValue!7040 (transformation!5010 (rule!7438 (h!38830 l!4019))))) (Forall!1240 lambda!104025))))

(declare-fun bs!518489 () Bool)

(assert (= bs!518489 d!822069))

(declare-fun m!3262961 () Bool)

(assert (=> bs!518489 m!3262961))

(assert (=> d!821801 d!822069))

(declare-fun b!2833024 () Bool)

(declare-fun e!1793790 () Bool)

(assert (=> b!2833024 (= e!1793790 true)))

(declare-fun b!2833023 () Bool)

(declare-fun e!1793789 () Bool)

(assert (=> b!2833023 (= e!1793789 e!1793790)))

(declare-fun b!2833022 () Bool)

(declare-fun e!1793788 () Bool)

(assert (=> b!2833022 (= e!1793788 e!1793789)))

(assert (=> b!2832631 e!1793788))

(assert (= b!2833023 b!2833024))

(assert (= b!2833022 b!2833023))

(assert (= (and b!2832631 ((_ is Cons!33409) (t!231530 rules!1047))) b!2833022))

(assert (=> b!2833024 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103989))))

(assert (=> b!2833024 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103989))))

(declare-fun b!2833025 () Bool)

(declare-fun e!1793791 () Bool)

(declare-fun tp!905570 () Bool)

(assert (=> b!2833025 (= e!1793791 (and tp_is_empty!14575 tp!905570))))

(assert (=> b!2832651 (= tp!905439 e!1793791)))

(assert (= (and b!2832651 ((_ is Cons!33408) (t!231529 (originalCharacters!5742 (h!38830 l!4019))))) b!2833025))

(declare-fun b!2833028 () Bool)

(declare-fun e!1793794 () Bool)

(assert (=> b!2833028 (= e!1793794 true)))

(declare-fun b!2833027 () Bool)

(declare-fun e!1793793 () Bool)

(assert (=> b!2833027 (= e!1793793 e!1793794)))

(declare-fun b!2833026 () Bool)

(declare-fun e!1793792 () Bool)

(assert (=> b!2833026 (= e!1793792 e!1793793)))

(assert (=> b!2832605 e!1793792))

(assert (= b!2833027 b!2833028))

(assert (= b!2833026 b!2833027))

(assert (= (and b!2832605 ((_ is Cons!33409) (t!231530 rules!1047))) b!2833026))

(assert (=> b!2833028 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103986))))

(assert (=> b!2833028 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103986))))

(declare-fun e!1793795 () Bool)

(assert (=> b!2832692 (= tp!905482 e!1793795)))

(declare-fun b!2833032 () Bool)

(declare-fun tp!905575 () Bool)

(declare-fun tp!905572 () Bool)

(assert (=> b!2833032 (= e!1793795 (and tp!905575 tp!905572))))

(declare-fun b!2833031 () Bool)

(declare-fun tp!905573 () Bool)

(assert (=> b!2833031 (= e!1793795 tp!905573)))

(declare-fun b!2833030 () Bool)

(declare-fun tp!905571 () Bool)

(declare-fun tp!905574 () Bool)

(assert (=> b!2833030 (= e!1793795 (and tp!905571 tp!905574))))

(declare-fun b!2833029 () Bool)

(assert (=> b!2833029 (= e!1793795 tp_is_empty!14575)))

(assert (= (and b!2832692 ((_ is ElementMatch!8401) (regOne!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833029))

(assert (= (and b!2832692 ((_ is Concat!13642) (regOne!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833030))

(assert (= (and b!2832692 ((_ is Star!8401) (regOne!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833031))

(assert (= (and b!2832692 ((_ is Union!8401) (regOne!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833032))

(declare-fun e!1793796 () Bool)

(assert (=> b!2832692 (= tp!905485 e!1793796)))

(declare-fun b!2833036 () Bool)

(declare-fun tp!905580 () Bool)

(declare-fun tp!905577 () Bool)

(assert (=> b!2833036 (= e!1793796 (and tp!905580 tp!905577))))

(declare-fun b!2833035 () Bool)

(declare-fun tp!905578 () Bool)

(assert (=> b!2833035 (= e!1793796 tp!905578)))

(declare-fun b!2833034 () Bool)

(declare-fun tp!905576 () Bool)

(declare-fun tp!905579 () Bool)

(assert (=> b!2833034 (= e!1793796 (and tp!905576 tp!905579))))

(declare-fun b!2833033 () Bool)

(assert (=> b!2833033 (= e!1793796 tp_is_empty!14575)))

(assert (= (and b!2832692 ((_ is ElementMatch!8401) (regTwo!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833033))

(assert (= (and b!2832692 ((_ is Concat!13642) (regTwo!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833034))

(assert (= (and b!2832692 ((_ is Star!8401) (regTwo!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833035))

(assert (= (and b!2832692 ((_ is Union!8401) (regTwo!17314 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833036))

(declare-fun tp!905589 () Bool)

(declare-fun e!1793801 () Bool)

(declare-fun b!2833045 () Bool)

(declare-fun tp!905587 () Bool)

(assert (=> b!2833045 (= e!1793801 (and (inv!45368 (left!25207 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))))) tp!905589 (inv!45368 (right!25537 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))))) tp!905587))))

(declare-fun b!2833047 () Bool)

(declare-fun e!1793802 () Bool)

(declare-fun tp!905588 () Bool)

(assert (=> b!2833047 (= e!1793802 tp!905588)))

(declare-fun b!2833046 () Bool)

(declare-fun inv!45375 (IArray!20755) Bool)

(assert (=> b!2833046 (= e!1793801 (and (inv!45375 (xs!13487 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))))) e!1793802))))

(assert (=> b!2832621 (= tp!905436 (and (inv!45368 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019))))) e!1793801))))

(assert (= (and b!2832621 ((_ is Node!10375) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))))) b!2833045))

(assert (= b!2833046 b!2833047))

(assert (= (and b!2832621 ((_ is Leaf!15788) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (value!161154 (h!38830 l!4019)))))) b!2833046))

(declare-fun m!3262963 () Bool)

(assert (=> b!2833045 m!3262963))

(declare-fun m!3262965 () Bool)

(assert (=> b!2833045 m!3262965))

(declare-fun m!3262967 () Bool)

(assert (=> b!2833046 m!3262967))

(assert (=> b!2832621 m!3262291))

(declare-fun e!1793803 () Bool)

(assert (=> b!2832675 (= tp!905465 e!1793803)))

(declare-fun b!2833051 () Bool)

(declare-fun tp!905594 () Bool)

(declare-fun tp!905591 () Bool)

(assert (=> b!2833051 (= e!1793803 (and tp!905594 tp!905591))))

(declare-fun b!2833050 () Bool)

(declare-fun tp!905592 () Bool)

(assert (=> b!2833050 (= e!1793803 tp!905592)))

(declare-fun b!2833049 () Bool)

(declare-fun tp!905590 () Bool)

(declare-fun tp!905593 () Bool)

(assert (=> b!2833049 (= e!1793803 (and tp!905590 tp!905593))))

(declare-fun b!2833048 () Bool)

(assert (=> b!2833048 (= e!1793803 tp_is_empty!14575)))

(assert (= (and b!2832675 ((_ is ElementMatch!8401) (regex!5010 (h!38829 (t!231530 rules!1047))))) b!2833048))

(assert (= (and b!2832675 ((_ is Concat!13642) (regex!5010 (h!38829 (t!231530 rules!1047))))) b!2833049))

(assert (= (and b!2832675 ((_ is Star!8401) (regex!5010 (h!38829 (t!231530 rules!1047))))) b!2833050))

(assert (= (and b!2832675 ((_ is Union!8401) (regex!5010 (h!38829 (t!231530 rules!1047))))) b!2833051))

(declare-fun e!1793804 () Bool)

(assert (=> b!2832689 (= tp!905479 e!1793804)))

(declare-fun b!2833055 () Bool)

(declare-fun tp!905599 () Bool)

(declare-fun tp!905596 () Bool)

(assert (=> b!2833055 (= e!1793804 (and tp!905599 tp!905596))))

(declare-fun b!2833054 () Bool)

(declare-fun tp!905597 () Bool)

(assert (=> b!2833054 (= e!1793804 tp!905597)))

(declare-fun b!2833053 () Bool)

(declare-fun tp!905595 () Bool)

(declare-fun tp!905598 () Bool)

(assert (=> b!2833053 (= e!1793804 (and tp!905595 tp!905598))))

(declare-fun b!2833052 () Bool)

(assert (=> b!2833052 (= e!1793804 tp_is_empty!14575)))

(assert (= (and b!2832689 ((_ is ElementMatch!8401) (reg!8730 (regex!5010 (h!38829 rules!1047))))) b!2833052))

(assert (= (and b!2832689 ((_ is Concat!13642) (reg!8730 (regex!5010 (h!38829 rules!1047))))) b!2833053))

(assert (= (and b!2832689 ((_ is Star!8401) (reg!8730 (regex!5010 (h!38829 rules!1047))))) b!2833054))

(assert (= (and b!2832689 ((_ is Union!8401) (reg!8730 (regex!5010 (h!38829 rules!1047))))) b!2833055))

(declare-fun b!2833058 () Bool)

(declare-fun b_free!81533 () Bool)

(declare-fun b_next!82237 () Bool)

(assert (=> b!2833058 (= b_free!81533 (not b_next!82237))))

(declare-fun tp!905601 () Bool)

(declare-fun b_and!207291 () Bool)

(assert (=> b!2833058 (= tp!905601 b_and!207291)))

(declare-fun b_free!81535 () Bool)

(declare-fun b_next!82239 () Bool)

(assert (=> b!2833058 (= b_free!81535 (not b_next!82239))))

(declare-fun t!231599 () Bool)

(declare-fun tb!154301 () Bool)

(assert (=> (and b!2833058 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 (t!231530 rules!1047))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) t!231599) tb!154301))

(declare-fun result!192378 () Bool)

(assert (= result!192378 result!192340))

(assert (=> d!821779 t!231599))

(declare-fun t!231601 () Bool)

(declare-fun tb!154303 () Bool)

(assert (=> (and b!2833058 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 (t!231530 rules!1047))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019))))) t!231601) tb!154303))

(declare-fun result!192380 () Bool)

(assert (= result!192380 result!192346))

(assert (=> b!2832619 t!231601))

(assert (=> d!821903 t!231601))

(assert (=> b!2832856 t!231599))

(declare-fun tp!905600 () Bool)

(declare-fun b_and!207293 () Bool)

(assert (=> b!2833058 (= tp!905600 (and (=> t!231599 result!192378) (=> t!231601 result!192380) b_and!207293))))

(declare-fun e!1793805 () Bool)

(assert (=> b!2833058 (= e!1793805 (and tp!905601 tp!905600))))

(declare-fun tp!905602 () Bool)

(declare-fun b!2833057 () Bool)

(declare-fun e!1793806 () Bool)

(assert (=> b!2833057 (= e!1793806 (and tp!905602 (inv!45361 (tag!5514 (h!38829 (t!231530 (t!231530 rules!1047))))) (inv!45364 (transformation!5010 (h!38829 (t!231530 (t!231530 rules!1047))))) e!1793805))))

(declare-fun b!2833056 () Bool)

(declare-fun e!1793807 () Bool)

(declare-fun tp!905603 () Bool)

(assert (=> b!2833056 (= e!1793807 (and e!1793806 tp!905603))))

(assert (=> b!2832674 (= tp!905466 e!1793807)))

(assert (= b!2833057 b!2833058))

(assert (= b!2833056 b!2833057))

(assert (= (and b!2832674 ((_ is Cons!33409) (t!231530 (t!231530 rules!1047)))) b!2833056))

(declare-fun m!3262969 () Bool)

(assert (=> b!2833057 m!3262969))

(declare-fun m!3262971 () Bool)

(assert (=> b!2833057 m!3262971))

(declare-fun e!1793809 () Bool)

(assert (=> b!2832688 (= tp!905477 e!1793809)))

(declare-fun b!2833062 () Bool)

(declare-fun tp!905608 () Bool)

(declare-fun tp!905605 () Bool)

(assert (=> b!2833062 (= e!1793809 (and tp!905608 tp!905605))))

(declare-fun b!2833061 () Bool)

(declare-fun tp!905606 () Bool)

(assert (=> b!2833061 (= e!1793809 tp!905606)))

(declare-fun b!2833060 () Bool)

(declare-fun tp!905604 () Bool)

(declare-fun tp!905607 () Bool)

(assert (=> b!2833060 (= e!1793809 (and tp!905604 tp!905607))))

(declare-fun b!2833059 () Bool)

(assert (=> b!2833059 (= e!1793809 tp_is_empty!14575)))

(assert (= (and b!2832688 ((_ is ElementMatch!8401) (regOne!17314 (regex!5010 (h!38829 rules!1047))))) b!2833059))

(assert (= (and b!2832688 ((_ is Concat!13642) (regOne!17314 (regex!5010 (h!38829 rules!1047))))) b!2833060))

(assert (= (and b!2832688 ((_ is Star!8401) (regOne!17314 (regex!5010 (h!38829 rules!1047))))) b!2833061))

(assert (= (and b!2832688 ((_ is Union!8401) (regOne!17314 (regex!5010 (h!38829 rules!1047))))) b!2833062))

(declare-fun e!1793810 () Bool)

(assert (=> b!2832688 (= tp!905480 e!1793810)))

(declare-fun b!2833066 () Bool)

(declare-fun tp!905613 () Bool)

(declare-fun tp!905610 () Bool)

(assert (=> b!2833066 (= e!1793810 (and tp!905613 tp!905610))))

(declare-fun b!2833065 () Bool)

(declare-fun tp!905611 () Bool)

(assert (=> b!2833065 (= e!1793810 tp!905611)))

(declare-fun b!2833064 () Bool)

(declare-fun tp!905609 () Bool)

(declare-fun tp!905612 () Bool)

(assert (=> b!2833064 (= e!1793810 (and tp!905609 tp!905612))))

(declare-fun b!2833063 () Bool)

(assert (=> b!2833063 (= e!1793810 tp_is_empty!14575)))

(assert (= (and b!2832688 ((_ is ElementMatch!8401) (regTwo!17314 (regex!5010 (h!38829 rules!1047))))) b!2833063))

(assert (= (and b!2832688 ((_ is Concat!13642) (regTwo!17314 (regex!5010 (h!38829 rules!1047))))) b!2833064))

(assert (= (and b!2832688 ((_ is Star!8401) (regTwo!17314 (regex!5010 (h!38829 rules!1047))))) b!2833065))

(assert (= (and b!2832688 ((_ is Union!8401) (regTwo!17314 (regex!5010 (h!38829 rules!1047))))) b!2833066))

(declare-fun e!1793811 () Bool)

(assert (=> b!2832693 (= tp!905484 e!1793811)))

(declare-fun b!2833070 () Bool)

(declare-fun tp!905618 () Bool)

(declare-fun tp!905615 () Bool)

(assert (=> b!2833070 (= e!1793811 (and tp!905618 tp!905615))))

(declare-fun b!2833069 () Bool)

(declare-fun tp!905616 () Bool)

(assert (=> b!2833069 (= e!1793811 tp!905616)))

(declare-fun b!2833068 () Bool)

(declare-fun tp!905614 () Bool)

(declare-fun tp!905617 () Bool)

(assert (=> b!2833068 (= e!1793811 (and tp!905614 tp!905617))))

(declare-fun b!2833067 () Bool)

(assert (=> b!2833067 (= e!1793811 tp_is_empty!14575)))

(assert (= (and b!2832693 ((_ is ElementMatch!8401) (reg!8730 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833067))

(assert (= (and b!2832693 ((_ is Concat!13642) (reg!8730 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833068))

(assert (= (and b!2832693 ((_ is Star!8401) (reg!8730 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833069))

(assert (= (and b!2832693 ((_ is Union!8401) (reg!8730 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833070))

(declare-fun e!1793812 () Bool)

(assert (=> b!2832690 (= tp!905481 e!1793812)))

(declare-fun b!2833074 () Bool)

(declare-fun tp!905623 () Bool)

(declare-fun tp!905620 () Bool)

(assert (=> b!2833074 (= e!1793812 (and tp!905623 tp!905620))))

(declare-fun b!2833073 () Bool)

(declare-fun tp!905621 () Bool)

(assert (=> b!2833073 (= e!1793812 tp!905621)))

(declare-fun b!2833072 () Bool)

(declare-fun tp!905619 () Bool)

(declare-fun tp!905622 () Bool)

(assert (=> b!2833072 (= e!1793812 (and tp!905619 tp!905622))))

(declare-fun b!2833071 () Bool)

(assert (=> b!2833071 (= e!1793812 tp_is_empty!14575)))

(assert (= (and b!2832690 ((_ is ElementMatch!8401) (regOne!17315 (regex!5010 (h!38829 rules!1047))))) b!2833071))

(assert (= (and b!2832690 ((_ is Concat!13642) (regOne!17315 (regex!5010 (h!38829 rules!1047))))) b!2833072))

(assert (= (and b!2832690 ((_ is Star!8401) (regOne!17315 (regex!5010 (h!38829 rules!1047))))) b!2833073))

(assert (= (and b!2832690 ((_ is Union!8401) (regOne!17315 (regex!5010 (h!38829 rules!1047))))) b!2833074))

(declare-fun e!1793813 () Bool)

(assert (=> b!2832690 (= tp!905478 e!1793813)))

(declare-fun b!2833078 () Bool)

(declare-fun tp!905628 () Bool)

(declare-fun tp!905625 () Bool)

(assert (=> b!2833078 (= e!1793813 (and tp!905628 tp!905625))))

(declare-fun b!2833077 () Bool)

(declare-fun tp!905626 () Bool)

(assert (=> b!2833077 (= e!1793813 tp!905626)))

(declare-fun b!2833076 () Bool)

(declare-fun tp!905624 () Bool)

(declare-fun tp!905627 () Bool)

(assert (=> b!2833076 (= e!1793813 (and tp!905624 tp!905627))))

(declare-fun b!2833075 () Bool)

(assert (=> b!2833075 (= e!1793813 tp_is_empty!14575)))

(assert (= (and b!2832690 ((_ is ElementMatch!8401) (regTwo!17315 (regex!5010 (h!38829 rules!1047))))) b!2833075))

(assert (= (and b!2832690 ((_ is Concat!13642) (regTwo!17315 (regex!5010 (h!38829 rules!1047))))) b!2833076))

(assert (= (and b!2832690 ((_ is Star!8401) (regTwo!17315 (regex!5010 (h!38829 rules!1047))))) b!2833077))

(assert (= (and b!2832690 ((_ is Union!8401) (regTwo!17315 (regex!5010 (h!38829 rules!1047))))) b!2833078))

(declare-fun e!1793814 () Bool)

(assert (=> b!2832694 (= tp!905486 e!1793814)))

(declare-fun b!2833082 () Bool)

(declare-fun tp!905633 () Bool)

(declare-fun tp!905630 () Bool)

(assert (=> b!2833082 (= e!1793814 (and tp!905633 tp!905630))))

(declare-fun b!2833081 () Bool)

(declare-fun tp!905631 () Bool)

(assert (=> b!2833081 (= e!1793814 tp!905631)))

(declare-fun b!2833080 () Bool)

(declare-fun tp!905629 () Bool)

(declare-fun tp!905632 () Bool)

(assert (=> b!2833080 (= e!1793814 (and tp!905629 tp!905632))))

(declare-fun b!2833079 () Bool)

(assert (=> b!2833079 (= e!1793814 tp_is_empty!14575)))

(assert (= (and b!2832694 ((_ is ElementMatch!8401) (regOne!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833079))

(assert (= (and b!2832694 ((_ is Concat!13642) (regOne!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833080))

(assert (= (and b!2832694 ((_ is Star!8401) (regOne!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833081))

(assert (= (and b!2832694 ((_ is Union!8401) (regOne!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833082))

(declare-fun e!1793815 () Bool)

(assert (=> b!2832694 (= tp!905483 e!1793815)))

(declare-fun b!2833086 () Bool)

(declare-fun tp!905638 () Bool)

(declare-fun tp!905635 () Bool)

(assert (=> b!2833086 (= e!1793815 (and tp!905638 tp!905635))))

(declare-fun b!2833085 () Bool)

(declare-fun tp!905636 () Bool)

(assert (=> b!2833085 (= e!1793815 tp!905636)))

(declare-fun b!2833084 () Bool)

(declare-fun tp!905634 () Bool)

(declare-fun tp!905637 () Bool)

(assert (=> b!2833084 (= e!1793815 (and tp!905634 tp!905637))))

(declare-fun b!2833083 () Bool)

(assert (=> b!2833083 (= e!1793815 tp_is_empty!14575)))

(assert (= (and b!2832694 ((_ is ElementMatch!8401) (regTwo!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833083))

(assert (= (and b!2832694 ((_ is Concat!13642) (regTwo!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833084))

(assert (= (and b!2832694 ((_ is Star!8401) (regTwo!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833085))

(assert (= (and b!2832694 ((_ is Union!8401) (regTwo!17315 (regex!5010 (rule!7438 (h!38830 l!4019)))))) b!2833086))

(declare-fun tp!905641 () Bool)

(declare-fun tp!905639 () Bool)

(declare-fun b!2833087 () Bool)

(declare-fun e!1793816 () Bool)

(assert (=> b!2833087 (= e!1793816 (and (inv!45368 (left!25207 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))))) tp!905641 (inv!45368 (right!25537 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))))) tp!905639))))

(declare-fun b!2833089 () Bool)

(declare-fun e!1793817 () Bool)

(declare-fun tp!905640 () Bool)

(assert (=> b!2833089 (= e!1793817 tp!905640)))

(declare-fun b!2833088 () Bool)

(assert (=> b!2833088 (= e!1793816 (and (inv!45375 (xs!13487 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))))) e!1793817))))

(assert (=> b!2832614 (= tp!905435 (and (inv!45368 (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019)))))) e!1793816))))

(assert (= (and b!2832614 ((_ is Node!10375) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))))) b!2833087))

(assert (= b!2833088 b!2833089))

(assert (= (and b!2832614 ((_ is Leaf!15788) (c!457974 (dynLambda!14031 (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (value!161154 (h!38830 (t!231531 l!4019))))))) b!2833088))

(declare-fun m!3262973 () Bool)

(assert (=> b!2833087 m!3262973))

(declare-fun m!3262975 () Bool)

(assert (=> b!2833087 m!3262975))

(declare-fun m!3262977 () Bool)

(assert (=> b!2833088 m!3262977))

(assert (=> b!2832614 m!3262283))

(declare-fun b!2833090 () Bool)

(declare-fun e!1793818 () Bool)

(declare-fun tp!905642 () Bool)

(assert (=> b!2833090 (= e!1793818 (and tp_is_empty!14575 tp!905642))))

(assert (=> b!2832663 (= tp!905453 e!1793818)))

(assert (= (and b!2832663 ((_ is Cons!33408) (originalCharacters!5742 (h!38830 (t!231531 l!4019))))) b!2833090))

(declare-fun b!2833094 () Bool)

(declare-fun b_free!81537 () Bool)

(declare-fun b_next!82241 () Bool)

(assert (=> b!2833094 (= b_free!81537 (not b_next!82241))))

(declare-fun tp!905645 () Bool)

(declare-fun b_and!207295 () Bool)

(assert (=> b!2833094 (= tp!905645 b_and!207295)))

(declare-fun b_free!81539 () Bool)

(declare-fun b_next!82243 () Bool)

(assert (=> b!2833094 (= b_free!81539 (not b_next!82243))))

(declare-fun t!231603 () Bool)

(declare-fun tb!154305 () Bool)

(assert (=> (and b!2833094 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 (t!231531 l!4019)))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) t!231603) tb!154305))

(declare-fun result!192382 () Bool)

(assert (= result!192382 result!192340))

(assert (=> d!821779 t!231603))

(declare-fun t!231605 () Bool)

(declare-fun tb!154307 () Bool)

(assert (=> (and b!2833094 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 (t!231531 l!4019)))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019))))) t!231605) tb!154307))

(declare-fun result!192384 () Bool)

(assert (= result!192384 result!192346))

(assert (=> b!2832619 t!231605))

(assert (=> d!821903 t!231605))

(assert (=> b!2832856 t!231603))

(declare-fun b_and!207297 () Bool)

(declare-fun tp!905647 () Bool)

(assert (=> b!2833094 (= tp!905647 (and (=> t!231603 result!192382) (=> t!231605 result!192384) b_and!207297))))

(declare-fun b!2833093 () Bool)

(declare-fun e!1793820 () Bool)

(declare-fun e!1793822 () Bool)

(declare-fun tp!905643 () Bool)

(assert (=> b!2833093 (= e!1793822 (and tp!905643 (inv!45361 (tag!5514 (rule!7438 (h!38830 (t!231531 (t!231531 l!4019)))))) (inv!45364 (transformation!5010 (rule!7438 (h!38830 (t!231531 (t!231531 l!4019)))))) e!1793820))))

(declare-fun e!1793819 () Bool)

(assert (=> b!2832662 (= tp!905451 e!1793819)))

(declare-fun b!2833091 () Bool)

(declare-fun e!1793821 () Bool)

(declare-fun tp!905644 () Bool)

(assert (=> b!2833091 (= e!1793819 (and (inv!45365 (h!38830 (t!231531 (t!231531 l!4019)))) e!1793821 tp!905644))))

(declare-fun b!2833092 () Bool)

(declare-fun tp!905646 () Bool)

(assert (=> b!2833092 (= e!1793821 (and (inv!21 (value!161154 (h!38830 (t!231531 (t!231531 l!4019))))) e!1793822 tp!905646))))

(assert (=> b!2833094 (= e!1793820 (and tp!905645 tp!905647))))

(assert (= b!2833093 b!2833094))

(assert (= b!2833092 b!2833093))

(assert (= b!2833091 b!2833092))

(assert (= (and b!2832662 ((_ is Cons!33410) (t!231531 (t!231531 l!4019)))) b!2833091))

(declare-fun m!3262979 () Bool)

(assert (=> b!2833093 m!3262979))

(declare-fun m!3262981 () Bool)

(assert (=> b!2833093 m!3262981))

(declare-fun m!3262983 () Bool)

(assert (=> b!2833091 m!3262983))

(declare-fun m!3262985 () Bool)

(assert (=> b!2833092 m!3262985))

(declare-fun e!1793825 () Bool)

(assert (=> b!2832664 (= tp!905450 e!1793825)))

(declare-fun b!2833098 () Bool)

(declare-fun tp!905652 () Bool)

(declare-fun tp!905649 () Bool)

(assert (=> b!2833098 (= e!1793825 (and tp!905652 tp!905649))))

(declare-fun b!2833097 () Bool)

(declare-fun tp!905650 () Bool)

(assert (=> b!2833097 (= e!1793825 tp!905650)))

(declare-fun b!2833096 () Bool)

(declare-fun tp!905648 () Bool)

(declare-fun tp!905651 () Bool)

(assert (=> b!2833096 (= e!1793825 (and tp!905648 tp!905651))))

(declare-fun b!2833095 () Bool)

(assert (=> b!2833095 (= e!1793825 tp_is_empty!14575)))

(assert (= (and b!2832664 ((_ is ElementMatch!8401) (regex!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) b!2833095))

(assert (= (and b!2832664 ((_ is Concat!13642) (regex!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) b!2833096))

(assert (= (and b!2832664 ((_ is Star!8401) (regex!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) b!2833097))

(assert (= (and b!2832664 ((_ is Union!8401) (regex!5010 (rule!7438 (h!38830 (t!231531 l!4019)))))) b!2833098))

(declare-fun b!2833101 () Bool)

(declare-fun e!1793828 () Bool)

(assert (=> b!2833101 (= e!1793828 true)))

(declare-fun b!2833100 () Bool)

(declare-fun e!1793827 () Bool)

(assert (=> b!2833100 (= e!1793827 e!1793828)))

(declare-fun b!2833099 () Bool)

(declare-fun e!1793826 () Bool)

(assert (=> b!2833099 (= e!1793826 e!1793827)))

(assert (=> b!2832643 e!1793826))

(assert (= b!2833100 b!2833101))

(assert (= b!2833099 b!2833100))

(assert (= (and b!2832643 ((_ is Cons!33409) (t!231530 rules!1047))) b!2833099))

(assert (=> b!2833101 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103991))))

(assert (=> b!2833101 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103991))))

(declare-fun b!2833104 () Bool)

(declare-fun e!1793831 () Bool)

(assert (=> b!2833104 (= e!1793831 true)))

(declare-fun b!2833103 () Bool)

(declare-fun e!1793830 () Bool)

(assert (=> b!2833103 (= e!1793830 e!1793831)))

(declare-fun b!2833102 () Bool)

(declare-fun e!1793829 () Bool)

(assert (=> b!2833102 (= e!1793829 e!1793830)))

(assert (=> b!2832638 e!1793829))

(assert (= b!2833103 b!2833104))

(assert (= b!2833102 b!2833103))

(assert (= (and b!2832638 ((_ is Cons!33409) (t!231530 rules!1047))) b!2833102))

(assert (=> b!2833104 (< (dynLambda!14028 order!17803 (toValue!7040 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103990))))

(assert (=> b!2833104 (< (dynLambda!14030 order!17807 (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047))))) (dynLambda!14029 order!17805 lambda!103990))))

(declare-fun b_lambda!85107 () Bool)

(assert (= b_lambda!85105 (or d!821797 b_lambda!85107)))

(declare-fun bs!518490 () Bool)

(declare-fun d!822071 () Bool)

(assert (= bs!518490 (and d!822071 d!821797)))

(assert (=> bs!518490 (= (dynLambda!14033 lambda!103991 (h!38830 l!4019)) (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 l!4019)))))

(assert (=> bs!518490 m!3262045))

(assert (=> b!2833014 d!822071))

(declare-fun b_lambda!85109 () Bool)

(assert (= b_lambda!85103 (or d!821743 b_lambda!85109)))

(declare-fun bs!518491 () Bool)

(declare-fun d!822073 () Bool)

(assert (= bs!518491 (and d!822073 d!821743)))

(assert (=> bs!518491 (= (dynLambda!14033 lambda!103986 (h!38830 (list!12484 (seqFromList!3256 l!4019)))) (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (list!12484 (seqFromList!3256 l!4019)))))))

(assert (=> bs!518491 m!3262645))

(assert (=> b!2832987 d!822073))

(declare-fun b_lambda!85111 () Bool)

(assert (= b_lambda!85101 (or d!821793 b_lambda!85111)))

(declare-fun bs!518492 () Bool)

(declare-fun d!822075 () Bool)

(assert (= bs!518492 (and d!822075 d!821793)))

(assert (=> bs!518492 (= (dynLambda!14033 lambda!103990 (h!38830 (list!12484 (seqFromList!3256 (t!231531 l!4019))))) (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (list!12484 (seqFromList!3256 (t!231531 l!4019))))))))

(assert (=> bs!518492 m!3262917))

(assert (=> b!2832985 d!822075))

(declare-fun b_lambda!85113 () Bool)

(assert (= b_lambda!85077 (or (and b!2833058 b_free!81535 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 (t!231530 rules!1047))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) (and b!2833094 b_free!81539 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 (t!231531 l!4019)))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) (and b!2832676 b_free!81523 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) (and b!2832425 b_free!81503) (and b!2832429 b_free!81507 (= (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) (and b!2832665 b_free!81519 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))))) b_lambda!85113)))

(declare-fun b_lambda!85115 () Bool)

(assert (= b_lambda!85079 (or (and b!2832665 b_free!81519) (and b!2833094 b_free!81539 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 (t!231531 l!4019)))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) (and b!2832425 b_free!81503 (= (toChars!6899 (transformation!5010 (rule!7438 (h!38830 l!4019)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) (and b!2832676 b_free!81523 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 rules!1047)))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) (and b!2833058 b_free!81535 (= (toChars!6899 (transformation!5010 (h!38829 (t!231530 (t!231530 rules!1047))))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) (and b!2832429 b_free!81507 (= (toChars!6899 (transformation!5010 (h!38829 rules!1047))) (toChars!6899 (transformation!5010 (rule!7438 (h!38830 (t!231531 l!4019))))))) b_lambda!85115)))

(declare-fun b_lambda!85117 () Bool)

(assert (= b_lambda!85073 (or d!821787 b_lambda!85117)))

(declare-fun bs!518493 () Bool)

(declare-fun d!822077 () Bool)

(assert (= bs!518493 (and d!822077 d!821787)))

(assert (=> bs!518493 (= (dynLambda!14033 lambda!103989 (h!38830 (t!231531 l!4019))) (rulesProduceIndividualToken!2132 thiss!11007 rules!1047 (h!38830 (t!231531 l!4019))))))

(assert (=> bs!518493 m!3262047))

(assert (=> b!2832723 d!822077))

(check-sat (not b!2832997) (not b!2832994) (not b!2832836) b_and!207211 (not d!821869) (not b!2833056) (not b!2832834) b_and!207291 (not d!822015) (not b_next!82221) b_and!207297 (not b!2832854) (not d!821911) b_and!207243 (not b!2833002) (not d!822053) (not d!822049) (not b!2833074) (not b_lambda!85113) (not d!822065) (not b!2833004) (not b!2832614) (not b!2833046) (not b!2833084) (not b!2833078) (not b!2832853) (not b!2832758) (not b!2832760) (not d!822011) (not b!2833057) (not d!821903) (not d!822051) (not b!2833097) (not d!821921) (not b!2833025) (not b_lambda!85115) (not b!2832857) (not b_next!82209) b_and!207265 (not b!2832841) (not bs!518490) (not b!2833050) (not d!822031) (not b!2832759) (not b!2832751) (not d!822025) (not b!2833021) (not b!2833087) (not b_next!82243) (not d!821837) (not b_next!82211) (not b!2833077) (not b!2833072) (not b!2833015) (not b!2833065) (not bs!518492) (not d!822035) b_and!207259 (not d!821931) b_and!207263 (not b!2833092) (not b!2833098) (not d!822055) (not b!2832995) (not b_lambda!85107) (not d!821929) (not b!2833031) (not b!2833026) (not d!821855) (not d!821913) (not b!2832753) (not b!2833086) (not b!2833076) (not b!2832837) (not b!2833066) (not b!2833049) (not b!2832988) (not b_next!82205) (not d!822061) (not b!2833091) (not b_next!82227) (not d!822017) (not d!822013) (not b!2833089) (not b!2833070) (not b!2832835) (not d!821843) (not b!2832773) (not d!821857) (not bs!518491) (not b!2833090) (not b!2833088) (not b_next!82239) (not d!821919) (not b!2832775) (not d!821907) (not d!822037) (not d!821861) (not d!821849) (not b!2832981) (not d!822069) b_and!207247 (not b_next!82225) (not bs!518493) (not b!2833035) (not d!821923) (not b!2833093) (not b_lambda!85069) (not d!821841) (not b!2833069) (not b!2833061) (not d!821899) b_and!207261 (not b!2833055) (not d!822009) (not d!822063) (not b!2833047) (not d!821839) (not b_next!82237) (not b!2832986) (not b!2832752) (not b!2833036) (not b!2833054) (not b_next!82223) (not b!2833062) (not b!2833060) (not b_next!82241) (not b!2832724) b_and!207215 (not b!2832851) (not b!2832850) (not d!821905) (not b!2832757) b_and!207293 (not d!822047) (not b!2832750) (not d!821873) (not d!822027) (not b_next!82207) (not b!2833085) (not d!821845) (not b!2833022) (not b_lambda!85109) (not b!2833011) (not b!2833073) (not b!2833096) (not b!2832782) (not b!2832848) (not b!2833068) (not b!2833082) (not b!2832856) (not b!2832984) (not b!2833032) (not b!2833080) (not b!2833053) (not d!821835) (not d!822045) (not b!2833051) (not d!821853) (not d!822059) (not b!2833034) (not b_lambda!85111) (not b!2832762) (not b!2833102) (not b!2833003) (not b!2833030) (not b!2833000) (not b!2833017) tp_is_empty!14575 (not b!2833016) (not b!2833045) (not d!822067) (not b!2833081) (not b!2832774) (not b!2832788) b_and!207295 (not b!2832761) (not b!2832772) (not d!821847) (not b!2832621) (not b_lambda!85117) (not b!2832993) (not b_lambda!85067) (not b!2833099) (not b!2833001) (not d!822021) (not d!822019) (not d!822041) (not d!821831) (not b!2833064) (not b!2833018) (not d!821851))
(check-sat b_and!207211 (not b_next!82243) (not b_next!82211) (not b_next!82205) (not b_next!82227) (not b_next!82239) b_and!207261 (not b_next!82207) b_and!207295 b_and!207291 (not b_next!82221) b_and!207297 b_and!207243 (not b_next!82209) b_and!207265 b_and!207259 b_and!207263 b_and!207247 (not b_next!82225) (not b_next!82237) (not b_next!82223) (not b_next!82241) b_and!207215 b_and!207293)
