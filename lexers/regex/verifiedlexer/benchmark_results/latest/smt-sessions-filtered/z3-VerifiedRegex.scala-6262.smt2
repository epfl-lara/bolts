; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!308402 () Bool)

(assert start!308402)

(declare-fun b!3308160 () Bool)

(declare-fun b_free!87049 () Bool)

(declare-fun b_next!87753 () Bool)

(assert (=> b!3308160 (= b_free!87049 (not b_next!87753))))

(declare-fun tp!1036049 () Bool)

(declare-fun b_and!226895 () Bool)

(assert (=> b!3308160 (= tp!1036049 b_and!226895)))

(declare-fun b_free!87051 () Bool)

(declare-fun b_next!87755 () Bool)

(assert (=> b!3308160 (= b_free!87051 (not b_next!87755))))

(declare-fun tp!1036046 () Bool)

(declare-fun b_and!226897 () Bool)

(assert (=> b!3308160 (= tp!1036046 b_and!226897)))

(declare-fun b!3308168 () Bool)

(declare-fun b_free!87053 () Bool)

(declare-fun b_next!87757 () Bool)

(assert (=> b!3308168 (= b_free!87053 (not b_next!87757))))

(declare-fun tp!1036043 () Bool)

(declare-fun b_and!226899 () Bool)

(assert (=> b!3308168 (= tp!1036043 b_and!226899)))

(declare-fun b_free!87055 () Bool)

(declare-fun b_next!87759 () Bool)

(assert (=> b!3308168 (= b_free!87055 (not b_next!87759))))

(declare-fun tp!1036038 () Bool)

(declare-fun b_and!226901 () Bool)

(assert (=> b!3308168 (= tp!1036038 b_and!226901)))

(declare-fun b!3308174 () Bool)

(declare-fun b_free!87057 () Bool)

(declare-fun b_next!87761 () Bool)

(assert (=> b!3308174 (= b_free!87057 (not b_next!87761))))

(declare-fun tp!1036040 () Bool)

(declare-fun b_and!226903 () Bool)

(assert (=> b!3308174 (= tp!1036040 b_and!226903)))

(declare-fun b_free!87059 () Bool)

(declare-fun b_next!87763 () Bool)

(assert (=> b!3308174 (= b_free!87059 (not b_next!87763))))

(declare-fun tp!1036048 () Bool)

(declare-fun b_and!226905 () Bool)

(assert (=> b!3308174 (= tp!1036048 b_and!226905)))

(declare-fun res!1341708 () Bool)

(declare-fun e!2057495 () Bool)

(assert (=> start!308402 (=> (not res!1341708) (not e!2057495))))

(declare-datatypes ((LexerInterface!4893 0))(
  ( (LexerInterfaceExt!4890 (__x!23285 Int)) (Lexer!4891) )
))
(declare-fun thiss!18206 () LexerInterface!4893)

(get-info :version)

(assert (=> start!308402 (= res!1341708 ((_ is Lexer!4891) thiss!18206))))

(assert (=> start!308402 e!2057495))

(assert (=> start!308402 true))

(declare-fun e!2057494 () Bool)

(assert (=> start!308402 e!2057494))

(declare-fun e!2057493 () Bool)

(assert (=> start!308402 e!2057493))

(declare-datatypes ((C!20312 0))(
  ( (C!20313 (val!12204 Int)) )
))
(declare-datatypes ((Regex!10063 0))(
  ( (ElementMatch!10063 (c!561110 C!20312)) (Concat!15597 (regOne!20638 Regex!10063) (regTwo!20638 Regex!10063)) (EmptyExpr!10063) (Star!10063 (reg!10392 Regex!10063)) (EmptyLang!10063) (Union!10063 (regOne!20639 Regex!10063) (regTwo!20639 Regex!10063)) )
))
(declare-datatypes ((List!36662 0))(
  ( (Nil!36538) (Cons!36538 (h!41958 (_ BitVec 16)) (t!253947 List!36662)) )
))
(declare-datatypes ((TokenValue!5534 0))(
  ( (FloatLiteralValue!11068 (text!39183 List!36662)) (TokenValueExt!5533 (__x!23286 Int)) (Broken!27670 (value!171598 List!36662)) (Object!5657) (End!5534) (Def!5534) (Underscore!5534) (Match!5534) (Else!5534) (Error!5534) (Case!5534) (If!5534) (Extends!5534) (Abstract!5534) (Class!5534) (Val!5534) (DelimiterValue!11068 (del!5594 List!36662)) (KeywordValue!5540 (value!171599 List!36662)) (CommentValue!11068 (value!171600 List!36662)) (WhitespaceValue!11068 (value!171601 List!36662)) (IndentationValue!5534 (value!171602 List!36662)) (String!41003) (Int32!5534) (Broken!27671 (value!171603 List!36662)) (Boolean!5535) (Unit!51461) (OperatorValue!5537 (op!5594 List!36662)) (IdentifierValue!11068 (value!171604 List!36662)) (IdentifierValue!11069 (value!171605 List!36662)) (WhitespaceValue!11069 (value!171606 List!36662)) (True!11068) (False!11068) (Broken!27672 (value!171607 List!36662)) (Broken!27673 (value!171608 List!36662)) (True!11069) (RightBrace!5534) (RightBracket!5534) (Colon!5534) (Null!5534) (Comma!5534) (LeftBracket!5534) (False!11069) (LeftBrace!5534) (ImaginaryLiteralValue!5534 (text!39184 List!36662)) (StringLiteralValue!16602 (value!171609 List!36662)) (EOFValue!5534 (value!171610 List!36662)) (IdentValue!5534 (value!171611 List!36662)) (DelimiterValue!11069 (value!171612 List!36662)) (DedentValue!5534 (value!171613 List!36662)) (NewLineValue!5534 (value!171614 List!36662)) (IntegerValue!16602 (value!171615 (_ BitVec 32)) (text!39185 List!36662)) (IntegerValue!16603 (value!171616 Int) (text!39186 List!36662)) (Times!5534) (Or!5534) (Equal!5534) (Minus!5534) (Broken!27674 (value!171617 List!36662)) (And!5534) (Div!5534) (LessEqual!5534) (Mod!5534) (Concat!15598) (Not!5534) (Plus!5534) (SpaceValue!5534 (value!171618 List!36662)) (IntegerValue!16604 (value!171619 Int) (text!39187 List!36662)) (StringLiteralValue!16603 (text!39188 List!36662)) (FloatLiteralValue!11069 (text!39189 List!36662)) (BytesLiteralValue!5534 (value!171620 List!36662)) (CommentValue!11069 (value!171621 List!36662)) (StringLiteralValue!16604 (value!171622 List!36662)) (ErrorTokenValue!5534 (msg!5595 List!36662)) )
))
(declare-datatypes ((List!36663 0))(
  ( (Nil!36539) (Cons!36539 (h!41959 C!20312) (t!253948 List!36663)) )
))
(declare-datatypes ((IArray!21971 0))(
  ( (IArray!21972 (innerList!11043 List!36663)) )
))
(declare-datatypes ((Conc!10983 0))(
  ( (Node!10983 (left!28465 Conc!10983) (right!28795 Conc!10983) (csize!22196 Int) (cheight!11194 Int)) (Leaf!17246 (xs!14121 IArray!21971) (csize!22197 Int)) (Empty!10983) )
))
(declare-datatypes ((BalanceConc!21580 0))(
  ( (BalanceConc!21581 (c!561111 Conc!10983)) )
))
(declare-datatypes ((String!41004 0))(
  ( (String!41005 (value!171623 String)) )
))
(declare-datatypes ((TokenValueInjection!10496 0))(
  ( (TokenValueInjection!10497 (toValue!7448 Int) (toChars!7307 Int)) )
))
(declare-datatypes ((Rule!10408 0))(
  ( (Rule!10409 (regex!5304 Regex!10063) (tag!5850 String!41004) (isSeparator!5304 Bool) (transformation!5304 TokenValueInjection!10496)) )
))
(declare-datatypes ((Token!9974 0))(
  ( (Token!9975 (value!171624 TokenValue!5534) (rule!7808 Rule!10408) (size!27603 Int) (originalCharacters!6018 List!36663)) )
))
(declare-fun separatorToken!241 () Token!9974)

(declare-fun e!2057502 () Bool)

(declare-fun inv!49514 (Token!9974) Bool)

(assert (=> start!308402 (and (inv!49514 separatorToken!241) e!2057502)))

(declare-fun b!3308157 () Bool)

(declare-fun res!1341701 () Bool)

(assert (=> b!3308157 (=> (not res!1341701) (not e!2057495))))

(declare-datatypes ((List!36664 0))(
  ( (Nil!36540) (Cons!36540 (h!41960 Rule!10408) (t!253949 List!36664)) )
))
(declare-fun rules!2135 () List!36664)

(declare-fun rulesProduceIndividualToken!2385 (LexerInterface!4893 List!36664 Token!9974) Bool)

(assert (=> b!3308157 (= res!1341701 (rulesProduceIndividualToken!2385 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3308158 () Bool)

(declare-fun res!1341702 () Bool)

(assert (=> b!3308158 (=> (not res!1341702) (not e!2057495))))

(declare-datatypes ((List!36665 0))(
  ( (Nil!36541) (Cons!36541 (h!41961 Token!9974) (t!253950 List!36665)) )
))
(declare-fun tokens!494 () List!36665)

(declare-fun lambda!119145 () Int)

(declare-fun forall!7585 (List!36665 Int) Bool)

(assert (=> b!3308158 (= res!1341702 (forall!7585 tokens!494 lambda!119145))))

(declare-fun b!3308159 () Bool)

(declare-fun e!2057489 () Bool)

(assert (=> b!3308159 (= e!2057495 (not e!2057489))))

(declare-fun res!1341698 () Bool)

(assert (=> b!3308159 (=> res!1341698 e!2057489)))

(declare-fun lt!1121390 () List!36663)

(declare-fun lt!1121384 () List!36663)

(assert (=> b!3308159 (= res!1341698 (not (= lt!1121390 lt!1121384)))))

(declare-fun printList!1443 (LexerInterface!4893 List!36665) List!36663)

(assert (=> b!3308159 (= lt!1121384 (printList!1443 thiss!18206 (Cons!36541 (h!41961 tokens!494) Nil!36541)))))

(declare-fun lt!1121386 () BalanceConc!21580)

(declare-fun list!13115 (BalanceConc!21580) List!36663)

(assert (=> b!3308159 (= lt!1121390 (list!13115 lt!1121386))))

(declare-datatypes ((IArray!21973 0))(
  ( (IArray!21974 (innerList!11044 List!36665)) )
))
(declare-datatypes ((Conc!10984 0))(
  ( (Node!10984 (left!28466 Conc!10984) (right!28796 Conc!10984) (csize!22198 Int) (cheight!11195 Int)) (Leaf!17247 (xs!14122 IArray!21973) (csize!22199 Int)) (Empty!10984) )
))
(declare-datatypes ((BalanceConc!21582 0))(
  ( (BalanceConc!21583 (c!561112 Conc!10984)) )
))
(declare-fun lt!1121381 () BalanceConc!21582)

(declare-fun printTailRec!1390 (LexerInterface!4893 BalanceConc!21582 Int BalanceConc!21580) BalanceConc!21580)

(assert (=> b!3308159 (= lt!1121386 (printTailRec!1390 thiss!18206 lt!1121381 0 (BalanceConc!21581 Empty!10983)))))

(declare-fun print!1958 (LexerInterface!4893 BalanceConc!21582) BalanceConc!21580)

(assert (=> b!3308159 (= lt!1121386 (print!1958 thiss!18206 lt!1121381))))

(declare-fun singletonSeq!2400 (Token!9974) BalanceConc!21582)

(assert (=> b!3308159 (= lt!1121381 (singletonSeq!2400 (h!41961 tokens!494)))))

(declare-fun e!2057498 () Bool)

(assert (=> b!3308160 (= e!2057498 (and tp!1036049 tp!1036046))))

(declare-fun b!3308161 () Bool)

(declare-fun e!2057490 () Bool)

(assert (=> b!3308161 (= e!2057489 e!2057490)))

(declare-fun res!1341699 () Bool)

(assert (=> b!3308161 (=> res!1341699 e!2057490)))

(declare-fun lt!1121387 () List!36663)

(assert (=> b!3308161 (= res!1341699 (or (not (= lt!1121384 lt!1121387)) (not (= lt!1121390 lt!1121387))))))

(declare-fun charsOf!3320 (Token!9974) BalanceConc!21580)

(assert (=> b!3308161 (= lt!1121387 (list!13115 (charsOf!3320 (h!41961 tokens!494))))))

(declare-fun e!2057496 () Bool)

(declare-fun tp!1036047 () Bool)

(declare-fun b!3308162 () Bool)

(declare-fun inv!49511 (String!41004) Bool)

(declare-fun inv!49515 (TokenValueInjection!10496) Bool)

(assert (=> b!3308162 (= e!2057496 (and tp!1036047 (inv!49511 (tag!5850 (rule!7808 (h!41961 tokens!494)))) (inv!49515 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) e!2057498))))

(declare-fun tp!1036042 () Bool)

(declare-fun e!2057488 () Bool)

(declare-fun e!2057499 () Bool)

(declare-fun b!3308163 () Bool)

(assert (=> b!3308163 (= e!2057488 (and tp!1036042 (inv!49511 (tag!5850 (rule!7808 separatorToken!241))) (inv!49515 (transformation!5304 (rule!7808 separatorToken!241))) e!2057499))))

(declare-fun b!3308164 () Bool)

(declare-fun res!1341704 () Bool)

(assert (=> b!3308164 (=> (not res!1341704) (not e!2057495))))

(declare-fun rulesProduceEachTokenIndividually!1344 (LexerInterface!4893 List!36664 BalanceConc!21582) Bool)

(declare-fun seqFromList!3663 (List!36665) BalanceConc!21582)

(assert (=> b!3308164 (= res!1341704 (rulesProduceEachTokenIndividually!1344 thiss!18206 rules!2135 (seqFromList!3663 tokens!494)))))

(declare-fun b!3308165 () Bool)

(declare-fun res!1341709 () Bool)

(assert (=> b!3308165 (=> (not res!1341709) (not e!2057495))))

(declare-fun sepAndNonSepRulesDisjointChars!1498 (List!36664 List!36664) Bool)

(assert (=> b!3308165 (= res!1341709 (sepAndNonSepRulesDisjointChars!1498 rules!2135 rules!2135))))

(declare-fun b!3308166 () Bool)

(declare-fun res!1341710 () Bool)

(assert (=> b!3308166 (=> (not res!1341710) (not e!2057495))))

(declare-fun rulesInvariant!4290 (LexerInterface!4893 List!36664) Bool)

(assert (=> b!3308166 (= res!1341710 (rulesInvariant!4290 thiss!18206 rules!2135))))

(declare-fun b!3308167 () Bool)

(declare-fun res!1341711 () Bool)

(assert (=> b!3308167 (=> (not res!1341711) (not e!2057495))))

(declare-fun isEmpty!20680 (List!36664) Bool)

(assert (=> b!3308167 (= res!1341711 (not (isEmpty!20680 rules!2135)))))

(declare-fun e!2057505 () Bool)

(assert (=> b!3308168 (= e!2057505 (and tp!1036043 tp!1036038))))

(declare-fun b!3308169 () Bool)

(declare-fun tp!1036045 () Bool)

(declare-fun e!2057497 () Bool)

(declare-fun inv!21 (TokenValue!5534) Bool)

(assert (=> b!3308169 (= e!2057497 (and (inv!21 (value!171624 (h!41961 tokens!494))) e!2057496 tp!1036045))))

(declare-fun b!3308170 () Bool)

(declare-fun e!2057491 () Bool)

(assert (=> b!3308170 (= e!2057490 e!2057491)))

(declare-fun res!1341700 () Bool)

(assert (=> b!3308170 (=> res!1341700 e!2057491)))

(assert (=> b!3308170 (= res!1341700 (or (isSeparator!5304 (rule!7808 (h!41961 tokens!494))) (isSeparator!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))))))

(declare-datatypes ((Unit!51462 0))(
  ( (Unit!51463) )
))
(declare-fun lt!1121380 () Unit!51462)

(declare-fun forallContained!1255 (List!36665 Int Token!9974) Unit!51462)

(assert (=> b!3308170 (= lt!1121380 (forallContained!1255 tokens!494 lambda!119145 (h!41961 (t!253950 tokens!494))))))

(declare-fun lt!1121389 () Unit!51462)

(assert (=> b!3308170 (= lt!1121389 (forallContained!1255 tokens!494 lambda!119145 (h!41961 tokens!494)))))

(declare-fun b!3308171 () Bool)

(declare-fun res!1341707 () Bool)

(assert (=> b!3308171 (=> (not res!1341707) (not e!2057495))))

(assert (=> b!3308171 (= res!1341707 (isSeparator!5304 (rule!7808 separatorToken!241)))))

(declare-fun b!3308172 () Bool)

(declare-fun e!2057506 () Bool)

(declare-fun tp!1036050 () Bool)

(assert (=> b!3308172 (= e!2057494 (and e!2057506 tp!1036050))))

(declare-fun lt!1121385 () List!36663)

(declare-fun lt!1121388 () List!36663)

(declare-fun b!3308173 () Bool)

(declare-fun ++!8853 (List!36663 List!36663) List!36663)

(declare-fun printWithSeparatorTokenList!204 (LexerInterface!4893 List!36665 Token!9974) List!36663)

(assert (=> b!3308173 (= e!2057491 (= lt!1121388 (++!8853 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385) (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241))))))

(declare-fun lt!1121383 () List!36663)

(assert (=> b!3308173 (= lt!1121383 (++!8853 lt!1121385 lt!1121388))))

(assert (=> b!3308173 (= lt!1121385 (list!13115 (charsOf!3320 separatorToken!241)))))

(assert (=> b!3308173 (= lt!1121388 (printWithSeparatorTokenList!204 thiss!18206 (t!253950 tokens!494) separatorToken!241))))

(declare-fun lt!1121382 () List!36663)

(assert (=> b!3308173 (= lt!1121382 (printWithSeparatorTokenList!204 thiss!18206 tokens!494 separatorToken!241))))

(assert (=> b!3308174 (= e!2057499 (and tp!1036040 tp!1036048))))

(declare-fun b!3308175 () Bool)

(declare-fun res!1341703 () Bool)

(assert (=> b!3308175 (=> res!1341703 e!2057490)))

(declare-fun isEmpty!20681 (BalanceConc!21582) Bool)

(declare-datatypes ((tuple2!36026 0))(
  ( (tuple2!36027 (_1!21147 BalanceConc!21582) (_2!21147 BalanceConc!21580)) )
))
(declare-fun lex!2219 (LexerInterface!4893 List!36664 BalanceConc!21580) tuple2!36026)

(declare-fun seqFromList!3664 (List!36663) BalanceConc!21580)

(assert (=> b!3308175 (= res!1341703 (isEmpty!20681 (_1!21147 (lex!2219 thiss!18206 rules!2135 (seqFromList!3664 lt!1121387)))))))

(declare-fun tp!1036041 () Bool)

(declare-fun b!3308176 () Bool)

(assert (=> b!3308176 (= e!2057502 (and (inv!21 (value!171624 separatorToken!241)) e!2057488 tp!1036041))))

(declare-fun b!3308177 () Bool)

(declare-fun res!1341705 () Bool)

(assert (=> b!3308177 (=> (not res!1341705) (not e!2057495))))

(assert (=> b!3308177 (= res!1341705 (and (not ((_ is Nil!36541) tokens!494)) (not ((_ is Nil!36541) (t!253950 tokens!494)))))))

(declare-fun tp!1036039 () Bool)

(declare-fun b!3308178 () Bool)

(assert (=> b!3308178 (= e!2057506 (and tp!1036039 (inv!49511 (tag!5850 (h!41960 rules!2135))) (inv!49515 (transformation!5304 (h!41960 rules!2135))) e!2057505))))

(declare-fun b!3308179 () Bool)

(declare-fun res!1341706 () Bool)

(assert (=> b!3308179 (=> res!1341706 e!2057490)))

(assert (=> b!3308179 (= res!1341706 (not (rulesProduceIndividualToken!2385 thiss!18206 rules!2135 (h!41961 tokens!494))))))

(declare-fun tp!1036044 () Bool)

(declare-fun b!3308180 () Bool)

(assert (=> b!3308180 (= e!2057493 (and (inv!49514 (h!41961 tokens!494)) e!2057497 tp!1036044))))

(assert (= (and start!308402 res!1341708) b!3308167))

(assert (= (and b!3308167 res!1341711) b!3308166))

(assert (= (and b!3308166 res!1341710) b!3308164))

(assert (= (and b!3308164 res!1341704) b!3308157))

(assert (= (and b!3308157 res!1341701) b!3308171))

(assert (= (and b!3308171 res!1341707) b!3308158))

(assert (= (and b!3308158 res!1341702) b!3308165))

(assert (= (and b!3308165 res!1341709) b!3308177))

(assert (= (and b!3308177 res!1341705) b!3308159))

(assert (= (and b!3308159 (not res!1341698)) b!3308161))

(assert (= (and b!3308161 (not res!1341699)) b!3308179))

(assert (= (and b!3308179 (not res!1341706)) b!3308175))

(assert (= (and b!3308175 (not res!1341703)) b!3308170))

(assert (= (and b!3308170 (not res!1341700)) b!3308173))

(assert (= b!3308178 b!3308168))

(assert (= b!3308172 b!3308178))

(assert (= (and start!308402 ((_ is Cons!36540) rules!2135)) b!3308172))

(assert (= b!3308162 b!3308160))

(assert (= b!3308169 b!3308162))

(assert (= b!3308180 b!3308169))

(assert (= (and start!308402 ((_ is Cons!36541) tokens!494)) b!3308180))

(assert (= b!3308163 b!3308174))

(assert (= b!3308176 b!3308163))

(assert (= start!308402 b!3308176))

(declare-fun m!3635035 () Bool)

(assert (=> start!308402 m!3635035))

(declare-fun m!3635037 () Bool)

(assert (=> b!3308178 m!3635037))

(declare-fun m!3635039 () Bool)

(assert (=> b!3308178 m!3635039))

(declare-fun m!3635041 () Bool)

(assert (=> b!3308173 m!3635041))

(declare-fun m!3635043 () Bool)

(assert (=> b!3308173 m!3635043))

(declare-fun m!3635045 () Bool)

(assert (=> b!3308173 m!3635045))

(declare-fun m!3635047 () Bool)

(assert (=> b!3308173 m!3635047))

(assert (=> b!3308173 m!3635041))

(declare-fun m!3635049 () Bool)

(assert (=> b!3308173 m!3635049))

(assert (=> b!3308173 m!3635049))

(declare-fun m!3635051 () Bool)

(assert (=> b!3308173 m!3635051))

(declare-fun m!3635053 () Bool)

(assert (=> b!3308173 m!3635053))

(assert (=> b!3308173 m!3635043))

(declare-fun m!3635055 () Bool)

(assert (=> b!3308173 m!3635055))

(declare-fun m!3635057 () Bool)

(assert (=> b!3308173 m!3635057))

(assert (=> b!3308173 m!3635051))

(assert (=> b!3308173 m!3635053))

(declare-fun m!3635059 () Bool)

(assert (=> b!3308173 m!3635059))

(declare-fun m!3635061 () Bool)

(assert (=> b!3308167 m!3635061))

(declare-fun m!3635063 () Bool)

(assert (=> b!3308165 m!3635063))

(declare-fun m!3635065 () Bool)

(assert (=> b!3308163 m!3635065))

(declare-fun m!3635067 () Bool)

(assert (=> b!3308163 m!3635067))

(declare-fun m!3635069 () Bool)

(assert (=> b!3308176 m!3635069))

(declare-fun m!3635071 () Bool)

(assert (=> b!3308170 m!3635071))

(declare-fun m!3635073 () Bool)

(assert (=> b!3308170 m!3635073))

(declare-fun m!3635075 () Bool)

(assert (=> b!3308157 m!3635075))

(declare-fun m!3635077 () Bool)

(assert (=> b!3308158 m!3635077))

(declare-fun m!3635079 () Bool)

(assert (=> b!3308169 m!3635079))

(declare-fun m!3635081 () Bool)

(assert (=> b!3308159 m!3635081))

(declare-fun m!3635083 () Bool)

(assert (=> b!3308159 m!3635083))

(declare-fun m!3635085 () Bool)

(assert (=> b!3308159 m!3635085))

(declare-fun m!3635087 () Bool)

(assert (=> b!3308159 m!3635087))

(declare-fun m!3635089 () Bool)

(assert (=> b!3308159 m!3635089))

(declare-fun m!3635091 () Bool)

(assert (=> b!3308166 m!3635091))

(declare-fun m!3635093 () Bool)

(assert (=> b!3308162 m!3635093))

(declare-fun m!3635095 () Bool)

(assert (=> b!3308162 m!3635095))

(declare-fun m!3635097 () Bool)

(assert (=> b!3308175 m!3635097))

(assert (=> b!3308175 m!3635097))

(declare-fun m!3635099 () Bool)

(assert (=> b!3308175 m!3635099))

(declare-fun m!3635101 () Bool)

(assert (=> b!3308175 m!3635101))

(declare-fun m!3635103 () Bool)

(assert (=> b!3308180 m!3635103))

(declare-fun m!3635105 () Bool)

(assert (=> b!3308161 m!3635105))

(assert (=> b!3308161 m!3635105))

(declare-fun m!3635107 () Bool)

(assert (=> b!3308161 m!3635107))

(declare-fun m!3635109 () Bool)

(assert (=> b!3308164 m!3635109))

(assert (=> b!3308164 m!3635109))

(declare-fun m!3635111 () Bool)

(assert (=> b!3308164 m!3635111))

(declare-fun m!3635113 () Bool)

(assert (=> b!3308179 m!3635113))

(check-sat (not b_next!87763) (not b!3308170) (not start!308402) (not b!3308163) (not b!3308157) (not b_next!87761) (not b_next!87755) (not b!3308175) (not b!3308165) b_and!226903 (not b!3308176) (not b!3308172) (not b!3308179) (not b_next!87759) b_and!226899 (not b!3308178) (not b_next!87757) (not b!3308158) (not b!3308169) b_and!226895 (not b!3308159) (not b_next!87753) b_and!226905 b_and!226897 (not b!3308162) (not b!3308167) (not b!3308173) (not b!3308180) (not b!3308164) (not b!3308161) b_and!226901 (not b!3308166))
(check-sat (not b_next!87757) (not b_next!87763) b_and!226895 b_and!226897 (not b_next!87761) (not b_next!87755) b_and!226903 (not b_next!87759) b_and!226899 b_and!226901 (not b_next!87753) b_and!226905)
(get-model)

(declare-fun d!926745 () Bool)

(declare-fun list!13118 (Conc!10983) List!36663)

(assert (=> d!926745 (= (list!13115 (charsOf!3320 (h!41961 tokens!494))) (list!13118 (c!561111 (charsOf!3320 (h!41961 tokens!494)))))))

(declare-fun bs!549240 () Bool)

(assert (= bs!549240 d!926745))

(declare-fun m!3635125 () Bool)

(assert (=> bs!549240 m!3635125))

(assert (=> b!3308161 d!926745))

(declare-fun d!926747 () Bool)

(declare-fun lt!1121393 () BalanceConc!21580)

(assert (=> d!926747 (= (list!13115 lt!1121393) (originalCharacters!6018 (h!41961 tokens!494)))))

(declare-fun dynLambda!14997 (Int TokenValue!5534) BalanceConc!21580)

(assert (=> d!926747 (= lt!1121393 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (value!171624 (h!41961 tokens!494))))))

(assert (=> d!926747 (= (charsOf!3320 (h!41961 tokens!494)) lt!1121393)))

(declare-fun b_lambda!92519 () Bool)

(assert (=> (not b_lambda!92519) (not d!926747)))

(declare-fun t!253952 () Bool)

(declare-fun tb!171815 () Bool)

(assert (=> (and b!3308160 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494))))) t!253952) tb!171815))

(declare-fun b!3308203 () Bool)

(declare-fun e!2057521 () Bool)

(declare-fun tp!1036053 () Bool)

(declare-fun inv!49518 (Conc!10983) Bool)

(assert (=> b!3308203 (= e!2057521 (and (inv!49518 (c!561111 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (value!171624 (h!41961 tokens!494))))) tp!1036053))))

(declare-fun result!214704 () Bool)

(declare-fun inv!49519 (BalanceConc!21580) Bool)

(assert (=> tb!171815 (= result!214704 (and (inv!49519 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (value!171624 (h!41961 tokens!494)))) e!2057521))))

(assert (= tb!171815 b!3308203))

(declare-fun m!3635127 () Bool)

(assert (=> b!3308203 m!3635127))

(declare-fun m!3635129 () Bool)

(assert (=> tb!171815 m!3635129))

(assert (=> d!926747 t!253952))

(declare-fun b_and!226907 () Bool)

(assert (= b_and!226897 (and (=> t!253952 result!214704) b_and!226907)))

(declare-fun tb!171817 () Bool)

(declare-fun t!253954 () Bool)

(assert (=> (and b!3308168 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494))))) t!253954) tb!171817))

(declare-fun result!214708 () Bool)

(assert (= result!214708 result!214704))

(assert (=> d!926747 t!253954))

(declare-fun b_and!226909 () Bool)

(assert (= b_and!226901 (and (=> t!253954 result!214708) b_and!226909)))

(declare-fun t!253956 () Bool)

(declare-fun tb!171819 () Bool)

(assert (=> (and b!3308174 (= (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494))))) t!253956) tb!171819))

(declare-fun result!214710 () Bool)

(assert (= result!214710 result!214704))

(assert (=> d!926747 t!253956))

(declare-fun b_and!226911 () Bool)

(assert (= b_and!226905 (and (=> t!253956 result!214710) b_and!226911)))

(declare-fun m!3635131 () Bool)

(assert (=> d!926747 m!3635131))

(declare-fun m!3635133 () Bool)

(assert (=> d!926747 m!3635133))

(assert (=> b!3308161 d!926747))

(declare-fun d!926749 () Bool)

(declare-fun dynLambda!14998 (Int Token!9974) Bool)

(assert (=> d!926749 (dynLambda!14998 lambda!119145 (h!41961 (t!253950 tokens!494)))))

(declare-fun lt!1121396 () Unit!51462)

(declare-fun choose!19151 (List!36665 Int Token!9974) Unit!51462)

(assert (=> d!926749 (= lt!1121396 (choose!19151 tokens!494 lambda!119145 (h!41961 (t!253950 tokens!494))))))

(declare-fun e!2057524 () Bool)

(assert (=> d!926749 e!2057524))

(declare-fun res!1341731 () Bool)

(assert (=> d!926749 (=> (not res!1341731) (not e!2057524))))

(assert (=> d!926749 (= res!1341731 (forall!7585 tokens!494 lambda!119145))))

(assert (=> d!926749 (= (forallContained!1255 tokens!494 lambda!119145 (h!41961 (t!253950 tokens!494))) lt!1121396)))

(declare-fun b!3308206 () Bool)

(declare-fun contains!6604 (List!36665 Token!9974) Bool)

(assert (=> b!3308206 (= e!2057524 (contains!6604 tokens!494 (h!41961 (t!253950 tokens!494))))))

(assert (= (and d!926749 res!1341731) b!3308206))

(declare-fun b_lambda!92521 () Bool)

(assert (=> (not b_lambda!92521) (not d!926749)))

(declare-fun m!3635135 () Bool)

(assert (=> d!926749 m!3635135))

(declare-fun m!3635137 () Bool)

(assert (=> d!926749 m!3635137))

(assert (=> d!926749 m!3635077))

(declare-fun m!3635139 () Bool)

(assert (=> b!3308206 m!3635139))

(assert (=> b!3308170 d!926749))

(declare-fun d!926751 () Bool)

(assert (=> d!926751 (dynLambda!14998 lambda!119145 (h!41961 tokens!494))))

(declare-fun lt!1121397 () Unit!51462)

(assert (=> d!926751 (= lt!1121397 (choose!19151 tokens!494 lambda!119145 (h!41961 tokens!494)))))

(declare-fun e!2057525 () Bool)

(assert (=> d!926751 e!2057525))

(declare-fun res!1341732 () Bool)

(assert (=> d!926751 (=> (not res!1341732) (not e!2057525))))

(assert (=> d!926751 (= res!1341732 (forall!7585 tokens!494 lambda!119145))))

(assert (=> d!926751 (= (forallContained!1255 tokens!494 lambda!119145 (h!41961 tokens!494)) lt!1121397)))

(declare-fun b!3308207 () Bool)

(assert (=> b!3308207 (= e!2057525 (contains!6604 tokens!494 (h!41961 tokens!494)))))

(assert (= (and d!926751 res!1341732) b!3308207))

(declare-fun b_lambda!92523 () Bool)

(assert (=> (not b_lambda!92523) (not d!926751)))

(declare-fun m!3635141 () Bool)

(assert (=> d!926751 m!3635141))

(declare-fun m!3635143 () Bool)

(assert (=> d!926751 m!3635143))

(assert (=> d!926751 m!3635077))

(declare-fun m!3635145 () Bool)

(assert (=> b!3308207 m!3635145))

(assert (=> b!3308170 d!926751))

(declare-fun d!926753 () Bool)

(declare-fun res!1341737 () Bool)

(declare-fun e!2057528 () Bool)

(assert (=> d!926753 (=> (not res!1341737) (not e!2057528))))

(declare-fun isEmpty!20685 (List!36663) Bool)

(assert (=> d!926753 (= res!1341737 (not (isEmpty!20685 (originalCharacters!6018 (h!41961 tokens!494)))))))

(assert (=> d!926753 (= (inv!49514 (h!41961 tokens!494)) e!2057528)))

(declare-fun b!3308212 () Bool)

(declare-fun res!1341738 () Bool)

(assert (=> b!3308212 (=> (not res!1341738) (not e!2057528))))

(assert (=> b!3308212 (= res!1341738 (= (originalCharacters!6018 (h!41961 tokens!494)) (list!13115 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (value!171624 (h!41961 tokens!494))))))))

(declare-fun b!3308213 () Bool)

(declare-fun size!27607 (List!36663) Int)

(assert (=> b!3308213 (= e!2057528 (= (size!27603 (h!41961 tokens!494)) (size!27607 (originalCharacters!6018 (h!41961 tokens!494)))))))

(assert (= (and d!926753 res!1341737) b!3308212))

(assert (= (and b!3308212 res!1341738) b!3308213))

(declare-fun b_lambda!92525 () Bool)

(assert (=> (not b_lambda!92525) (not b!3308212)))

(assert (=> b!3308212 t!253952))

(declare-fun b_and!226913 () Bool)

(assert (= b_and!226907 (and (=> t!253952 result!214704) b_and!226913)))

(assert (=> b!3308212 t!253954))

(declare-fun b_and!226915 () Bool)

(assert (= b_and!226909 (and (=> t!253954 result!214708) b_and!226915)))

(assert (=> b!3308212 t!253956))

(declare-fun b_and!226917 () Bool)

(assert (= b_and!226911 (and (=> t!253956 result!214710) b_and!226917)))

(declare-fun m!3635147 () Bool)

(assert (=> d!926753 m!3635147))

(assert (=> b!3308212 m!3635133))

(assert (=> b!3308212 m!3635133))

(declare-fun m!3635149 () Bool)

(assert (=> b!3308212 m!3635149))

(declare-fun m!3635151 () Bool)

(assert (=> b!3308213 m!3635151))

(assert (=> b!3308180 d!926753))

(declare-fun d!926755 () Bool)

(declare-fun lt!1121400 () BalanceConc!21580)

(declare-fun list!13119 (BalanceConc!21582) List!36665)

(assert (=> d!926755 (= (list!13115 lt!1121400) (printList!1443 thiss!18206 (list!13119 lt!1121381)))))

(assert (=> d!926755 (= lt!1121400 (printTailRec!1390 thiss!18206 lt!1121381 0 (BalanceConc!21581 Empty!10983)))))

(assert (=> d!926755 (= (print!1958 thiss!18206 lt!1121381) lt!1121400)))

(declare-fun bs!549241 () Bool)

(assert (= bs!549241 d!926755))

(declare-fun m!3635153 () Bool)

(assert (=> bs!549241 m!3635153))

(declare-fun m!3635155 () Bool)

(assert (=> bs!549241 m!3635155))

(assert (=> bs!549241 m!3635155))

(declare-fun m!3635157 () Bool)

(assert (=> bs!549241 m!3635157))

(assert (=> bs!549241 m!3635083))

(assert (=> b!3308159 d!926755))

(declare-fun d!926757 () Bool)

(declare-fun lt!1121436 () BalanceConc!21580)

(declare-fun printListTailRec!604 (LexerInterface!4893 List!36665 List!36663) List!36663)

(declare-fun dropList!1121 (BalanceConc!21582 Int) List!36665)

(assert (=> d!926757 (= (list!13115 lt!1121436) (printListTailRec!604 thiss!18206 (dropList!1121 lt!1121381 0) (list!13115 (BalanceConc!21581 Empty!10983))))))

(declare-fun e!2057569 () BalanceConc!21580)

(assert (=> d!926757 (= lt!1121436 e!2057569)))

(declare-fun c!561131 () Bool)

(declare-fun size!27608 (BalanceConc!21582) Int)

(assert (=> d!926757 (= c!561131 (>= 0 (size!27608 lt!1121381)))))

(declare-fun e!2057570 () Bool)

(assert (=> d!926757 e!2057570))

(declare-fun res!1341770 () Bool)

(assert (=> d!926757 (=> (not res!1341770) (not e!2057570))))

(assert (=> d!926757 (= res!1341770 (>= 0 0))))

(assert (=> d!926757 (= (printTailRec!1390 thiss!18206 lt!1121381 0 (BalanceConc!21581 Empty!10983)) lt!1121436)))

(declare-fun b!3308276 () Bool)

(assert (=> b!3308276 (= e!2057570 (<= 0 (size!27608 lt!1121381)))))

(declare-fun b!3308277 () Bool)

(assert (=> b!3308277 (= e!2057569 (BalanceConc!21581 Empty!10983))))

(declare-fun b!3308278 () Bool)

(declare-fun ++!8855 (BalanceConc!21580 BalanceConc!21580) BalanceConc!21580)

(declare-fun apply!8402 (BalanceConc!21582 Int) Token!9974)

(assert (=> b!3308278 (= e!2057569 (printTailRec!1390 thiss!18206 lt!1121381 (+ 0 1) (++!8855 (BalanceConc!21581 Empty!10983) (charsOf!3320 (apply!8402 lt!1121381 0)))))))

(declare-fun lt!1121435 () List!36665)

(assert (=> b!3308278 (= lt!1121435 (list!13119 lt!1121381))))

(declare-fun lt!1121432 () Unit!51462)

(declare-fun lemmaDropApply!1079 (List!36665 Int) Unit!51462)

(assert (=> b!3308278 (= lt!1121432 (lemmaDropApply!1079 lt!1121435 0))))

(declare-fun head!7135 (List!36665) Token!9974)

(declare-fun drop!1911 (List!36665 Int) List!36665)

(declare-fun apply!8403 (List!36665 Int) Token!9974)

(assert (=> b!3308278 (= (head!7135 (drop!1911 lt!1121435 0)) (apply!8403 lt!1121435 0))))

(declare-fun lt!1121437 () Unit!51462)

(assert (=> b!3308278 (= lt!1121437 lt!1121432)))

(declare-fun lt!1121433 () List!36665)

(assert (=> b!3308278 (= lt!1121433 (list!13119 lt!1121381))))

(declare-fun lt!1121431 () Unit!51462)

(declare-fun lemmaDropTail!963 (List!36665 Int) Unit!51462)

(assert (=> b!3308278 (= lt!1121431 (lemmaDropTail!963 lt!1121433 0))))

(declare-fun tail!5273 (List!36665) List!36665)

(assert (=> b!3308278 (= (tail!5273 (drop!1911 lt!1121433 0)) (drop!1911 lt!1121433 (+ 0 1)))))

(declare-fun lt!1121434 () Unit!51462)

(assert (=> b!3308278 (= lt!1121434 lt!1121431)))

(assert (= (and d!926757 res!1341770) b!3308276))

(assert (= (and d!926757 c!561131) b!3308277))

(assert (= (and d!926757 (not c!561131)) b!3308278))

(declare-fun m!3635273 () Bool)

(assert (=> d!926757 m!3635273))

(declare-fun m!3635275 () Bool)

(assert (=> d!926757 m!3635275))

(assert (=> d!926757 m!3635273))

(declare-fun m!3635277 () Bool)

(assert (=> d!926757 m!3635277))

(assert (=> d!926757 m!3635275))

(declare-fun m!3635279 () Bool)

(assert (=> d!926757 m!3635279))

(declare-fun m!3635281 () Bool)

(assert (=> d!926757 m!3635281))

(assert (=> b!3308276 m!3635279))

(declare-fun m!3635283 () Bool)

(assert (=> b!3308278 m!3635283))

(declare-fun m!3635285 () Bool)

(assert (=> b!3308278 m!3635285))

(assert (=> b!3308278 m!3635155))

(declare-fun m!3635287 () Bool)

(assert (=> b!3308278 m!3635287))

(declare-fun m!3635289 () Bool)

(assert (=> b!3308278 m!3635289))

(declare-fun m!3635291 () Bool)

(assert (=> b!3308278 m!3635291))

(assert (=> b!3308278 m!3635291))

(declare-fun m!3635293 () Bool)

(assert (=> b!3308278 m!3635293))

(assert (=> b!3308278 m!3635283))

(assert (=> b!3308278 m!3635287))

(declare-fun m!3635295 () Bool)

(assert (=> b!3308278 m!3635295))

(declare-fun m!3635297 () Bool)

(assert (=> b!3308278 m!3635297))

(declare-fun m!3635299 () Bool)

(assert (=> b!3308278 m!3635299))

(declare-fun m!3635301 () Bool)

(assert (=> b!3308278 m!3635301))

(declare-fun m!3635303 () Bool)

(assert (=> b!3308278 m!3635303))

(assert (=> b!3308278 m!3635299))

(assert (=> b!3308278 m!3635289))

(declare-fun m!3635305 () Bool)

(assert (=> b!3308278 m!3635305))

(assert (=> b!3308159 d!926757))

(declare-fun d!926793 () Bool)

(assert (=> d!926793 (= (list!13115 lt!1121386) (list!13118 (c!561111 lt!1121386)))))

(declare-fun bs!549245 () Bool)

(assert (= bs!549245 d!926793))

(declare-fun m!3635307 () Bool)

(assert (=> bs!549245 m!3635307))

(assert (=> b!3308159 d!926793))

(declare-fun d!926795 () Bool)

(declare-fun e!2057573 () Bool)

(assert (=> d!926795 e!2057573))

(declare-fun res!1341773 () Bool)

(assert (=> d!926795 (=> (not res!1341773) (not e!2057573))))

(declare-fun lt!1121440 () BalanceConc!21582)

(assert (=> d!926795 (= res!1341773 (= (list!13119 lt!1121440) (Cons!36541 (h!41961 tokens!494) Nil!36541)))))

(declare-fun singleton!1036 (Token!9974) BalanceConc!21582)

(assert (=> d!926795 (= lt!1121440 (singleton!1036 (h!41961 tokens!494)))))

(assert (=> d!926795 (= (singletonSeq!2400 (h!41961 tokens!494)) lt!1121440)))

(declare-fun b!3308281 () Bool)

(declare-fun isBalanced!3289 (Conc!10984) Bool)

(assert (=> b!3308281 (= e!2057573 (isBalanced!3289 (c!561112 lt!1121440)))))

(assert (= (and d!926795 res!1341773) b!3308281))

(declare-fun m!3635309 () Bool)

(assert (=> d!926795 m!3635309))

(declare-fun m!3635311 () Bool)

(assert (=> d!926795 m!3635311))

(declare-fun m!3635313 () Bool)

(assert (=> b!3308281 m!3635313))

(assert (=> b!3308159 d!926795))

(declare-fun d!926797 () Bool)

(declare-fun c!561134 () Bool)

(assert (=> d!926797 (= c!561134 ((_ is Cons!36541) (Cons!36541 (h!41961 tokens!494) Nil!36541)))))

(declare-fun e!2057576 () List!36663)

(assert (=> d!926797 (= (printList!1443 thiss!18206 (Cons!36541 (h!41961 tokens!494) Nil!36541)) e!2057576)))

(declare-fun b!3308286 () Bool)

(assert (=> b!3308286 (= e!2057576 (++!8853 (list!13115 (charsOf!3320 (h!41961 (Cons!36541 (h!41961 tokens!494) Nil!36541)))) (printList!1443 thiss!18206 (t!253950 (Cons!36541 (h!41961 tokens!494) Nil!36541)))))))

(declare-fun b!3308287 () Bool)

(assert (=> b!3308287 (= e!2057576 Nil!36539)))

(assert (= (and d!926797 c!561134) b!3308286))

(assert (= (and d!926797 (not c!561134)) b!3308287))

(declare-fun m!3635315 () Bool)

(assert (=> b!3308286 m!3635315))

(assert (=> b!3308286 m!3635315))

(declare-fun m!3635317 () Bool)

(assert (=> b!3308286 m!3635317))

(declare-fun m!3635319 () Bool)

(assert (=> b!3308286 m!3635319))

(assert (=> b!3308286 m!3635317))

(assert (=> b!3308286 m!3635319))

(declare-fun m!3635321 () Bool)

(assert (=> b!3308286 m!3635321))

(assert (=> b!3308159 d!926797))

(declare-fun d!926799 () Bool)

(declare-fun res!1341778 () Bool)

(declare-fun e!2057581 () Bool)

(assert (=> d!926799 (=> res!1341778 e!2057581)))

(assert (=> d!926799 (= res!1341778 ((_ is Nil!36541) tokens!494))))

(assert (=> d!926799 (= (forall!7585 tokens!494 lambda!119145) e!2057581)))

(declare-fun b!3308292 () Bool)

(declare-fun e!2057582 () Bool)

(assert (=> b!3308292 (= e!2057581 e!2057582)))

(declare-fun res!1341779 () Bool)

(assert (=> b!3308292 (=> (not res!1341779) (not e!2057582))))

(assert (=> b!3308292 (= res!1341779 (dynLambda!14998 lambda!119145 (h!41961 tokens!494)))))

(declare-fun b!3308293 () Bool)

(assert (=> b!3308293 (= e!2057582 (forall!7585 (t!253950 tokens!494) lambda!119145))))

(assert (= (and d!926799 (not res!1341778)) b!3308292))

(assert (= (and b!3308292 res!1341779) b!3308293))

(declare-fun b_lambda!92533 () Bool)

(assert (=> (not b_lambda!92533) (not b!3308292)))

(assert (=> b!3308292 m!3635141))

(declare-fun m!3635323 () Bool)

(assert (=> b!3308293 m!3635323))

(assert (=> b!3308158 d!926799))

(declare-fun b!3308304 () Bool)

(declare-fun e!2057589 () Bool)

(declare-fun e!2057591 () Bool)

(assert (=> b!3308304 (= e!2057589 e!2057591)))

(declare-fun c!561140 () Bool)

(assert (=> b!3308304 (= c!561140 ((_ is IntegerValue!16603) (value!171624 (h!41961 tokens!494))))))

(declare-fun b!3308305 () Bool)

(declare-fun res!1341782 () Bool)

(declare-fun e!2057590 () Bool)

(assert (=> b!3308305 (=> res!1341782 e!2057590)))

(assert (=> b!3308305 (= res!1341782 (not ((_ is IntegerValue!16604) (value!171624 (h!41961 tokens!494)))))))

(assert (=> b!3308305 (= e!2057591 e!2057590)))

(declare-fun b!3308306 () Bool)

(declare-fun inv!17 (TokenValue!5534) Bool)

(assert (=> b!3308306 (= e!2057591 (inv!17 (value!171624 (h!41961 tokens!494))))))

(declare-fun d!926801 () Bool)

(declare-fun c!561139 () Bool)

(assert (=> d!926801 (= c!561139 ((_ is IntegerValue!16602) (value!171624 (h!41961 tokens!494))))))

(assert (=> d!926801 (= (inv!21 (value!171624 (h!41961 tokens!494))) e!2057589)))

(declare-fun b!3308307 () Bool)

(declare-fun inv!16 (TokenValue!5534) Bool)

(assert (=> b!3308307 (= e!2057589 (inv!16 (value!171624 (h!41961 tokens!494))))))

(declare-fun b!3308308 () Bool)

(declare-fun inv!15 (TokenValue!5534) Bool)

(assert (=> b!3308308 (= e!2057590 (inv!15 (value!171624 (h!41961 tokens!494))))))

(assert (= (and d!926801 c!561139) b!3308307))

(assert (= (and d!926801 (not c!561139)) b!3308304))

(assert (= (and b!3308304 c!561140) b!3308306))

(assert (= (and b!3308304 (not c!561140)) b!3308305))

(assert (= (and b!3308305 (not res!1341782)) b!3308308))

(declare-fun m!3635325 () Bool)

(assert (=> b!3308306 m!3635325))

(declare-fun m!3635327 () Bool)

(assert (=> b!3308307 m!3635327))

(declare-fun m!3635329 () Bool)

(assert (=> b!3308308 m!3635329))

(assert (=> b!3308169 d!926801))

(declare-fun d!926803 () Bool)

(declare-fun lt!1121447 () Bool)

(declare-fun e!2057597 () Bool)

(assert (=> d!926803 (= lt!1121447 e!2057597)))

(declare-fun res!1341789 () Bool)

(assert (=> d!926803 (=> (not res!1341789) (not e!2057597))))

(assert (=> d!926803 (= res!1341789 (= (list!13119 (_1!21147 (lex!2219 thiss!18206 rules!2135 (print!1958 thiss!18206 (singletonSeq!2400 (h!41961 tokens!494)))))) (list!13119 (singletonSeq!2400 (h!41961 tokens!494)))))))

(declare-fun e!2057596 () Bool)

(assert (=> d!926803 (= lt!1121447 e!2057596)))

(declare-fun res!1341791 () Bool)

(assert (=> d!926803 (=> (not res!1341791) (not e!2057596))))

(declare-fun lt!1121448 () tuple2!36026)

(assert (=> d!926803 (= res!1341791 (= (size!27608 (_1!21147 lt!1121448)) 1))))

(assert (=> d!926803 (= lt!1121448 (lex!2219 thiss!18206 rules!2135 (print!1958 thiss!18206 (singletonSeq!2400 (h!41961 tokens!494)))))))

(assert (=> d!926803 (not (isEmpty!20680 rules!2135))))

(assert (=> d!926803 (= (rulesProduceIndividualToken!2385 thiss!18206 rules!2135 (h!41961 tokens!494)) lt!1121447)))

(declare-fun b!3308315 () Bool)

(declare-fun res!1341790 () Bool)

(assert (=> b!3308315 (=> (not res!1341790) (not e!2057596))))

(assert (=> b!3308315 (= res!1341790 (= (apply!8402 (_1!21147 lt!1121448) 0) (h!41961 tokens!494)))))

(declare-fun b!3308316 () Bool)

(declare-fun isEmpty!20687 (BalanceConc!21580) Bool)

(assert (=> b!3308316 (= e!2057596 (isEmpty!20687 (_2!21147 lt!1121448)))))

(declare-fun b!3308317 () Bool)

(assert (=> b!3308317 (= e!2057597 (isEmpty!20687 (_2!21147 (lex!2219 thiss!18206 rules!2135 (print!1958 thiss!18206 (singletonSeq!2400 (h!41961 tokens!494)))))))))

(assert (= (and d!926803 res!1341791) b!3308315))

(assert (= (and b!3308315 res!1341790) b!3308316))

(assert (= (and d!926803 res!1341789) b!3308317))

(declare-fun m!3635331 () Bool)

(assert (=> d!926803 m!3635331))

(declare-fun m!3635333 () Bool)

(assert (=> d!926803 m!3635333))

(assert (=> d!926803 m!3635081))

(declare-fun m!3635335 () Bool)

(assert (=> d!926803 m!3635335))

(assert (=> d!926803 m!3635061))

(declare-fun m!3635337 () Bool)

(assert (=> d!926803 m!3635337))

(declare-fun m!3635339 () Bool)

(assert (=> d!926803 m!3635339))

(assert (=> d!926803 m!3635081))

(assert (=> d!926803 m!3635081))

(assert (=> d!926803 m!3635337))

(declare-fun m!3635341 () Bool)

(assert (=> b!3308315 m!3635341))

(declare-fun m!3635343 () Bool)

(assert (=> b!3308316 m!3635343))

(assert (=> b!3308317 m!3635081))

(assert (=> b!3308317 m!3635081))

(assert (=> b!3308317 m!3635337))

(assert (=> b!3308317 m!3635337))

(assert (=> b!3308317 m!3635339))

(declare-fun m!3635345 () Bool)

(assert (=> b!3308317 m!3635345))

(assert (=> b!3308179 d!926803))

(declare-fun d!926805 () Bool)

(assert (=> d!926805 (= (inv!49511 (tag!5850 (h!41960 rules!2135))) (= (mod (str.len (value!171623 (tag!5850 (h!41960 rules!2135)))) 2) 0))))

(assert (=> b!3308178 d!926805))

(declare-fun d!926807 () Bool)

(declare-fun res!1341794 () Bool)

(declare-fun e!2057600 () Bool)

(assert (=> d!926807 (=> (not res!1341794) (not e!2057600))))

(declare-fun semiInverseModEq!2197 (Int Int) Bool)

(assert (=> d!926807 (= res!1341794 (semiInverseModEq!2197 (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toValue!7448 (transformation!5304 (h!41960 rules!2135)))))))

(assert (=> d!926807 (= (inv!49515 (transformation!5304 (h!41960 rules!2135))) e!2057600)))

(declare-fun b!3308320 () Bool)

(declare-fun equivClasses!2096 (Int Int) Bool)

(assert (=> b!3308320 (= e!2057600 (equivClasses!2096 (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toValue!7448 (transformation!5304 (h!41960 rules!2135)))))))

(assert (= (and d!926807 res!1341794) b!3308320))

(declare-fun m!3635347 () Bool)

(assert (=> d!926807 m!3635347))

(declare-fun m!3635349 () Bool)

(assert (=> b!3308320 m!3635349))

(assert (=> b!3308178 d!926807))

(declare-fun d!926809 () Bool)

(declare-fun lt!1121449 () Bool)

(declare-fun e!2057602 () Bool)

(assert (=> d!926809 (= lt!1121449 e!2057602)))

(declare-fun res!1341795 () Bool)

(assert (=> d!926809 (=> (not res!1341795) (not e!2057602))))

(assert (=> d!926809 (= res!1341795 (= (list!13119 (_1!21147 (lex!2219 thiss!18206 rules!2135 (print!1958 thiss!18206 (singletonSeq!2400 separatorToken!241))))) (list!13119 (singletonSeq!2400 separatorToken!241))))))

(declare-fun e!2057601 () Bool)

(assert (=> d!926809 (= lt!1121449 e!2057601)))

(declare-fun res!1341797 () Bool)

(assert (=> d!926809 (=> (not res!1341797) (not e!2057601))))

(declare-fun lt!1121450 () tuple2!36026)

(assert (=> d!926809 (= res!1341797 (= (size!27608 (_1!21147 lt!1121450)) 1))))

(assert (=> d!926809 (= lt!1121450 (lex!2219 thiss!18206 rules!2135 (print!1958 thiss!18206 (singletonSeq!2400 separatorToken!241))))))

(assert (=> d!926809 (not (isEmpty!20680 rules!2135))))

(assert (=> d!926809 (= (rulesProduceIndividualToken!2385 thiss!18206 rules!2135 separatorToken!241) lt!1121449)))

(declare-fun b!3308321 () Bool)

(declare-fun res!1341796 () Bool)

(assert (=> b!3308321 (=> (not res!1341796) (not e!2057601))))

(assert (=> b!3308321 (= res!1341796 (= (apply!8402 (_1!21147 lt!1121450) 0) separatorToken!241))))

(declare-fun b!3308322 () Bool)

(assert (=> b!3308322 (= e!2057601 (isEmpty!20687 (_2!21147 lt!1121450)))))

(declare-fun b!3308323 () Bool)

(assert (=> b!3308323 (= e!2057602 (isEmpty!20687 (_2!21147 (lex!2219 thiss!18206 rules!2135 (print!1958 thiss!18206 (singletonSeq!2400 separatorToken!241))))))))

(assert (= (and d!926809 res!1341797) b!3308321))

(assert (= (and b!3308321 res!1341796) b!3308322))

(assert (= (and d!926809 res!1341795) b!3308323))

(declare-fun m!3635351 () Bool)

(assert (=> d!926809 m!3635351))

(declare-fun m!3635353 () Bool)

(assert (=> d!926809 m!3635353))

(declare-fun m!3635355 () Bool)

(assert (=> d!926809 m!3635355))

(declare-fun m!3635357 () Bool)

(assert (=> d!926809 m!3635357))

(assert (=> d!926809 m!3635061))

(declare-fun m!3635359 () Bool)

(assert (=> d!926809 m!3635359))

(declare-fun m!3635361 () Bool)

(assert (=> d!926809 m!3635361))

(assert (=> d!926809 m!3635355))

(assert (=> d!926809 m!3635355))

(assert (=> d!926809 m!3635359))

(declare-fun m!3635363 () Bool)

(assert (=> b!3308321 m!3635363))

(declare-fun m!3635365 () Bool)

(assert (=> b!3308322 m!3635365))

(assert (=> b!3308323 m!3635355))

(assert (=> b!3308323 m!3635355))

(assert (=> b!3308323 m!3635359))

(assert (=> b!3308323 m!3635359))

(assert (=> b!3308323 m!3635361))

(declare-fun m!3635367 () Bool)

(assert (=> b!3308323 m!3635367))

(assert (=> b!3308157 d!926809))

(declare-fun d!926811 () Bool)

(assert (=> d!926811 (= (isEmpty!20680 rules!2135) ((_ is Nil!36540) rules!2135))))

(assert (=> b!3308167 d!926811))

(declare-fun d!926813 () Bool)

(declare-fun res!1341800 () Bool)

(declare-fun e!2057605 () Bool)

(assert (=> d!926813 (=> (not res!1341800) (not e!2057605))))

(declare-fun rulesValid!1957 (LexerInterface!4893 List!36664) Bool)

(assert (=> d!926813 (= res!1341800 (rulesValid!1957 thiss!18206 rules!2135))))

(assert (=> d!926813 (= (rulesInvariant!4290 thiss!18206 rules!2135) e!2057605)))

(declare-fun b!3308326 () Bool)

(declare-datatypes ((List!36667 0))(
  ( (Nil!36543) (Cons!36543 (h!41963 String!41004) (t!254024 List!36667)) )
))
(declare-fun noDuplicateTag!1953 (LexerInterface!4893 List!36664 List!36667) Bool)

(assert (=> b!3308326 (= e!2057605 (noDuplicateTag!1953 thiss!18206 rules!2135 Nil!36543))))

(assert (= (and d!926813 res!1341800) b!3308326))

(declare-fun m!3635369 () Bool)

(assert (=> d!926813 m!3635369))

(declare-fun m!3635371 () Bool)

(assert (=> b!3308326 m!3635371))

(assert (=> b!3308166 d!926813))

(declare-fun b!3308327 () Bool)

(declare-fun e!2057606 () Bool)

(declare-fun e!2057608 () Bool)

(assert (=> b!3308327 (= e!2057606 e!2057608)))

(declare-fun c!561142 () Bool)

(assert (=> b!3308327 (= c!561142 ((_ is IntegerValue!16603) (value!171624 separatorToken!241)))))

(declare-fun b!3308328 () Bool)

(declare-fun res!1341801 () Bool)

(declare-fun e!2057607 () Bool)

(assert (=> b!3308328 (=> res!1341801 e!2057607)))

(assert (=> b!3308328 (= res!1341801 (not ((_ is IntegerValue!16604) (value!171624 separatorToken!241))))))

(assert (=> b!3308328 (= e!2057608 e!2057607)))

(declare-fun b!3308329 () Bool)

(assert (=> b!3308329 (= e!2057608 (inv!17 (value!171624 separatorToken!241)))))

(declare-fun d!926815 () Bool)

(declare-fun c!561141 () Bool)

(assert (=> d!926815 (= c!561141 ((_ is IntegerValue!16602) (value!171624 separatorToken!241)))))

(assert (=> d!926815 (= (inv!21 (value!171624 separatorToken!241)) e!2057606)))

(declare-fun b!3308330 () Bool)

(assert (=> b!3308330 (= e!2057606 (inv!16 (value!171624 separatorToken!241)))))

(declare-fun b!3308331 () Bool)

(assert (=> b!3308331 (= e!2057607 (inv!15 (value!171624 separatorToken!241)))))

(assert (= (and d!926815 c!561141) b!3308330))

(assert (= (and d!926815 (not c!561141)) b!3308327))

(assert (= (and b!3308327 c!561142) b!3308329))

(assert (= (and b!3308327 (not c!561142)) b!3308328))

(assert (= (and b!3308328 (not res!1341801)) b!3308331))

(declare-fun m!3635373 () Bool)

(assert (=> b!3308329 m!3635373))

(declare-fun m!3635375 () Bool)

(assert (=> b!3308330 m!3635375))

(declare-fun m!3635377 () Bool)

(assert (=> b!3308331 m!3635377))

(assert (=> b!3308176 d!926815))

(declare-fun d!926817 () Bool)

(declare-fun res!1341806 () Bool)

(declare-fun e!2057613 () Bool)

(assert (=> d!926817 (=> res!1341806 e!2057613)))

(assert (=> d!926817 (= res!1341806 (not ((_ is Cons!36540) rules!2135)))))

(assert (=> d!926817 (= (sepAndNonSepRulesDisjointChars!1498 rules!2135 rules!2135) e!2057613)))

(declare-fun b!3308336 () Bool)

(declare-fun e!2057614 () Bool)

(assert (=> b!3308336 (= e!2057613 e!2057614)))

(declare-fun res!1341807 () Bool)

(assert (=> b!3308336 (=> (not res!1341807) (not e!2057614))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!633 (Rule!10408 List!36664) Bool)

(assert (=> b!3308336 (= res!1341807 (ruleDisjointCharsFromAllFromOtherType!633 (h!41960 rules!2135) rules!2135))))

(declare-fun b!3308337 () Bool)

(assert (=> b!3308337 (= e!2057614 (sepAndNonSepRulesDisjointChars!1498 rules!2135 (t!253949 rules!2135)))))

(assert (= (and d!926817 (not res!1341806)) b!3308336))

(assert (= (and b!3308336 res!1341807) b!3308337))

(declare-fun m!3635379 () Bool)

(assert (=> b!3308336 m!3635379))

(declare-fun m!3635381 () Bool)

(assert (=> b!3308337 m!3635381))

(assert (=> b!3308165 d!926817))

(declare-fun bs!549254 () Bool)

(declare-fun d!926819 () Bool)

(assert (= bs!549254 (and d!926819 b!3308158)))

(declare-fun lambda!119155 () Int)

(assert (=> bs!549254 (not (= lambda!119155 lambda!119145))))

(declare-fun b!3308480 () Bool)

(declare-fun e!2057718 () Bool)

(assert (=> b!3308480 (= e!2057718 true)))

(declare-fun b!3308479 () Bool)

(declare-fun e!2057717 () Bool)

(assert (=> b!3308479 (= e!2057717 e!2057718)))

(declare-fun b!3308478 () Bool)

(declare-fun e!2057716 () Bool)

(assert (=> b!3308478 (= e!2057716 e!2057717)))

(assert (=> d!926819 e!2057716))

(assert (= b!3308479 b!3308480))

(assert (= b!3308478 b!3308479))

(assert (= (and d!926819 ((_ is Cons!36540) rules!2135)) b!3308478))

(declare-fun order!19017 () Int)

(declare-fun order!19019 () Int)

(declare-fun dynLambda!15000 (Int Int) Int)

(declare-fun dynLambda!15001 (Int Int) Int)

(assert (=> b!3308480 (< (dynLambda!15000 order!19017 (toValue!7448 (transformation!5304 (h!41960 rules!2135)))) (dynLambda!15001 order!19019 lambda!119155))))

(declare-fun order!19021 () Int)

(declare-fun dynLambda!15002 (Int Int) Int)

(assert (=> b!3308480 (< (dynLambda!15002 order!19021 (toChars!7307 (transformation!5304 (h!41960 rules!2135)))) (dynLambda!15001 order!19019 lambda!119155))))

(assert (=> d!926819 true))

(declare-fun e!2057709 () Bool)

(assert (=> d!926819 e!2057709))

(declare-fun res!1341851 () Bool)

(assert (=> d!926819 (=> (not res!1341851) (not e!2057709))))

(declare-fun lt!1121493 () Bool)

(assert (=> d!926819 (= res!1341851 (= lt!1121493 (forall!7585 (list!13119 (seqFromList!3663 tokens!494)) lambda!119155)))))

(declare-fun forall!7587 (BalanceConc!21582 Int) Bool)

(assert (=> d!926819 (= lt!1121493 (forall!7587 (seqFromList!3663 tokens!494) lambda!119155))))

(assert (=> d!926819 (not (isEmpty!20680 rules!2135))))

(assert (=> d!926819 (= (rulesProduceEachTokenIndividually!1344 thiss!18206 rules!2135 (seqFromList!3663 tokens!494)) lt!1121493)))

(declare-fun b!3308469 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1769 (LexerInterface!4893 List!36664 List!36665) Bool)

(assert (=> b!3308469 (= e!2057709 (= lt!1121493 (rulesProduceEachTokenIndividuallyList!1769 thiss!18206 rules!2135 (list!13119 (seqFromList!3663 tokens!494)))))))

(assert (= (and d!926819 res!1341851) b!3308469))

(assert (=> d!926819 m!3635109))

(declare-fun m!3635541 () Bool)

(assert (=> d!926819 m!3635541))

(assert (=> d!926819 m!3635541))

(declare-fun m!3635543 () Bool)

(assert (=> d!926819 m!3635543))

(assert (=> d!926819 m!3635109))

(declare-fun m!3635545 () Bool)

(assert (=> d!926819 m!3635545))

(assert (=> d!926819 m!3635061))

(assert (=> b!3308469 m!3635109))

(assert (=> b!3308469 m!3635541))

(assert (=> b!3308469 m!3635541))

(declare-fun m!3635547 () Bool)

(assert (=> b!3308469 m!3635547))

(assert (=> b!3308164 d!926819))

(declare-fun d!926863 () Bool)

(declare-fun fromListB!1614 (List!36665) BalanceConc!21582)

(assert (=> d!926863 (= (seqFromList!3663 tokens!494) (fromListB!1614 tokens!494))))

(declare-fun bs!549255 () Bool)

(assert (= bs!549255 d!926863))

(declare-fun m!3635549 () Bool)

(assert (=> bs!549255 m!3635549))

(assert (=> b!3308164 d!926863))

(declare-fun lt!1121496 () Bool)

(declare-fun d!926865 () Bool)

(declare-fun isEmpty!20688 (List!36665) Bool)

(assert (=> d!926865 (= lt!1121496 (isEmpty!20688 (list!13119 (_1!21147 (lex!2219 thiss!18206 rules!2135 (seqFromList!3664 lt!1121387))))))))

(declare-fun isEmpty!20689 (Conc!10984) Bool)

(assert (=> d!926865 (= lt!1121496 (isEmpty!20689 (c!561112 (_1!21147 (lex!2219 thiss!18206 rules!2135 (seqFromList!3664 lt!1121387))))))))

(assert (=> d!926865 (= (isEmpty!20681 (_1!21147 (lex!2219 thiss!18206 rules!2135 (seqFromList!3664 lt!1121387)))) lt!1121496)))

(declare-fun bs!549256 () Bool)

(assert (= bs!549256 d!926865))

(declare-fun m!3635551 () Bool)

(assert (=> bs!549256 m!3635551))

(assert (=> bs!549256 m!3635551))

(declare-fun m!3635553 () Bool)

(assert (=> bs!549256 m!3635553))

(declare-fun m!3635555 () Bool)

(assert (=> bs!549256 m!3635555))

(assert (=> b!3308175 d!926865))

(declare-fun lt!1121499 () tuple2!36026)

(declare-fun e!2057726 () Bool)

(declare-fun b!3308493 () Bool)

(declare-datatypes ((tuple2!36030 0))(
  ( (tuple2!36031 (_1!21149 List!36665) (_2!21149 List!36663)) )
))
(declare-fun lexList!1362 (LexerInterface!4893 List!36664 List!36663) tuple2!36030)

(assert (=> b!3308493 (= e!2057726 (= (list!13115 (_2!21147 lt!1121499)) (_2!21149 (lexList!1362 thiss!18206 rules!2135 (list!13115 (seqFromList!3664 lt!1121387))))))))

(declare-fun b!3308494 () Bool)

(declare-fun res!1341858 () Bool)

(assert (=> b!3308494 (=> (not res!1341858) (not e!2057726))))

(assert (=> b!3308494 (= res!1341858 (= (list!13119 (_1!21147 lt!1121499)) (_1!21149 (lexList!1362 thiss!18206 rules!2135 (list!13115 (seqFromList!3664 lt!1121387))))))))

(declare-fun b!3308495 () Bool)

(declare-fun e!2057725 () Bool)

(assert (=> b!3308495 (= e!2057725 (= (_2!21147 lt!1121499) (seqFromList!3664 lt!1121387)))))

(declare-fun b!3308496 () Bool)

(declare-fun e!2057727 () Bool)

(assert (=> b!3308496 (= e!2057725 e!2057727)))

(declare-fun res!1341859 () Bool)

(declare-fun size!27609 (BalanceConc!21580) Int)

(assert (=> b!3308496 (= res!1341859 (< (size!27609 (_2!21147 lt!1121499)) (size!27609 (seqFromList!3664 lt!1121387))))))

(assert (=> b!3308496 (=> (not res!1341859) (not e!2057727))))

(declare-fun b!3308497 () Bool)

(assert (=> b!3308497 (= e!2057727 (not (isEmpty!20681 (_1!21147 lt!1121499))))))

(declare-fun d!926867 () Bool)

(assert (=> d!926867 e!2057726))

(declare-fun res!1341860 () Bool)

(assert (=> d!926867 (=> (not res!1341860) (not e!2057726))))

(assert (=> d!926867 (= res!1341860 e!2057725)))

(declare-fun c!561156 () Bool)

(assert (=> d!926867 (= c!561156 (> (size!27608 (_1!21147 lt!1121499)) 0))))

(declare-fun lexTailRecV2!972 (LexerInterface!4893 List!36664 BalanceConc!21580 BalanceConc!21580 BalanceConc!21580 BalanceConc!21582) tuple2!36026)

(assert (=> d!926867 (= lt!1121499 (lexTailRecV2!972 thiss!18206 rules!2135 (seqFromList!3664 lt!1121387) (BalanceConc!21581 Empty!10983) (seqFromList!3664 lt!1121387) (BalanceConc!21583 Empty!10984)))))

(assert (=> d!926867 (= (lex!2219 thiss!18206 rules!2135 (seqFromList!3664 lt!1121387)) lt!1121499)))

(assert (= (and d!926867 c!561156) b!3308496))

(assert (= (and d!926867 (not c!561156)) b!3308495))

(assert (= (and b!3308496 res!1341859) b!3308497))

(assert (= (and d!926867 res!1341860) b!3308494))

(assert (= (and b!3308494 res!1341858) b!3308493))

(declare-fun m!3635557 () Bool)

(assert (=> d!926867 m!3635557))

(assert (=> d!926867 m!3635097))

(assert (=> d!926867 m!3635097))

(declare-fun m!3635559 () Bool)

(assert (=> d!926867 m!3635559))

(declare-fun m!3635561 () Bool)

(assert (=> b!3308494 m!3635561))

(assert (=> b!3308494 m!3635097))

(declare-fun m!3635563 () Bool)

(assert (=> b!3308494 m!3635563))

(assert (=> b!3308494 m!3635563))

(declare-fun m!3635565 () Bool)

(assert (=> b!3308494 m!3635565))

(declare-fun m!3635567 () Bool)

(assert (=> b!3308493 m!3635567))

(assert (=> b!3308493 m!3635097))

(assert (=> b!3308493 m!3635563))

(assert (=> b!3308493 m!3635563))

(assert (=> b!3308493 m!3635565))

(declare-fun m!3635569 () Bool)

(assert (=> b!3308496 m!3635569))

(assert (=> b!3308496 m!3635097))

(declare-fun m!3635571 () Bool)

(assert (=> b!3308496 m!3635571))

(declare-fun m!3635573 () Bool)

(assert (=> b!3308497 m!3635573))

(assert (=> b!3308175 d!926867))

(declare-fun d!926869 () Bool)

(declare-fun fromListB!1615 (List!36663) BalanceConc!21580)

(assert (=> d!926869 (= (seqFromList!3664 lt!1121387) (fromListB!1615 lt!1121387))))

(declare-fun bs!549257 () Bool)

(assert (= bs!549257 d!926869))

(declare-fun m!3635575 () Bool)

(assert (=> bs!549257 m!3635575))

(assert (=> b!3308175 d!926869))

(declare-fun d!926871 () Bool)

(declare-fun res!1341861 () Bool)

(declare-fun e!2057728 () Bool)

(assert (=> d!926871 (=> (not res!1341861) (not e!2057728))))

(assert (=> d!926871 (= res!1341861 (not (isEmpty!20685 (originalCharacters!6018 separatorToken!241))))))

(assert (=> d!926871 (= (inv!49514 separatorToken!241) e!2057728)))

(declare-fun b!3308498 () Bool)

(declare-fun res!1341862 () Bool)

(assert (=> b!3308498 (=> (not res!1341862) (not e!2057728))))

(assert (=> b!3308498 (= res!1341862 (= (originalCharacters!6018 separatorToken!241) (list!13115 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (value!171624 separatorToken!241)))))))

(declare-fun b!3308499 () Bool)

(assert (=> b!3308499 (= e!2057728 (= (size!27603 separatorToken!241) (size!27607 (originalCharacters!6018 separatorToken!241))))))

(assert (= (and d!926871 res!1341861) b!3308498))

(assert (= (and b!3308498 res!1341862) b!3308499))

(declare-fun b_lambda!92561 () Bool)

(assert (=> (not b_lambda!92561) (not b!3308498)))

(declare-fun tb!171851 () Bool)

(declare-fun t!254000 () Bool)

(assert (=> (and b!3308160 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241)))) t!254000) tb!171851))

(declare-fun b!3308500 () Bool)

(declare-fun e!2057729 () Bool)

(declare-fun tp!1036115 () Bool)

(assert (=> b!3308500 (= e!2057729 (and (inv!49518 (c!561111 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (value!171624 separatorToken!241)))) tp!1036115))))

(declare-fun result!214752 () Bool)

(assert (=> tb!171851 (= result!214752 (and (inv!49519 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (value!171624 separatorToken!241))) e!2057729))))

(assert (= tb!171851 b!3308500))

(declare-fun m!3635577 () Bool)

(assert (=> b!3308500 m!3635577))

(declare-fun m!3635579 () Bool)

(assert (=> tb!171851 m!3635579))

(assert (=> b!3308498 t!254000))

(declare-fun b_and!226957 () Bool)

(assert (= b_and!226913 (and (=> t!254000 result!214752) b_and!226957)))

(declare-fun t!254002 () Bool)

(declare-fun tb!171853 () Bool)

(assert (=> (and b!3308168 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241)))) t!254002) tb!171853))

(declare-fun result!214754 () Bool)

(assert (= result!214754 result!214752))

(assert (=> b!3308498 t!254002))

(declare-fun b_and!226959 () Bool)

(assert (= b_and!226915 (and (=> t!254002 result!214754) b_and!226959)))

(declare-fun t!254004 () Bool)

(declare-fun tb!171855 () Bool)

(assert (=> (and b!3308174 (= (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241)))) t!254004) tb!171855))

(declare-fun result!214756 () Bool)

(assert (= result!214756 result!214752))

(assert (=> b!3308498 t!254004))

(declare-fun b_and!226961 () Bool)

(assert (= b_and!226917 (and (=> t!254004 result!214756) b_and!226961)))

(declare-fun m!3635581 () Bool)

(assert (=> d!926871 m!3635581))

(declare-fun m!3635583 () Bool)

(assert (=> b!3308498 m!3635583))

(assert (=> b!3308498 m!3635583))

(declare-fun m!3635585 () Bool)

(assert (=> b!3308498 m!3635585))

(declare-fun m!3635587 () Bool)

(assert (=> b!3308499 m!3635587))

(assert (=> start!308402 d!926871))

(declare-fun d!926873 () Bool)

(assert (=> d!926873 (= (inv!49511 (tag!5850 (rule!7808 separatorToken!241))) (= (mod (str.len (value!171623 (tag!5850 (rule!7808 separatorToken!241)))) 2) 0))))

(assert (=> b!3308163 d!926873))

(declare-fun d!926875 () Bool)

(declare-fun res!1341863 () Bool)

(declare-fun e!2057730 () Bool)

(assert (=> d!926875 (=> (not res!1341863) (not e!2057730))))

(assert (=> d!926875 (= res!1341863 (semiInverseModEq!2197 (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toValue!7448 (transformation!5304 (rule!7808 separatorToken!241)))))))

(assert (=> d!926875 (= (inv!49515 (transformation!5304 (rule!7808 separatorToken!241))) e!2057730)))

(declare-fun b!3308501 () Bool)

(assert (=> b!3308501 (= e!2057730 (equivClasses!2096 (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toValue!7448 (transformation!5304 (rule!7808 separatorToken!241)))))))

(assert (= (and d!926875 res!1341863) b!3308501))

(declare-fun m!3635589 () Bool)

(assert (=> d!926875 m!3635589))

(declare-fun m!3635591 () Bool)

(assert (=> b!3308501 m!3635591))

(assert (=> b!3308163 d!926875))

(declare-fun d!926877 () Bool)

(assert (=> d!926877 (= (inv!49511 (tag!5850 (rule!7808 (h!41961 tokens!494)))) (= (mod (str.len (value!171623 (tag!5850 (rule!7808 (h!41961 tokens!494))))) 2) 0))))

(assert (=> b!3308162 d!926877))

(declare-fun d!926879 () Bool)

(declare-fun res!1341864 () Bool)

(declare-fun e!2057731 () Bool)

(assert (=> d!926879 (=> (not res!1341864) (not e!2057731))))

(assert (=> d!926879 (= res!1341864 (semiInverseModEq!2197 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toValue!7448 (transformation!5304 (rule!7808 (h!41961 tokens!494))))))))

(assert (=> d!926879 (= (inv!49515 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) e!2057731)))

(declare-fun b!3308502 () Bool)

(assert (=> b!3308502 (= e!2057731 (equivClasses!2096 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toValue!7448 (transformation!5304 (rule!7808 (h!41961 tokens!494))))))))

(assert (= (and d!926879 res!1341864) b!3308502))

(declare-fun m!3635593 () Bool)

(assert (=> d!926879 m!3635593))

(declare-fun m!3635595 () Bool)

(assert (=> b!3308502 m!3635595))

(assert (=> b!3308162 d!926879))

(declare-fun d!926881 () Bool)

(declare-fun c!561159 () Bool)

(assert (=> d!926881 (= c!561159 ((_ is Cons!36541) tokens!494))))

(declare-fun e!2057734 () List!36663)

(assert (=> d!926881 (= (printWithSeparatorTokenList!204 thiss!18206 tokens!494 separatorToken!241) e!2057734)))

(declare-fun b!3308507 () Bool)

(assert (=> b!3308507 (= e!2057734 (++!8853 (++!8853 (list!13115 (charsOf!3320 (h!41961 tokens!494))) (list!13115 (charsOf!3320 separatorToken!241))) (printWithSeparatorTokenList!204 thiss!18206 (t!253950 tokens!494) separatorToken!241)))))

(declare-fun b!3308508 () Bool)

(assert (=> b!3308508 (= e!2057734 Nil!36539)))

(assert (= (and d!926881 c!561159) b!3308507))

(assert (= (and d!926881 (not c!561159)) b!3308508))

(declare-fun m!3635597 () Bool)

(assert (=> b!3308507 m!3635597))

(assert (=> b!3308507 m!3635047))

(declare-fun m!3635599 () Bool)

(assert (=> b!3308507 m!3635599))

(assert (=> b!3308507 m!3635105))

(assert (=> b!3308507 m!3635107))

(assert (=> b!3308507 m!3635043))

(assert (=> b!3308507 m!3635055))

(assert (=> b!3308507 m!3635105))

(assert (=> b!3308507 m!3635107))

(assert (=> b!3308507 m!3635055))

(assert (=> b!3308507 m!3635597))

(assert (=> b!3308507 m!3635047))

(assert (=> b!3308507 m!3635043))

(assert (=> b!3308173 d!926881))

(declare-fun b!3308518 () Bool)

(declare-fun e!2057739 () List!36663)

(assert (=> b!3308518 (= e!2057739 (Cons!36539 (h!41959 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494))))) (++!8853 (t!253948 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494))))) lt!1121385)))))

(declare-fun d!926883 () Bool)

(declare-fun e!2057740 () Bool)

(assert (=> d!926883 e!2057740))

(declare-fun res!1341869 () Bool)

(assert (=> d!926883 (=> (not res!1341869) (not e!2057740))))

(declare-fun lt!1121502 () List!36663)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4975 (List!36663) (InoxSet C!20312))

(assert (=> d!926883 (= res!1341869 (= (content!4975 lt!1121502) ((_ map or) (content!4975 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494))))) (content!4975 lt!1121385))))))

(assert (=> d!926883 (= lt!1121502 e!2057739)))

(declare-fun c!561162 () Bool)

(assert (=> d!926883 (= c!561162 ((_ is Nil!36539) (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494))))))))

(assert (=> d!926883 (= (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385) lt!1121502)))

(declare-fun b!3308519 () Bool)

(declare-fun res!1341870 () Bool)

(assert (=> b!3308519 (=> (not res!1341870) (not e!2057740))))

(assert (=> b!3308519 (= res!1341870 (= (size!27607 lt!1121502) (+ (size!27607 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494))))) (size!27607 lt!1121385))))))

(declare-fun b!3308517 () Bool)

(assert (=> b!3308517 (= e!2057739 lt!1121385)))

(declare-fun b!3308520 () Bool)

(assert (=> b!3308520 (= e!2057740 (or (not (= lt!1121385 Nil!36539)) (= lt!1121502 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))))))))

(assert (= (and d!926883 c!561162) b!3308517))

(assert (= (and d!926883 (not c!561162)) b!3308518))

(assert (= (and d!926883 res!1341869) b!3308519))

(assert (= (and b!3308519 res!1341870) b!3308520))

(declare-fun m!3635601 () Bool)

(assert (=> b!3308518 m!3635601))

(declare-fun m!3635603 () Bool)

(assert (=> d!926883 m!3635603))

(assert (=> d!926883 m!3635049))

(declare-fun m!3635605 () Bool)

(assert (=> d!926883 m!3635605))

(declare-fun m!3635607 () Bool)

(assert (=> d!926883 m!3635607))

(declare-fun m!3635609 () Bool)

(assert (=> b!3308519 m!3635609))

(assert (=> b!3308519 m!3635049))

(declare-fun m!3635611 () Bool)

(assert (=> b!3308519 m!3635611))

(declare-fun m!3635613 () Bool)

(assert (=> b!3308519 m!3635613))

(assert (=> b!3308173 d!926883))

(declare-fun b!3308522 () Bool)

(declare-fun e!2057741 () List!36663)

(assert (=> b!3308522 (= e!2057741 (Cons!36539 (h!41959 lt!1121385) (++!8853 (t!253948 lt!1121385) lt!1121388)))))

(declare-fun d!926885 () Bool)

(declare-fun e!2057742 () Bool)

(assert (=> d!926885 e!2057742))

(declare-fun res!1341871 () Bool)

(assert (=> d!926885 (=> (not res!1341871) (not e!2057742))))

(declare-fun lt!1121503 () List!36663)

(assert (=> d!926885 (= res!1341871 (= (content!4975 lt!1121503) ((_ map or) (content!4975 lt!1121385) (content!4975 lt!1121388))))))

(assert (=> d!926885 (= lt!1121503 e!2057741)))

(declare-fun c!561163 () Bool)

(assert (=> d!926885 (= c!561163 ((_ is Nil!36539) lt!1121385))))

(assert (=> d!926885 (= (++!8853 lt!1121385 lt!1121388) lt!1121503)))

(declare-fun b!3308523 () Bool)

(declare-fun res!1341872 () Bool)

(assert (=> b!3308523 (=> (not res!1341872) (not e!2057742))))

(assert (=> b!3308523 (= res!1341872 (= (size!27607 lt!1121503) (+ (size!27607 lt!1121385) (size!27607 lt!1121388))))))

(declare-fun b!3308521 () Bool)

(assert (=> b!3308521 (= e!2057741 lt!1121388)))

(declare-fun b!3308524 () Bool)

(assert (=> b!3308524 (= e!2057742 (or (not (= lt!1121388 Nil!36539)) (= lt!1121503 lt!1121385)))))

(assert (= (and d!926885 c!561163) b!3308521))

(assert (= (and d!926885 (not c!561163)) b!3308522))

(assert (= (and d!926885 res!1341871) b!3308523))

(assert (= (and b!3308523 res!1341872) b!3308524))

(declare-fun m!3635615 () Bool)

(assert (=> b!3308522 m!3635615))

(declare-fun m!3635617 () Bool)

(assert (=> d!926885 m!3635617))

(assert (=> d!926885 m!3635607))

(declare-fun m!3635619 () Bool)

(assert (=> d!926885 m!3635619))

(declare-fun m!3635621 () Bool)

(assert (=> b!3308523 m!3635621))

(assert (=> b!3308523 m!3635613))

(declare-fun m!3635623 () Bool)

(assert (=> b!3308523 m!3635623))

(assert (=> b!3308173 d!926885))

(declare-fun d!926887 () Bool)

(assert (=> d!926887 (= (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) (list!13118 (c!561111 (charsOf!3320 (h!41961 (t!253950 tokens!494))))))))

(declare-fun bs!549258 () Bool)

(assert (= bs!549258 d!926887))

(declare-fun m!3635625 () Bool)

(assert (=> bs!549258 m!3635625))

(assert (=> b!3308173 d!926887))

(declare-fun d!926889 () Bool)

(declare-fun c!561164 () Bool)

(assert (=> d!926889 (= c!561164 ((_ is Cons!36541) (t!253950 (t!253950 tokens!494))))))

(declare-fun e!2057743 () List!36663)

(assert (=> d!926889 (= (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241) e!2057743)))

(declare-fun b!3308525 () Bool)

(assert (=> b!3308525 (= e!2057743 (++!8853 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 (t!253950 tokens!494))))) (list!13115 (charsOf!3320 separatorToken!241))) (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 (t!253950 tokens!494))) separatorToken!241)))))

(declare-fun b!3308526 () Bool)

(assert (=> b!3308526 (= e!2057743 Nil!36539)))

(assert (= (and d!926889 c!561164) b!3308525))

(assert (= (and d!926889 (not c!561164)) b!3308526))

(declare-fun m!3635627 () Bool)

(assert (=> b!3308525 m!3635627))

(declare-fun m!3635629 () Bool)

(assert (=> b!3308525 m!3635629))

(declare-fun m!3635631 () Bool)

(assert (=> b!3308525 m!3635631))

(declare-fun m!3635633 () Bool)

(assert (=> b!3308525 m!3635633))

(declare-fun m!3635635 () Bool)

(assert (=> b!3308525 m!3635635))

(assert (=> b!3308525 m!3635043))

(assert (=> b!3308525 m!3635055))

(assert (=> b!3308525 m!3635633))

(assert (=> b!3308525 m!3635635))

(assert (=> b!3308525 m!3635055))

(assert (=> b!3308525 m!3635627))

(assert (=> b!3308525 m!3635629))

(assert (=> b!3308525 m!3635043))

(assert (=> b!3308173 d!926889))

(declare-fun d!926891 () Bool)

(declare-fun c!561165 () Bool)

(assert (=> d!926891 (= c!561165 ((_ is Cons!36541) (t!253950 tokens!494)))))

(declare-fun e!2057744 () List!36663)

(assert (=> d!926891 (= (printWithSeparatorTokenList!204 thiss!18206 (t!253950 tokens!494) separatorToken!241) e!2057744)))

(declare-fun b!3308527 () Bool)

(assert (=> b!3308527 (= e!2057744 (++!8853 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) (list!13115 (charsOf!3320 separatorToken!241))) (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241)))))

(declare-fun b!3308528 () Bool)

(assert (=> b!3308528 (= e!2057744 Nil!36539)))

(assert (= (and d!926891 c!561165) b!3308527))

(assert (= (and d!926891 (not c!561165)) b!3308528))

(declare-fun m!3635637 () Bool)

(assert (=> b!3308527 m!3635637))

(assert (=> b!3308527 m!3635053))

(declare-fun m!3635639 () Bool)

(assert (=> b!3308527 m!3635639))

(assert (=> b!3308527 m!3635041))

(assert (=> b!3308527 m!3635049))

(assert (=> b!3308527 m!3635043))

(assert (=> b!3308527 m!3635055))

(assert (=> b!3308527 m!3635041))

(assert (=> b!3308527 m!3635049))

(assert (=> b!3308527 m!3635055))

(assert (=> b!3308527 m!3635637))

(assert (=> b!3308527 m!3635053))

(assert (=> b!3308527 m!3635043))

(assert (=> b!3308173 d!926891))

(declare-fun e!2057745 () List!36663)

(declare-fun b!3308530 () Bool)

(assert (=> b!3308530 (= e!2057745 (Cons!36539 (h!41959 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385)) (++!8853 (t!253948 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385)) (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241))))))

(declare-fun d!926893 () Bool)

(declare-fun e!2057746 () Bool)

(assert (=> d!926893 e!2057746))

(declare-fun res!1341873 () Bool)

(assert (=> d!926893 (=> (not res!1341873) (not e!2057746))))

(declare-fun lt!1121504 () List!36663)

(assert (=> d!926893 (= res!1341873 (= (content!4975 lt!1121504) ((_ map or) (content!4975 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385)) (content!4975 (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241)))))))

(assert (=> d!926893 (= lt!1121504 e!2057745)))

(declare-fun c!561166 () Bool)

(assert (=> d!926893 (= c!561166 ((_ is Nil!36539) (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385)))))

(assert (=> d!926893 (= (++!8853 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385) (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241)) lt!1121504)))

(declare-fun b!3308531 () Bool)

(declare-fun res!1341874 () Bool)

(assert (=> b!3308531 (=> (not res!1341874) (not e!2057746))))

(assert (=> b!3308531 (= res!1341874 (= (size!27607 lt!1121504) (+ (size!27607 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385)) (size!27607 (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241)))))))

(declare-fun b!3308529 () Bool)

(assert (=> b!3308529 (= e!2057745 (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241))))

(declare-fun b!3308532 () Bool)

(assert (=> b!3308532 (= e!2057746 (or (not (= (printWithSeparatorTokenList!204 thiss!18206 (t!253950 (t!253950 tokens!494)) separatorToken!241) Nil!36539)) (= lt!1121504 (++!8853 (list!13115 (charsOf!3320 (h!41961 (t!253950 tokens!494)))) lt!1121385))))))

(assert (= (and d!926893 c!561166) b!3308529))

(assert (= (and d!926893 (not c!561166)) b!3308530))

(assert (= (and d!926893 res!1341873) b!3308531))

(assert (= (and b!3308531 res!1341874) b!3308532))

(assert (=> b!3308530 m!3635053))

(declare-fun m!3635641 () Bool)

(assert (=> b!3308530 m!3635641))

(declare-fun m!3635643 () Bool)

(assert (=> d!926893 m!3635643))

(assert (=> d!926893 m!3635051))

(declare-fun m!3635645 () Bool)

(assert (=> d!926893 m!3635645))

(assert (=> d!926893 m!3635053))

(declare-fun m!3635647 () Bool)

(assert (=> d!926893 m!3635647))

(declare-fun m!3635649 () Bool)

(assert (=> b!3308531 m!3635649))

(assert (=> b!3308531 m!3635051))

(declare-fun m!3635651 () Bool)

(assert (=> b!3308531 m!3635651))

(assert (=> b!3308531 m!3635053))

(declare-fun m!3635653 () Bool)

(assert (=> b!3308531 m!3635653))

(assert (=> b!3308173 d!926893))

(declare-fun d!926895 () Bool)

(declare-fun lt!1121505 () BalanceConc!21580)

(assert (=> d!926895 (= (list!13115 lt!1121505) (originalCharacters!6018 separatorToken!241))))

(assert (=> d!926895 (= lt!1121505 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (value!171624 separatorToken!241)))))

(assert (=> d!926895 (= (charsOf!3320 separatorToken!241) lt!1121505)))

(declare-fun b_lambda!92563 () Bool)

(assert (=> (not b_lambda!92563) (not d!926895)))

(assert (=> d!926895 t!254000))

(declare-fun b_and!226963 () Bool)

(assert (= b_and!226957 (and (=> t!254000 result!214752) b_and!226963)))

(assert (=> d!926895 t!254002))

(declare-fun b_and!226965 () Bool)

(assert (= b_and!226959 (and (=> t!254002 result!214754) b_and!226965)))

(assert (=> d!926895 t!254004))

(declare-fun b_and!226967 () Bool)

(assert (= b_and!226961 (and (=> t!254004 result!214756) b_and!226967)))

(declare-fun m!3635655 () Bool)

(assert (=> d!926895 m!3635655))

(assert (=> d!926895 m!3635583))

(assert (=> b!3308173 d!926895))

(declare-fun d!926897 () Bool)

(assert (=> d!926897 (= (list!13115 (charsOf!3320 separatorToken!241)) (list!13118 (c!561111 (charsOf!3320 separatorToken!241))))))

(declare-fun bs!549259 () Bool)

(assert (= bs!549259 d!926897))

(declare-fun m!3635657 () Bool)

(assert (=> bs!549259 m!3635657))

(assert (=> b!3308173 d!926897))

(declare-fun d!926899 () Bool)

(declare-fun lt!1121506 () BalanceConc!21580)

(assert (=> d!926899 (= (list!13115 lt!1121506) (originalCharacters!6018 (h!41961 (t!253950 tokens!494))))))

(assert (=> d!926899 (= lt!1121506 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (value!171624 (h!41961 (t!253950 tokens!494)))))))

(assert (=> d!926899 (= (charsOf!3320 (h!41961 (t!253950 tokens!494))) lt!1121506)))

(declare-fun b_lambda!92565 () Bool)

(assert (=> (not b_lambda!92565) (not d!926899)))

(declare-fun t!254007 () Bool)

(declare-fun tb!171857 () Bool)

(assert (=> (and b!3308160 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494)))))) t!254007) tb!171857))

(declare-fun b!3308533 () Bool)

(declare-fun e!2057747 () Bool)

(declare-fun tp!1036116 () Bool)

(assert (=> b!3308533 (= e!2057747 (and (inv!49518 (c!561111 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (value!171624 (h!41961 (t!253950 tokens!494)))))) tp!1036116))))

(declare-fun result!214758 () Bool)

(assert (=> tb!171857 (= result!214758 (and (inv!49519 (dynLambda!14997 (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (value!171624 (h!41961 (t!253950 tokens!494))))) e!2057747))))

(assert (= tb!171857 b!3308533))

(declare-fun m!3635659 () Bool)

(assert (=> b!3308533 m!3635659))

(declare-fun m!3635661 () Bool)

(assert (=> tb!171857 m!3635661))

(assert (=> d!926899 t!254007))

(declare-fun b_and!226969 () Bool)

(assert (= b_and!226963 (and (=> t!254007 result!214758) b_and!226969)))

(declare-fun t!254009 () Bool)

(declare-fun tb!171859 () Bool)

(assert (=> (and b!3308168 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494)))))) t!254009) tb!171859))

(declare-fun result!214760 () Bool)

(assert (= result!214760 result!214758))

(assert (=> d!926899 t!254009))

(declare-fun b_and!226971 () Bool)

(assert (= b_and!226965 (and (=> t!254009 result!214760) b_and!226971)))

(declare-fun t!254011 () Bool)

(declare-fun tb!171861 () Bool)

(assert (=> (and b!3308174 (= (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494)))))) t!254011) tb!171861))

(declare-fun result!214762 () Bool)

(assert (= result!214762 result!214758))

(assert (=> d!926899 t!254011))

(declare-fun b_and!226973 () Bool)

(assert (= b_and!226967 (and (=> t!254011 result!214762) b_and!226973)))

(declare-fun m!3635663 () Bool)

(assert (=> d!926899 m!3635663))

(declare-fun m!3635665 () Bool)

(assert (=> d!926899 m!3635665))

(assert (=> b!3308173 d!926899))

(declare-fun b!3308544 () Bool)

(declare-fun b_free!87069 () Bool)

(declare-fun b_next!87773 () Bool)

(assert (=> b!3308544 (= b_free!87069 (not b_next!87773))))

(declare-fun tp!1036126 () Bool)

(declare-fun b_and!226975 () Bool)

(assert (=> b!3308544 (= tp!1036126 b_and!226975)))

(declare-fun b_free!87071 () Bool)

(declare-fun b_next!87775 () Bool)

(assert (=> b!3308544 (= b_free!87071 (not b_next!87775))))

(declare-fun tb!171863 () Bool)

(declare-fun t!254013 () Bool)

(assert (=> (and b!3308544 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494))))) t!254013) tb!171863))

(declare-fun result!214766 () Bool)

(assert (= result!214766 result!214704))

(assert (=> b!3308212 t!254013))

(assert (=> d!926747 t!254013))

(declare-fun tb!171865 () Bool)

(declare-fun t!254015 () Bool)

(assert (=> (and b!3308544 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241)))) t!254015) tb!171865))

(declare-fun result!214768 () Bool)

(assert (= result!214768 result!214752))

(assert (=> b!3308498 t!254015))

(assert (=> d!926895 t!254015))

(declare-fun tb!171867 () Bool)

(declare-fun t!254017 () Bool)

(assert (=> (and b!3308544 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494)))))) t!254017) tb!171867))

(declare-fun result!214770 () Bool)

(assert (= result!214770 result!214758))

(assert (=> d!926899 t!254017))

(declare-fun tp!1036128 () Bool)

(declare-fun b_and!226977 () Bool)

(assert (=> b!3308544 (= tp!1036128 (and (=> t!254015 result!214768) (=> t!254013 result!214766) (=> t!254017 result!214770) b_and!226977))))

(declare-fun e!2057758 () Bool)

(assert (=> b!3308544 (= e!2057758 (and tp!1036126 tp!1036128))))

(declare-fun e!2057756 () Bool)

(declare-fun tp!1036125 () Bool)

(declare-fun b!3308543 () Bool)

(assert (=> b!3308543 (= e!2057756 (and tp!1036125 (inv!49511 (tag!5850 (h!41960 (t!253949 rules!2135)))) (inv!49515 (transformation!5304 (h!41960 (t!253949 rules!2135)))) e!2057758))))

(declare-fun b!3308542 () Bool)

(declare-fun e!2057757 () Bool)

(declare-fun tp!1036127 () Bool)

(assert (=> b!3308542 (= e!2057757 (and e!2057756 tp!1036127))))

(assert (=> b!3308172 (= tp!1036050 e!2057757)))

(assert (= b!3308543 b!3308544))

(assert (= b!3308542 b!3308543))

(assert (= (and b!3308172 ((_ is Cons!36540) (t!253949 rules!2135))) b!3308542))

(declare-fun m!3635667 () Bool)

(assert (=> b!3308543 m!3635667))

(declare-fun m!3635669 () Bool)

(assert (=> b!3308543 m!3635669))

(declare-fun b!3308549 () Bool)

(declare-fun e!2057762 () Bool)

(declare-fun tp_is_empty!17385 () Bool)

(declare-fun tp!1036131 () Bool)

(assert (=> b!3308549 (= e!2057762 (and tp_is_empty!17385 tp!1036131))))

(assert (=> b!3308176 (= tp!1036041 e!2057762)))

(assert (= (and b!3308176 ((_ is Cons!36539) (originalCharacters!6018 separatorToken!241))) b!3308549))

(declare-fun b!3308563 () Bool)

(declare-fun b_free!87073 () Bool)

(declare-fun b_next!87777 () Bool)

(assert (=> b!3308563 (= b_free!87073 (not b_next!87777))))

(declare-fun tp!1036145 () Bool)

(declare-fun b_and!226979 () Bool)

(assert (=> b!3308563 (= tp!1036145 b_and!226979)))

(declare-fun b_free!87075 () Bool)

(declare-fun b_next!87779 () Bool)

(assert (=> b!3308563 (= b_free!87075 (not b_next!87779))))

(declare-fun t!254019 () Bool)

(declare-fun tb!171869 () Bool)

(assert (=> (and b!3308563 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494))))) t!254019) tb!171869))

(declare-fun result!214776 () Bool)

(assert (= result!214776 result!214704))

(assert (=> b!3308212 t!254019))

(assert (=> d!926747 t!254019))

(declare-fun t!254021 () Bool)

(declare-fun tb!171871 () Bool)

(assert (=> (and b!3308563 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241)))) t!254021) tb!171871))

(declare-fun result!214778 () Bool)

(assert (= result!214778 result!214752))

(assert (=> b!3308498 t!254021))

(assert (=> d!926895 t!254021))

(declare-fun t!254023 () Bool)

(declare-fun tb!171873 () Bool)

(assert (=> (and b!3308563 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494)))))) t!254023) tb!171873))

(declare-fun result!214780 () Bool)

(assert (= result!214780 result!214758))

(assert (=> d!926899 t!254023))

(declare-fun b_and!226981 () Bool)

(declare-fun tp!1036143 () Bool)

(assert (=> b!3308563 (= tp!1036143 (and (=> t!254019 result!214776) (=> t!254021 result!214778) (=> t!254023 result!214780) b_and!226981))))

(declare-fun e!2057777 () Bool)

(declare-fun b!3308560 () Bool)

(declare-fun tp!1036142 () Bool)

(declare-fun e!2057779 () Bool)

(assert (=> b!3308560 (= e!2057779 (and (inv!49514 (h!41961 (t!253950 tokens!494))) e!2057777 tp!1036142))))

(declare-fun b!3308562 () Bool)

(declare-fun e!2057776 () Bool)

(declare-fun e!2057780 () Bool)

(declare-fun tp!1036144 () Bool)

(assert (=> b!3308562 (= e!2057776 (and tp!1036144 (inv!49511 (tag!5850 (rule!7808 (h!41961 (t!253950 tokens!494))))) (inv!49515 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) e!2057780))))

(assert (=> b!3308180 (= tp!1036044 e!2057779)))

(assert (=> b!3308563 (= e!2057780 (and tp!1036145 tp!1036143))))

(declare-fun tp!1036146 () Bool)

(declare-fun b!3308561 () Bool)

(assert (=> b!3308561 (= e!2057777 (and (inv!21 (value!171624 (h!41961 (t!253950 tokens!494)))) e!2057776 tp!1036146))))

(assert (= b!3308562 b!3308563))

(assert (= b!3308561 b!3308562))

(assert (= b!3308560 b!3308561))

(assert (= (and b!3308180 ((_ is Cons!36541) (t!253950 tokens!494))) b!3308560))

(declare-fun m!3635671 () Bool)

(assert (=> b!3308560 m!3635671))

(declare-fun m!3635673 () Bool)

(assert (=> b!3308562 m!3635673))

(declare-fun m!3635675 () Bool)

(assert (=> b!3308562 m!3635675))

(declare-fun m!3635677 () Bool)

(assert (=> b!3308561 m!3635677))

(declare-fun b!3308564 () Bool)

(declare-fun e!2057781 () Bool)

(declare-fun tp!1036147 () Bool)

(assert (=> b!3308564 (= e!2057781 (and tp_is_empty!17385 tp!1036147))))

(assert (=> b!3308169 (= tp!1036045 e!2057781)))

(assert (= (and b!3308169 ((_ is Cons!36539) (originalCharacters!6018 (h!41961 tokens!494)))) b!3308564))

(declare-fun e!2057784 () Bool)

(assert (=> b!3308163 (= tp!1036042 e!2057784)))

(declare-fun b!3308575 () Bool)

(assert (=> b!3308575 (= e!2057784 tp_is_empty!17385)))

(declare-fun b!3308577 () Bool)

(declare-fun tp!1036159 () Bool)

(assert (=> b!3308577 (= e!2057784 tp!1036159)))

(declare-fun b!3308578 () Bool)

(declare-fun tp!1036158 () Bool)

(declare-fun tp!1036160 () Bool)

(assert (=> b!3308578 (= e!2057784 (and tp!1036158 tp!1036160))))

(declare-fun b!3308576 () Bool)

(declare-fun tp!1036162 () Bool)

(declare-fun tp!1036161 () Bool)

(assert (=> b!3308576 (= e!2057784 (and tp!1036162 tp!1036161))))

(assert (= (and b!3308163 ((_ is ElementMatch!10063) (regex!5304 (rule!7808 separatorToken!241)))) b!3308575))

(assert (= (and b!3308163 ((_ is Concat!15597) (regex!5304 (rule!7808 separatorToken!241)))) b!3308576))

(assert (= (and b!3308163 ((_ is Star!10063) (regex!5304 (rule!7808 separatorToken!241)))) b!3308577))

(assert (= (and b!3308163 ((_ is Union!10063) (regex!5304 (rule!7808 separatorToken!241)))) b!3308578))

(declare-fun e!2057785 () Bool)

(assert (=> b!3308162 (= tp!1036047 e!2057785)))

(declare-fun b!3308579 () Bool)

(assert (=> b!3308579 (= e!2057785 tp_is_empty!17385)))

(declare-fun b!3308581 () Bool)

(declare-fun tp!1036164 () Bool)

(assert (=> b!3308581 (= e!2057785 tp!1036164)))

(declare-fun b!3308582 () Bool)

(declare-fun tp!1036163 () Bool)

(declare-fun tp!1036165 () Bool)

(assert (=> b!3308582 (= e!2057785 (and tp!1036163 tp!1036165))))

(declare-fun b!3308580 () Bool)

(declare-fun tp!1036167 () Bool)

(declare-fun tp!1036166 () Bool)

(assert (=> b!3308580 (= e!2057785 (and tp!1036167 tp!1036166))))

(assert (= (and b!3308162 ((_ is ElementMatch!10063) (regex!5304 (rule!7808 (h!41961 tokens!494))))) b!3308579))

(assert (= (and b!3308162 ((_ is Concat!15597) (regex!5304 (rule!7808 (h!41961 tokens!494))))) b!3308580))

(assert (= (and b!3308162 ((_ is Star!10063) (regex!5304 (rule!7808 (h!41961 tokens!494))))) b!3308581))

(assert (= (and b!3308162 ((_ is Union!10063) (regex!5304 (rule!7808 (h!41961 tokens!494))))) b!3308582))

(declare-fun e!2057786 () Bool)

(assert (=> b!3308178 (= tp!1036039 e!2057786)))

(declare-fun b!3308583 () Bool)

(assert (=> b!3308583 (= e!2057786 tp_is_empty!17385)))

(declare-fun b!3308585 () Bool)

(declare-fun tp!1036169 () Bool)

(assert (=> b!3308585 (= e!2057786 tp!1036169)))

(declare-fun b!3308586 () Bool)

(declare-fun tp!1036168 () Bool)

(declare-fun tp!1036170 () Bool)

(assert (=> b!3308586 (= e!2057786 (and tp!1036168 tp!1036170))))

(declare-fun b!3308584 () Bool)

(declare-fun tp!1036172 () Bool)

(declare-fun tp!1036171 () Bool)

(assert (=> b!3308584 (= e!2057786 (and tp!1036172 tp!1036171))))

(assert (= (and b!3308178 ((_ is ElementMatch!10063) (regex!5304 (h!41960 rules!2135)))) b!3308583))

(assert (= (and b!3308178 ((_ is Concat!15597) (regex!5304 (h!41960 rules!2135)))) b!3308584))

(assert (= (and b!3308178 ((_ is Star!10063) (regex!5304 (h!41960 rules!2135)))) b!3308585))

(assert (= (and b!3308178 ((_ is Union!10063) (regex!5304 (h!41960 rules!2135)))) b!3308586))

(declare-fun b_lambda!92567 () Bool)

(assert (= b_lambda!92521 (or b!3308158 b_lambda!92567)))

(declare-fun bs!549260 () Bool)

(declare-fun d!926901 () Bool)

(assert (= bs!549260 (and d!926901 b!3308158)))

(assert (=> bs!549260 (= (dynLambda!14998 lambda!119145 (h!41961 (t!253950 tokens!494))) (not (isSeparator!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))))))

(assert (=> d!926749 d!926901))

(declare-fun b_lambda!92569 () Bool)

(assert (= b_lambda!92565 (or (and b!3308168 b_free!87055 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))))) (and b!3308160 b_free!87051 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))))) (and b!3308563 b_free!87075) (and b!3308544 b_free!87071 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))))) (and b!3308174 b_free!87059 (= (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))))) b_lambda!92569)))

(declare-fun b_lambda!92571 () Bool)

(assert (= b_lambda!92561 (or (and b!3308168 b_free!87055 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308563 b_free!87075 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308160 b_free!87051 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308544 b_free!87071 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308174 b_free!87059) b_lambda!92571)))

(declare-fun b_lambda!92573 () Bool)

(assert (= b_lambda!92525 (or (and b!3308544 b_free!87071 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308563 b_free!87075 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308168 b_free!87055 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308174 b_free!87059 (= (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308160 b_free!87051) b_lambda!92573)))

(declare-fun b_lambda!92575 () Bool)

(assert (= b_lambda!92533 (or b!3308158 b_lambda!92575)))

(declare-fun bs!549261 () Bool)

(declare-fun d!926903 () Bool)

(assert (= bs!549261 (and d!926903 b!3308158)))

(assert (=> bs!549261 (= (dynLambda!14998 lambda!119145 (h!41961 tokens!494)) (not (isSeparator!5304 (rule!7808 (h!41961 tokens!494)))))))

(assert (=> b!3308292 d!926903))

(declare-fun b_lambda!92577 () Bool)

(assert (= b_lambda!92523 (or b!3308158 b_lambda!92577)))

(assert (=> d!926751 d!926903))

(declare-fun b_lambda!92579 () Bool)

(assert (= b_lambda!92519 (or (and b!3308544 b_free!87071 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308563 b_free!87075 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308168 b_free!87055 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308174 b_free!87059 (= (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))) (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))))) (and b!3308160 b_free!87051) b_lambda!92579)))

(declare-fun b_lambda!92581 () Bool)

(assert (= b_lambda!92563 (or (and b!3308168 b_free!87055 (= (toChars!7307 (transformation!5304 (h!41960 rules!2135))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308563 b_free!87075 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 (t!253950 tokens!494))))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308160 b_free!87051 (= (toChars!7307 (transformation!5304 (rule!7808 (h!41961 tokens!494)))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308544 b_free!87071 (= (toChars!7307 (transformation!5304 (h!41960 (t!253949 rules!2135)))) (toChars!7307 (transformation!5304 (rule!7808 separatorToken!241))))) (and b!3308174 b_free!87059) b_lambda!92581)))

(check-sat (not b!3308286) (not b!3308533) (not b!3308212) (not b!3308478) (not b_next!87757) (not b_lambda!92571) (not b!3308525) (not b!3308307) (not b!3308213) (not b_next!87763) (not b!3308337) (not b!3308502) (not d!926813) (not b!3308494) (not b!3308585) (not d!926819) (not d!926863) (not b_lambda!92569) (not d!926885) (not d!926803) (not b!3308497) (not b!3308281) (not b!3308501) (not b!3308562) (not b!3308330) (not d!926807) b_and!226981 b_and!226895 (not d!926755) (not b_lambda!92573) (not d!926871) (not d!926757) (not b!3308469) (not b_next!87753) (not b!3308578) (not b!3308326) (not b!3308206) (not b!3308276) (not b!3308584) (not b!3308582) b_and!226969 (not b_next!87779) (not b_lambda!92579) (not b!3308499) (not b_next!87773) (not b!3308331) (not b!3308320) (not d!926895) (not b!3308293) (not d!926887) (not tb!171815) (not d!926865) (not d!926747) (not b!3308336) (not b!3308278) b_and!226975 (not b!3308576) (not b_next!87777) b_and!226979 (not b!3308323) b_and!226977 (not b!3308500) (not b!3308203) (not b!3308560) (not b_lambda!92567) (not b!3308522) tp_is_empty!17385 (not b_next!87761) (not b!3308308) (not b!3308498) (not d!926869) (not d!926745) (not b!3308542) (not b!3308586) (not b_next!87755) (not b!3308527) (not d!926749) (not d!926793) (not b!3308306) (not d!926899) (not b!3308507) (not d!926867) (not b!3308321) (not tb!171851) (not d!926795) (not b_lambda!92575) (not d!926897) (not b_lambda!92577) (not d!926751) (not b!3308531) b_and!226903 (not b!3308580) (not b!3308316) (not d!926753) b_and!226973 (not d!926879) (not d!926893) (not b!3308549) (not b!3308496) (not b!3308315) (not b!3308564) (not b_next!87759) (not b!3308577) (not b!3308530) (not b_next!87775) (not b!3308317) (not d!926875) b_and!226971 b_and!226899 (not b!3308523) (not b!3308493) (not b_lambda!92581) (not b!3308543) (not b!3308207) (not d!926809) (not b!3308519) (not b!3308561) (not b!3308329) (not b!3308581) (not b!3308518) (not d!926883) (not b!3308322) (not tb!171857))
(check-sat (not b_next!87757) (not b_next!87763) (not b_next!87753) b_and!226969 b_and!226977 (not b_next!87761) (not b_next!87755) b_and!226903 b_and!226973 b_and!226899 b_and!226981 b_and!226895 (not b_next!87779) (not b_next!87773) b_and!226975 (not b_next!87777) b_and!226979 (not b_next!87759) (not b_next!87775) b_and!226971)
