; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115030 () Bool)

(assert start!115030)

(declare-fun b!1302513 () Bool)

(declare-fun b_free!31059 () Bool)

(declare-fun b_next!31763 () Bool)

(assert (=> b!1302513 (= b_free!31059 (not b_next!31763))))

(declare-fun tp!380137 () Bool)

(declare-fun b_and!86911 () Bool)

(assert (=> b!1302513 (= tp!380137 b_and!86911)))

(declare-fun b_free!31061 () Bool)

(declare-fun b_next!31765 () Bool)

(assert (=> b!1302513 (= b_free!31061 (not b_next!31765))))

(declare-fun tp!380145 () Bool)

(declare-fun b_and!86913 () Bool)

(assert (=> b!1302513 (= tp!380145 b_and!86913)))

(declare-fun b!1302503 () Bool)

(declare-fun b_free!31063 () Bool)

(declare-fun b_next!31767 () Bool)

(assert (=> b!1302503 (= b_free!31063 (not b_next!31767))))

(declare-fun tp!380139 () Bool)

(declare-fun b_and!86915 () Bool)

(assert (=> b!1302503 (= tp!380139 b_and!86915)))

(declare-fun b_free!31065 () Bool)

(declare-fun b_next!31769 () Bool)

(assert (=> b!1302503 (= b_free!31065 (not b_next!31769))))

(declare-fun tp!380140 () Bool)

(declare-fun b_and!86917 () Bool)

(assert (=> b!1302503 (= tp!380140 b_and!86917)))

(declare-fun b!1302488 () Bool)

(declare-fun b_free!31067 () Bool)

(declare-fun b_next!31771 () Bool)

(assert (=> b!1302488 (= b_free!31067 (not b_next!31771))))

(declare-fun tp!380142 () Bool)

(declare-fun b_and!86919 () Bool)

(assert (=> b!1302488 (= tp!380142 b_and!86919)))

(declare-fun b_free!31069 () Bool)

(declare-fun b_next!31773 () Bool)

(assert (=> b!1302488 (= b_free!31069 (not b_next!31773))))

(declare-fun tp!380136 () Bool)

(declare-fun b_and!86921 () Bool)

(assert (=> b!1302488 (= tp!380136 b_and!86921)))

(declare-fun b!1302489 () Bool)

(assert (=> b!1302489 true))

(assert (=> b!1302489 true))

(declare-fun b!1302501 () Bool)

(assert (=> b!1302501 true))

(declare-fun b!1302509 () Bool)

(assert (=> b!1302509 true))

(declare-fun b!1302485 () Bool)

(declare-fun e!835162 () Bool)

(declare-fun tp!380141 () Bool)

(declare-fun e!835142 () Bool)

(declare-datatypes ((List!13145 0))(
  ( (Nil!13079) (Cons!13079 (h!18480 (_ BitVec 16)) (t!117706 List!13145)) )
))
(declare-datatypes ((TokenValue!2349 0))(
  ( (FloatLiteralValue!4698 (text!16888 List!13145)) (TokenValueExt!2348 (__x!8527 Int)) (Broken!11745 (value!73988 List!13145)) (Object!2414) (End!2349) (Def!2349) (Underscore!2349) (Match!2349) (Else!2349) (Error!2349) (Case!2349) (If!2349) (Extends!2349) (Abstract!2349) (Class!2349) (Val!2349) (DelimiterValue!4698 (del!2409 List!13145)) (KeywordValue!2355 (value!73989 List!13145)) (CommentValue!4698 (value!73990 List!13145)) (WhitespaceValue!4698 (value!73991 List!13145)) (IndentationValue!2349 (value!73992 List!13145)) (String!15980) (Int32!2349) (Broken!11746 (value!73993 List!13145)) (Boolean!2350) (Unit!19197) (OperatorValue!2352 (op!2409 List!13145)) (IdentifierValue!4698 (value!73994 List!13145)) (IdentifierValue!4699 (value!73995 List!13145)) (WhitespaceValue!4699 (value!73996 List!13145)) (True!4698) (False!4698) (Broken!11747 (value!73997 List!13145)) (Broken!11748 (value!73998 List!13145)) (True!4699) (RightBrace!2349) (RightBracket!2349) (Colon!2349) (Null!2349) (Comma!2349) (LeftBracket!2349) (False!4699) (LeftBrace!2349) (ImaginaryLiteralValue!2349 (text!16889 List!13145)) (StringLiteralValue!7047 (value!73999 List!13145)) (EOFValue!2349 (value!74000 List!13145)) (IdentValue!2349 (value!74001 List!13145)) (DelimiterValue!4699 (value!74002 List!13145)) (DedentValue!2349 (value!74003 List!13145)) (NewLineValue!2349 (value!74004 List!13145)) (IntegerValue!7047 (value!74005 (_ BitVec 32)) (text!16890 List!13145)) (IntegerValue!7048 (value!74006 Int) (text!16891 List!13145)) (Times!2349) (Or!2349) (Equal!2349) (Minus!2349) (Broken!11749 (value!74007 List!13145)) (And!2349) (Div!2349) (LessEqual!2349) (Mod!2349) (Concat!5922) (Not!2349) (Plus!2349) (SpaceValue!2349 (value!74008 List!13145)) (IntegerValue!7049 (value!74009 Int) (text!16892 List!13145)) (StringLiteralValue!7048 (text!16893 List!13145)) (FloatLiteralValue!4699 (text!16894 List!13145)) (BytesLiteralValue!2349 (value!74010 List!13145)) (CommentValue!4699 (value!74011 List!13145)) (StringLiteralValue!7049 (value!74012 List!13145)) (ErrorTokenValue!2349 (msg!2410 List!13145)) )
))
(declare-datatypes ((C!7436 0))(
  ( (C!7437 (val!4278 Int)) )
))
(declare-datatypes ((List!13146 0))(
  ( (Nil!13080) (Cons!13080 (h!18481 C!7436) (t!117707 List!13146)) )
))
(declare-datatypes ((IArray!8587 0))(
  ( (IArray!8588 (innerList!4351 List!13146)) )
))
(declare-datatypes ((Conc!4291 0))(
  ( (Node!4291 (left!11246 Conc!4291) (right!11576 Conc!4291) (csize!8812 Int) (cheight!4502 Int)) (Leaf!6617 (xs!7006 IArray!8587) (csize!8813 Int)) (Empty!4291) )
))
(declare-datatypes ((BalanceConc!8522 0))(
  ( (BalanceConc!8523 (c!214243 Conc!4291)) )
))
(declare-datatypes ((String!15981 0))(
  ( (String!15982 (value!74013 String)) )
))
(declare-datatypes ((Regex!3573 0))(
  ( (ElementMatch!3573 (c!214244 C!7436)) (Concat!5923 (regOne!7658 Regex!3573) (regTwo!7658 Regex!3573)) (EmptyExpr!3573) (Star!3573 (reg!3902 Regex!3573)) (EmptyLang!3573) (Union!3573 (regOne!7659 Regex!3573) (regTwo!7659 Regex!3573)) )
))
(declare-datatypes ((TokenValueInjection!4358 0))(
  ( (TokenValueInjection!4359 (toValue!3474 Int) (toChars!3333 Int)) )
))
(declare-datatypes ((Rule!4318 0))(
  ( (Rule!4319 (regex!2259 Regex!3573) (tag!2521 String!15981) (isSeparator!2259 Bool) (transformation!2259 TokenValueInjection!4358)) )
))
(declare-datatypes ((Token!4180 0))(
  ( (Token!4181 (value!74014 TokenValue!2349) (rule!3998 Rule!4318) (size!10684 Int) (originalCharacters!3121 List!13146)) )
))
(declare-fun t2!34 () Token!4180)

(declare-fun inv!21 (TokenValue!2349) Bool)

(assert (=> b!1302485 (= e!835162 (and (inv!21 (value!74014 t2!34)) e!835142 tp!380141))))

(declare-fun b!1302487 () Bool)

(declare-fun res!583554 () Bool)

(declare-fun e!835145 () Bool)

(assert (=> b!1302487 (=> (not res!583554) (not e!835145))))

(declare-fun t1!34 () Token!4180)

(assert (=> b!1302487 (= res!583554 (not (= (isSeparator!2259 (rule!3998 t1!34)) (isSeparator!2259 (rule!3998 t2!34)))))))

(declare-fun e!835147 () Bool)

(assert (=> b!1302488 (= e!835147 (and tp!380142 tp!380136))))

(declare-fun e!835146 () Bool)

(declare-fun e!835163 () Bool)

(assert (=> b!1302489 (= e!835146 (not e!835163))))

(declare-fun res!583539 () Bool)

(assert (=> b!1302489 (=> res!583539 e!835163)))

(declare-fun lambda!51494 () Int)

(declare-fun Exists!731 (Int) Bool)

(assert (=> b!1302489 (= res!583539 (not (Exists!731 lambda!51494)))))

(assert (=> b!1302489 (Exists!731 lambda!51494)))

(declare-datatypes ((Unit!19198 0))(
  ( (Unit!19199) )
))
(declare-fun lt!428260 () Unit!19198)

(declare-fun lt!428264 () Regex!3573)

(declare-fun lt!428254 () List!13146)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!49 (Regex!3573 List!13146) Unit!19198)

(assert (=> b!1302489 (= lt!428260 (lemmaPrefixMatchThenExistsStringThatMatches!49 lt!428264 lt!428254))))

(declare-fun b!1302490 () Bool)

(declare-fun e!835158 () Bool)

(declare-datatypes ((List!13147 0))(
  ( (Nil!13081) (Cons!13081 (h!18482 Rule!4318) (t!117708 List!13147)) )
))
(declare-fun rules!2550 () List!13147)

(declare-fun lambda!51497 () Int)

(declare-fun exists!220 (List!13147 Int) Bool)

(assert (=> b!1302490 (= e!835158 (exists!220 rules!2550 lambda!51497))))

(declare-fun b!1302491 () Bool)

(declare-fun res!583546 () Bool)

(declare-fun e!835157 () Bool)

(assert (=> b!1302491 (=> res!583546 e!835157)))

(declare-fun lt!428256 () List!13146)

(declare-fun lt!428257 () C!7436)

(declare-fun contains!2202 (List!13146 C!7436) Bool)

(assert (=> b!1302491 (= res!583546 (not (contains!2202 lt!428256 lt!428257)))))

(declare-fun b!1302492 () Bool)

(declare-fun res!583543 () Bool)

(declare-fun e!835156 () Bool)

(assert (=> b!1302492 (=> (not res!583543) (not e!835156))))

(declare-fun sepAndNonSepRulesDisjointChars!632 (List!13147 List!13147) Bool)

(assert (=> b!1302492 (= res!583543 (sepAndNonSepRulesDisjointChars!632 rules!2550 rules!2550))))

(declare-fun b!1302493 () Bool)

(declare-fun tp!380144 () Bool)

(declare-fun e!835153 () Bool)

(declare-fun inv!17504 (String!15981) Bool)

(declare-fun inv!17507 (TokenValueInjection!4358) Bool)

(assert (=> b!1302493 (= e!835142 (and tp!380144 (inv!17504 (tag!2521 (rule!3998 t2!34))) (inv!17507 (transformation!2259 (rule!3998 t2!34))) e!835153))))

(declare-fun b!1302494 () Bool)

(assert (=> b!1302494 (= e!835156 e!835146)))

(declare-fun res!583555 () Bool)

(assert (=> b!1302494 (=> (not res!583555) (not e!835146))))

(declare-fun prefixMatch!86 (Regex!3573 List!13146) Bool)

(assert (=> b!1302494 (= res!583555 (prefixMatch!86 lt!428264 lt!428254))))

(declare-datatypes ((LexerInterface!1954 0))(
  ( (LexerInterfaceExt!1951 (__x!8528 Int)) (Lexer!1952) )
))
(declare-fun thiss!19762 () LexerInterface!1954)

(declare-fun rulesRegex!144 (LexerInterface!1954 List!13147) Regex!3573)

(assert (=> b!1302494 (= lt!428264 (rulesRegex!144 thiss!19762 rules!2550))))

(declare-fun lt!428262 () List!13146)

(declare-fun lt!428266 () C!7436)

(declare-fun ++!3330 (List!13146 List!13146) List!13146)

(assert (=> b!1302494 (= lt!428254 (++!3330 lt!428262 (Cons!13080 lt!428266 Nil!13080)))))

(declare-fun lt!428263 () BalanceConc!8522)

(declare-fun apply!2925 (BalanceConc!8522 Int) C!7436)

(assert (=> b!1302494 (= lt!428266 (apply!2925 lt!428263 0))))

(declare-fun lt!428261 () BalanceConc!8522)

(declare-fun list!4901 (BalanceConc!8522) List!13146)

(assert (=> b!1302494 (= lt!428262 (list!4901 lt!428261))))

(declare-fun charsOf!1231 (Token!4180) BalanceConc!8522)

(assert (=> b!1302494 (= lt!428261 (charsOf!1231 t1!34))))

(declare-fun b!1302495 () Bool)

(declare-fun res!583551 () Bool)

(assert (=> b!1302495 (=> (not res!583551) (not e!835145))))

(declare-fun rulesProduceIndividualToken!923 (LexerInterface!1954 List!13147 Token!4180) Bool)

(assert (=> b!1302495 (= res!583551 (rulesProduceIndividualToken!923 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1302496 () Bool)

(declare-fun res!583545 () Bool)

(assert (=> b!1302496 (=> res!583545 e!835157)))

(assert (=> b!1302496 (= res!583545 (not (contains!2202 lt!428256 lt!428266)))))

(declare-fun b!1302497 () Bool)

(declare-fun res!583540 () Bool)

(assert (=> b!1302497 (=> (not res!583540) (not e!835145))))

(declare-fun isEmpty!7757 (List!13147) Bool)

(assert (=> b!1302497 (= res!583540 (not (isEmpty!7757 rules!2550)))))

(declare-fun res!583538 () Bool)

(assert (=> start!115030 (=> (not res!583538) (not e!835145))))

(get-info :version)

(assert (=> start!115030 (= res!583538 ((_ is Lexer!1952) thiss!19762))))

(assert (=> start!115030 e!835145))

(assert (=> start!115030 true))

(declare-fun e!835143 () Bool)

(assert (=> start!115030 e!835143))

(declare-fun e!835154 () Bool)

(declare-fun inv!17508 (Token!4180) Bool)

(assert (=> start!115030 (and (inv!17508 t1!34) e!835154)))

(assert (=> start!115030 (and (inv!17508 t2!34) e!835162)))

(declare-fun e!835152 () Bool)

(declare-fun b!1302486 () Bool)

(declare-fun e!835161 () Bool)

(declare-fun tp!380138 () Bool)

(assert (=> b!1302486 (= e!835152 (and tp!380138 (inv!17504 (tag!2521 (rule!3998 t1!34))) (inv!17507 (transformation!2259 (rule!3998 t1!34))) e!835161))))

(declare-fun b!1302498 () Bool)

(declare-fun e!835149 () Bool)

(assert (=> b!1302498 (= e!835163 e!835149)))

(declare-fun res!583553 () Bool)

(assert (=> b!1302498 (=> res!583553 e!835149)))

(declare-fun getSuffix!429 (List!13146 List!13146) List!13146)

(assert (=> b!1302498 (= res!583553 (not (= lt!428256 (++!3330 lt!428254 (getSuffix!429 lt!428256 lt!428254)))))))

(declare-fun pickWitness!36 (Int) List!13146)

(assert (=> b!1302498 (= lt!428256 (pickWitness!36 lambda!51494))))

(declare-fun b!1302499 () Bool)

(declare-fun e!835148 () Bool)

(declare-fun e!835160 () Bool)

(assert (=> b!1302499 (= e!835148 e!835160)))

(declare-fun res!583548 () Bool)

(assert (=> b!1302499 (=> res!583548 e!835160)))

(declare-fun lt!428255 () Regex!3573)

(declare-fun lambda!51495 () Int)

(declare-datatypes ((List!13148 0))(
  ( (Nil!13082) (Cons!13082 (h!18483 Regex!3573) (t!117709 List!13148)) )
))
(declare-fun contains!2203 (List!13148 Regex!3573) Bool)

(declare-fun map!2855 (List!13147 Int) List!13148)

(assert (=> b!1302499 (= res!583548 (not (contains!2203 (map!2855 rules!2550 lambda!51495) lt!428255)))))

(declare-fun lambda!51496 () Int)

(declare-fun getWitness!113 (List!13148 Int) Regex!3573)

(assert (=> b!1302499 (= lt!428255 (getWitness!113 (map!2855 rules!2550 lambda!51495) lambda!51496))))

(declare-fun b!1302500 () Bool)

(declare-fun e!835164 () Bool)

(declare-fun tp!380135 () Bool)

(assert (=> b!1302500 (= e!835143 (and e!835164 tp!380135))))

(assert (=> b!1302501 (= e!835157 e!835148)))

(declare-fun res!583541 () Bool)

(assert (=> b!1302501 (=> res!583541 e!835148)))

(declare-fun exists!221 (List!13148 Int) Bool)

(assert (=> b!1302501 (= res!583541 (not (exists!221 (map!2855 rules!2550 lambda!51495) lambda!51496)))))

(declare-fun lt!428265 () List!13148)

(assert (=> b!1302501 (exists!221 lt!428265 lambda!51496)))

(declare-fun lt!428258 () Unit!19198)

(declare-fun matchRGenUnionSpec!10 (Regex!3573 List!13148 List!13146) Unit!19198)

(assert (=> b!1302501 (= lt!428258 (matchRGenUnionSpec!10 lt!428264 lt!428265 lt!428256))))

(assert (=> b!1302501 (= lt!428265 (map!2855 rules!2550 lambda!51495))))

(declare-fun b!1302502 () Bool)

(declare-fun tp!380146 () Bool)

(assert (=> b!1302502 (= e!835164 (and tp!380146 (inv!17504 (tag!2521 (h!18482 rules!2550))) (inv!17507 (transformation!2259 (h!18482 rules!2550))) e!835147))))

(assert (=> b!1302503 (= e!835161 (and tp!380139 tp!380140))))

(declare-fun b!1302504 () Bool)

(declare-fun res!583556 () Bool)

(assert (=> b!1302504 (=> res!583556 e!835157)))

(declare-fun matchR!1575 (Regex!3573 List!13146) Bool)

(assert (=> b!1302504 (= res!583556 (not (matchR!1575 lt!428264 lt!428256)))))

(declare-fun b!1302505 () Bool)

(declare-fun res!583552 () Bool)

(assert (=> b!1302505 (=> (not res!583552) (not e!835156))))

(declare-fun separableTokensPredicate!237 (LexerInterface!1954 Token!4180 Token!4180 List!13147) Bool)

(assert (=> b!1302505 (= res!583552 (not (separableTokensPredicate!237 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1302506 () Bool)

(assert (=> b!1302506 (= e!835145 e!835156)))

(declare-fun res!583537 () Bool)

(assert (=> b!1302506 (=> (not res!583537) (not e!835156))))

(declare-fun size!10685 (BalanceConc!8522) Int)

(assert (=> b!1302506 (= res!583537 (> (size!10685 lt!428263) 0))))

(assert (=> b!1302506 (= lt!428263 (charsOf!1231 t2!34))))

(declare-fun b!1302507 () Bool)

(assert (=> b!1302507 (= e!835149 e!835157)))

(declare-fun res!583550 () Bool)

(assert (=> b!1302507 (=> res!583550 e!835157)))

(assert (=> b!1302507 (= res!583550 (not (contains!2202 lt!428254 lt!428257)))))

(assert (=> b!1302507 (= lt!428257 (apply!2925 lt!428261 0))))

(declare-fun b!1302508 () Bool)

(declare-fun res!583549 () Bool)

(assert (=> b!1302508 (=> (not res!583549) (not e!835145))))

(assert (=> b!1302508 (= res!583549 (rulesProduceIndividualToken!923 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1302509 (= e!835160 e!835158)))

(declare-fun res!583544 () Bool)

(assert (=> b!1302509 (=> res!583544 e!835158)))

(assert (=> b!1302509 (= res!583544 (not (exists!220 rules!2550 lambda!51497)))))

(assert (=> b!1302509 (exists!220 rules!2550 lambda!51497)))

(declare-fun lt!428259 () Unit!19198)

(declare-fun lemmaMapContains!2 (List!13147 Int Regex!3573) Unit!19198)

(assert (=> b!1302509 (= lt!428259 (lemmaMapContains!2 rules!2550 lambda!51495 lt!428255))))

(declare-fun b!1302510 () Bool)

(declare-fun res!583547 () Bool)

(assert (=> b!1302510 (=> (not res!583547) (not e!835145))))

(declare-fun rulesInvariant!1824 (LexerInterface!1954 List!13147) Bool)

(assert (=> b!1302510 (= res!583547 (rulesInvariant!1824 thiss!19762 rules!2550))))

(declare-fun b!1302511 () Bool)

(declare-fun tp!380143 () Bool)

(assert (=> b!1302511 (= e!835154 (and (inv!21 (value!74014 t1!34)) e!835152 tp!380143))))

(declare-fun b!1302512 () Bool)

(declare-fun res!583542 () Bool)

(assert (=> b!1302512 (=> res!583542 e!835157)))

(assert (=> b!1302512 (= res!583542 (not (contains!2202 lt!428254 lt!428266)))))

(assert (=> b!1302513 (= e!835153 (and tp!380137 tp!380145))))

(assert (= (and start!115030 res!583538) b!1302497))

(assert (= (and b!1302497 res!583540) b!1302510))

(assert (= (and b!1302510 res!583547) b!1302495))

(assert (= (and b!1302495 res!583551) b!1302508))

(assert (= (and b!1302508 res!583549) b!1302487))

(assert (= (and b!1302487 res!583554) b!1302506))

(assert (= (and b!1302506 res!583537) b!1302492))

(assert (= (and b!1302492 res!583543) b!1302505))

(assert (= (and b!1302505 res!583552) b!1302494))

(assert (= (and b!1302494 res!583555) b!1302489))

(assert (= (and b!1302489 (not res!583539)) b!1302498))

(assert (= (and b!1302498 (not res!583553)) b!1302507))

(assert (= (and b!1302507 (not res!583550)) b!1302491))

(assert (= (and b!1302491 (not res!583546)) b!1302512))

(assert (= (and b!1302512 (not res!583542)) b!1302496))

(assert (= (and b!1302496 (not res!583545)) b!1302504))

(assert (= (and b!1302504 (not res!583556)) b!1302501))

(assert (= (and b!1302501 (not res!583541)) b!1302499))

(assert (= (and b!1302499 (not res!583548)) b!1302509))

(assert (= (and b!1302509 (not res!583544)) b!1302490))

(assert (= b!1302502 b!1302488))

(assert (= b!1302500 b!1302502))

(assert (= (and start!115030 ((_ is Cons!13081) rules!2550)) b!1302500))

(assert (= b!1302486 b!1302503))

(assert (= b!1302511 b!1302486))

(assert (= start!115030 b!1302511))

(assert (= b!1302493 b!1302513))

(assert (= b!1302485 b!1302493))

(assert (= start!115030 b!1302485))

(declare-fun m!1453961 () Bool)

(assert (=> b!1302507 m!1453961))

(declare-fun m!1453963 () Bool)

(assert (=> b!1302507 m!1453963))

(declare-fun m!1453965 () Bool)

(assert (=> b!1302489 m!1453965))

(assert (=> b!1302489 m!1453965))

(declare-fun m!1453967 () Bool)

(assert (=> b!1302489 m!1453967))

(declare-fun m!1453969 () Bool)

(assert (=> b!1302494 m!1453969))

(declare-fun m!1453971 () Bool)

(assert (=> b!1302494 m!1453971))

(declare-fun m!1453973 () Bool)

(assert (=> b!1302494 m!1453973))

(declare-fun m!1453975 () Bool)

(assert (=> b!1302494 m!1453975))

(declare-fun m!1453977 () Bool)

(assert (=> b!1302494 m!1453977))

(declare-fun m!1453979 () Bool)

(assert (=> b!1302494 m!1453979))

(declare-fun m!1453981 () Bool)

(assert (=> b!1302498 m!1453981))

(assert (=> b!1302498 m!1453981))

(declare-fun m!1453983 () Bool)

(assert (=> b!1302498 m!1453983))

(declare-fun m!1453985 () Bool)

(assert (=> b!1302498 m!1453985))

(declare-fun m!1453987 () Bool)

(assert (=> b!1302501 m!1453987))

(declare-fun m!1453989 () Bool)

(assert (=> b!1302501 m!1453989))

(assert (=> b!1302501 m!1453987))

(declare-fun m!1453991 () Bool)

(assert (=> b!1302501 m!1453991))

(assert (=> b!1302501 m!1453987))

(declare-fun m!1453993 () Bool)

(assert (=> b!1302501 m!1453993))

(declare-fun m!1453995 () Bool)

(assert (=> b!1302492 m!1453995))

(declare-fun m!1453997 () Bool)

(assert (=> b!1302490 m!1453997))

(declare-fun m!1453999 () Bool)

(assert (=> b!1302491 m!1453999))

(declare-fun m!1454001 () Bool)

(assert (=> b!1302508 m!1454001))

(declare-fun m!1454003 () Bool)

(assert (=> b!1302510 m!1454003))

(declare-fun m!1454005 () Bool)

(assert (=> b!1302504 m!1454005))

(declare-fun m!1454007 () Bool)

(assert (=> b!1302493 m!1454007))

(declare-fun m!1454009 () Bool)

(assert (=> b!1302493 m!1454009))

(declare-fun m!1454011 () Bool)

(assert (=> b!1302497 m!1454011))

(declare-fun m!1454013 () Bool)

(assert (=> b!1302505 m!1454013))

(declare-fun m!1454015 () Bool)

(assert (=> b!1302485 m!1454015))

(declare-fun m!1454017 () Bool)

(assert (=> b!1302495 m!1454017))

(declare-fun m!1454019 () Bool)

(assert (=> b!1302506 m!1454019))

(declare-fun m!1454021 () Bool)

(assert (=> b!1302506 m!1454021))

(declare-fun m!1454023 () Bool)

(assert (=> b!1302512 m!1454023))

(assert (=> b!1302499 m!1453987))

(assert (=> b!1302499 m!1453987))

(declare-fun m!1454025 () Bool)

(assert (=> b!1302499 m!1454025))

(assert (=> b!1302499 m!1453987))

(assert (=> b!1302499 m!1453987))

(declare-fun m!1454027 () Bool)

(assert (=> b!1302499 m!1454027))

(declare-fun m!1454029 () Bool)

(assert (=> b!1302502 m!1454029))

(declare-fun m!1454031 () Bool)

(assert (=> b!1302502 m!1454031))

(declare-fun m!1454033 () Bool)

(assert (=> b!1302486 m!1454033))

(declare-fun m!1454035 () Bool)

(assert (=> b!1302486 m!1454035))

(declare-fun m!1454037 () Bool)

(assert (=> start!115030 m!1454037))

(declare-fun m!1454039 () Bool)

(assert (=> start!115030 m!1454039))

(assert (=> b!1302509 m!1453997))

(assert (=> b!1302509 m!1453997))

(declare-fun m!1454041 () Bool)

(assert (=> b!1302509 m!1454041))

(declare-fun m!1454043 () Bool)

(assert (=> b!1302496 m!1454043))

(declare-fun m!1454045 () Bool)

(assert (=> b!1302511 m!1454045))

(check-sat (not b!1302498) (not b!1302495) (not start!115030) (not b!1302493) (not b!1302512) (not b_next!31767) (not b!1302497) b_and!86911 (not b_next!31763) (not b!1302502) (not b!1302491) (not b!1302489) b_and!86919 (not b!1302507) (not b!1302506) (not b!1302504) (not b!1302490) (not b!1302509) (not b!1302505) (not b!1302496) (not b!1302501) (not b_next!31771) (not b!1302500) (not b_next!31765) b_and!86913 (not b!1302511) b_and!86915 (not b!1302485) (not b!1302499) (not b!1302486) b_and!86917 (not b!1302494) (not b!1302508) (not b!1302510) (not b!1302492) (not b_next!31773) b_and!86921 (not b_next!31769))
(check-sat b_and!86919 (not b_next!31771) b_and!86915 b_and!86917 (not b_next!31767) b_and!86911 (not b_next!31763) (not b_next!31765) b_and!86913 (not b_next!31773) b_and!86921 (not b_next!31769))
