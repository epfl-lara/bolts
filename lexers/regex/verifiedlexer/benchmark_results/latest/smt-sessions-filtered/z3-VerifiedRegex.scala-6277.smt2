; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!310878 () Bool)

(assert start!310878)

(declare-fun b!3328729 () Bool)

(declare-fun b_free!87649 () Bool)

(declare-fun b_next!88353 () Bool)

(assert (=> b!3328729 (= b_free!87649 (not b_next!88353))))

(declare-fun tp!1040420 () Bool)

(declare-fun b_and!229491 () Bool)

(assert (=> b!3328729 (= tp!1040420 b_and!229491)))

(declare-fun b_free!87651 () Bool)

(declare-fun b_next!88355 () Bool)

(assert (=> b!3328729 (= b_free!87651 (not b_next!88355))))

(declare-fun tp!1040422 () Bool)

(declare-fun b_and!229493 () Bool)

(assert (=> b!3328729 (= tp!1040422 b_and!229493)))

(declare-fun b!3328722 () Bool)

(declare-fun b_free!87653 () Bool)

(declare-fun b_next!88357 () Bool)

(assert (=> b!3328722 (= b_free!87653 (not b_next!88357))))

(declare-fun tp!1040424 () Bool)

(declare-fun b_and!229495 () Bool)

(assert (=> b!3328722 (= tp!1040424 b_and!229495)))

(declare-fun b_free!87655 () Bool)

(declare-fun b_next!88359 () Bool)

(assert (=> b!3328722 (= b_free!87655 (not b_next!88359))))

(declare-fun tp!1040423 () Bool)

(declare-fun b_and!229497 () Bool)

(assert (=> b!3328722 (= tp!1040423 b_and!229497)))

(declare-fun b!3328728 () Bool)

(declare-fun b_free!87657 () Bool)

(declare-fun b_next!88361 () Bool)

(assert (=> b!3328728 (= b_free!87657 (not b_next!88361))))

(declare-fun tp!1040426 () Bool)

(declare-fun b_and!229499 () Bool)

(assert (=> b!3328728 (= tp!1040426 b_and!229499)))

(declare-fun b_free!87659 () Bool)

(declare-fun b_next!88363 () Bool)

(assert (=> b!3328728 (= b_free!87659 (not b_next!88363))))

(declare-fun tp!1040430 () Bool)

(declare-fun b_and!229501 () Bool)

(assert (=> b!3328728 (= tp!1040430 b_and!229501)))

(declare-fun e!2070069 () Bool)

(declare-datatypes ((C!20372 0))(
  ( (C!20373 (val!12234 Int)) )
))
(declare-datatypes ((Regex!10093 0))(
  ( (ElementMatch!10093 (c!565316 C!20372)) (Concat!15657 (regOne!20698 Regex!10093) (regTwo!20698 Regex!10093)) (EmptyExpr!10093) (Star!10093 (reg!10422 Regex!10093)) (EmptyLang!10093) (Union!10093 (regOne!20699 Regex!10093) (regTwo!20699 Regex!10093)) )
))
(declare-datatypes ((List!36800 0))(
  ( (Nil!36676) (Cons!36676 (h!42096 (_ BitVec 16)) (t!256929 List!36800)) )
))
(declare-datatypes ((TokenValue!5564 0))(
  ( (FloatLiteralValue!11128 (text!39393 List!36800)) (TokenValueExt!5563 (__x!23345 Int)) (Broken!27820 (value!172453 List!36800)) (Object!5687) (End!5564) (Def!5564) (Underscore!5564) (Match!5564) (Else!5564) (Error!5564) (Case!5564) (If!5564) (Extends!5564) (Abstract!5564) (Class!5564) (Val!5564) (DelimiterValue!11128 (del!5624 List!36800)) (KeywordValue!5570 (value!172454 List!36800)) (CommentValue!11128 (value!172455 List!36800)) (WhitespaceValue!11128 (value!172456 List!36800)) (IndentationValue!5564 (value!172457 List!36800)) (String!41153) (Int32!5564) (Broken!27821 (value!172458 List!36800)) (Boolean!5565) (Unit!51687) (OperatorValue!5567 (op!5624 List!36800)) (IdentifierValue!11128 (value!172459 List!36800)) (IdentifierValue!11129 (value!172460 List!36800)) (WhitespaceValue!11129 (value!172461 List!36800)) (True!11128) (False!11128) (Broken!27822 (value!172462 List!36800)) (Broken!27823 (value!172463 List!36800)) (True!11129) (RightBrace!5564) (RightBracket!5564) (Colon!5564) (Null!5564) (Comma!5564) (LeftBracket!5564) (False!11129) (LeftBrace!5564) (ImaginaryLiteralValue!5564 (text!39394 List!36800)) (StringLiteralValue!16692 (value!172464 List!36800)) (EOFValue!5564 (value!172465 List!36800)) (IdentValue!5564 (value!172466 List!36800)) (DelimiterValue!11129 (value!172467 List!36800)) (DedentValue!5564 (value!172468 List!36800)) (NewLineValue!5564 (value!172469 List!36800)) (IntegerValue!16692 (value!172470 (_ BitVec 32)) (text!39395 List!36800)) (IntegerValue!16693 (value!172471 Int) (text!39396 List!36800)) (Times!5564) (Or!5564) (Equal!5564) (Minus!5564) (Broken!27824 (value!172472 List!36800)) (And!5564) (Div!5564) (LessEqual!5564) (Mod!5564) (Concat!15658) (Not!5564) (Plus!5564) (SpaceValue!5564 (value!172473 List!36800)) (IntegerValue!16694 (value!172474 Int) (text!39397 List!36800)) (StringLiteralValue!16693 (text!39398 List!36800)) (FloatLiteralValue!11129 (text!39399 List!36800)) (BytesLiteralValue!5564 (value!172475 List!36800)) (CommentValue!11129 (value!172476 List!36800)) (StringLiteralValue!16694 (value!172477 List!36800)) (ErrorTokenValue!5564 (msg!5625 List!36800)) )
))
(declare-datatypes ((List!36801 0))(
  ( (Nil!36677) (Cons!36677 (h!42097 C!20372) (t!256930 List!36801)) )
))
(declare-datatypes ((IArray!22091 0))(
  ( (IArray!22092 (innerList!11103 List!36801)) )
))
(declare-datatypes ((Conc!11043 0))(
  ( (Node!11043 (left!28584 Conc!11043) (right!28914 Conc!11043) (csize!22316 Int) (cheight!11254 Int)) (Leaf!17321 (xs!14181 IArray!22091) (csize!22317 Int)) (Empty!11043) )
))
(declare-datatypes ((BalanceConc!21700 0))(
  ( (BalanceConc!21701 (c!565317 Conc!11043)) )
))
(declare-datatypes ((String!41154 0))(
  ( (String!41155 (value!172478 String)) )
))
(declare-datatypes ((TokenValueInjection!10556 0))(
  ( (TokenValueInjection!10557 (toValue!7498 Int) (toChars!7357 Int)) )
))
(declare-datatypes ((Rule!10468 0))(
  ( (Rule!10469 (regex!5334 Regex!10093) (tag!5886 String!41154) (isSeparator!5334 Bool) (transformation!5334 TokenValueInjection!10556)) )
))
(declare-datatypes ((Token!10034 0))(
  ( (Token!10035 (value!172479 TokenValue!5564) (rule!7856 Rule!10468) (size!27725 Int) (originalCharacters!6048 List!36801)) )
))
(declare-fun separatorToken!241 () Token!10034)

(declare-fun tp!1040428 () Bool)

(declare-fun b!3328723 () Bool)

(declare-fun e!2070077 () Bool)

(declare-fun inv!21 (TokenValue!5564) Bool)

(assert (=> b!3328723 (= e!2070069 (and (inv!21 (value!172479 separatorToken!241)) e!2070077 tp!1040428))))

(declare-fun b!3328724 () Bool)

(declare-fun res!1350082 () Bool)

(declare-fun e!2070076 () Bool)

(assert (=> b!3328724 (=> (not res!1350082) (not e!2070076))))

(declare-datatypes ((List!36802 0))(
  ( (Nil!36678) (Cons!36678 (h!42098 Rule!10468) (t!256931 List!36802)) )
))
(declare-fun rules!2135 () List!36802)

(declare-fun isEmpty!20839 (List!36802) Bool)

(assert (=> b!3328724 (= res!1350082 (not (isEmpty!20839 rules!2135)))))

(declare-fun b!3328725 () Bool)

(declare-fun tp!1040427 () Bool)

(declare-fun e!2070088 () Bool)

(declare-fun inv!49682 (String!41154) Bool)

(declare-fun inv!49685 (TokenValueInjection!10556) Bool)

(assert (=> b!3328725 (= e!2070077 (and tp!1040427 (inv!49682 (tag!5886 (rule!7856 separatorToken!241))) (inv!49685 (transformation!5334 (rule!7856 separatorToken!241))) e!2070088))))

(declare-fun tp!1040421 () Bool)

(declare-datatypes ((List!36803 0))(
  ( (Nil!36679) (Cons!36679 (h!42099 Token!10034) (t!256932 List!36803)) )
))
(declare-fun tokens!494 () List!36803)

(declare-fun e!2070079 () Bool)

(declare-fun b!3328726 () Bool)

(declare-fun e!2070085 () Bool)

(assert (=> b!3328726 (= e!2070079 (and tp!1040421 (inv!49682 (tag!5886 (rule!7856 (h!42099 tokens!494)))) (inv!49685 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) e!2070085))))

(declare-fun tp!1040425 () Bool)

(declare-fun e!2070074 () Bool)

(declare-fun e!2070070 () Bool)

(declare-fun b!3328727 () Bool)

(declare-fun inv!49686 (Token!10034) Bool)

(assert (=> b!3328727 (= e!2070074 (and (inv!49686 (h!42099 tokens!494)) e!2070070 tp!1040425))))

(assert (=> b!3328728 (= e!2070085 (and tp!1040426 tp!1040430))))

(assert (=> b!3328729 (= e!2070088 (and tp!1040420 tp!1040422))))

(declare-fun b!3328730 () Bool)

(declare-fun res!1350076 () Bool)

(declare-fun e!2070082 () Bool)

(assert (=> b!3328730 (=> (not res!1350076) (not e!2070082))))

(declare-fun sepAndNonSepRulesDisjointChars!1528 (List!36802 List!36802) Bool)

(assert (=> b!3328730 (= res!1350076 (sepAndNonSepRulesDisjointChars!1528 rules!2135 rules!2135))))

(declare-fun b!3328731 () Bool)

(declare-fun res!1350079 () Bool)

(assert (=> b!3328731 (=> (not res!1350079) (not e!2070082))))

(get-info :version)

(assert (=> b!3328731 (= res!1350079 (and (not ((_ is Nil!36679) tokens!494)) ((_ is Nil!36679) (t!256932 tokens!494))))))

(declare-fun b!3328732 () Bool)

(declare-fun e!2070078 () Bool)

(declare-fun e!2070084 () Bool)

(assert (=> b!3328732 (= e!2070078 e!2070084)))

(declare-fun res!1350072 () Bool)

(assert (=> b!3328732 (=> res!1350072 e!2070084)))

(declare-fun lt!1131269 () List!36801)

(declare-fun lt!1131274 () List!36801)

(declare-fun lt!1131273 () List!36801)

(assert (=> b!3328732 (= res!1350072 (or (not (= lt!1131273 lt!1131274)) (not (= lt!1131269 lt!1131274))))))

(declare-fun list!13209 (BalanceConc!21700) List!36801)

(declare-fun charsOf!3348 (Token!10034) BalanceConc!21700)

(assert (=> b!3328732 (= lt!1131274 (list!13209 (charsOf!3348 (h!42099 tokens!494))))))

(declare-fun tp!1040429 () Bool)

(declare-fun e!2070080 () Bool)

(declare-fun b!3328733 () Bool)

(declare-fun e!2070086 () Bool)

(assert (=> b!3328733 (= e!2070086 (and tp!1040429 (inv!49682 (tag!5886 (h!42098 rules!2135))) (inv!49685 (transformation!5334 (h!42098 rules!2135))) e!2070080))))

(declare-fun b!3328734 () Bool)

(declare-fun res!1350081 () Bool)

(assert (=> b!3328734 (=> (not res!1350081) (not e!2070076))))

(declare-datatypes ((LexerInterface!4923 0))(
  ( (LexerInterfaceExt!4920 (__x!23346 Int)) (Lexer!4921) )
))
(declare-fun thiss!18206 () LexerInterface!4923)

(declare-fun rulesInvariant!4320 (LexerInterface!4923 List!36802) Bool)

(assert (=> b!3328734 (= res!1350081 (rulesInvariant!4320 thiss!18206 rules!2135))))

(declare-fun b!3328735 () Bool)

(declare-fun tp!1040418 () Bool)

(assert (=> b!3328735 (= e!2070070 (and (inv!21 (value!172479 (h!42099 tokens!494))) e!2070079 tp!1040418))))

(declare-fun b!3328736 () Bool)

(declare-fun e!2070073 () Bool)

(declare-datatypes ((tuple2!36180 0))(
  ( (tuple2!36181 (_1!21224 Token!10034) (_2!21224 List!36801)) )
))
(declare-datatypes ((Option!7316 0))(
  ( (None!7315) (Some!7315 (v!36211 tuple2!36180)) )
))
(declare-fun isDefined!5660 (Option!7316) Bool)

(declare-fun maxPrefix!2523 (LexerInterface!4923 List!36802 List!36801) Option!7316)

(assert (=> b!3328736 (= e!2070073 (isDefined!5660 (maxPrefix!2523 thiss!18206 rules!2135 lt!1131274)))))

(declare-datatypes ((Unit!51688 0))(
  ( (Unit!51689) )
))
(declare-fun lt!1131271 () Unit!51688)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!918 (LexerInterface!4923 List!36802 List!36803 Token!10034) Unit!51688)

(assert (=> b!3328736 (= lt!1131271 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!918 thiss!18206 rules!2135 tokens!494 (h!42099 tokens!494)))))

(declare-fun isEmpty!20840 (List!36801) Bool)

(declare-fun getSuffix!1428 (List!36801 List!36801) List!36801)

(assert (=> b!3328736 (isEmpty!20840 (getSuffix!1428 lt!1131274 lt!1131274))))

(declare-fun lt!1131266 () Unit!51688)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!86 (List!36801) Unit!51688)

(assert (=> b!3328736 (= lt!1131266 (lemmaGetSuffixOnListWithItSelfIsEmpty!86 lt!1131274))))

(declare-fun b!3328737 () Bool)

(declare-fun res!1350073 () Bool)

(assert (=> b!3328737 (=> (not res!1350073) (not e!2070082))))

(declare-fun rulesProduceIndividualToken!2415 (LexerInterface!4923 List!36802 Token!10034) Bool)

(assert (=> b!3328737 (= res!1350073 (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3328738 () Bool)

(declare-fun res!1350078 () Bool)

(assert (=> b!3328738 (=> (not res!1350078) (not e!2070082))))

(declare-fun lambda!119767 () Int)

(declare-fun forall!7657 (List!36803 Int) Bool)

(assert (=> b!3328738 (= res!1350078 (forall!7657 tokens!494 lambda!119767))))

(declare-fun b!3328739 () Bool)

(assert (=> b!3328739 (= e!2070076 e!2070082)))

(declare-fun res!1350080 () Bool)

(assert (=> b!3328739 (=> (not res!1350080) (not e!2070082))))

(declare-datatypes ((IArray!22093 0))(
  ( (IArray!22094 (innerList!11104 List!36803)) )
))
(declare-datatypes ((Conc!11044 0))(
  ( (Node!11044 (left!28585 Conc!11044) (right!28915 Conc!11044) (csize!22318 Int) (cheight!11255 Int)) (Leaf!17322 (xs!14182 IArray!22093) (csize!22319 Int)) (Empty!11044) )
))
(declare-datatypes ((BalanceConc!21702 0))(
  ( (BalanceConc!21703 (c!565318 Conc!11044)) )
))
(declare-fun lt!1131267 () BalanceConc!21702)

(declare-fun rulesProduceEachTokenIndividually!1374 (LexerInterface!4923 List!36802 BalanceConc!21702) Bool)

(assert (=> b!3328739 (= res!1350080 (rulesProduceEachTokenIndividually!1374 thiss!18206 rules!2135 lt!1131267))))

(declare-fun seqFromList!3721 (List!36803) BalanceConc!21702)

(assert (=> b!3328739 (= lt!1131267 (seqFromList!3721 tokens!494))))

(assert (=> b!3328722 (= e!2070080 (and tp!1040424 tp!1040423))))

(declare-fun res!1350077 () Bool)

(assert (=> start!310878 (=> (not res!1350077) (not e!2070076))))

(assert (=> start!310878 (= res!1350077 ((_ is Lexer!4921) thiss!18206))))

(assert (=> start!310878 e!2070076))

(assert (=> start!310878 true))

(declare-fun e!2070087 () Bool)

(assert (=> start!310878 e!2070087))

(assert (=> start!310878 (and (inv!49686 separatorToken!241) e!2070069)))

(assert (=> start!310878 e!2070074))

(declare-fun b!3328740 () Bool)

(declare-fun tp!1040419 () Bool)

(assert (=> b!3328740 (= e!2070087 (and e!2070086 tp!1040419))))

(declare-fun b!3328741 () Bool)

(declare-fun res!1350085 () Bool)

(assert (=> b!3328741 (=> res!1350085 e!2070084)))

(assert (=> b!3328741 (= res!1350085 (not (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 (h!42099 tokens!494))))))

(declare-fun b!3328742 () Bool)

(declare-fun res!1350074 () Bool)

(assert (=> b!3328742 (=> res!1350074 e!2070073)))

(declare-fun printWithSeparatorToken!114 (LexerInterface!4923 BalanceConc!21702 Token!10034) BalanceConc!21700)

(declare-fun ++!8917 (List!36801 List!36801) List!36801)

(assert (=> b!3328742 (= res!1350074 (not (= (list!13209 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241)) (++!8917 lt!1131274 (list!13209 (charsOf!3348 separatorToken!241))))))))

(declare-fun b!3328743 () Bool)

(assert (=> b!3328743 (= e!2070084 e!2070073)))

(declare-fun res!1350075 () Bool)

(assert (=> b!3328743 (=> res!1350075 e!2070073)))

(assert (=> b!3328743 (= res!1350075 (isSeparator!5334 (rule!7856 (h!42099 tokens!494))))))

(declare-fun lt!1131270 () Unit!51688)

(declare-fun forallContained!1281 (List!36803 Int Token!10034) Unit!51688)

(assert (=> b!3328743 (= lt!1131270 (forallContained!1281 tokens!494 lambda!119767 (h!42099 tokens!494)))))

(declare-fun b!3328744 () Bool)

(declare-fun res!1350083 () Bool)

(assert (=> b!3328744 (=> (not res!1350083) (not e!2070082))))

(assert (=> b!3328744 (= res!1350083 (isSeparator!5334 (rule!7856 separatorToken!241)))))

(declare-fun b!3328745 () Bool)

(declare-fun res!1350084 () Bool)

(assert (=> b!3328745 (=> res!1350084 e!2070084)))

(declare-fun isEmpty!20841 (BalanceConc!21702) Bool)

(declare-datatypes ((tuple2!36182 0))(
  ( (tuple2!36183 (_1!21225 BalanceConc!21702) (_2!21225 BalanceConc!21700)) )
))
(declare-fun lex!2249 (LexerInterface!4923 List!36802 BalanceConc!21700) tuple2!36182)

(declare-fun seqFromList!3722 (List!36801) BalanceConc!21700)

(assert (=> b!3328745 (= res!1350084 (isEmpty!20841 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274)))))))

(declare-fun b!3328746 () Bool)

(assert (=> b!3328746 (= e!2070082 (not e!2070078))))

(declare-fun res!1350071 () Bool)

(assert (=> b!3328746 (=> res!1350071 e!2070078)))

(assert (=> b!3328746 (= res!1350071 (not (= lt!1131269 lt!1131273)))))

(declare-fun printList!1471 (LexerInterface!4923 List!36803) List!36801)

(assert (=> b!3328746 (= lt!1131273 (printList!1471 thiss!18206 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))

(declare-fun lt!1131268 () BalanceConc!21700)

(assert (=> b!3328746 (= lt!1131269 (list!13209 lt!1131268))))

(declare-fun lt!1131272 () BalanceConc!21702)

(declare-fun printTailRec!1418 (LexerInterface!4923 BalanceConc!21702 Int BalanceConc!21700) BalanceConc!21700)

(assert (=> b!3328746 (= lt!1131268 (printTailRec!1418 thiss!18206 lt!1131272 0 (BalanceConc!21701 Empty!11043)))))

(declare-fun print!1988 (LexerInterface!4923 BalanceConc!21702) BalanceConc!21700)

(assert (=> b!3328746 (= lt!1131268 (print!1988 thiss!18206 lt!1131272))))

(declare-fun singletonSeq!2430 (Token!10034) BalanceConc!21702)

(assert (=> b!3328746 (= lt!1131272 (singletonSeq!2430 (h!42099 tokens!494)))))

(assert (= (and start!310878 res!1350077) b!3328724))

(assert (= (and b!3328724 res!1350082) b!3328734))

(assert (= (and b!3328734 res!1350081) b!3328739))

(assert (= (and b!3328739 res!1350080) b!3328737))

(assert (= (and b!3328737 res!1350073) b!3328744))

(assert (= (and b!3328744 res!1350083) b!3328738))

(assert (= (and b!3328738 res!1350078) b!3328730))

(assert (= (and b!3328730 res!1350076) b!3328731))

(assert (= (and b!3328731 res!1350079) b!3328746))

(assert (= (and b!3328746 (not res!1350071)) b!3328732))

(assert (= (and b!3328732 (not res!1350072)) b!3328741))

(assert (= (and b!3328741 (not res!1350085)) b!3328745))

(assert (= (and b!3328745 (not res!1350084)) b!3328743))

(assert (= (and b!3328743 (not res!1350075)) b!3328742))

(assert (= (and b!3328742 (not res!1350074)) b!3328736))

(assert (= b!3328733 b!3328722))

(assert (= b!3328740 b!3328733))

(assert (= (and start!310878 ((_ is Cons!36678) rules!2135)) b!3328740))

(assert (= b!3328725 b!3328729))

(assert (= b!3328723 b!3328725))

(assert (= start!310878 b!3328723))

(assert (= b!3328726 b!3328728))

(assert (= b!3328735 b!3328726))

(assert (= b!3328727 b!3328735))

(assert (= (and start!310878 ((_ is Cons!36679) tokens!494)) b!3328727))

(declare-fun m!3669603 () Bool)

(assert (=> b!3328732 m!3669603))

(assert (=> b!3328732 m!3669603))

(declare-fun m!3669605 () Bool)

(assert (=> b!3328732 m!3669605))

(declare-fun m!3669607 () Bool)

(assert (=> b!3328723 m!3669607))

(declare-fun m!3669609 () Bool)

(assert (=> b!3328735 m!3669609))

(declare-fun m!3669611 () Bool)

(assert (=> start!310878 m!3669611))

(declare-fun m!3669613 () Bool)

(assert (=> b!3328738 m!3669613))

(declare-fun m!3669615 () Bool)

(assert (=> b!3328724 m!3669615))

(declare-fun m!3669617 () Bool)

(assert (=> b!3328746 m!3669617))

(declare-fun m!3669619 () Bool)

(assert (=> b!3328746 m!3669619))

(declare-fun m!3669621 () Bool)

(assert (=> b!3328746 m!3669621))

(declare-fun m!3669623 () Bool)

(assert (=> b!3328746 m!3669623))

(declare-fun m!3669625 () Bool)

(assert (=> b!3328746 m!3669625))

(declare-fun m!3669627 () Bool)

(assert (=> b!3328727 m!3669627))

(declare-fun m!3669629 () Bool)

(assert (=> b!3328743 m!3669629))

(declare-fun m!3669631 () Bool)

(assert (=> b!3328730 m!3669631))

(declare-fun m!3669633 () Bool)

(assert (=> b!3328741 m!3669633))

(declare-fun m!3669635 () Bool)

(assert (=> b!3328725 m!3669635))

(declare-fun m!3669637 () Bool)

(assert (=> b!3328725 m!3669637))

(declare-fun m!3669639 () Bool)

(assert (=> b!3328742 m!3669639))

(declare-fun m!3669641 () Bool)

(assert (=> b!3328742 m!3669641))

(declare-fun m!3669643 () Bool)

(assert (=> b!3328742 m!3669643))

(declare-fun m!3669645 () Bool)

(assert (=> b!3328742 m!3669645))

(assert (=> b!3328742 m!3669639))

(assert (=> b!3328742 m!3669643))

(declare-fun m!3669647 () Bool)

(assert (=> b!3328742 m!3669647))

(assert (=> b!3328742 m!3669645))

(declare-fun m!3669649 () Bool)

(assert (=> b!3328736 m!3669649))

(declare-fun m!3669651 () Bool)

(assert (=> b!3328736 m!3669651))

(declare-fun m!3669653 () Bool)

(assert (=> b!3328736 m!3669653))

(declare-fun m!3669655 () Bool)

(assert (=> b!3328736 m!3669655))

(assert (=> b!3328736 m!3669651))

(declare-fun m!3669657 () Bool)

(assert (=> b!3328736 m!3669657))

(assert (=> b!3328736 m!3669649))

(declare-fun m!3669659 () Bool)

(assert (=> b!3328736 m!3669659))

(declare-fun m!3669661 () Bool)

(assert (=> b!3328745 m!3669661))

(assert (=> b!3328745 m!3669661))

(declare-fun m!3669663 () Bool)

(assert (=> b!3328745 m!3669663))

(declare-fun m!3669665 () Bool)

(assert (=> b!3328745 m!3669665))

(declare-fun m!3669667 () Bool)

(assert (=> b!3328739 m!3669667))

(declare-fun m!3669669 () Bool)

(assert (=> b!3328739 m!3669669))

(declare-fun m!3669671 () Bool)

(assert (=> b!3328734 m!3669671))

(declare-fun m!3669673 () Bool)

(assert (=> b!3328737 m!3669673))

(declare-fun m!3669675 () Bool)

(assert (=> b!3328726 m!3669675))

(declare-fun m!3669677 () Bool)

(assert (=> b!3328726 m!3669677))

(declare-fun m!3669679 () Bool)

(assert (=> b!3328733 m!3669679))

(declare-fun m!3669681 () Bool)

(assert (=> b!3328733 m!3669681))

(check-sat (not b_next!88355) (not b_next!88357) b_and!229501 b_and!229493 (not b!3328727) (not b!3328737) b_and!229499 (not b!3328746) b_and!229495 (not b!3328745) (not b_next!88361) (not b!3328733) (not b_next!88359) (not b!3328726) (not b!3328742) (not start!310878) (not b_next!88363) (not b!3328743) b_and!229497 (not b!3328725) (not b!3328724) (not b!3328740) b_and!229491 (not b!3328736) (not b_next!88353) (not b!3328732) (not b!3328738) (not b!3328741) (not b!3328734) (not b!3328723) (not b!3328730) (not b!3328735) (not b!3328739))
(check-sat (not b_next!88361) (not b_next!88355) (not b_next!88359) (not b_next!88363) b_and!229497 (not b_next!88357) b_and!229501 b_and!229493 b_and!229499 b_and!229495 b_and!229491 (not b_next!88353))
(get-model)

(declare-fun d!936202 () Bool)

(declare-fun res!1350098 () Bool)

(declare-fun e!2070091 () Bool)

(assert (=> d!936202 (=> (not res!1350098) (not e!2070091))))

(assert (=> d!936202 (= res!1350098 (not (isEmpty!20840 (originalCharacters!6048 separatorToken!241))))))

(assert (=> d!936202 (= (inv!49686 separatorToken!241) e!2070091)))

(declare-fun b!3328751 () Bool)

(declare-fun res!1350099 () Bool)

(assert (=> b!3328751 (=> (not res!1350099) (not e!2070091))))

(declare-fun dynLambda!15129 (Int TokenValue!5564) BalanceConc!21700)

(assert (=> b!3328751 (= res!1350099 (= (originalCharacters!6048 separatorToken!241) (list!13209 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))))))

(declare-fun b!3328752 () Bool)

(declare-fun size!27728 (List!36801) Int)

(assert (=> b!3328752 (= e!2070091 (= (size!27725 separatorToken!241) (size!27728 (originalCharacters!6048 separatorToken!241))))))

(assert (= (and d!936202 res!1350098) b!3328751))

(assert (= (and b!3328751 res!1350099) b!3328752))

(declare-fun b_lambda!93987 () Bool)

(assert (=> (not b_lambda!93987) (not b!3328751)))

(declare-fun t!256934 () Bool)

(declare-fun tb!174339 () Bool)

(assert (=> (and b!3328729 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) t!256934) tb!174339))

(declare-fun b!3328757 () Bool)

(declare-fun e!2070094 () Bool)

(declare-fun tp!1040433 () Bool)

(declare-fun inv!49689 (Conc!11043) Bool)

(assert (=> b!3328757 (= e!2070094 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))) tp!1040433))))

(declare-fun result!217440 () Bool)

(declare-fun inv!49690 (BalanceConc!21700) Bool)

(assert (=> tb!174339 (= result!217440 (and (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))) e!2070094))))

(assert (= tb!174339 b!3328757))

(declare-fun m!3669683 () Bool)

(assert (=> b!3328757 m!3669683))

(declare-fun m!3669685 () Bool)

(assert (=> tb!174339 m!3669685))

(assert (=> b!3328751 t!256934))

(declare-fun b_and!229503 () Bool)

(assert (= b_and!229493 (and (=> t!256934 result!217440) b_and!229503)))

(declare-fun tb!174341 () Bool)

(declare-fun t!256936 () Bool)

(assert (=> (and b!3328722 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) t!256936) tb!174341))

(declare-fun result!217444 () Bool)

(assert (= result!217444 result!217440))

(assert (=> b!3328751 t!256936))

(declare-fun b_and!229505 () Bool)

(assert (= b_and!229497 (and (=> t!256936 result!217444) b_and!229505)))

(declare-fun t!256938 () Bool)

(declare-fun tb!174343 () Bool)

(assert (=> (and b!3328728 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) t!256938) tb!174343))

(declare-fun result!217446 () Bool)

(assert (= result!217446 result!217440))

(assert (=> b!3328751 t!256938))

(declare-fun b_and!229507 () Bool)

(assert (= b_and!229501 (and (=> t!256938 result!217446) b_and!229507)))

(declare-fun m!3669687 () Bool)

(assert (=> d!936202 m!3669687))

(declare-fun m!3669689 () Bool)

(assert (=> b!3328751 m!3669689))

(assert (=> b!3328751 m!3669689))

(declare-fun m!3669691 () Bool)

(assert (=> b!3328751 m!3669691))

(declare-fun m!3669693 () Bool)

(assert (=> b!3328752 m!3669693))

(assert (=> start!310878 d!936202))

(declare-fun d!936204 () Bool)

(declare-fun lt!1131321 () Bool)

(declare-fun e!2070130 () Bool)

(assert (=> d!936204 (= lt!1131321 e!2070130)))

(declare-fun res!1350134 () Bool)

(assert (=> d!936204 (=> (not res!1350134) (not e!2070130))))

(declare-fun list!13212 (BalanceConc!21702) List!36803)

(assert (=> d!936204 (= res!1350134 (= (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)))))) (list!13212 (singletonSeq!2430 (h!42099 tokens!494)))))))

(declare-fun e!2070131 () Bool)

(assert (=> d!936204 (= lt!1131321 e!2070131)))

(declare-fun res!1350133 () Bool)

(assert (=> d!936204 (=> (not res!1350133) (not e!2070131))))

(declare-fun lt!1131322 () tuple2!36182)

(declare-fun size!27729 (BalanceConc!21702) Int)

(assert (=> d!936204 (= res!1350133 (= (size!27729 (_1!21225 lt!1131322)) 1))))

(assert (=> d!936204 (= lt!1131322 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)))))))

(assert (=> d!936204 (not (isEmpty!20839 rules!2135))))

(assert (=> d!936204 (= (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 (h!42099 tokens!494)) lt!1131321)))

(declare-fun b!3328815 () Bool)

(declare-fun res!1350135 () Bool)

(assert (=> b!3328815 (=> (not res!1350135) (not e!2070131))))

(declare-fun apply!8470 (BalanceConc!21702 Int) Token!10034)

(assert (=> b!3328815 (= res!1350135 (= (apply!8470 (_1!21225 lt!1131322) 0) (h!42099 tokens!494)))))

(declare-fun b!3328816 () Bool)

(declare-fun isEmpty!20843 (BalanceConc!21700) Bool)

(assert (=> b!3328816 (= e!2070131 (isEmpty!20843 (_2!21225 lt!1131322)))))

(declare-fun b!3328817 () Bool)

(assert (=> b!3328817 (= e!2070130 (isEmpty!20843 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)))))))))

(assert (= (and d!936204 res!1350133) b!3328815))

(assert (= (and b!3328815 res!1350135) b!3328816))

(assert (= (and d!936204 res!1350134) b!3328817))

(declare-fun m!3669813 () Bool)

(assert (=> d!936204 m!3669813))

(declare-fun m!3669815 () Bool)

(assert (=> d!936204 m!3669815))

(declare-fun m!3669817 () Bool)

(assert (=> d!936204 m!3669817))

(assert (=> d!936204 m!3669621))

(assert (=> d!936204 m!3669815))

(declare-fun m!3669819 () Bool)

(assert (=> d!936204 m!3669819))

(assert (=> d!936204 m!3669621))

(assert (=> d!936204 m!3669621))

(declare-fun m!3669821 () Bool)

(assert (=> d!936204 m!3669821))

(assert (=> d!936204 m!3669615))

(declare-fun m!3669823 () Bool)

(assert (=> b!3328815 m!3669823))

(declare-fun m!3669825 () Bool)

(assert (=> b!3328816 m!3669825))

(assert (=> b!3328817 m!3669621))

(assert (=> b!3328817 m!3669621))

(assert (=> b!3328817 m!3669815))

(assert (=> b!3328817 m!3669815))

(assert (=> b!3328817 m!3669817))

(declare-fun m!3669827 () Bool)

(assert (=> b!3328817 m!3669827))

(assert (=> b!3328741 d!936204))

(declare-fun d!936234 () Bool)

(declare-fun res!1350143 () Bool)

(declare-fun e!2070139 () Bool)

(assert (=> d!936234 (=> res!1350143 e!2070139)))

(assert (=> d!936234 (= res!1350143 (not ((_ is Cons!36678) rules!2135)))))

(assert (=> d!936234 (= (sepAndNonSepRulesDisjointChars!1528 rules!2135 rules!2135) e!2070139)))

(declare-fun b!3328825 () Bool)

(declare-fun e!2070140 () Bool)

(assert (=> b!3328825 (= e!2070139 e!2070140)))

(declare-fun res!1350144 () Bool)

(assert (=> b!3328825 (=> (not res!1350144) (not e!2070140))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!650 (Rule!10468 List!36802) Bool)

(assert (=> b!3328825 (= res!1350144 (ruleDisjointCharsFromAllFromOtherType!650 (h!42098 rules!2135) rules!2135))))

(declare-fun b!3328826 () Bool)

(assert (=> b!3328826 (= e!2070140 (sepAndNonSepRulesDisjointChars!1528 rules!2135 (t!256931 rules!2135)))))

(assert (= (and d!936234 (not res!1350143)) b!3328825))

(assert (= (and b!3328825 res!1350144) b!3328826))

(declare-fun m!3669837 () Bool)

(assert (=> b!3328825 m!3669837))

(declare-fun m!3669839 () Bool)

(assert (=> b!3328826 m!3669839))

(assert (=> b!3328730 d!936234))

(declare-fun bs!551145 () Bool)

(declare-fun d!936242 () Bool)

(assert (= bs!551145 (and d!936242 b!3328738)))

(declare-fun lambda!119777 () Int)

(assert (=> bs!551145 (not (= lambda!119777 lambda!119767))))

(declare-fun b!3328854 () Bool)

(declare-fun e!2070164 () Bool)

(assert (=> b!3328854 (= e!2070164 true)))

(declare-fun b!3328853 () Bool)

(declare-fun e!2070163 () Bool)

(assert (=> b!3328853 (= e!2070163 e!2070164)))

(declare-fun b!3328852 () Bool)

(declare-fun e!2070162 () Bool)

(assert (=> b!3328852 (= e!2070162 e!2070163)))

(assert (=> d!936242 e!2070162))

(assert (= b!3328853 b!3328854))

(assert (= b!3328852 b!3328853))

(assert (= (and d!936242 ((_ is Cons!36678) rules!2135)) b!3328852))

(declare-fun order!19191 () Int)

(declare-fun order!19195 () Int)

(declare-fun dynLambda!15130 (Int Int) Int)

(declare-fun dynLambda!15131 (Int Int) Int)

(assert (=> b!3328854 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (h!42098 rules!2135)))) (dynLambda!15131 order!19195 lambda!119777))))

(declare-fun order!19197 () Int)

(declare-fun dynLambda!15132 (Int Int) Int)

(assert (=> b!3328854 (< (dynLambda!15132 order!19197 (toChars!7357 (transformation!5334 (h!42098 rules!2135)))) (dynLambda!15131 order!19195 lambda!119777))))

(assert (=> d!936242 true))

(declare-fun e!2070146 () Bool)

(assert (=> d!936242 e!2070146))

(declare-fun res!1350150 () Bool)

(assert (=> d!936242 (=> (not res!1350150) (not e!2070146))))

(declare-fun lt!1131329 () Bool)

(assert (=> d!936242 (= res!1350150 (= lt!1131329 (forall!7657 (list!13212 lt!1131267) lambda!119777)))))

(declare-fun forall!7659 (BalanceConc!21702 Int) Bool)

(assert (=> d!936242 (= lt!1131329 (forall!7659 lt!1131267 lambda!119777))))

(assert (=> d!936242 (not (isEmpty!20839 rules!2135))))

(assert (=> d!936242 (= (rulesProduceEachTokenIndividually!1374 thiss!18206 rules!2135 lt!1131267) lt!1131329)))

(declare-fun b!3328832 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1787 (LexerInterface!4923 List!36802 List!36803) Bool)

(assert (=> b!3328832 (= e!2070146 (= lt!1131329 (rulesProduceEachTokenIndividuallyList!1787 thiss!18206 rules!2135 (list!13212 lt!1131267))))))

(assert (= (and d!936242 res!1350150) b!3328832))

(declare-fun m!3669841 () Bool)

(assert (=> d!936242 m!3669841))

(assert (=> d!936242 m!3669841))

(declare-fun m!3669845 () Bool)

(assert (=> d!936242 m!3669845))

(declare-fun m!3669849 () Bool)

(assert (=> d!936242 m!3669849))

(assert (=> d!936242 m!3669615))

(assert (=> b!3328832 m!3669841))

(assert (=> b!3328832 m!3669841))

(declare-fun m!3669853 () Bool)

(assert (=> b!3328832 m!3669853))

(assert (=> b!3328739 d!936242))

(declare-fun d!936246 () Bool)

(declare-fun fromListB!1645 (List!36803) BalanceConc!21702)

(assert (=> d!936246 (= (seqFromList!3721 tokens!494) (fromListB!1645 tokens!494))))

(declare-fun bs!551146 () Bool)

(assert (= bs!551146 d!936246))

(declare-fun m!3669855 () Bool)

(assert (=> bs!551146 m!3669855))

(assert (=> b!3328739 d!936246))

(declare-fun d!936248 () Bool)

(assert (=> d!936248 (= (inv!49682 (tag!5886 (h!42098 rules!2135))) (= (mod (str.len (value!172478 (tag!5886 (h!42098 rules!2135)))) 2) 0))))

(assert (=> b!3328733 d!936248))

(declare-fun d!936252 () Bool)

(declare-fun res!1350155 () Bool)

(declare-fun e!2070173 () Bool)

(assert (=> d!936252 (=> (not res!1350155) (not e!2070173))))

(declare-fun semiInverseModEq!2215 (Int Int) Bool)

(assert (=> d!936252 (= res!1350155 (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toValue!7498 (transformation!5334 (h!42098 rules!2135)))))))

(assert (=> d!936252 (= (inv!49685 (transformation!5334 (h!42098 rules!2135))) e!2070173)))

(declare-fun b!3328871 () Bool)

(declare-fun equivClasses!2114 (Int Int) Bool)

(assert (=> b!3328871 (= e!2070173 (equivClasses!2114 (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toValue!7498 (transformation!5334 (h!42098 rules!2135)))))))

(assert (= (and d!936252 res!1350155) b!3328871))

(declare-fun m!3669859 () Bool)

(assert (=> d!936252 m!3669859))

(declare-fun m!3669861 () Bool)

(assert (=> b!3328871 m!3669861))

(assert (=> b!3328733 d!936252))

(declare-fun d!936254 () Bool)

(declare-fun dynLambda!15133 (Int Token!10034) Bool)

(assert (=> d!936254 (dynLambda!15133 lambda!119767 (h!42099 tokens!494))))

(declare-fun lt!1131334 () Unit!51688)

(declare-fun choose!19286 (List!36803 Int Token!10034) Unit!51688)

(assert (=> d!936254 (= lt!1131334 (choose!19286 tokens!494 lambda!119767 (h!42099 tokens!494)))))

(declare-fun e!2070183 () Bool)

(assert (=> d!936254 e!2070183))

(declare-fun res!1350164 () Bool)

(assert (=> d!936254 (=> (not res!1350164) (not e!2070183))))

(assert (=> d!936254 (= res!1350164 (forall!7657 tokens!494 lambda!119767))))

(assert (=> d!936254 (= (forallContained!1281 tokens!494 lambda!119767 (h!42099 tokens!494)) lt!1131334)))

(declare-fun b!3328884 () Bool)

(declare-fun contains!6649 (List!36803 Token!10034) Bool)

(assert (=> b!3328884 (= e!2070183 (contains!6649 tokens!494 (h!42099 tokens!494)))))

(assert (= (and d!936254 res!1350164) b!3328884))

(declare-fun b_lambda!93995 () Bool)

(assert (=> (not b_lambda!93995) (not d!936254)))

(declare-fun m!3669895 () Bool)

(assert (=> d!936254 m!3669895))

(declare-fun m!3669897 () Bool)

(assert (=> d!936254 m!3669897))

(assert (=> d!936254 m!3669613))

(declare-fun m!3669899 () Bool)

(assert (=> b!3328884 m!3669899))

(assert (=> b!3328743 d!936254))

(declare-fun d!936268 () Bool)

(declare-fun list!13213 (Conc!11043) List!36801)

(assert (=> d!936268 (= (list!13209 (charsOf!3348 (h!42099 tokens!494))) (list!13213 (c!565317 (charsOf!3348 (h!42099 tokens!494)))))))

(declare-fun bs!551148 () Bool)

(assert (= bs!551148 d!936268))

(declare-fun m!3669901 () Bool)

(assert (=> bs!551148 m!3669901))

(assert (=> b!3328732 d!936268))

(declare-fun d!936270 () Bool)

(declare-fun lt!1131337 () BalanceConc!21700)

(assert (=> d!936270 (= (list!13209 lt!1131337) (originalCharacters!6048 (h!42099 tokens!494)))))

(assert (=> d!936270 (= lt!1131337 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))))

(assert (=> d!936270 (= (charsOf!3348 (h!42099 tokens!494)) lt!1131337)))

(declare-fun b_lambda!93997 () Bool)

(assert (=> (not b_lambda!93997) (not d!936270)))

(declare-fun t!256963 () Bool)

(declare-fun tb!174357 () Bool)

(assert (=> (and b!3328729 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) t!256963) tb!174357))

(declare-fun b!3328885 () Bool)

(declare-fun e!2070184 () Bool)

(declare-fun tp!1040438 () Bool)

(assert (=> b!3328885 (= e!2070184 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))) tp!1040438))))

(declare-fun result!217462 () Bool)

(assert (=> tb!174357 (= result!217462 (and (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))) e!2070184))))

(assert (= tb!174357 b!3328885))

(declare-fun m!3669903 () Bool)

(assert (=> b!3328885 m!3669903))

(declare-fun m!3669905 () Bool)

(assert (=> tb!174357 m!3669905))

(assert (=> d!936270 t!256963))

(declare-fun b_and!229527 () Bool)

(assert (= b_and!229503 (and (=> t!256963 result!217462) b_and!229527)))

(declare-fun tb!174359 () Bool)

(declare-fun t!256965 () Bool)

(assert (=> (and b!3328722 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) t!256965) tb!174359))

(declare-fun result!217464 () Bool)

(assert (= result!217464 result!217462))

(assert (=> d!936270 t!256965))

(declare-fun b_and!229529 () Bool)

(assert (= b_and!229505 (and (=> t!256965 result!217464) b_and!229529)))

(declare-fun t!256967 () Bool)

(declare-fun tb!174361 () Bool)

(assert (=> (and b!3328728 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) t!256967) tb!174361))

(declare-fun result!217466 () Bool)

(assert (= result!217466 result!217462))

(assert (=> d!936270 t!256967))

(declare-fun b_and!229531 () Bool)

(assert (= b_and!229507 (and (=> t!256967 result!217466) b_and!229531)))

(declare-fun m!3669907 () Bool)

(assert (=> d!936270 m!3669907))

(declare-fun m!3669909 () Bool)

(assert (=> d!936270 m!3669909))

(assert (=> b!3328732 d!936270))

(declare-fun d!936272 () Bool)

(assert (=> d!936272 (= (list!13209 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241)) (list!13213 (c!565317 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241))))))

(declare-fun bs!551149 () Bool)

(assert (= bs!551149 d!936272))

(declare-fun m!3669911 () Bool)

(assert (=> bs!551149 m!3669911))

(assert (=> b!3328742 d!936272))

(declare-fun d!936274 () Bool)

(declare-fun lt!1131340 () BalanceConc!21700)

(declare-fun printWithSeparatorTokenList!228 (LexerInterface!4923 List!36803 Token!10034) List!36801)

(assert (=> d!936274 (= (list!13209 lt!1131340) (printWithSeparatorTokenList!228 thiss!18206 (list!13212 lt!1131267) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!44 (LexerInterface!4923 BalanceConc!21702 Token!10034 Int BalanceConc!21700) BalanceConc!21700)

(assert (=> d!936274 (= lt!1131340 (printWithSeparatorTokenTailRec!44 thiss!18206 lt!1131267 separatorToken!241 0 (BalanceConc!21701 Empty!11043)))))

(assert (=> d!936274 (isSeparator!5334 (rule!7856 separatorToken!241))))

(assert (=> d!936274 (= (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241) lt!1131340)))

(declare-fun bs!551150 () Bool)

(assert (= bs!551150 d!936274))

(declare-fun m!3669913 () Bool)

(assert (=> bs!551150 m!3669913))

(assert (=> bs!551150 m!3669841))

(assert (=> bs!551150 m!3669841))

(declare-fun m!3669915 () Bool)

(assert (=> bs!551150 m!3669915))

(declare-fun m!3669917 () Bool)

(assert (=> bs!551150 m!3669917))

(assert (=> b!3328742 d!936274))

(declare-fun d!936276 () Bool)

(declare-fun lt!1131341 () BalanceConc!21700)

(assert (=> d!936276 (= (list!13209 lt!1131341) (originalCharacters!6048 separatorToken!241))))

(assert (=> d!936276 (= lt!1131341 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))))

(assert (=> d!936276 (= (charsOf!3348 separatorToken!241) lt!1131341)))

(declare-fun b_lambda!93999 () Bool)

(assert (=> (not b_lambda!93999) (not d!936276)))

(assert (=> d!936276 t!256934))

(declare-fun b_and!229533 () Bool)

(assert (= b_and!229527 (and (=> t!256934 result!217440) b_and!229533)))

(assert (=> d!936276 t!256936))

(declare-fun b_and!229535 () Bool)

(assert (= b_and!229529 (and (=> t!256936 result!217444) b_and!229535)))

(assert (=> d!936276 t!256938))

(declare-fun b_and!229537 () Bool)

(assert (= b_and!229531 (and (=> t!256938 result!217446) b_and!229537)))

(declare-fun m!3669919 () Bool)

(assert (=> d!936276 m!3669919))

(assert (=> d!936276 m!3669689))

(assert (=> b!3328742 d!936276))

(declare-fun d!936278 () Bool)

(assert (=> d!936278 (= (list!13209 (charsOf!3348 separatorToken!241)) (list!13213 (c!565317 (charsOf!3348 separatorToken!241))))))

(declare-fun bs!551151 () Bool)

(assert (= bs!551151 d!936278))

(declare-fun m!3669921 () Bool)

(assert (=> bs!551151 m!3669921))

(assert (=> b!3328742 d!936278))

(declare-fun b!3328896 () Bool)

(declare-fun res!1350170 () Bool)

(declare-fun e!2070189 () Bool)

(assert (=> b!3328896 (=> (not res!1350170) (not e!2070189))))

(declare-fun lt!1131344 () List!36801)

(assert (=> b!3328896 (= res!1350170 (= (size!27728 lt!1131344) (+ (size!27728 lt!1131274) (size!27728 (list!13209 (charsOf!3348 separatorToken!241))))))))

(declare-fun b!3328895 () Bool)

(declare-fun e!2070190 () List!36801)

(assert (=> b!3328895 (= e!2070190 (Cons!36677 (h!42097 lt!1131274) (++!8917 (t!256930 lt!1131274) (list!13209 (charsOf!3348 separatorToken!241)))))))

(declare-fun d!936280 () Bool)

(assert (=> d!936280 e!2070189))

(declare-fun res!1350169 () Bool)

(assert (=> d!936280 (=> (not res!1350169) (not e!2070189))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5011 (List!36801) (InoxSet C!20372))

(assert (=> d!936280 (= res!1350169 (= (content!5011 lt!1131344) ((_ map or) (content!5011 lt!1131274) (content!5011 (list!13209 (charsOf!3348 separatorToken!241))))))))

(assert (=> d!936280 (= lt!1131344 e!2070190)))

(declare-fun c!565336 () Bool)

(assert (=> d!936280 (= c!565336 ((_ is Nil!36677) lt!1131274))))

(assert (=> d!936280 (= (++!8917 lt!1131274 (list!13209 (charsOf!3348 separatorToken!241))) lt!1131344)))

(declare-fun b!3328897 () Bool)

(assert (=> b!3328897 (= e!2070189 (or (not (= (list!13209 (charsOf!3348 separatorToken!241)) Nil!36677)) (= lt!1131344 lt!1131274)))))

(declare-fun b!3328894 () Bool)

(assert (=> b!3328894 (= e!2070190 (list!13209 (charsOf!3348 separatorToken!241)))))

(assert (= (and d!936280 c!565336) b!3328894))

(assert (= (and d!936280 (not c!565336)) b!3328895))

(assert (= (and d!936280 res!1350169) b!3328896))

(assert (= (and b!3328896 res!1350170) b!3328897))

(declare-fun m!3669923 () Bool)

(assert (=> b!3328896 m!3669923))

(declare-fun m!3669925 () Bool)

(assert (=> b!3328896 m!3669925))

(assert (=> b!3328896 m!3669639))

(declare-fun m!3669927 () Bool)

(assert (=> b!3328896 m!3669927))

(assert (=> b!3328895 m!3669639))

(declare-fun m!3669929 () Bool)

(assert (=> b!3328895 m!3669929))

(declare-fun m!3669931 () Bool)

(assert (=> d!936280 m!3669931))

(declare-fun m!3669933 () Bool)

(assert (=> d!936280 m!3669933))

(assert (=> d!936280 m!3669639))

(declare-fun m!3669935 () Bool)

(assert (=> d!936280 m!3669935))

(assert (=> b!3328742 d!936280))

(declare-fun d!936282 () Bool)

(assert (=> d!936282 (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 (h!42099 tokens!494))))

(declare-fun lt!1131350 () Unit!51688)

(declare-fun choose!19288 (LexerInterface!4923 List!36802 List!36803 Token!10034) Unit!51688)

(assert (=> d!936282 (= lt!1131350 (choose!19288 thiss!18206 rules!2135 tokens!494 (h!42099 tokens!494)))))

(assert (=> d!936282 (not (isEmpty!20839 rules!2135))))

(assert (=> d!936282 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!918 thiss!18206 rules!2135 tokens!494 (h!42099 tokens!494)) lt!1131350)))

(declare-fun bs!551154 () Bool)

(assert (= bs!551154 d!936282))

(assert (=> bs!551154 m!3669633))

(declare-fun m!3669941 () Bool)

(assert (=> bs!551154 m!3669941))

(assert (=> bs!551154 m!3669615))

(assert (=> b!3328736 d!936282))

(declare-fun d!936290 () Bool)

(declare-fun lt!1131363 () List!36801)

(assert (=> d!936290 (= (++!8917 lt!1131274 lt!1131363) lt!1131274)))

(declare-fun e!2070195 () List!36801)

(assert (=> d!936290 (= lt!1131363 e!2070195)))

(declare-fun c!565341 () Bool)

(assert (=> d!936290 (= c!565341 ((_ is Cons!36677) lt!1131274))))

(assert (=> d!936290 (>= (size!27728 lt!1131274) (size!27728 lt!1131274))))

(assert (=> d!936290 (= (getSuffix!1428 lt!1131274 lt!1131274) lt!1131363)))

(declare-fun b!3328906 () Bool)

(declare-fun tail!5300 (List!36801) List!36801)

(assert (=> b!3328906 (= e!2070195 (getSuffix!1428 (tail!5300 lt!1131274) (t!256930 lt!1131274)))))

(declare-fun b!3328907 () Bool)

(assert (=> b!3328907 (= e!2070195 lt!1131274)))

(assert (= (and d!936290 c!565341) b!3328906))

(assert (= (and d!936290 (not c!565341)) b!3328907))

(declare-fun m!3669943 () Bool)

(assert (=> d!936290 m!3669943))

(assert (=> d!936290 m!3669925))

(assert (=> d!936290 m!3669925))

(declare-fun m!3669945 () Bool)

(assert (=> b!3328906 m!3669945))

(assert (=> b!3328906 m!3669945))

(declare-fun m!3669947 () Bool)

(assert (=> b!3328906 m!3669947))

(assert (=> b!3328736 d!936290))

(declare-fun d!936292 () Bool)

(assert (=> d!936292 (isEmpty!20840 (getSuffix!1428 lt!1131274 lt!1131274))))

(declare-fun lt!1131366 () Unit!51688)

(declare-fun choose!19289 (List!36801) Unit!51688)

(assert (=> d!936292 (= lt!1131366 (choose!19289 lt!1131274))))

(assert (=> d!936292 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!86 lt!1131274) lt!1131366)))

(declare-fun bs!551155 () Bool)

(assert (= bs!551155 d!936292))

(assert (=> bs!551155 m!3669651))

(assert (=> bs!551155 m!3669651))

(assert (=> bs!551155 m!3669657))

(declare-fun m!3669949 () Bool)

(assert (=> bs!551155 m!3669949))

(assert (=> b!3328736 d!936292))

(declare-fun b!3328958 () Bool)

(declare-fun e!2070216 () Bool)

(declare-fun e!2070217 () Bool)

(assert (=> b!3328958 (= e!2070216 e!2070217)))

(declare-fun res!1350213 () Bool)

(assert (=> b!3328958 (=> (not res!1350213) (not e!2070217))))

(declare-fun lt!1131391 () Option!7316)

(assert (=> b!3328958 (= res!1350213 (isDefined!5660 lt!1131391))))

(declare-fun b!3328959 () Bool)

(declare-fun res!1350214 () Bool)

(assert (=> b!3328959 (=> (not res!1350214) (not e!2070217))))

(declare-fun get!11684 (Option!7316) tuple2!36180)

(assert (=> b!3328959 (= res!1350214 (< (size!27728 (_2!21224 (get!11684 lt!1131391))) (size!27728 lt!1131274)))))

(declare-fun d!936294 () Bool)

(assert (=> d!936294 e!2070216))

(declare-fun res!1350211 () Bool)

(assert (=> d!936294 (=> res!1350211 e!2070216)))

(declare-fun isEmpty!20847 (Option!7316) Bool)

(assert (=> d!936294 (= res!1350211 (isEmpty!20847 lt!1131391))))

(declare-fun e!2070215 () Option!7316)

(assert (=> d!936294 (= lt!1131391 e!2070215)))

(declare-fun c!565348 () Bool)

(assert (=> d!936294 (= c!565348 (and ((_ is Cons!36678) rules!2135) ((_ is Nil!36678) (t!256931 rules!2135))))))

(declare-fun lt!1131392 () Unit!51688)

(declare-fun lt!1131393 () Unit!51688)

(assert (=> d!936294 (= lt!1131392 lt!1131393)))

(declare-fun isPrefix!2814 (List!36801 List!36801) Bool)

(assert (=> d!936294 (isPrefix!2814 lt!1131274 lt!1131274)))

(declare-fun lemmaIsPrefixRefl!1773 (List!36801 List!36801) Unit!51688)

(assert (=> d!936294 (= lt!1131393 (lemmaIsPrefixRefl!1773 lt!1131274 lt!1131274))))

(declare-fun rulesValidInductive!1821 (LexerInterface!4923 List!36802) Bool)

(assert (=> d!936294 (rulesValidInductive!1821 thiss!18206 rules!2135)))

(assert (=> d!936294 (= (maxPrefix!2523 thiss!18206 rules!2135 lt!1131274) lt!1131391)))

(declare-fun b!3328960 () Bool)

(declare-fun res!1350210 () Bool)

(assert (=> b!3328960 (=> (not res!1350210) (not e!2070217))))

(assert (=> b!3328960 (= res!1350210 (= (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))) (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391)))))))

(declare-fun b!3328961 () Bool)

(declare-fun res!1350215 () Bool)

(assert (=> b!3328961 (=> (not res!1350215) (not e!2070217))))

(declare-fun matchR!4685 (Regex!10093 List!36801) Bool)

(assert (=> b!3328961 (= res!1350215 (matchR!4685 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))) (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))))))

(declare-fun b!3328962 () Bool)

(declare-fun lt!1131395 () Option!7316)

(declare-fun lt!1131394 () Option!7316)

(assert (=> b!3328962 (= e!2070215 (ite (and ((_ is None!7315) lt!1131395) ((_ is None!7315) lt!1131394)) None!7315 (ite ((_ is None!7315) lt!1131394) lt!1131395 (ite ((_ is None!7315) lt!1131395) lt!1131394 (ite (>= (size!27725 (_1!21224 (v!36211 lt!1131395))) (size!27725 (_1!21224 (v!36211 lt!1131394)))) lt!1131395 lt!1131394)))))))

(declare-fun call!241382 () Option!7316)

(assert (=> b!3328962 (= lt!1131395 call!241382)))

(assert (=> b!3328962 (= lt!1131394 (maxPrefix!2523 thiss!18206 (t!256931 rules!2135) lt!1131274))))

(declare-fun bm!241377 () Bool)

(declare-fun maxPrefixOneRule!1656 (LexerInterface!4923 Rule!10468 List!36801) Option!7316)

(assert (=> bm!241377 (= call!241382 (maxPrefixOneRule!1656 thiss!18206 (h!42098 rules!2135) lt!1131274))))

(declare-fun b!3328963 () Bool)

(assert (=> b!3328963 (= e!2070215 call!241382)))

(declare-fun b!3328964 () Bool)

(declare-fun res!1350212 () Bool)

(assert (=> b!3328964 (=> (not res!1350212) (not e!2070217))))

(assert (=> b!3328964 (= res!1350212 (= (++!8917 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))) (_2!21224 (get!11684 lt!1131391))) lt!1131274))))

(declare-fun b!3328965 () Bool)

(declare-fun res!1350209 () Bool)

(assert (=> b!3328965 (=> (not res!1350209) (not e!2070217))))

(declare-fun apply!8472 (TokenValueInjection!10556 BalanceConc!21700) TokenValue!5564)

(assert (=> b!3328965 (= res!1350209 (= (value!172479 (_1!21224 (get!11684 lt!1131391))) (apply!8472 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))) (seqFromList!3722 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391)))))))))

(declare-fun b!3328966 () Bool)

(declare-fun contains!6650 (List!36802 Rule!10468) Bool)

(assert (=> b!3328966 (= e!2070217 (contains!6650 rules!2135 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))))

(assert (= (and d!936294 c!565348) b!3328963))

(assert (= (and d!936294 (not c!565348)) b!3328962))

(assert (= (or b!3328963 b!3328962) bm!241377))

(assert (= (and d!936294 (not res!1350211)) b!3328958))

(assert (= (and b!3328958 res!1350213) b!3328960))

(assert (= (and b!3328960 res!1350210) b!3328959))

(assert (= (and b!3328959 res!1350214) b!3328964))

(assert (= (and b!3328964 res!1350212) b!3328965))

(assert (= (and b!3328965 res!1350209) b!3328961))

(assert (= (and b!3328961 res!1350215) b!3328966))

(declare-fun m!3670001 () Bool)

(assert (=> b!3328958 m!3670001))

(declare-fun m!3670003 () Bool)

(assert (=> b!3328959 m!3670003))

(declare-fun m!3670005 () Bool)

(assert (=> b!3328959 m!3670005))

(assert (=> b!3328959 m!3669925))

(assert (=> b!3328966 m!3670003))

(declare-fun m!3670007 () Bool)

(assert (=> b!3328966 m!3670007))

(assert (=> b!3328964 m!3670003))

(declare-fun m!3670009 () Bool)

(assert (=> b!3328964 m!3670009))

(assert (=> b!3328964 m!3670009))

(declare-fun m!3670011 () Bool)

(assert (=> b!3328964 m!3670011))

(assert (=> b!3328964 m!3670011))

(declare-fun m!3670013 () Bool)

(assert (=> b!3328964 m!3670013))

(assert (=> b!3328961 m!3670003))

(assert (=> b!3328961 m!3670009))

(assert (=> b!3328961 m!3670009))

(assert (=> b!3328961 m!3670011))

(assert (=> b!3328961 m!3670011))

(declare-fun m!3670015 () Bool)

(assert (=> b!3328961 m!3670015))

(declare-fun m!3670017 () Bool)

(assert (=> d!936294 m!3670017))

(declare-fun m!3670019 () Bool)

(assert (=> d!936294 m!3670019))

(declare-fun m!3670021 () Bool)

(assert (=> d!936294 m!3670021))

(declare-fun m!3670023 () Bool)

(assert (=> d!936294 m!3670023))

(declare-fun m!3670025 () Bool)

(assert (=> b!3328962 m!3670025))

(declare-fun m!3670027 () Bool)

(assert (=> bm!241377 m!3670027))

(assert (=> b!3328960 m!3670003))

(assert (=> b!3328960 m!3670009))

(assert (=> b!3328960 m!3670009))

(assert (=> b!3328960 m!3670011))

(assert (=> b!3328965 m!3670003))

(declare-fun m!3670029 () Bool)

(assert (=> b!3328965 m!3670029))

(assert (=> b!3328965 m!3670029))

(declare-fun m!3670031 () Bool)

(assert (=> b!3328965 m!3670031))

(assert (=> b!3328736 d!936294))

(declare-fun d!936306 () Bool)

(assert (=> d!936306 (= (isEmpty!20840 (getSuffix!1428 lt!1131274 lt!1131274)) ((_ is Nil!36677) (getSuffix!1428 lt!1131274 lt!1131274)))))

(assert (=> b!3328736 d!936306))

(declare-fun d!936308 () Bool)

(assert (=> d!936308 (= (isDefined!5660 (maxPrefix!2523 thiss!18206 rules!2135 lt!1131274)) (not (isEmpty!20847 (maxPrefix!2523 thiss!18206 rules!2135 lt!1131274))))))

(declare-fun bs!551158 () Bool)

(assert (= bs!551158 d!936308))

(assert (=> bs!551158 m!3669649))

(declare-fun m!3670033 () Bool)

(assert (=> bs!551158 m!3670033))

(assert (=> b!3328736 d!936308))

(declare-fun d!936310 () Bool)

(assert (=> d!936310 (= (inv!49682 (tag!5886 (rule!7856 separatorToken!241))) (= (mod (str.len (value!172478 (tag!5886 (rule!7856 separatorToken!241)))) 2) 0))))

(assert (=> b!3328725 d!936310))

(declare-fun d!936312 () Bool)

(declare-fun res!1350216 () Bool)

(declare-fun e!2070218 () Bool)

(assert (=> d!936312 (=> (not res!1350216) (not e!2070218))))

(assert (=> d!936312 (= res!1350216 (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))))))

(assert (=> d!936312 (= (inv!49685 (transformation!5334 (rule!7856 separatorToken!241))) e!2070218)))

(declare-fun b!3328967 () Bool)

(assert (=> b!3328967 (= e!2070218 (equivClasses!2114 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))))))

(assert (= (and d!936312 res!1350216) b!3328967))

(declare-fun m!3670035 () Bool)

(assert (=> d!936312 m!3670035))

(declare-fun m!3670037 () Bool)

(assert (=> b!3328967 m!3670037))

(assert (=> b!3328725 d!936312))

(declare-fun d!936314 () Bool)

(assert (=> d!936314 (= (list!13209 lt!1131268) (list!13213 (c!565317 lt!1131268)))))

(declare-fun bs!551159 () Bool)

(assert (= bs!551159 d!936314))

(declare-fun m!3670039 () Bool)

(assert (=> bs!551159 m!3670039))

(assert (=> b!3328746 d!936314))

(declare-fun d!936316 () Bool)

(declare-fun lt!1131398 () BalanceConc!21700)

(assert (=> d!936316 (= (list!13209 lt!1131398) (printList!1471 thiss!18206 (list!13212 lt!1131272)))))

(assert (=> d!936316 (= lt!1131398 (printTailRec!1418 thiss!18206 lt!1131272 0 (BalanceConc!21701 Empty!11043)))))

(assert (=> d!936316 (= (print!1988 thiss!18206 lt!1131272) lt!1131398)))

(declare-fun bs!551160 () Bool)

(assert (= bs!551160 d!936316))

(declare-fun m!3670041 () Bool)

(assert (=> bs!551160 m!3670041))

(declare-fun m!3670043 () Bool)

(assert (=> bs!551160 m!3670043))

(assert (=> bs!551160 m!3670043))

(declare-fun m!3670045 () Bool)

(assert (=> bs!551160 m!3670045))

(assert (=> bs!551160 m!3669623))

(assert (=> b!3328746 d!936316))

(declare-fun d!936318 () Bool)

(declare-fun lt!1131418 () BalanceConc!21700)

(declare-fun printListTailRec!620 (LexerInterface!4923 List!36803 List!36801) List!36801)

(declare-fun dropList!1137 (BalanceConc!21702 Int) List!36803)

(assert (=> d!936318 (= (list!13209 lt!1131418) (printListTailRec!620 thiss!18206 (dropList!1137 lt!1131272 0) (list!13209 (BalanceConc!21701 Empty!11043))))))

(declare-fun e!2070224 () BalanceConc!21700)

(assert (=> d!936318 (= lt!1131418 e!2070224)))

(declare-fun c!565351 () Bool)

(assert (=> d!936318 (= c!565351 (>= 0 (size!27729 lt!1131272)))))

(declare-fun e!2070223 () Bool)

(assert (=> d!936318 e!2070223))

(declare-fun res!1350219 () Bool)

(assert (=> d!936318 (=> (not res!1350219) (not e!2070223))))

(assert (=> d!936318 (= res!1350219 (>= 0 0))))

(assert (=> d!936318 (= (printTailRec!1418 thiss!18206 lt!1131272 0 (BalanceConc!21701 Empty!11043)) lt!1131418)))

(declare-fun b!3328974 () Bool)

(assert (=> b!3328974 (= e!2070223 (<= 0 (size!27729 lt!1131272)))))

(declare-fun b!3328975 () Bool)

(assert (=> b!3328975 (= e!2070224 (BalanceConc!21701 Empty!11043))))

(declare-fun b!3328976 () Bool)

(declare-fun ++!8919 (BalanceConc!21700 BalanceConc!21700) BalanceConc!21700)

(assert (=> b!3328976 (= e!2070224 (printTailRec!1418 thiss!18206 lt!1131272 (+ 0 1) (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (apply!8470 lt!1131272 0)))))))

(declare-fun lt!1131416 () List!36803)

(assert (=> b!3328976 (= lt!1131416 (list!13212 lt!1131272))))

(declare-fun lt!1131413 () Unit!51688)

(declare-fun lemmaDropApply!1095 (List!36803 Int) Unit!51688)

(assert (=> b!3328976 (= lt!1131413 (lemmaDropApply!1095 lt!1131416 0))))

(declare-fun head!7161 (List!36803) Token!10034)

(declare-fun drop!1929 (List!36803 Int) List!36803)

(declare-fun apply!8473 (List!36803 Int) Token!10034)

(assert (=> b!3328976 (= (head!7161 (drop!1929 lt!1131416 0)) (apply!8473 lt!1131416 0))))

(declare-fun lt!1131415 () Unit!51688)

(assert (=> b!3328976 (= lt!1131415 lt!1131413)))

(declare-fun lt!1131419 () List!36803)

(assert (=> b!3328976 (= lt!1131419 (list!13212 lt!1131272))))

(declare-fun lt!1131417 () Unit!51688)

(declare-fun lemmaDropTail!979 (List!36803 Int) Unit!51688)

(assert (=> b!3328976 (= lt!1131417 (lemmaDropTail!979 lt!1131419 0))))

(declare-fun tail!5301 (List!36803) List!36803)

(assert (=> b!3328976 (= (tail!5301 (drop!1929 lt!1131419 0)) (drop!1929 lt!1131419 (+ 0 1)))))

(declare-fun lt!1131414 () Unit!51688)

(assert (=> b!3328976 (= lt!1131414 lt!1131417)))

(assert (= (and d!936318 res!1350219) b!3328974))

(assert (= (and d!936318 c!565351) b!3328975))

(assert (= (and d!936318 (not c!565351)) b!3328976))

(declare-fun m!3670047 () Bool)

(assert (=> d!936318 m!3670047))

(declare-fun m!3670049 () Bool)

(assert (=> d!936318 m!3670049))

(assert (=> d!936318 m!3670049))

(assert (=> d!936318 m!3670047))

(declare-fun m!3670051 () Bool)

(assert (=> d!936318 m!3670051))

(declare-fun m!3670053 () Bool)

(assert (=> d!936318 m!3670053))

(declare-fun m!3670055 () Bool)

(assert (=> d!936318 m!3670055))

(assert (=> b!3328974 m!3670055))

(declare-fun m!3670057 () Bool)

(assert (=> b!3328976 m!3670057))

(declare-fun m!3670059 () Bool)

(assert (=> b!3328976 m!3670059))

(declare-fun m!3670061 () Bool)

(assert (=> b!3328976 m!3670061))

(declare-fun m!3670063 () Bool)

(assert (=> b!3328976 m!3670063))

(declare-fun m!3670065 () Bool)

(assert (=> b!3328976 m!3670065))

(declare-fun m!3670067 () Bool)

(assert (=> b!3328976 m!3670067))

(assert (=> b!3328976 m!3670065))

(declare-fun m!3670069 () Bool)

(assert (=> b!3328976 m!3670069))

(assert (=> b!3328976 m!3670061))

(declare-fun m!3670071 () Bool)

(assert (=> b!3328976 m!3670071))

(declare-fun m!3670073 () Bool)

(assert (=> b!3328976 m!3670073))

(declare-fun m!3670075 () Bool)

(assert (=> b!3328976 m!3670075))

(declare-fun m!3670077 () Bool)

(assert (=> b!3328976 m!3670077))

(declare-fun m!3670079 () Bool)

(assert (=> b!3328976 m!3670079))

(assert (=> b!3328976 m!3670057))

(assert (=> b!3328976 m!3670073))

(assert (=> b!3328976 m!3670079))

(assert (=> b!3328976 m!3670043))

(assert (=> b!3328746 d!936318))

(declare-fun d!936320 () Bool)

(declare-fun e!2070227 () Bool)

(assert (=> d!936320 e!2070227))

(declare-fun res!1350222 () Bool)

(assert (=> d!936320 (=> (not res!1350222) (not e!2070227))))

(declare-fun lt!1131422 () BalanceConc!21702)

(assert (=> d!936320 (= res!1350222 (= (list!13212 lt!1131422) (Cons!36679 (h!42099 tokens!494) Nil!36679)))))

(declare-fun singleton!1052 (Token!10034) BalanceConc!21702)

(assert (=> d!936320 (= lt!1131422 (singleton!1052 (h!42099 tokens!494)))))

(assert (=> d!936320 (= (singletonSeq!2430 (h!42099 tokens!494)) lt!1131422)))

(declare-fun b!3328979 () Bool)

(declare-fun isBalanced!3315 (Conc!11044) Bool)

(assert (=> b!3328979 (= e!2070227 (isBalanced!3315 (c!565318 lt!1131422)))))

(assert (= (and d!936320 res!1350222) b!3328979))

(declare-fun m!3670081 () Bool)

(assert (=> d!936320 m!3670081))

(declare-fun m!3670083 () Bool)

(assert (=> d!936320 m!3670083))

(declare-fun m!3670085 () Bool)

(assert (=> b!3328979 m!3670085))

(assert (=> b!3328746 d!936320))

(declare-fun d!936322 () Bool)

(declare-fun c!565354 () Bool)

(assert (=> d!936322 (= c!565354 ((_ is Cons!36679) (Cons!36679 (h!42099 tokens!494) Nil!36679)))))

(declare-fun e!2070230 () List!36801)

(assert (=> d!936322 (= (printList!1471 thiss!18206 (Cons!36679 (h!42099 tokens!494) Nil!36679)) e!2070230)))

(declare-fun b!3328984 () Bool)

(assert (=> b!3328984 (= e!2070230 (++!8917 (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))) (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))))

(declare-fun b!3328985 () Bool)

(assert (=> b!3328985 (= e!2070230 Nil!36677)))

(assert (= (and d!936322 c!565354) b!3328984))

(assert (= (and d!936322 (not c!565354)) b!3328985))

(declare-fun m!3670087 () Bool)

(assert (=> b!3328984 m!3670087))

(assert (=> b!3328984 m!3670087))

(declare-fun m!3670089 () Bool)

(assert (=> b!3328984 m!3670089))

(declare-fun m!3670091 () Bool)

(assert (=> b!3328984 m!3670091))

(assert (=> b!3328984 m!3670089))

(assert (=> b!3328984 m!3670091))

(declare-fun m!3670093 () Bool)

(assert (=> b!3328984 m!3670093))

(assert (=> b!3328746 d!936322))

(declare-fun b!3328996 () Bool)

(declare-fun e!2070238 () Bool)

(declare-fun inv!17 (TokenValue!5564) Bool)

(assert (=> b!3328996 (= e!2070238 (inv!17 (value!172479 (h!42099 tokens!494))))))

(declare-fun b!3328997 () Bool)

(declare-fun e!2070239 () Bool)

(declare-fun inv!15 (TokenValue!5564) Bool)

(assert (=> b!3328997 (= e!2070239 (inv!15 (value!172479 (h!42099 tokens!494))))))

(declare-fun b!3328999 () Bool)

(declare-fun res!1350225 () Bool)

(assert (=> b!3328999 (=> res!1350225 e!2070239)))

(assert (=> b!3328999 (= res!1350225 (not ((_ is IntegerValue!16694) (value!172479 (h!42099 tokens!494)))))))

(assert (=> b!3328999 (= e!2070238 e!2070239)))

(declare-fun b!3329000 () Bool)

(declare-fun e!2070237 () Bool)

(assert (=> b!3329000 (= e!2070237 e!2070238)))

(declare-fun c!565360 () Bool)

(assert (=> b!3329000 (= c!565360 ((_ is IntegerValue!16693) (value!172479 (h!42099 tokens!494))))))

(declare-fun d!936324 () Bool)

(declare-fun c!565359 () Bool)

(assert (=> d!936324 (= c!565359 ((_ is IntegerValue!16692) (value!172479 (h!42099 tokens!494))))))

(assert (=> d!936324 (= (inv!21 (value!172479 (h!42099 tokens!494))) e!2070237)))

(declare-fun b!3328998 () Bool)

(declare-fun inv!16 (TokenValue!5564) Bool)

(assert (=> b!3328998 (= e!2070237 (inv!16 (value!172479 (h!42099 tokens!494))))))

(assert (= (and d!936324 c!565359) b!3328998))

(assert (= (and d!936324 (not c!565359)) b!3329000))

(assert (= (and b!3329000 c!565360) b!3328996))

(assert (= (and b!3329000 (not c!565360)) b!3328999))

(assert (= (and b!3328999 (not res!1350225)) b!3328997))

(declare-fun m!3670095 () Bool)

(assert (=> b!3328996 m!3670095))

(declare-fun m!3670097 () Bool)

(assert (=> b!3328997 m!3670097))

(declare-fun m!3670099 () Bool)

(assert (=> b!3328998 m!3670099))

(assert (=> b!3328735 d!936324))

(declare-fun d!936326 () Bool)

(assert (=> d!936326 (= (isEmpty!20839 rules!2135) ((_ is Nil!36678) rules!2135))))

(assert (=> b!3328724 d!936326))

(declare-fun lt!1131425 () Bool)

(declare-fun d!936328 () Bool)

(declare-fun isEmpty!20848 (List!36803) Bool)

(assert (=> d!936328 (= lt!1131425 (isEmpty!20848 (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))))))

(declare-fun isEmpty!20849 (Conc!11044) Bool)

(assert (=> d!936328 (= lt!1131425 (isEmpty!20849 (c!565318 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))))))

(assert (=> d!936328 (= (isEmpty!20841 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274)))) lt!1131425)))

(declare-fun bs!551161 () Bool)

(assert (= bs!551161 d!936328))

(declare-fun m!3670101 () Bool)

(assert (=> bs!551161 m!3670101))

(assert (=> bs!551161 m!3670101))

(declare-fun m!3670103 () Bool)

(assert (=> bs!551161 m!3670103))

(declare-fun m!3670105 () Bool)

(assert (=> bs!551161 m!3670105))

(assert (=> b!3328745 d!936328))

(declare-fun b!3329101 () Bool)

(declare-fun e!2070314 () Bool)

(declare-fun e!2070313 () Bool)

(assert (=> b!3329101 (= e!2070314 e!2070313)))

(declare-fun res!1350260 () Bool)

(declare-fun lt!1131434 () tuple2!36182)

(declare-fun size!27731 (BalanceConc!21700) Int)

(assert (=> b!3329101 (= res!1350260 (< (size!27731 (_2!21225 lt!1131434)) (size!27731 (seqFromList!3722 lt!1131274))))))

(assert (=> b!3329101 (=> (not res!1350260) (not e!2070313))))

(declare-fun b!3329102 () Bool)

(assert (=> b!3329102 (= e!2070313 (not (isEmpty!20841 (_1!21225 lt!1131434))))))

(declare-fun b!3329103 () Bool)

(declare-fun e!2070315 () Bool)

(declare-datatypes ((tuple2!36186 0))(
  ( (tuple2!36187 (_1!21227 List!36803) (_2!21227 List!36801)) )
))
(declare-fun lexList!1378 (LexerInterface!4923 List!36802 List!36801) tuple2!36186)

(assert (=> b!3329103 (= e!2070315 (= (list!13209 (_2!21225 lt!1131434)) (_2!21227 (lexList!1378 thiss!18206 rules!2135 (list!13209 (seqFromList!3722 lt!1131274))))))))

(declare-fun d!936330 () Bool)

(assert (=> d!936330 e!2070315))

(declare-fun res!1350259 () Bool)

(assert (=> d!936330 (=> (not res!1350259) (not e!2070315))))

(assert (=> d!936330 (= res!1350259 e!2070314)))

(declare-fun c!565368 () Bool)

(assert (=> d!936330 (= c!565368 (> (size!27729 (_1!21225 lt!1131434)) 0))))

(declare-fun lexTailRecV2!988 (LexerInterface!4923 List!36802 BalanceConc!21700 BalanceConc!21700 BalanceConc!21700 BalanceConc!21702) tuple2!36182)

(assert (=> d!936330 (= lt!1131434 (lexTailRecV2!988 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274) (BalanceConc!21701 Empty!11043) (seqFromList!3722 lt!1131274) (BalanceConc!21703 Empty!11044)))))

(assert (=> d!936330 (= (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274)) lt!1131434)))

(declare-fun b!3329104 () Bool)

(assert (=> b!3329104 (= e!2070314 (= (_2!21225 lt!1131434) (seqFromList!3722 lt!1131274)))))

(declare-fun b!3329105 () Bool)

(declare-fun res!1350261 () Bool)

(assert (=> b!3329105 (=> (not res!1350261) (not e!2070315))))

(assert (=> b!3329105 (= res!1350261 (= (list!13212 (_1!21225 lt!1131434)) (_1!21227 (lexList!1378 thiss!18206 rules!2135 (list!13209 (seqFromList!3722 lt!1131274))))))))

(assert (= (and d!936330 c!565368) b!3329101))

(assert (= (and d!936330 (not c!565368)) b!3329104))

(assert (= (and b!3329101 res!1350260) b!3329102))

(assert (= (and d!936330 res!1350259) b!3329105))

(assert (= (and b!3329105 res!1350261) b!3329103))

(declare-fun m!3670163 () Bool)

(assert (=> d!936330 m!3670163))

(assert (=> d!936330 m!3669661))

(assert (=> d!936330 m!3669661))

(declare-fun m!3670165 () Bool)

(assert (=> d!936330 m!3670165))

(declare-fun m!3670167 () Bool)

(assert (=> b!3329102 m!3670167))

(declare-fun m!3670169 () Bool)

(assert (=> b!3329103 m!3670169))

(assert (=> b!3329103 m!3669661))

(declare-fun m!3670171 () Bool)

(assert (=> b!3329103 m!3670171))

(assert (=> b!3329103 m!3670171))

(declare-fun m!3670173 () Bool)

(assert (=> b!3329103 m!3670173))

(declare-fun m!3670175 () Bool)

(assert (=> b!3329105 m!3670175))

(assert (=> b!3329105 m!3669661))

(assert (=> b!3329105 m!3670171))

(assert (=> b!3329105 m!3670171))

(assert (=> b!3329105 m!3670173))

(declare-fun m!3670177 () Bool)

(assert (=> b!3329101 m!3670177))

(assert (=> b!3329101 m!3669661))

(declare-fun m!3670179 () Bool)

(assert (=> b!3329101 m!3670179))

(assert (=> b!3328745 d!936330))

(declare-fun d!936346 () Bool)

(declare-fun fromListB!1647 (List!36801) BalanceConc!21700)

(assert (=> d!936346 (= (seqFromList!3722 lt!1131274) (fromListB!1647 lt!1131274))))

(declare-fun bs!551164 () Bool)

(assert (= bs!551164 d!936346))

(declare-fun m!3670181 () Bool)

(assert (=> bs!551164 m!3670181))

(assert (=> b!3328745 d!936346))

(declare-fun d!936348 () Bool)

(declare-fun res!1350264 () Bool)

(declare-fun e!2070318 () Bool)

(assert (=> d!936348 (=> (not res!1350264) (not e!2070318))))

(declare-fun rulesValid!1975 (LexerInterface!4923 List!36802) Bool)

(assert (=> d!936348 (= res!1350264 (rulesValid!1975 thiss!18206 rules!2135))))

(assert (=> d!936348 (= (rulesInvariant!4320 thiss!18206 rules!2135) e!2070318)))

(declare-fun b!3329108 () Bool)

(declare-datatypes ((List!36805 0))(
  ( (Nil!36681) (Cons!36681 (h!42101 String!41154) (t!256988 List!36805)) )
))
(declare-fun noDuplicateTag!1971 (LexerInterface!4923 List!36802 List!36805) Bool)

(assert (=> b!3329108 (= e!2070318 (noDuplicateTag!1971 thiss!18206 rules!2135 Nil!36681))))

(assert (= (and d!936348 res!1350264) b!3329108))

(declare-fun m!3670183 () Bool)

(assert (=> d!936348 m!3670183))

(declare-fun m!3670185 () Bool)

(assert (=> b!3329108 m!3670185))

(assert (=> b!3328734 d!936348))

(declare-fun b!3329109 () Bool)

(declare-fun e!2070320 () Bool)

(assert (=> b!3329109 (= e!2070320 (inv!17 (value!172479 separatorToken!241)))))

(declare-fun b!3329110 () Bool)

(declare-fun e!2070321 () Bool)

(assert (=> b!3329110 (= e!2070321 (inv!15 (value!172479 separatorToken!241)))))

(declare-fun b!3329112 () Bool)

(declare-fun res!1350265 () Bool)

(assert (=> b!3329112 (=> res!1350265 e!2070321)))

(assert (=> b!3329112 (= res!1350265 (not ((_ is IntegerValue!16694) (value!172479 separatorToken!241))))))

(assert (=> b!3329112 (= e!2070320 e!2070321)))

(declare-fun b!3329113 () Bool)

(declare-fun e!2070319 () Bool)

(assert (=> b!3329113 (= e!2070319 e!2070320)))

(declare-fun c!565370 () Bool)

(assert (=> b!3329113 (= c!565370 ((_ is IntegerValue!16693) (value!172479 separatorToken!241)))))

(declare-fun d!936350 () Bool)

(declare-fun c!565369 () Bool)

(assert (=> d!936350 (= c!565369 ((_ is IntegerValue!16692) (value!172479 separatorToken!241)))))

(assert (=> d!936350 (= (inv!21 (value!172479 separatorToken!241)) e!2070319)))

(declare-fun b!3329111 () Bool)

(assert (=> b!3329111 (= e!2070319 (inv!16 (value!172479 separatorToken!241)))))

(assert (= (and d!936350 c!565369) b!3329111))

(assert (= (and d!936350 (not c!565369)) b!3329113))

(assert (= (and b!3329113 c!565370) b!3329109))

(assert (= (and b!3329113 (not c!565370)) b!3329112))

(assert (= (and b!3329112 (not res!1350265)) b!3329110))

(declare-fun m!3670187 () Bool)

(assert (=> b!3329109 m!3670187))

(declare-fun m!3670189 () Bool)

(assert (=> b!3329110 m!3670189))

(declare-fun m!3670191 () Bool)

(assert (=> b!3329111 m!3670191))

(assert (=> b!3328723 d!936350))

(declare-fun d!936352 () Bool)

(declare-fun res!1350270 () Bool)

(declare-fun e!2070326 () Bool)

(assert (=> d!936352 (=> res!1350270 e!2070326)))

(assert (=> d!936352 (= res!1350270 ((_ is Nil!36679) tokens!494))))

(assert (=> d!936352 (= (forall!7657 tokens!494 lambda!119767) e!2070326)))

(declare-fun b!3329118 () Bool)

(declare-fun e!2070327 () Bool)

(assert (=> b!3329118 (= e!2070326 e!2070327)))

(declare-fun res!1350271 () Bool)

(assert (=> b!3329118 (=> (not res!1350271) (not e!2070327))))

(assert (=> b!3329118 (= res!1350271 (dynLambda!15133 lambda!119767 (h!42099 tokens!494)))))

(declare-fun b!3329119 () Bool)

(assert (=> b!3329119 (= e!2070327 (forall!7657 (t!256932 tokens!494) lambda!119767))))

(assert (= (and d!936352 (not res!1350270)) b!3329118))

(assert (= (and b!3329118 res!1350271) b!3329119))

(declare-fun b_lambda!94019 () Bool)

(assert (=> (not b_lambda!94019) (not b!3329118)))

(assert (=> b!3329118 m!3669895))

(declare-fun m!3670193 () Bool)

(assert (=> b!3329119 m!3670193))

(assert (=> b!3328738 d!936352))

(declare-fun d!936354 () Bool)

(declare-fun res!1350272 () Bool)

(declare-fun e!2070328 () Bool)

(assert (=> d!936354 (=> (not res!1350272) (not e!2070328))))

(assert (=> d!936354 (= res!1350272 (not (isEmpty!20840 (originalCharacters!6048 (h!42099 tokens!494)))))))

(assert (=> d!936354 (= (inv!49686 (h!42099 tokens!494)) e!2070328)))

(declare-fun b!3329120 () Bool)

(declare-fun res!1350273 () Bool)

(assert (=> b!3329120 (=> (not res!1350273) (not e!2070328))))

(assert (=> b!3329120 (= res!1350273 (= (originalCharacters!6048 (h!42099 tokens!494)) (list!13209 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))))))

(declare-fun b!3329121 () Bool)

(assert (=> b!3329121 (= e!2070328 (= (size!27725 (h!42099 tokens!494)) (size!27728 (originalCharacters!6048 (h!42099 tokens!494)))))))

(assert (= (and d!936354 res!1350272) b!3329120))

(assert (= (and b!3329120 res!1350273) b!3329121))

(declare-fun b_lambda!94021 () Bool)

(assert (=> (not b_lambda!94021) (not b!3329120)))

(assert (=> b!3329120 t!256963))

(declare-fun b_and!229553 () Bool)

(assert (= b_and!229533 (and (=> t!256963 result!217462) b_and!229553)))

(assert (=> b!3329120 t!256965))

(declare-fun b_and!229555 () Bool)

(assert (= b_and!229535 (and (=> t!256965 result!217464) b_and!229555)))

(assert (=> b!3329120 t!256967))

(declare-fun b_and!229557 () Bool)

(assert (= b_and!229537 (and (=> t!256967 result!217466) b_and!229557)))

(declare-fun m!3670195 () Bool)

(assert (=> d!936354 m!3670195))

(assert (=> b!3329120 m!3669909))

(assert (=> b!3329120 m!3669909))

(declare-fun m!3670197 () Bool)

(assert (=> b!3329120 m!3670197))

(declare-fun m!3670199 () Bool)

(assert (=> b!3329121 m!3670199))

(assert (=> b!3328727 d!936354))

(declare-fun d!936356 () Bool)

(declare-fun lt!1131435 () Bool)

(declare-fun e!2070329 () Bool)

(assert (=> d!936356 (= lt!1131435 e!2070329)))

(declare-fun res!1350275 () Bool)

(assert (=> d!936356 (=> (not res!1350275) (not e!2070329))))

(assert (=> d!936356 (= res!1350275 (= (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241))))) (list!13212 (singletonSeq!2430 separatorToken!241))))))

(declare-fun e!2070330 () Bool)

(assert (=> d!936356 (= lt!1131435 e!2070330)))

(declare-fun res!1350274 () Bool)

(assert (=> d!936356 (=> (not res!1350274) (not e!2070330))))

(declare-fun lt!1131436 () tuple2!36182)

(assert (=> d!936356 (= res!1350274 (= (size!27729 (_1!21225 lt!1131436)) 1))))

(assert (=> d!936356 (= lt!1131436 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241))))))

(assert (=> d!936356 (not (isEmpty!20839 rules!2135))))

(assert (=> d!936356 (= (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 separatorToken!241) lt!1131435)))

(declare-fun b!3329122 () Bool)

(declare-fun res!1350276 () Bool)

(assert (=> b!3329122 (=> (not res!1350276) (not e!2070330))))

(assert (=> b!3329122 (= res!1350276 (= (apply!8470 (_1!21225 lt!1131436) 0) separatorToken!241))))

(declare-fun b!3329123 () Bool)

(assert (=> b!3329123 (= e!2070330 (isEmpty!20843 (_2!21225 lt!1131436)))))

(declare-fun b!3329124 () Bool)

(assert (=> b!3329124 (= e!2070329 (isEmpty!20843 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241))))))))

(assert (= (and d!936356 res!1350274) b!3329122))

(assert (= (and b!3329122 res!1350276) b!3329123))

(assert (= (and d!936356 res!1350275) b!3329124))

(declare-fun m!3670201 () Bool)

(assert (=> d!936356 m!3670201))

(declare-fun m!3670203 () Bool)

(assert (=> d!936356 m!3670203))

(declare-fun m!3670205 () Bool)

(assert (=> d!936356 m!3670205))

(declare-fun m!3670207 () Bool)

(assert (=> d!936356 m!3670207))

(assert (=> d!936356 m!3670203))

(declare-fun m!3670209 () Bool)

(assert (=> d!936356 m!3670209))

(assert (=> d!936356 m!3670207))

(assert (=> d!936356 m!3670207))

(declare-fun m!3670211 () Bool)

(assert (=> d!936356 m!3670211))

(assert (=> d!936356 m!3669615))

(declare-fun m!3670213 () Bool)

(assert (=> b!3329122 m!3670213))

(declare-fun m!3670215 () Bool)

(assert (=> b!3329123 m!3670215))

(assert (=> b!3329124 m!3670207))

(assert (=> b!3329124 m!3670207))

(assert (=> b!3329124 m!3670203))

(assert (=> b!3329124 m!3670203))

(assert (=> b!3329124 m!3670205))

(declare-fun m!3670217 () Bool)

(assert (=> b!3329124 m!3670217))

(assert (=> b!3328737 d!936356))

(declare-fun d!936358 () Bool)

(assert (=> d!936358 (= (inv!49682 (tag!5886 (rule!7856 (h!42099 tokens!494)))) (= (mod (str.len (value!172478 (tag!5886 (rule!7856 (h!42099 tokens!494))))) 2) 0))))

(assert (=> b!3328726 d!936358))

(declare-fun d!936360 () Bool)

(declare-fun res!1350277 () Bool)

(declare-fun e!2070331 () Bool)

(assert (=> d!936360 (=> (not res!1350277) (not e!2070331))))

(assert (=> d!936360 (= res!1350277 (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494))))))))

(assert (=> d!936360 (= (inv!49685 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) e!2070331)))

(declare-fun b!3329125 () Bool)

(assert (=> b!3329125 (= e!2070331 (equivClasses!2114 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494))))))))

(assert (= (and d!936360 res!1350277) b!3329125))

(declare-fun m!3670219 () Bool)

(assert (=> d!936360 m!3670219))

(declare-fun m!3670221 () Bool)

(assert (=> b!3329125 m!3670221))

(assert (=> b!3328726 d!936360))

(declare-fun e!2070334 () Bool)

(assert (=> b!3328725 (= tp!1040427 e!2070334)))

(declare-fun b!3329138 () Bool)

(declare-fun tp!1040508 () Bool)

(assert (=> b!3329138 (= e!2070334 tp!1040508)))

(declare-fun b!3329139 () Bool)

(declare-fun tp!1040507 () Bool)

(declare-fun tp!1040509 () Bool)

(assert (=> b!3329139 (= e!2070334 (and tp!1040507 tp!1040509))))

(declare-fun b!3329136 () Bool)

(declare-fun tp_is_empty!17421 () Bool)

(assert (=> b!3329136 (= e!2070334 tp_is_empty!17421)))

(declare-fun b!3329137 () Bool)

(declare-fun tp!1040506 () Bool)

(declare-fun tp!1040505 () Bool)

(assert (=> b!3329137 (= e!2070334 (and tp!1040506 tp!1040505))))

(assert (= (and b!3328725 ((_ is ElementMatch!10093) (regex!5334 (rule!7856 separatorToken!241)))) b!3329136))

(assert (= (and b!3328725 ((_ is Concat!15657) (regex!5334 (rule!7856 separatorToken!241)))) b!3329137))

(assert (= (and b!3328725 ((_ is Star!10093) (regex!5334 (rule!7856 separatorToken!241)))) b!3329138))

(assert (= (and b!3328725 ((_ is Union!10093) (regex!5334 (rule!7856 separatorToken!241)))) b!3329139))

(declare-fun b!3329144 () Bool)

(declare-fun e!2070337 () Bool)

(declare-fun tp!1040512 () Bool)

(assert (=> b!3329144 (= e!2070337 (and tp_is_empty!17421 tp!1040512))))

(assert (=> b!3328735 (= tp!1040418 e!2070337)))

(assert (= (and b!3328735 ((_ is Cons!36677) (originalCharacters!6048 (h!42099 tokens!494)))) b!3329144))

(declare-fun b!3329155 () Bool)

(declare-fun b_free!87669 () Bool)

(declare-fun b_next!88373 () Bool)

(assert (=> b!3329155 (= b_free!87669 (not b_next!88373))))

(declare-fun tp!1040521 () Bool)

(declare-fun b_and!229559 () Bool)

(assert (=> b!3329155 (= tp!1040521 b_and!229559)))

(declare-fun b_free!87671 () Bool)

(declare-fun b_next!88375 () Bool)

(assert (=> b!3329155 (= b_free!87671 (not b_next!88375))))

(declare-fun tb!174371 () Bool)

(declare-fun t!256980 () Bool)

(assert (=> (and b!3329155 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) t!256980) tb!174371))

(declare-fun result!217490 () Bool)

(assert (= result!217490 result!217440))

(assert (=> b!3328751 t!256980))

(declare-fun tb!174373 () Bool)

(declare-fun t!256982 () Bool)

(assert (=> (and b!3329155 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) t!256982) tb!174373))

(declare-fun result!217492 () Bool)

(assert (= result!217492 result!217462))

(assert (=> d!936270 t!256982))

(assert (=> d!936276 t!256980))

(assert (=> b!3329120 t!256982))

(declare-fun tp!1040524 () Bool)

(declare-fun b_and!229561 () Bool)

(assert (=> b!3329155 (= tp!1040524 (and (=> t!256980 result!217490) (=> t!256982 result!217492) b_and!229561))))

(declare-fun e!2070346 () Bool)

(assert (=> b!3329155 (= e!2070346 (and tp!1040521 tp!1040524))))

(declare-fun e!2070348 () Bool)

(declare-fun b!3329154 () Bool)

(declare-fun tp!1040523 () Bool)

(assert (=> b!3329154 (= e!2070348 (and tp!1040523 (inv!49682 (tag!5886 (h!42098 (t!256931 rules!2135)))) (inv!49685 (transformation!5334 (h!42098 (t!256931 rules!2135)))) e!2070346))))

(declare-fun b!3329153 () Bool)

(declare-fun e!2070349 () Bool)

(declare-fun tp!1040522 () Bool)

(assert (=> b!3329153 (= e!2070349 (and e!2070348 tp!1040522))))

(assert (=> b!3328740 (= tp!1040419 e!2070349)))

(assert (= b!3329154 b!3329155))

(assert (= b!3329153 b!3329154))

(assert (= (and b!3328740 ((_ is Cons!36678) (t!256931 rules!2135))) b!3329153))

(declare-fun m!3670223 () Bool)

(assert (=> b!3329154 m!3670223))

(declare-fun m!3670225 () Bool)

(assert (=> b!3329154 m!3670225))

(declare-fun b!3329156 () Bool)

(declare-fun e!2070350 () Bool)

(declare-fun tp!1040525 () Bool)

(assert (=> b!3329156 (= e!2070350 (and tp_is_empty!17421 tp!1040525))))

(assert (=> b!3328723 (= tp!1040428 e!2070350)))

(assert (= (and b!3328723 ((_ is Cons!36677) (originalCharacters!6048 separatorToken!241))) b!3329156))

(declare-fun e!2070351 () Bool)

(assert (=> b!3328733 (= tp!1040429 e!2070351)))

(declare-fun b!3329159 () Bool)

(declare-fun tp!1040529 () Bool)

(assert (=> b!3329159 (= e!2070351 tp!1040529)))

(declare-fun b!3329160 () Bool)

(declare-fun tp!1040528 () Bool)

(declare-fun tp!1040530 () Bool)

(assert (=> b!3329160 (= e!2070351 (and tp!1040528 tp!1040530))))

(declare-fun b!3329157 () Bool)

(assert (=> b!3329157 (= e!2070351 tp_is_empty!17421)))

(declare-fun b!3329158 () Bool)

(declare-fun tp!1040527 () Bool)

(declare-fun tp!1040526 () Bool)

(assert (=> b!3329158 (= e!2070351 (and tp!1040527 tp!1040526))))

(assert (= (and b!3328733 ((_ is ElementMatch!10093) (regex!5334 (h!42098 rules!2135)))) b!3329157))

(assert (= (and b!3328733 ((_ is Concat!15657) (regex!5334 (h!42098 rules!2135)))) b!3329158))

(assert (= (and b!3328733 ((_ is Star!10093) (regex!5334 (h!42098 rules!2135)))) b!3329159))

(assert (= (and b!3328733 ((_ is Union!10093) (regex!5334 (h!42098 rules!2135)))) b!3329160))

(declare-fun b!3329174 () Bool)

(declare-fun b_free!87673 () Bool)

(declare-fun b_next!88377 () Bool)

(assert (=> b!3329174 (= b_free!87673 (not b_next!88377))))

(declare-fun tp!1040542 () Bool)

(declare-fun b_and!229563 () Bool)

(assert (=> b!3329174 (= tp!1040542 b_and!229563)))

(declare-fun b_free!87675 () Bool)

(declare-fun b_next!88379 () Bool)

(assert (=> b!3329174 (= b_free!87675 (not b_next!88379))))

(declare-fun tb!174375 () Bool)

(declare-fun t!256984 () Bool)

(assert (=> (and b!3329174 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) t!256984) tb!174375))

(declare-fun result!217496 () Bool)

(assert (= result!217496 result!217440))

(assert (=> b!3328751 t!256984))

(declare-fun t!256986 () Bool)

(declare-fun tb!174377 () Bool)

(assert (=> (and b!3329174 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) t!256986) tb!174377))

(declare-fun result!217498 () Bool)

(assert (= result!217498 result!217462))

(assert (=> d!936270 t!256986))

(assert (=> d!936276 t!256984))

(assert (=> b!3329120 t!256986))

(declare-fun b_and!229565 () Bool)

(declare-fun tp!1040544 () Bool)

(assert (=> b!3329174 (= tp!1040544 (and (=> t!256984 result!217496) (=> t!256986 result!217498) b_and!229565))))

(declare-fun e!2070365 () Bool)

(declare-fun tp!1040545 () Bool)

(declare-fun e!2070364 () Bool)

(declare-fun b!3329173 () Bool)

(assert (=> b!3329173 (= e!2070364 (and tp!1040545 (inv!49682 (tag!5886 (rule!7856 (h!42099 (t!256932 tokens!494))))) (inv!49685 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) e!2070365))))

(declare-fun tp!1040541 () Bool)

(declare-fun b!3329172 () Bool)

(declare-fun e!2070367 () Bool)

(assert (=> b!3329172 (= e!2070367 (and (inv!21 (value!172479 (h!42099 (t!256932 tokens!494)))) e!2070364 tp!1040541))))

(assert (=> b!3329174 (= e!2070365 (and tp!1040542 tp!1040544))))

(declare-fun e!2070366 () Bool)

(declare-fun tp!1040543 () Bool)

(declare-fun b!3329171 () Bool)

(assert (=> b!3329171 (= e!2070366 (and (inv!49686 (h!42099 (t!256932 tokens!494))) e!2070367 tp!1040543))))

(assert (=> b!3328727 (= tp!1040425 e!2070366)))

(assert (= b!3329173 b!3329174))

(assert (= b!3329172 b!3329173))

(assert (= b!3329171 b!3329172))

(assert (= (and b!3328727 ((_ is Cons!36679) (t!256932 tokens!494))) b!3329171))

(declare-fun m!3670227 () Bool)

(assert (=> b!3329173 m!3670227))

(declare-fun m!3670229 () Bool)

(assert (=> b!3329173 m!3670229))

(declare-fun m!3670231 () Bool)

(assert (=> b!3329172 m!3670231))

(declare-fun m!3670233 () Bool)

(assert (=> b!3329171 m!3670233))

(declare-fun e!2070370 () Bool)

(assert (=> b!3328726 (= tp!1040421 e!2070370)))

(declare-fun b!3329177 () Bool)

(declare-fun tp!1040549 () Bool)

(assert (=> b!3329177 (= e!2070370 tp!1040549)))

(declare-fun b!3329178 () Bool)

(declare-fun tp!1040548 () Bool)

(declare-fun tp!1040550 () Bool)

(assert (=> b!3329178 (= e!2070370 (and tp!1040548 tp!1040550))))

(declare-fun b!3329175 () Bool)

(assert (=> b!3329175 (= e!2070370 tp_is_empty!17421)))

(declare-fun b!3329176 () Bool)

(declare-fun tp!1040547 () Bool)

(declare-fun tp!1040546 () Bool)

(assert (=> b!3329176 (= e!2070370 (and tp!1040547 tp!1040546))))

(assert (= (and b!3328726 ((_ is ElementMatch!10093) (regex!5334 (rule!7856 (h!42099 tokens!494))))) b!3329175))

(assert (= (and b!3328726 ((_ is Concat!15657) (regex!5334 (rule!7856 (h!42099 tokens!494))))) b!3329176))

(assert (= (and b!3328726 ((_ is Star!10093) (regex!5334 (rule!7856 (h!42099 tokens!494))))) b!3329177))

(assert (= (and b!3328726 ((_ is Union!10093) (regex!5334 (rule!7856 (h!42099 tokens!494))))) b!3329178))

(declare-fun b_lambda!94023 () Bool)

(assert (= b_lambda!93987 (or (and b!3328728 b_free!87659 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) (and b!3328729 b_free!87651) (and b!3329155 b_free!87671 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) (and b!3329174 b_free!87675 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) (and b!3328722 b_free!87655 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) b_lambda!94023)))

(declare-fun b_lambda!94025 () Bool)

(assert (= b_lambda!94019 (or b!3328738 b_lambda!94025)))

(declare-fun bs!551165 () Bool)

(declare-fun d!936362 () Bool)

(assert (= bs!551165 (and d!936362 b!3328738)))

(assert (=> bs!551165 (= (dynLambda!15133 lambda!119767 (h!42099 tokens!494)) (not (isSeparator!5334 (rule!7856 (h!42099 tokens!494)))))))

(assert (=> b!3329118 d!936362))

(declare-fun b_lambda!94027 () Bool)

(assert (= b_lambda!93997 (or (and b!3329155 b_free!87671 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) (and b!3328728 b_free!87659) (and b!3329174 b_free!87675 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) (and b!3328729 b_free!87651 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) (and b!3328722 b_free!87655 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) b_lambda!94027)))

(declare-fun b_lambda!94029 () Bool)

(assert (= b_lambda!93995 (or b!3328738 b_lambda!94029)))

(assert (=> d!936254 d!936362))

(declare-fun b_lambda!94031 () Bool)

(assert (= b_lambda!93999 (or (and b!3328728 b_free!87659 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) (and b!3328729 b_free!87651) (and b!3329155 b_free!87671 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) (and b!3329174 b_free!87675 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) (and b!3328722 b_free!87655 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))))) b_lambda!94031)))

(declare-fun b_lambda!94033 () Bool)

(assert (= b_lambda!94021 (or (and b!3329155 b_free!87671 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) (and b!3328728 b_free!87659) (and b!3329174 b_free!87675 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) (and b!3328729 b_free!87651 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) (and b!3328722 b_free!87655 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))))) b_lambda!94033)))

(check-sat (not b!3329144) (not d!936356) (not b!3328967) (not b_next!88361) (not b_lambda!94025) (not d!936316) (not d!936204) (not b!3329103) (not b_next!88355) (not b!3328961) (not b!3329156) (not d!936276) (not b!3329124) (not b!3328884) (not d!936242) (not b!3329108) (not d!936354) (not b!3328816) (not b!3329137) (not b!3328959) (not b!3328966) (not b!3329119) (not b!3329139) b_and!229563 (not b_next!88359) (not b!3328962) (not b!3329120) b_and!229555 (not b!3329177) (not b!3328752) (not d!936252) (not b!3329154) (not b_next!88375) (not d!936360) (not b_lambda!94027) (not b!3329105) (not b!3328997) (not b!3328996) (not b_lambda!94023) (not b!3328817) (not b!3328826) (not b_next!88363) (not b!3329158) (not b!3329122) (not d!936330) (not b!3329102) (not d!936278) (not b_next!88357) (not b!3328852) (not b!3329138) (not b!3328885) (not d!936292) (not b_next!88379) (not b!3328757) (not d!936328) (not b!3329101) (not b!3329159) (not b!3328815) (not d!936246) (not b_lambda!94031) (not d!936202) (not b_lambda!94033) (not d!936294) (not b!3328960) (not b!3329111) (not d!936282) (not d!936290) (not tb!174339) (not b!3328958) (not b!3328906) (not b!3328825) b_and!229553 tp_is_empty!17421 (not b!3328832) (not b!3329153) b_and!229559 (not b!3328895) (not d!936308) (not d!936312) (not d!936318) b_and!229491 (not b_next!88377) (not d!936254) (not d!936348) (not d!936346) (not b!3328751) (not b_next!88353) (not b!3329110) (not b!3328998) (not d!936320) (not b!3328965) (not tb!174357) (not d!936272) (not b!3328896) (not bm!241377) (not b!3329109) (not d!936280) (not b!3328979) (not b_lambda!94029) (not b!3329178) (not b!3329173) (not d!936268) (not d!936314) b_and!229499 (not b!3329160) (not d!936270) b_and!229561 (not d!936274) (not b!3328964) b_and!229557 (not b!3328871) (not b!3329172) (not b!3329123) (not b!3328984) (not b!3328974) b_and!229495 (not b!3329176) (not b_next!88373) (not b!3329121) (not b!3329171) (not b!3329125) (not b!3328976) b_and!229565)
(check-sat (not b_next!88361) (not b_next!88355) (not b_next!88375) (not b_next!88363) b_and!229553 b_and!229559 b_and!229499 b_and!229561 b_and!229557 b_and!229495 (not b_next!88373) b_and!229565 b_and!229563 (not b_next!88359) b_and!229555 (not b_next!88357) (not b_next!88379) b_and!229491 (not b_next!88377) (not b_next!88353))
(get-model)

(declare-fun d!936388 () Bool)

(declare-fun lt!1131461 () List!36801)

(assert (=> d!936388 (= (++!8917 (t!256930 lt!1131274) lt!1131461) (tail!5300 lt!1131274))))

(declare-fun e!2070386 () List!36801)

(assert (=> d!936388 (= lt!1131461 e!2070386)))

(declare-fun c!565381 () Bool)

(assert (=> d!936388 (= c!565381 ((_ is Cons!36677) (t!256930 lt!1131274)))))

(assert (=> d!936388 (>= (size!27728 (tail!5300 lt!1131274)) (size!27728 (t!256930 lt!1131274)))))

(assert (=> d!936388 (= (getSuffix!1428 (tail!5300 lt!1131274) (t!256930 lt!1131274)) lt!1131461)))

(declare-fun b!3329203 () Bool)

(assert (=> b!3329203 (= e!2070386 (getSuffix!1428 (tail!5300 (tail!5300 lt!1131274)) (t!256930 (t!256930 lt!1131274))))))

(declare-fun b!3329204 () Bool)

(assert (=> b!3329204 (= e!2070386 (tail!5300 lt!1131274))))

(assert (= (and d!936388 c!565381) b!3329203))

(assert (= (and d!936388 (not c!565381)) b!3329204))

(declare-fun m!3670273 () Bool)

(assert (=> d!936388 m!3670273))

(assert (=> d!936388 m!3669945))

(declare-fun m!3670275 () Bool)

(assert (=> d!936388 m!3670275))

(declare-fun m!3670277 () Bool)

(assert (=> d!936388 m!3670277))

(assert (=> b!3329203 m!3669945))

(declare-fun m!3670279 () Bool)

(assert (=> b!3329203 m!3670279))

(assert (=> b!3329203 m!3670279))

(declare-fun m!3670281 () Bool)

(assert (=> b!3329203 m!3670281))

(assert (=> b!3328906 d!936388))

(declare-fun d!936390 () Bool)

(assert (=> d!936390 (= (tail!5300 lt!1131274) (t!256930 lt!1131274))))

(assert (=> b!3328906 d!936390))

(assert (=> d!936282 d!936204))

(declare-fun d!936394 () Bool)

(assert (=> d!936394 (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 (h!42099 tokens!494))))

(assert (=> d!936394 true))

(declare-fun _$77!881 () Unit!51688)

(assert (=> d!936394 (= (choose!19288 thiss!18206 rules!2135 tokens!494 (h!42099 tokens!494)) _$77!881)))

(declare-fun bs!551195 () Bool)

(assert (= bs!551195 d!936394))

(assert (=> bs!551195 m!3669633))

(assert (=> d!936282 d!936394))

(assert (=> d!936282 d!936326))

(declare-fun d!936468 () Bool)

(assert (=> d!936468 true))

(declare-fun order!19203 () Int)

(declare-fun lambda!119794 () Int)

(declare-fun dynLambda!15137 (Int Int) Int)

(assert (=> d!936468 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))) (dynLambda!15137 order!19203 lambda!119794))))

(declare-fun Forall2!904 (Int) Bool)

(assert (=> d!936468 (= (equivClasses!2114 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))) (Forall2!904 lambda!119794))))

(declare-fun bs!551196 () Bool)

(assert (= bs!551196 d!936468))

(declare-fun m!3670473 () Bool)

(assert (=> bs!551196 m!3670473))

(assert (=> b!3328967 d!936468))

(declare-fun d!936470 () Bool)

(assert (=> d!936470 (= (isEmpty!20840 (originalCharacters!6048 (h!42099 tokens!494))) ((_ is Nil!36677) (originalCharacters!6048 (h!42099 tokens!494))))))

(assert (=> d!936354 d!936470))

(declare-fun d!936472 () Bool)

(declare-fun list!13215 (Conc!11044) List!36803)

(assert (=> d!936472 (= (list!13212 (singletonSeq!2430 separatorToken!241)) (list!13215 (c!565318 (singletonSeq!2430 separatorToken!241))))))

(declare-fun bs!551197 () Bool)

(assert (= bs!551197 d!936472))

(declare-fun m!3670475 () Bool)

(assert (=> bs!551197 m!3670475))

(assert (=> d!936356 d!936472))

(declare-fun d!936474 () Bool)

(declare-fun lt!1131500 () Int)

(declare-fun size!27735 (List!36803) Int)

(assert (=> d!936474 (= lt!1131500 (size!27735 (list!13212 (_1!21225 lt!1131436))))))

(declare-fun size!27736 (Conc!11044) Int)

(assert (=> d!936474 (= lt!1131500 (size!27736 (c!565318 (_1!21225 lt!1131436))))))

(assert (=> d!936474 (= (size!27729 (_1!21225 lt!1131436)) lt!1131500)))

(declare-fun bs!551198 () Bool)

(assert (= bs!551198 d!936474))

(declare-fun m!3670477 () Bool)

(assert (=> bs!551198 m!3670477))

(assert (=> bs!551198 m!3670477))

(declare-fun m!3670479 () Bool)

(assert (=> bs!551198 m!3670479))

(declare-fun m!3670481 () Bool)

(assert (=> bs!551198 m!3670481))

(assert (=> d!936356 d!936474))

(declare-fun d!936476 () Bool)

(assert (=> d!936476 (= (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241))))) (list!13215 (c!565318 (_1!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)))))))))

(declare-fun bs!551199 () Bool)

(assert (= bs!551199 d!936476))

(declare-fun m!3670483 () Bool)

(assert (=> bs!551199 m!3670483))

(assert (=> d!936356 d!936476))

(declare-fun d!936478 () Bool)

(declare-fun e!2070442 () Bool)

(assert (=> d!936478 e!2070442))

(declare-fun res!1350341 () Bool)

(assert (=> d!936478 (=> (not res!1350341) (not e!2070442))))

(declare-fun lt!1131501 () BalanceConc!21702)

(assert (=> d!936478 (= res!1350341 (= (list!13212 lt!1131501) (Cons!36679 separatorToken!241 Nil!36679)))))

(assert (=> d!936478 (= lt!1131501 (singleton!1052 separatorToken!241))))

(assert (=> d!936478 (= (singletonSeq!2430 separatorToken!241) lt!1131501)))

(declare-fun b!3329298 () Bool)

(assert (=> b!3329298 (= e!2070442 (isBalanced!3315 (c!565318 lt!1131501)))))

(assert (= (and d!936478 res!1350341) b!3329298))

(declare-fun m!3670485 () Bool)

(assert (=> d!936478 m!3670485))

(declare-fun m!3670487 () Bool)

(assert (=> d!936478 m!3670487))

(declare-fun m!3670489 () Bool)

(assert (=> b!3329298 m!3670489))

(assert (=> d!936356 d!936478))

(declare-fun d!936480 () Bool)

(declare-fun lt!1131502 () BalanceConc!21700)

(assert (=> d!936480 (= (list!13209 lt!1131502) (printList!1471 thiss!18206 (list!13212 (singletonSeq!2430 separatorToken!241))))))

(assert (=> d!936480 (= lt!1131502 (printTailRec!1418 thiss!18206 (singletonSeq!2430 separatorToken!241) 0 (BalanceConc!21701 Empty!11043)))))

(assert (=> d!936480 (= (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)) lt!1131502)))

(declare-fun bs!551200 () Bool)

(assert (= bs!551200 d!936480))

(declare-fun m!3670491 () Bool)

(assert (=> bs!551200 m!3670491))

(assert (=> bs!551200 m!3670207))

(assert (=> bs!551200 m!3670211))

(assert (=> bs!551200 m!3670211))

(declare-fun m!3670493 () Bool)

(assert (=> bs!551200 m!3670493))

(assert (=> bs!551200 m!3670207))

(declare-fun m!3670495 () Bool)

(assert (=> bs!551200 m!3670495))

(assert (=> d!936356 d!936480))

(assert (=> d!936356 d!936326))

(declare-fun b!3329299 () Bool)

(declare-fun e!2070444 () Bool)

(declare-fun e!2070443 () Bool)

(assert (=> b!3329299 (= e!2070444 e!2070443)))

(declare-fun res!1350343 () Bool)

(declare-fun lt!1131503 () tuple2!36182)

(assert (=> b!3329299 (= res!1350343 (< (size!27731 (_2!21225 lt!1131503)) (size!27731 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)))))))

(assert (=> b!3329299 (=> (not res!1350343) (not e!2070443))))

(declare-fun b!3329300 () Bool)

(assert (=> b!3329300 (= e!2070443 (not (isEmpty!20841 (_1!21225 lt!1131503))))))

(declare-fun b!3329301 () Bool)

(declare-fun e!2070445 () Bool)

(assert (=> b!3329301 (= e!2070445 (= (list!13209 (_2!21225 lt!1131503)) (_2!21227 (lexList!1378 thiss!18206 rules!2135 (list!13209 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)))))))))

(declare-fun d!936482 () Bool)

(assert (=> d!936482 e!2070445))

(declare-fun res!1350342 () Bool)

(assert (=> d!936482 (=> (not res!1350342) (not e!2070445))))

(assert (=> d!936482 (= res!1350342 e!2070444)))

(declare-fun c!565399 () Bool)

(assert (=> d!936482 (= c!565399 (> (size!27729 (_1!21225 lt!1131503)) 0))))

(assert (=> d!936482 (= lt!1131503 (lexTailRecV2!988 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)) (BalanceConc!21701 Empty!11043) (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)) (BalanceConc!21703 Empty!11044)))))

(assert (=> d!936482 (= (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241))) lt!1131503)))

(declare-fun b!3329302 () Bool)

(assert (=> b!3329302 (= e!2070444 (= (_2!21225 lt!1131503) (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241))))))

(declare-fun b!3329303 () Bool)

(declare-fun res!1350344 () Bool)

(assert (=> b!3329303 (=> (not res!1350344) (not e!2070445))))

(assert (=> b!3329303 (= res!1350344 (= (list!13212 (_1!21225 lt!1131503)) (_1!21227 (lexList!1378 thiss!18206 rules!2135 (list!13209 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)))))))))

(assert (= (and d!936482 c!565399) b!3329299))

(assert (= (and d!936482 (not c!565399)) b!3329302))

(assert (= (and b!3329299 res!1350343) b!3329300))

(assert (= (and d!936482 res!1350342) b!3329303))

(assert (= (and b!3329303 res!1350344) b!3329301))

(declare-fun m!3670497 () Bool)

(assert (=> d!936482 m!3670497))

(assert (=> d!936482 m!3670203))

(assert (=> d!936482 m!3670203))

(declare-fun m!3670499 () Bool)

(assert (=> d!936482 m!3670499))

(declare-fun m!3670501 () Bool)

(assert (=> b!3329300 m!3670501))

(declare-fun m!3670503 () Bool)

(assert (=> b!3329301 m!3670503))

(assert (=> b!3329301 m!3670203))

(declare-fun m!3670505 () Bool)

(assert (=> b!3329301 m!3670505))

(assert (=> b!3329301 m!3670505))

(declare-fun m!3670507 () Bool)

(assert (=> b!3329301 m!3670507))

(declare-fun m!3670509 () Bool)

(assert (=> b!3329303 m!3670509))

(assert (=> b!3329303 m!3670203))

(assert (=> b!3329303 m!3670505))

(assert (=> b!3329303 m!3670505))

(assert (=> b!3329303 m!3670507))

(declare-fun m!3670511 () Bool)

(assert (=> b!3329299 m!3670511))

(assert (=> b!3329299 m!3670203))

(declare-fun m!3670513 () Bool)

(assert (=> b!3329299 m!3670513))

(assert (=> d!936356 d!936482))

(declare-fun b!3329316 () Bool)

(declare-fun res!1350361 () Bool)

(declare-fun e!2070450 () Bool)

(assert (=> b!3329316 (=> (not res!1350361) (not e!2070450))))

(assert (=> b!3329316 (= res!1350361 (isBalanced!3315 (right!28915 (c!565318 lt!1131422))))))

(declare-fun b!3329317 () Bool)

(assert (=> b!3329317 (= e!2070450 (not (isEmpty!20849 (right!28915 (c!565318 lt!1131422)))))))

(declare-fun d!936484 () Bool)

(declare-fun res!1350362 () Bool)

(declare-fun e!2070451 () Bool)

(assert (=> d!936484 (=> res!1350362 e!2070451)))

(assert (=> d!936484 (= res!1350362 (not ((_ is Node!11044) (c!565318 lt!1131422))))))

(assert (=> d!936484 (= (isBalanced!3315 (c!565318 lt!1131422)) e!2070451)))

(declare-fun b!3329318 () Bool)

(declare-fun res!1350359 () Bool)

(assert (=> b!3329318 (=> (not res!1350359) (not e!2070450))))

(declare-fun height!1633 (Conc!11044) Int)

(assert (=> b!3329318 (= res!1350359 (<= (- (height!1633 (left!28585 (c!565318 lt!1131422))) (height!1633 (right!28915 (c!565318 lt!1131422)))) 1))))

(declare-fun b!3329319 () Bool)

(assert (=> b!3329319 (= e!2070451 e!2070450)))

(declare-fun res!1350360 () Bool)

(assert (=> b!3329319 (=> (not res!1350360) (not e!2070450))))

(assert (=> b!3329319 (= res!1350360 (<= (- 1) (- (height!1633 (left!28585 (c!565318 lt!1131422))) (height!1633 (right!28915 (c!565318 lt!1131422))))))))

(declare-fun b!3329320 () Bool)

(declare-fun res!1350358 () Bool)

(assert (=> b!3329320 (=> (not res!1350358) (not e!2070450))))

(assert (=> b!3329320 (= res!1350358 (not (isEmpty!20849 (left!28585 (c!565318 lt!1131422)))))))

(declare-fun b!3329321 () Bool)

(declare-fun res!1350357 () Bool)

(assert (=> b!3329321 (=> (not res!1350357) (not e!2070450))))

(assert (=> b!3329321 (= res!1350357 (isBalanced!3315 (left!28585 (c!565318 lt!1131422))))))

(assert (= (and d!936484 (not res!1350362)) b!3329319))

(assert (= (and b!3329319 res!1350360) b!3329318))

(assert (= (and b!3329318 res!1350359) b!3329321))

(assert (= (and b!3329321 res!1350357) b!3329316))

(assert (= (and b!3329316 res!1350361) b!3329320))

(assert (= (and b!3329320 res!1350358) b!3329317))

(declare-fun m!3670515 () Bool)

(assert (=> b!3329321 m!3670515))

(declare-fun m!3670517 () Bool)

(assert (=> b!3329317 m!3670517))

(declare-fun m!3670519 () Bool)

(assert (=> b!3329318 m!3670519))

(declare-fun m!3670521 () Bool)

(assert (=> b!3329318 m!3670521))

(declare-fun m!3670523 () Bool)

(assert (=> b!3329316 m!3670523))

(declare-fun m!3670525 () Bool)

(assert (=> b!3329320 m!3670525))

(assert (=> b!3329319 m!3670519))

(assert (=> b!3329319 m!3670521))

(assert (=> b!3328979 d!936484))

(declare-fun d!936486 () Bool)

(declare-fun res!1350363 () Bool)

(declare-fun e!2070452 () Bool)

(assert (=> d!936486 (=> res!1350363 e!2070452)))

(assert (=> d!936486 (= res!1350363 (not ((_ is Cons!36678) (t!256931 rules!2135))))))

(assert (=> d!936486 (= (sepAndNonSepRulesDisjointChars!1528 rules!2135 (t!256931 rules!2135)) e!2070452)))

(declare-fun b!3329322 () Bool)

(declare-fun e!2070453 () Bool)

(assert (=> b!3329322 (= e!2070452 e!2070453)))

(declare-fun res!1350364 () Bool)

(assert (=> b!3329322 (=> (not res!1350364) (not e!2070453))))

(assert (=> b!3329322 (= res!1350364 (ruleDisjointCharsFromAllFromOtherType!650 (h!42098 (t!256931 rules!2135)) rules!2135))))

(declare-fun b!3329323 () Bool)

(assert (=> b!3329323 (= e!2070453 (sepAndNonSepRulesDisjointChars!1528 rules!2135 (t!256931 (t!256931 rules!2135))))))

(assert (= (and d!936486 (not res!1350363)) b!3329322))

(assert (= (and b!3329322 res!1350364) b!3329323))

(declare-fun m!3670527 () Bool)

(assert (=> b!3329322 m!3670527))

(declare-fun m!3670529 () Bool)

(assert (=> b!3329323 m!3670529))

(assert (=> b!3328826 d!936486))

(declare-fun d!936488 () Bool)

(assert (=> d!936488 (= (isDefined!5660 lt!1131391) (not (isEmpty!20847 lt!1131391)))))

(declare-fun bs!551201 () Bool)

(assert (= bs!551201 d!936488))

(assert (=> bs!551201 m!3670017))

(assert (=> b!3328958 d!936488))

(declare-fun d!936490 () Bool)

(assert (=> d!936490 (= (list!13209 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))) (list!13213 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))))))

(declare-fun bs!551202 () Bool)

(assert (= bs!551202 d!936490))

(declare-fun m!3670531 () Bool)

(assert (=> bs!551202 m!3670531))

(assert (=> b!3329120 d!936490))

(declare-fun d!936492 () Bool)

(assert (=> d!936492 (= (inv!49682 (tag!5886 (h!42098 (t!256931 rules!2135)))) (= (mod (str.len (value!172478 (tag!5886 (h!42098 (t!256931 rules!2135))))) 2) 0))))

(assert (=> b!3329154 d!936492))

(declare-fun d!936494 () Bool)

(declare-fun res!1350365 () Bool)

(declare-fun e!2070454 () Bool)

(assert (=> d!936494 (=> (not res!1350365) (not e!2070454))))

(assert (=> d!936494 (= res!1350365 (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toValue!7498 (transformation!5334 (h!42098 (t!256931 rules!2135))))))))

(assert (=> d!936494 (= (inv!49685 (transformation!5334 (h!42098 (t!256931 rules!2135)))) e!2070454)))

(declare-fun b!3329324 () Bool)

(assert (=> b!3329324 (= e!2070454 (equivClasses!2114 (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toValue!7498 (transformation!5334 (h!42098 (t!256931 rules!2135))))))))

(assert (= (and d!936494 res!1350365) b!3329324))

(declare-fun m!3670533 () Bool)

(assert (=> d!936494 m!3670533))

(declare-fun m!3670535 () Bool)

(assert (=> b!3329324 m!3670535))

(assert (=> b!3329154 d!936494))

(declare-fun d!936496 () Bool)

(declare-fun lt!1131506 () Int)

(assert (=> d!936496 (>= lt!1131506 0)))

(declare-fun e!2070457 () Int)

(assert (=> d!936496 (= lt!1131506 e!2070457)))

(declare-fun c!565402 () Bool)

(assert (=> d!936496 (= c!565402 ((_ is Nil!36677) lt!1131344))))

(assert (=> d!936496 (= (size!27728 lt!1131344) lt!1131506)))

(declare-fun b!3329329 () Bool)

(assert (=> b!3329329 (= e!2070457 0)))

(declare-fun b!3329330 () Bool)

(assert (=> b!3329330 (= e!2070457 (+ 1 (size!27728 (t!256930 lt!1131344))))))

(assert (= (and d!936496 c!565402) b!3329329))

(assert (= (and d!936496 (not c!565402)) b!3329330))

(declare-fun m!3670537 () Bool)

(assert (=> b!3329330 m!3670537))

(assert (=> b!3328896 d!936496))

(declare-fun d!936498 () Bool)

(declare-fun lt!1131507 () Int)

(assert (=> d!936498 (>= lt!1131507 0)))

(declare-fun e!2070458 () Int)

(assert (=> d!936498 (= lt!1131507 e!2070458)))

(declare-fun c!565403 () Bool)

(assert (=> d!936498 (= c!565403 ((_ is Nil!36677) lt!1131274))))

(assert (=> d!936498 (= (size!27728 lt!1131274) lt!1131507)))

(declare-fun b!3329331 () Bool)

(assert (=> b!3329331 (= e!2070458 0)))

(declare-fun b!3329332 () Bool)

(assert (=> b!3329332 (= e!2070458 (+ 1 (size!27728 (t!256930 lt!1131274))))))

(assert (= (and d!936498 c!565403) b!3329331))

(assert (= (and d!936498 (not c!565403)) b!3329332))

(assert (=> b!3329332 m!3670277))

(assert (=> b!3328896 d!936498))

(declare-fun d!936500 () Bool)

(declare-fun lt!1131508 () Int)

(assert (=> d!936500 (>= lt!1131508 0)))

(declare-fun e!2070459 () Int)

(assert (=> d!936500 (= lt!1131508 e!2070459)))

(declare-fun c!565404 () Bool)

(assert (=> d!936500 (= c!565404 ((_ is Nil!36677) (list!13209 (charsOf!3348 separatorToken!241))))))

(assert (=> d!936500 (= (size!27728 (list!13209 (charsOf!3348 separatorToken!241))) lt!1131508)))

(declare-fun b!3329333 () Bool)

(assert (=> b!3329333 (= e!2070459 0)))

(declare-fun b!3329334 () Bool)

(assert (=> b!3329334 (= e!2070459 (+ 1 (size!27728 (t!256930 (list!13209 (charsOf!3348 separatorToken!241))))))))

(assert (= (and d!936500 c!565404) b!3329333))

(assert (= (and d!936500 (not c!565404)) b!3329334))

(declare-fun m!3670539 () Bool)

(assert (=> b!3329334 m!3670539))

(assert (=> b!3328896 d!936500))

(declare-fun b!3329344 () Bool)

(declare-fun e!2070464 () List!36801)

(declare-fun e!2070465 () List!36801)

(assert (=> b!3329344 (= e!2070464 e!2070465)))

(declare-fun c!565410 () Bool)

(assert (=> b!3329344 (= c!565410 ((_ is Leaf!17321) (c!565317 (charsOf!3348 (h!42099 tokens!494)))))))

(declare-fun d!936502 () Bool)

(declare-fun c!565409 () Bool)

(assert (=> d!936502 (= c!565409 ((_ is Empty!11043) (c!565317 (charsOf!3348 (h!42099 tokens!494)))))))

(assert (=> d!936502 (= (list!13213 (c!565317 (charsOf!3348 (h!42099 tokens!494)))) e!2070464)))

(declare-fun b!3329343 () Bool)

(assert (=> b!3329343 (= e!2070464 Nil!36677)))

(declare-fun b!3329346 () Bool)

(assert (=> b!3329346 (= e!2070465 (++!8917 (list!13213 (left!28584 (c!565317 (charsOf!3348 (h!42099 tokens!494))))) (list!13213 (right!28914 (c!565317 (charsOf!3348 (h!42099 tokens!494)))))))))

(declare-fun b!3329345 () Bool)

(declare-fun list!13217 (IArray!22091) List!36801)

(assert (=> b!3329345 (= e!2070465 (list!13217 (xs!14181 (c!565317 (charsOf!3348 (h!42099 tokens!494))))))))

(assert (= (and d!936502 c!565409) b!3329343))

(assert (= (and d!936502 (not c!565409)) b!3329344))

(assert (= (and b!3329344 c!565410) b!3329345))

(assert (= (and b!3329344 (not c!565410)) b!3329346))

(declare-fun m!3670541 () Bool)

(assert (=> b!3329346 m!3670541))

(declare-fun m!3670543 () Bool)

(assert (=> b!3329346 m!3670543))

(assert (=> b!3329346 m!3670541))

(assert (=> b!3329346 m!3670543))

(declare-fun m!3670545 () Bool)

(assert (=> b!3329346 m!3670545))

(declare-fun m!3670547 () Bool)

(assert (=> b!3329345 m!3670547))

(assert (=> d!936268 d!936502))

(declare-fun d!936504 () Bool)

(declare-fun charsToBigInt!1 (List!36800) Int)

(assert (=> d!936504 (= (inv!17 (value!172479 separatorToken!241)) (= (charsToBigInt!1 (text!39396 (value!172479 separatorToken!241))) (value!172471 (value!172479 separatorToken!241))))))

(declare-fun bs!551203 () Bool)

(assert (= bs!551203 d!936504))

(declare-fun m!3670549 () Bool)

(assert (=> bs!551203 m!3670549))

(assert (=> b!3329109 d!936504))

(declare-fun b!3329348 () Bool)

(declare-fun e!2070466 () List!36801)

(declare-fun e!2070467 () List!36801)

(assert (=> b!3329348 (= e!2070466 e!2070467)))

(declare-fun c!565412 () Bool)

(assert (=> b!3329348 (= c!565412 ((_ is Leaf!17321) (c!565317 (charsOf!3348 separatorToken!241))))))

(declare-fun d!936506 () Bool)

(declare-fun c!565411 () Bool)

(assert (=> d!936506 (= c!565411 ((_ is Empty!11043) (c!565317 (charsOf!3348 separatorToken!241))))))

(assert (=> d!936506 (= (list!13213 (c!565317 (charsOf!3348 separatorToken!241))) e!2070466)))

(declare-fun b!3329347 () Bool)

(assert (=> b!3329347 (= e!2070466 Nil!36677)))

(declare-fun b!3329350 () Bool)

(assert (=> b!3329350 (= e!2070467 (++!8917 (list!13213 (left!28584 (c!565317 (charsOf!3348 separatorToken!241)))) (list!13213 (right!28914 (c!565317 (charsOf!3348 separatorToken!241))))))))

(declare-fun b!3329349 () Bool)

(assert (=> b!3329349 (= e!2070467 (list!13217 (xs!14181 (c!565317 (charsOf!3348 separatorToken!241)))))))

(assert (= (and d!936506 c!565411) b!3329347))

(assert (= (and d!936506 (not c!565411)) b!3329348))

(assert (= (and b!3329348 c!565412) b!3329349))

(assert (= (and b!3329348 (not c!565412)) b!3329350))

(declare-fun m!3670551 () Bool)

(assert (=> b!3329350 m!3670551))

(declare-fun m!3670553 () Bool)

(assert (=> b!3329350 m!3670553))

(assert (=> b!3329350 m!3670551))

(assert (=> b!3329350 m!3670553))

(declare-fun m!3670555 () Bool)

(assert (=> b!3329350 m!3670555))

(declare-fun m!3670557 () Bool)

(assert (=> b!3329349 m!3670557))

(assert (=> d!936278 d!936506))

(declare-fun d!936508 () Bool)

(assert (=> d!936508 (= (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))) (list!13213 (c!565317 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))))))

(declare-fun bs!551204 () Bool)

(assert (= bs!551204 d!936508))

(declare-fun m!3670559 () Bool)

(assert (=> bs!551204 m!3670559))

(assert (=> b!3328960 d!936508))

(declare-fun d!936510 () Bool)

(declare-fun lt!1131519 () BalanceConc!21700)

(assert (=> d!936510 (= (list!13209 lt!1131519) (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391))))))

(assert (=> d!936510 (= lt!1131519 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))) (value!172479 (_1!21224 (get!11684 lt!1131391)))))))

(assert (=> d!936510 (= (charsOf!3348 (_1!21224 (get!11684 lt!1131391))) lt!1131519)))

(declare-fun b_lambda!94037 () Bool)

(assert (=> (not b_lambda!94037) (not d!936510)))

(declare-fun tb!174389 () Bool)

(declare-fun t!257005 () Bool)

(assert (=> (and b!3329174 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257005) tb!174389))

(declare-fun b!3329400 () Bool)

(declare-fun e!2070495 () Bool)

(declare-fun tp!1040552 () Bool)

(assert (=> b!3329400 (= e!2070495 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))) (value!172479 (_1!21224 (get!11684 lt!1131391)))))) tp!1040552))))

(declare-fun result!217510 () Bool)

(assert (=> tb!174389 (= result!217510 (and (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))) (value!172479 (_1!21224 (get!11684 lt!1131391))))) e!2070495))))

(assert (= tb!174389 b!3329400))

(declare-fun m!3670651 () Bool)

(assert (=> b!3329400 m!3670651))

(declare-fun m!3670653 () Bool)

(assert (=> tb!174389 m!3670653))

(assert (=> d!936510 t!257005))

(declare-fun b_and!229577 () Bool)

(assert (= b_and!229565 (and (=> t!257005 result!217510) b_and!229577)))

(declare-fun t!257007 () Bool)

(declare-fun tb!174391 () Bool)

(assert (=> (and b!3328728 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257007) tb!174391))

(declare-fun result!217512 () Bool)

(assert (= result!217512 result!217510))

(assert (=> d!936510 t!257007))

(declare-fun b_and!229579 () Bool)

(assert (= b_and!229557 (and (=> t!257007 result!217512) b_and!229579)))

(declare-fun tb!174393 () Bool)

(declare-fun t!257009 () Bool)

(assert (=> (and b!3328729 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257009) tb!174393))

(declare-fun result!217514 () Bool)

(assert (= result!217514 result!217510))

(assert (=> d!936510 t!257009))

(declare-fun b_and!229581 () Bool)

(assert (= b_and!229553 (and (=> t!257009 result!217514) b_and!229581)))

(declare-fun tb!174395 () Bool)

(declare-fun t!257011 () Bool)

(assert (=> (and b!3328722 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257011) tb!174395))

(declare-fun result!217516 () Bool)

(assert (= result!217516 result!217510))

(assert (=> d!936510 t!257011))

(declare-fun b_and!229583 () Bool)

(assert (= b_and!229555 (and (=> t!257011 result!217516) b_and!229583)))

(declare-fun t!257013 () Bool)

(declare-fun tb!174397 () Bool)

(assert (=> (and b!3329155 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257013) tb!174397))

(declare-fun result!217518 () Bool)

(assert (= result!217518 result!217510))

(assert (=> d!936510 t!257013))

(declare-fun b_and!229585 () Bool)

(assert (= b_and!229561 (and (=> t!257013 result!217518) b_and!229585)))

(declare-fun m!3670655 () Bool)

(assert (=> d!936510 m!3670655))

(declare-fun m!3670657 () Bool)

(assert (=> d!936510 m!3670657))

(assert (=> b!3328960 d!936510))

(declare-fun d!936538 () Bool)

(assert (=> d!936538 (= (get!11684 lt!1131391) (v!36211 lt!1131391))))

(assert (=> b!3328960 d!936538))

(declare-fun d!936540 () Bool)

(declare-fun charsToBigInt!0 (List!36800 Int) Int)

(assert (=> d!936540 (= (inv!15 (value!172479 (h!42099 tokens!494))) (= (charsToBigInt!0 (text!39397 (value!172479 (h!42099 tokens!494))) 0) (value!172474 (value!172479 (h!42099 tokens!494)))))))

(declare-fun bs!551212 () Bool)

(assert (= bs!551212 d!936540))

(declare-fun m!3670671 () Bool)

(assert (=> bs!551212 m!3670671))

(assert (=> b!3328997 d!936540))

(declare-fun b!3329409 () Bool)

(declare-fun res!1350396 () Bool)

(declare-fun e!2070499 () Bool)

(assert (=> b!3329409 (=> (not res!1350396) (not e!2070499))))

(declare-fun lt!1131530 () List!36801)

(assert (=> b!3329409 (= res!1350396 (= (size!27728 lt!1131530) (+ (size!27728 (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (size!27728 (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))))))

(declare-fun b!3329408 () Bool)

(declare-fun e!2070500 () List!36801)

(assert (=> b!3329408 (= e!2070500 (Cons!36677 (h!42097 (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (++!8917 (t!256930 (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679))))))))

(declare-fun d!936546 () Bool)

(assert (=> d!936546 e!2070499))

(declare-fun res!1350395 () Bool)

(assert (=> d!936546 (=> (not res!1350395) (not e!2070499))))

(assert (=> d!936546 (= res!1350395 (= (content!5011 lt!1131530) ((_ map or) (content!5011 (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (content!5011 (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))))))

(assert (=> d!936546 (= lt!1131530 e!2070500)))

(declare-fun c!565426 () Bool)

(assert (=> d!936546 (= c!565426 ((_ is Nil!36677) (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))))))

(assert (=> d!936546 (= (++!8917 (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))) (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679)))) lt!1131530)))

(declare-fun b!3329410 () Bool)

(assert (=> b!3329410 (= e!2070499 (or (not (= (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679))) Nil!36677)) (= lt!1131530 (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))))))

(declare-fun b!3329407 () Bool)

(assert (=> b!3329407 (= e!2070500 (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679))))))

(assert (= (and d!936546 c!565426) b!3329407))

(assert (= (and d!936546 (not c!565426)) b!3329408))

(assert (= (and d!936546 res!1350395) b!3329409))

(assert (= (and b!3329409 res!1350396) b!3329410))

(declare-fun m!3670673 () Bool)

(assert (=> b!3329409 m!3670673))

(assert (=> b!3329409 m!3670089))

(declare-fun m!3670675 () Bool)

(assert (=> b!3329409 m!3670675))

(assert (=> b!3329409 m!3670091))

(declare-fun m!3670677 () Bool)

(assert (=> b!3329409 m!3670677))

(assert (=> b!3329408 m!3670091))

(declare-fun m!3670679 () Bool)

(assert (=> b!3329408 m!3670679))

(declare-fun m!3670681 () Bool)

(assert (=> d!936546 m!3670681))

(assert (=> d!936546 m!3670089))

(declare-fun m!3670683 () Bool)

(assert (=> d!936546 m!3670683))

(assert (=> d!936546 m!3670091))

(declare-fun m!3670685 () Bool)

(assert (=> d!936546 m!3670685))

(assert (=> b!3328984 d!936546))

(declare-fun d!936548 () Bool)

(assert (=> d!936548 (= (list!13209 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))) (list!13213 (c!565317 (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))))))

(declare-fun bs!551213 () Bool)

(assert (= bs!551213 d!936548))

(declare-fun m!3670687 () Bool)

(assert (=> bs!551213 m!3670687))

(assert (=> b!3328984 d!936548))

(declare-fun d!936550 () Bool)

(declare-fun lt!1131531 () BalanceConc!21700)

(assert (=> d!936550 (= (list!13209 lt!1131531) (originalCharacters!6048 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))))

(assert (=> d!936550 (= lt!1131531 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (value!172479 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))))

(assert (=> d!936550 (= (charsOf!3348 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))) lt!1131531)))

(declare-fun b_lambda!94039 () Bool)

(assert (=> (not b_lambda!94039) (not d!936550)))

(declare-fun t!257015 () Bool)

(declare-fun tb!174399 () Bool)

(assert (=> (and b!3328722 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) t!257015) tb!174399))

(declare-fun b!3329411 () Bool)

(declare-fun e!2070501 () Bool)

(declare-fun tp!1040553 () Bool)

(assert (=> b!3329411 (= e!2070501 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (value!172479 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) tp!1040553))))

(declare-fun result!217520 () Bool)

(assert (=> tb!174399 (= result!217520 (and (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (value!172479 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) e!2070501))))

(assert (= tb!174399 b!3329411))

(declare-fun m!3670689 () Bool)

(assert (=> b!3329411 m!3670689))

(declare-fun m!3670691 () Bool)

(assert (=> tb!174399 m!3670691))

(assert (=> d!936550 t!257015))

(declare-fun b_and!229587 () Bool)

(assert (= b_and!229583 (and (=> t!257015 result!217520) b_and!229587)))

(declare-fun tb!174401 () Bool)

(declare-fun t!257017 () Bool)

(assert (=> (and b!3329155 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) t!257017) tb!174401))

(declare-fun result!217522 () Bool)

(assert (= result!217522 result!217520))

(assert (=> d!936550 t!257017))

(declare-fun b_and!229589 () Bool)

(assert (= b_and!229585 (and (=> t!257017 result!217522) b_and!229589)))

(declare-fun t!257019 () Bool)

(declare-fun tb!174403 () Bool)

(assert (=> (and b!3328728 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) t!257019) tb!174403))

(declare-fun result!217524 () Bool)

(assert (= result!217524 result!217520))

(assert (=> d!936550 t!257019))

(declare-fun b_and!229591 () Bool)

(assert (= b_and!229579 (and (=> t!257019 result!217524) b_and!229591)))

(declare-fun t!257021 () Bool)

(declare-fun tb!174405 () Bool)

(assert (=> (and b!3328729 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) t!257021) tb!174405))

(declare-fun result!217526 () Bool)

(assert (= result!217526 result!217520))

(assert (=> d!936550 t!257021))

(declare-fun b_and!229593 () Bool)

(assert (= b_and!229581 (and (=> t!257021 result!217526) b_and!229593)))

(declare-fun t!257023 () Bool)

(declare-fun tb!174407 () Bool)

(assert (=> (and b!3329174 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) t!257023) tb!174407))

(declare-fun result!217528 () Bool)

(assert (= result!217528 result!217520))

(assert (=> d!936550 t!257023))

(declare-fun b_and!229595 () Bool)

(assert (= b_and!229577 (and (=> t!257023 result!217528) b_and!229595)))

(declare-fun m!3670693 () Bool)

(assert (=> d!936550 m!3670693))

(declare-fun m!3670695 () Bool)

(assert (=> d!936550 m!3670695))

(assert (=> b!3328984 d!936550))

(declare-fun d!936552 () Bool)

(declare-fun c!565427 () Bool)

(assert (=> d!936552 (= c!565427 ((_ is Cons!36679) (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679))))))

(declare-fun e!2070502 () List!36801)

(assert (=> d!936552 (= (printList!1471 thiss!18206 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679))) e!2070502)))

(declare-fun b!3329412 () Bool)

(assert (=> b!3329412 (= e!2070502 (++!8917 (list!13209 (charsOf!3348 (h!42099 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679))))) (printList!1471 thiss!18206 (t!256932 (t!256932 (Cons!36679 (h!42099 tokens!494) Nil!36679))))))))

(declare-fun b!3329413 () Bool)

(assert (=> b!3329413 (= e!2070502 Nil!36677)))

(assert (= (and d!936552 c!565427) b!3329412))

(assert (= (and d!936552 (not c!565427)) b!3329413))

(declare-fun m!3670697 () Bool)

(assert (=> b!3329412 m!3670697))

(assert (=> b!3329412 m!3670697))

(declare-fun m!3670699 () Bool)

(assert (=> b!3329412 m!3670699))

(declare-fun m!3670701 () Bool)

(assert (=> b!3329412 m!3670701))

(assert (=> b!3329412 m!3670699))

(assert (=> b!3329412 m!3670701))

(declare-fun m!3670703 () Bool)

(assert (=> b!3329412 m!3670703))

(assert (=> b!3328984 d!936552))

(declare-fun d!936554 () Bool)

(declare-fun charsToInt!0 (List!36800) (_ BitVec 32))

(assert (=> d!936554 (= (inv!16 (value!172479 separatorToken!241)) (= (charsToInt!0 (text!39395 (value!172479 separatorToken!241))) (value!172470 (value!172479 separatorToken!241))))))

(declare-fun bs!551214 () Bool)

(assert (= bs!551214 d!936554))

(declare-fun m!3670705 () Bool)

(assert (=> bs!551214 m!3670705))

(assert (=> b!3329111 d!936554))

(declare-fun d!936556 () Bool)

(declare-fun c!565430 () Bool)

(assert (=> d!936556 (= c!565430 ((_ is Node!11043) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))))))

(declare-fun e!2070507 () Bool)

(assert (=> d!936556 (= (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))) e!2070507)))

(declare-fun b!3329420 () Bool)

(declare-fun inv!49691 (Conc!11043) Bool)

(assert (=> b!3329420 (= e!2070507 (inv!49691 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))))))

(declare-fun b!3329421 () Bool)

(declare-fun e!2070508 () Bool)

(assert (=> b!3329421 (= e!2070507 e!2070508)))

(declare-fun res!1350399 () Bool)

(assert (=> b!3329421 (= res!1350399 (not ((_ is Leaf!17321) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))))))))

(assert (=> b!3329421 (=> res!1350399 e!2070508)))

(declare-fun b!3329422 () Bool)

(declare-fun inv!49692 (Conc!11043) Bool)

(assert (=> b!3329422 (= e!2070508 (inv!49692 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))))))

(assert (= (and d!936556 c!565430) b!3329420))

(assert (= (and d!936556 (not c!565430)) b!3329421))

(assert (= (and b!3329421 (not res!1350399)) b!3329422))

(declare-fun m!3670707 () Bool)

(assert (=> b!3329420 m!3670707))

(declare-fun m!3670709 () Bool)

(assert (=> b!3329422 m!3670709))

(assert (=> b!3328885 d!936556))

(declare-fun d!936558 () Bool)

(declare-fun res!1350400 () Bool)

(declare-fun e!2070509 () Bool)

(assert (=> d!936558 (=> res!1350400 e!2070509)))

(assert (=> d!936558 (= res!1350400 ((_ is Nil!36679) (list!13212 lt!1131267)))))

(assert (=> d!936558 (= (forall!7657 (list!13212 lt!1131267) lambda!119777) e!2070509)))

(declare-fun b!3329423 () Bool)

(declare-fun e!2070510 () Bool)

(assert (=> b!3329423 (= e!2070509 e!2070510)))

(declare-fun res!1350401 () Bool)

(assert (=> b!3329423 (=> (not res!1350401) (not e!2070510))))

(assert (=> b!3329423 (= res!1350401 (dynLambda!15133 lambda!119777 (h!42099 (list!13212 lt!1131267))))))

(declare-fun b!3329424 () Bool)

(assert (=> b!3329424 (= e!2070510 (forall!7657 (t!256932 (list!13212 lt!1131267)) lambda!119777))))

(assert (= (and d!936558 (not res!1350400)) b!3329423))

(assert (= (and b!3329423 res!1350401) b!3329424))

(declare-fun b_lambda!94041 () Bool)

(assert (=> (not b_lambda!94041) (not b!3329423)))

(declare-fun m!3670711 () Bool)

(assert (=> b!3329423 m!3670711))

(declare-fun m!3670713 () Bool)

(assert (=> b!3329424 m!3670713))

(assert (=> d!936242 d!936558))

(declare-fun d!936560 () Bool)

(assert (=> d!936560 (= (list!13212 lt!1131267) (list!13215 (c!565318 lt!1131267)))))

(declare-fun bs!551215 () Bool)

(assert (= bs!551215 d!936560))

(declare-fun m!3670715 () Bool)

(assert (=> bs!551215 m!3670715))

(assert (=> d!936242 d!936560))

(declare-fun d!936562 () Bool)

(declare-fun lt!1131534 () Bool)

(assert (=> d!936562 (= lt!1131534 (forall!7657 (list!13212 lt!1131267) lambda!119777))))

(declare-fun forall!7661 (Conc!11044 Int) Bool)

(assert (=> d!936562 (= lt!1131534 (forall!7661 (c!565318 lt!1131267) lambda!119777))))

(assert (=> d!936562 (= (forall!7659 lt!1131267 lambda!119777) lt!1131534)))

(declare-fun bs!551216 () Bool)

(assert (= bs!551216 d!936562))

(assert (=> bs!551216 m!3669841))

(assert (=> bs!551216 m!3669841))

(assert (=> bs!551216 m!3669845))

(declare-fun m!3670717 () Bool)

(assert (=> bs!551216 m!3670717))

(assert (=> d!936242 d!936562))

(assert (=> d!936242 d!936326))

(declare-fun d!936564 () Bool)

(declare-fun lt!1131559 () List!36801)

(assert (=> d!936564 (= lt!1131559 (++!8917 (list!13209 (BalanceConc!21701 Empty!11043)) (printList!1471 thiss!18206 (dropList!1137 lt!1131272 0))))))

(declare-fun e!2070517 () List!36801)

(assert (=> d!936564 (= lt!1131559 e!2070517)))

(declare-fun c!565435 () Bool)

(assert (=> d!936564 (= c!565435 ((_ is Cons!36679) (dropList!1137 lt!1131272 0)))))

(assert (=> d!936564 (= (printListTailRec!620 thiss!18206 (dropList!1137 lt!1131272 0) (list!13209 (BalanceConc!21701 Empty!11043))) lt!1131559)))

(declare-fun b!3329435 () Bool)

(assert (=> b!3329435 (= e!2070517 (printListTailRec!620 thiss!18206 (t!256932 (dropList!1137 lt!1131272 0)) (++!8917 (list!13209 (BalanceConc!21701 Empty!11043)) (list!13209 (charsOf!3348 (h!42099 (dropList!1137 lt!1131272 0)))))))))

(declare-fun lt!1131561 () List!36801)

(assert (=> b!3329435 (= lt!1131561 (list!13209 (charsOf!3348 (h!42099 (dropList!1137 lt!1131272 0)))))))

(declare-fun lt!1131560 () List!36801)

(assert (=> b!3329435 (= lt!1131560 (printList!1471 thiss!18206 (t!256932 (dropList!1137 lt!1131272 0))))))

(declare-fun lt!1131562 () Unit!51688)

(declare-fun lemmaConcatAssociativity!1853 (List!36801 List!36801 List!36801) Unit!51688)

(assert (=> b!3329435 (= lt!1131562 (lemmaConcatAssociativity!1853 (list!13209 (BalanceConc!21701 Empty!11043)) lt!1131561 lt!1131560))))

(assert (=> b!3329435 (= (++!8917 (++!8917 (list!13209 (BalanceConc!21701 Empty!11043)) lt!1131561) lt!1131560) (++!8917 (list!13209 (BalanceConc!21701 Empty!11043)) (++!8917 lt!1131561 lt!1131560)))))

(declare-fun lt!1131563 () Unit!51688)

(assert (=> b!3329435 (= lt!1131563 lt!1131562)))

(declare-fun b!3329436 () Bool)

(assert (=> b!3329436 (= e!2070517 (list!13209 (BalanceConc!21701 Empty!11043)))))

(assert (= (and d!936564 c!565435) b!3329435))

(assert (= (and d!936564 (not c!565435)) b!3329436))

(assert (=> d!936564 m!3670049))

(declare-fun m!3670719 () Bool)

(assert (=> d!936564 m!3670719))

(assert (=> d!936564 m!3670047))

(assert (=> d!936564 m!3670719))

(declare-fun m!3670721 () Bool)

(assert (=> d!936564 m!3670721))

(declare-fun m!3670723 () Bool)

(assert (=> b!3329435 m!3670723))

(declare-fun m!3670725 () Bool)

(assert (=> b!3329435 m!3670725))

(assert (=> b!3329435 m!3670047))

(declare-fun m!3670727 () Bool)

(assert (=> b!3329435 m!3670727))

(declare-fun m!3670729 () Bool)

(assert (=> b!3329435 m!3670729))

(assert (=> b!3329435 m!3670047))

(declare-fun m!3670731 () Bool)

(assert (=> b!3329435 m!3670731))

(declare-fun m!3670733 () Bool)

(assert (=> b!3329435 m!3670733))

(assert (=> b!3329435 m!3670047))

(declare-fun m!3670735 () Bool)

(assert (=> b!3329435 m!3670735))

(declare-fun m!3670737 () Bool)

(assert (=> b!3329435 m!3670737))

(declare-fun m!3670739 () Bool)

(assert (=> b!3329435 m!3670739))

(assert (=> b!3329435 m!3670047))

(assert (=> b!3329435 m!3670723))

(assert (=> b!3329435 m!3670735))

(assert (=> b!3329435 m!3670729))

(assert (=> b!3329435 m!3670731))

(assert (=> b!3329435 m!3670733))

(declare-fun m!3670741 () Bool)

(assert (=> b!3329435 m!3670741))

(assert (=> d!936318 d!936564))

(declare-fun d!936566 () Bool)

(assert (=> d!936566 (= (dropList!1137 lt!1131272 0) (drop!1929 (list!13215 (c!565318 lt!1131272)) 0))))

(declare-fun bs!551218 () Bool)

(assert (= bs!551218 d!936566))

(declare-fun m!3670781 () Bool)

(assert (=> bs!551218 m!3670781))

(assert (=> bs!551218 m!3670781))

(declare-fun m!3670787 () Bool)

(assert (=> bs!551218 m!3670787))

(assert (=> d!936318 d!936566))

(declare-fun d!936576 () Bool)

(assert (=> d!936576 (= (list!13209 (BalanceConc!21701 Empty!11043)) (list!13213 (c!565317 (BalanceConc!21701 Empty!11043))))))

(declare-fun bs!551219 () Bool)

(assert (= bs!551219 d!936576))

(declare-fun m!3670791 () Bool)

(assert (=> bs!551219 m!3670791))

(assert (=> d!936318 d!936576))

(declare-fun d!936580 () Bool)

(declare-fun lt!1131572 () Int)

(assert (=> d!936580 (= lt!1131572 (size!27735 (list!13212 lt!1131272)))))

(assert (=> d!936580 (= lt!1131572 (size!27736 (c!565318 lt!1131272)))))

(assert (=> d!936580 (= (size!27729 lt!1131272) lt!1131572)))

(declare-fun bs!551221 () Bool)

(assert (= bs!551221 d!936580))

(assert (=> bs!551221 m!3670043))

(assert (=> bs!551221 m!3670043))

(declare-fun m!3670795 () Bool)

(assert (=> bs!551221 m!3670795))

(declare-fun m!3670797 () Bool)

(assert (=> bs!551221 m!3670797))

(assert (=> d!936318 d!936580))

(declare-fun d!936584 () Bool)

(assert (=> d!936584 (= (list!13209 lt!1131418) (list!13213 (c!565317 lt!1131418)))))

(declare-fun bs!551222 () Bool)

(assert (= bs!551222 d!936584))

(declare-fun m!3670799 () Bool)

(assert (=> bs!551222 m!3670799))

(assert (=> d!936318 d!936584))

(declare-fun d!936586 () Bool)

(assert (=> d!936586 (= (isEmpty!20847 (maxPrefix!2523 thiss!18206 rules!2135 lt!1131274)) (not ((_ is Some!7315) (maxPrefix!2523 thiss!18206 rules!2135 lt!1131274))))))

(assert (=> d!936308 d!936586))

(declare-fun d!936590 () Bool)

(assert (=> d!936590 (= (list!13212 lt!1131422) (list!13215 (c!565318 lt!1131422)))))

(declare-fun bs!551223 () Bool)

(assert (= bs!551223 d!936590))

(declare-fun m!3670809 () Bool)

(assert (=> bs!551223 m!3670809))

(assert (=> d!936320 d!936590))

(declare-fun d!936592 () Bool)

(declare-fun e!2070525 () Bool)

(assert (=> d!936592 e!2070525))

(declare-fun res!1350407 () Bool)

(assert (=> d!936592 (=> (not res!1350407) (not e!2070525))))

(declare-fun lt!1131575 () BalanceConc!21702)

(assert (=> d!936592 (= res!1350407 (= (list!13212 lt!1131575) (Cons!36679 (h!42099 tokens!494) Nil!36679)))))

(declare-fun choose!19292 (Token!10034) BalanceConc!21702)

(assert (=> d!936592 (= lt!1131575 (choose!19292 (h!42099 tokens!494)))))

(assert (=> d!936592 (= (singleton!1052 (h!42099 tokens!494)) lt!1131575)))

(declare-fun b!3329448 () Bool)

(assert (=> b!3329448 (= e!2070525 (isBalanced!3315 (c!565318 lt!1131575)))))

(assert (= (and d!936592 res!1350407) b!3329448))

(declare-fun m!3670811 () Bool)

(assert (=> d!936592 m!3670811))

(declare-fun m!3670813 () Bool)

(assert (=> d!936592 m!3670813))

(declare-fun m!3670815 () Bool)

(assert (=> b!3329448 m!3670815))

(assert (=> d!936320 d!936592))

(declare-fun b!3329450 () Bool)

(declare-fun e!2070526 () List!36801)

(declare-fun e!2070527 () List!36801)

(assert (=> b!3329450 (= e!2070526 e!2070527)))

(declare-fun c!565441 () Bool)

(assert (=> b!3329450 (= c!565441 ((_ is Leaf!17321) (c!565317 lt!1131268)))))

(declare-fun d!936594 () Bool)

(declare-fun c!565440 () Bool)

(assert (=> d!936594 (= c!565440 ((_ is Empty!11043) (c!565317 lt!1131268)))))

(assert (=> d!936594 (= (list!13213 (c!565317 lt!1131268)) e!2070526)))

(declare-fun b!3329449 () Bool)

(assert (=> b!3329449 (= e!2070526 Nil!36677)))

(declare-fun b!3329452 () Bool)

(assert (=> b!3329452 (= e!2070527 (++!8917 (list!13213 (left!28584 (c!565317 lt!1131268))) (list!13213 (right!28914 (c!565317 lt!1131268)))))))

(declare-fun b!3329451 () Bool)

(assert (=> b!3329451 (= e!2070527 (list!13217 (xs!14181 (c!565317 lt!1131268))))))

(assert (= (and d!936594 c!565440) b!3329449))

(assert (= (and d!936594 (not c!565440)) b!3329450))

(assert (= (and b!3329450 c!565441) b!3329451))

(assert (= (and b!3329450 (not c!565441)) b!3329452))

(declare-fun m!3670817 () Bool)

(assert (=> b!3329452 m!3670817))

(declare-fun m!3670819 () Bool)

(assert (=> b!3329452 m!3670819))

(assert (=> b!3329452 m!3670817))

(assert (=> b!3329452 m!3670819))

(declare-fun m!3670821 () Bool)

(assert (=> b!3329452 m!3670821))

(declare-fun m!3670823 () Bool)

(assert (=> b!3329451 m!3670823))

(assert (=> d!936314 d!936594))

(declare-fun b!3329453 () Bool)

(declare-fun e!2070529 () Bool)

(declare-fun e!2070530 () Bool)

(assert (=> b!3329453 (= e!2070529 e!2070530)))

(declare-fun res!1350412 () Bool)

(assert (=> b!3329453 (=> (not res!1350412) (not e!2070530))))

(declare-fun lt!1131576 () Option!7316)

(assert (=> b!3329453 (= res!1350412 (isDefined!5660 lt!1131576))))

(declare-fun b!3329454 () Bool)

(declare-fun res!1350413 () Bool)

(assert (=> b!3329454 (=> (not res!1350413) (not e!2070530))))

(assert (=> b!3329454 (= res!1350413 (< (size!27728 (_2!21224 (get!11684 lt!1131576))) (size!27728 lt!1131274)))))

(declare-fun d!936596 () Bool)

(assert (=> d!936596 e!2070529))

(declare-fun res!1350410 () Bool)

(assert (=> d!936596 (=> res!1350410 e!2070529)))

(assert (=> d!936596 (= res!1350410 (isEmpty!20847 lt!1131576))))

(declare-fun e!2070528 () Option!7316)

(assert (=> d!936596 (= lt!1131576 e!2070528)))

(declare-fun c!565442 () Bool)

(assert (=> d!936596 (= c!565442 (and ((_ is Cons!36678) (t!256931 rules!2135)) ((_ is Nil!36678) (t!256931 (t!256931 rules!2135)))))))

(declare-fun lt!1131577 () Unit!51688)

(declare-fun lt!1131578 () Unit!51688)

(assert (=> d!936596 (= lt!1131577 lt!1131578)))

(assert (=> d!936596 (isPrefix!2814 lt!1131274 lt!1131274)))

(assert (=> d!936596 (= lt!1131578 (lemmaIsPrefixRefl!1773 lt!1131274 lt!1131274))))

(assert (=> d!936596 (rulesValidInductive!1821 thiss!18206 (t!256931 rules!2135))))

(assert (=> d!936596 (= (maxPrefix!2523 thiss!18206 (t!256931 rules!2135) lt!1131274) lt!1131576)))

(declare-fun b!3329455 () Bool)

(declare-fun res!1350409 () Bool)

(assert (=> b!3329455 (=> (not res!1350409) (not e!2070530))))

(assert (=> b!3329455 (= res!1350409 (= (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131576)))) (originalCharacters!6048 (_1!21224 (get!11684 lt!1131576)))))))

(declare-fun b!3329456 () Bool)

(declare-fun res!1350414 () Bool)

(assert (=> b!3329456 (=> (not res!1350414) (not e!2070530))))

(assert (=> b!3329456 (= res!1350414 (matchR!4685 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131576)))) (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131576))))))))

(declare-fun b!3329457 () Bool)

(declare-fun lt!1131580 () Option!7316)

(declare-fun lt!1131579 () Option!7316)

(assert (=> b!3329457 (= e!2070528 (ite (and ((_ is None!7315) lt!1131580) ((_ is None!7315) lt!1131579)) None!7315 (ite ((_ is None!7315) lt!1131579) lt!1131580 (ite ((_ is None!7315) lt!1131580) lt!1131579 (ite (>= (size!27725 (_1!21224 (v!36211 lt!1131580))) (size!27725 (_1!21224 (v!36211 lt!1131579)))) lt!1131580 lt!1131579)))))))

(declare-fun call!241384 () Option!7316)

(assert (=> b!3329457 (= lt!1131580 call!241384)))

(assert (=> b!3329457 (= lt!1131579 (maxPrefix!2523 thiss!18206 (t!256931 (t!256931 rules!2135)) lt!1131274))))

(declare-fun bm!241379 () Bool)

(assert (=> bm!241379 (= call!241384 (maxPrefixOneRule!1656 thiss!18206 (h!42098 (t!256931 rules!2135)) lt!1131274))))

(declare-fun b!3329458 () Bool)

(assert (=> b!3329458 (= e!2070528 call!241384)))

(declare-fun b!3329459 () Bool)

(declare-fun res!1350411 () Bool)

(assert (=> b!3329459 (=> (not res!1350411) (not e!2070530))))

(assert (=> b!3329459 (= res!1350411 (= (++!8917 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131576)))) (_2!21224 (get!11684 lt!1131576))) lt!1131274))))

(declare-fun b!3329460 () Bool)

(declare-fun res!1350408 () Bool)

(assert (=> b!3329460 (=> (not res!1350408) (not e!2070530))))

(assert (=> b!3329460 (= res!1350408 (= (value!172479 (_1!21224 (get!11684 lt!1131576))) (apply!8472 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131576)))) (seqFromList!3722 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131576)))))))))

(declare-fun b!3329461 () Bool)

(assert (=> b!3329461 (= e!2070530 (contains!6650 (t!256931 rules!2135) (rule!7856 (_1!21224 (get!11684 lt!1131576)))))))

(assert (= (and d!936596 c!565442) b!3329458))

(assert (= (and d!936596 (not c!565442)) b!3329457))

(assert (= (or b!3329458 b!3329457) bm!241379))

(assert (= (and d!936596 (not res!1350410)) b!3329453))

(assert (= (and b!3329453 res!1350412) b!3329455))

(assert (= (and b!3329455 res!1350409) b!3329454))

(assert (= (and b!3329454 res!1350413) b!3329459))

(assert (= (and b!3329459 res!1350411) b!3329460))

(assert (= (and b!3329460 res!1350408) b!3329456))

(assert (= (and b!3329456 res!1350414) b!3329461))

(declare-fun m!3670825 () Bool)

(assert (=> b!3329453 m!3670825))

(declare-fun m!3670827 () Bool)

(assert (=> b!3329454 m!3670827))

(declare-fun m!3670829 () Bool)

(assert (=> b!3329454 m!3670829))

(assert (=> b!3329454 m!3669925))

(assert (=> b!3329461 m!3670827))

(declare-fun m!3670831 () Bool)

(assert (=> b!3329461 m!3670831))

(assert (=> b!3329459 m!3670827))

(declare-fun m!3670833 () Bool)

(assert (=> b!3329459 m!3670833))

(assert (=> b!3329459 m!3670833))

(declare-fun m!3670835 () Bool)

(assert (=> b!3329459 m!3670835))

(assert (=> b!3329459 m!3670835))

(declare-fun m!3670837 () Bool)

(assert (=> b!3329459 m!3670837))

(assert (=> b!3329456 m!3670827))

(assert (=> b!3329456 m!3670833))

(assert (=> b!3329456 m!3670833))

(assert (=> b!3329456 m!3670835))

(assert (=> b!3329456 m!3670835))

(declare-fun m!3670839 () Bool)

(assert (=> b!3329456 m!3670839))

(declare-fun m!3670841 () Bool)

(assert (=> d!936596 m!3670841))

(assert (=> d!936596 m!3670019))

(assert (=> d!936596 m!3670021))

(declare-fun m!3670843 () Bool)

(assert (=> d!936596 m!3670843))

(declare-fun m!3670845 () Bool)

(assert (=> b!3329457 m!3670845))

(declare-fun m!3670847 () Bool)

(assert (=> bm!241379 m!3670847))

(assert (=> b!3329455 m!3670827))

(assert (=> b!3329455 m!3670833))

(assert (=> b!3329455 m!3670833))

(assert (=> b!3329455 m!3670835))

(assert (=> b!3329460 m!3670827))

(declare-fun m!3670849 () Bool)

(assert (=> b!3329460 m!3670849))

(assert (=> b!3329460 m!3670849))

(declare-fun m!3670851 () Bool)

(assert (=> b!3329460 m!3670851))

(assert (=> b!3328962 d!936596))

(declare-fun d!936598 () Bool)

(assert (=> d!936598 (= (isEmpty!20847 lt!1131391) (not ((_ is Some!7315) lt!1131391)))))

(assert (=> d!936294 d!936598))

(declare-fun b!3329473 () Bool)

(declare-fun e!2070537 () Bool)

(assert (=> b!3329473 (= e!2070537 (>= (size!27728 lt!1131274) (size!27728 lt!1131274)))))

(declare-fun b!3329471 () Bool)

(declare-fun res!1350424 () Bool)

(declare-fun e!2070539 () Bool)

(assert (=> b!3329471 (=> (not res!1350424) (not e!2070539))))

(declare-fun head!7163 (List!36801) C!20372)

(assert (=> b!3329471 (= res!1350424 (= (head!7163 lt!1131274) (head!7163 lt!1131274)))))

(declare-fun b!3329472 () Bool)

(assert (=> b!3329472 (= e!2070539 (isPrefix!2814 (tail!5300 lt!1131274) (tail!5300 lt!1131274)))))

(declare-fun b!3329470 () Bool)

(declare-fun e!2070538 () Bool)

(assert (=> b!3329470 (= e!2070538 e!2070539)))

(declare-fun res!1350425 () Bool)

(assert (=> b!3329470 (=> (not res!1350425) (not e!2070539))))

(assert (=> b!3329470 (= res!1350425 (not ((_ is Nil!36677) lt!1131274)))))

(declare-fun d!936600 () Bool)

(assert (=> d!936600 e!2070537))

(declare-fun res!1350426 () Bool)

(assert (=> d!936600 (=> res!1350426 e!2070537)))

(declare-fun lt!1131583 () Bool)

(assert (=> d!936600 (= res!1350426 (not lt!1131583))))

(assert (=> d!936600 (= lt!1131583 e!2070538)))

(declare-fun res!1350423 () Bool)

(assert (=> d!936600 (=> res!1350423 e!2070538)))

(assert (=> d!936600 (= res!1350423 ((_ is Nil!36677) lt!1131274))))

(assert (=> d!936600 (= (isPrefix!2814 lt!1131274 lt!1131274) lt!1131583)))

(assert (= (and d!936600 (not res!1350423)) b!3329470))

(assert (= (and b!3329470 res!1350425) b!3329471))

(assert (= (and b!3329471 res!1350424) b!3329472))

(assert (= (and d!936600 (not res!1350426)) b!3329473))

(assert (=> b!3329473 m!3669925))

(assert (=> b!3329473 m!3669925))

(declare-fun m!3670853 () Bool)

(assert (=> b!3329471 m!3670853))

(assert (=> b!3329471 m!3670853))

(assert (=> b!3329472 m!3669945))

(assert (=> b!3329472 m!3669945))

(assert (=> b!3329472 m!3669945))

(assert (=> b!3329472 m!3669945))

(declare-fun m!3670855 () Bool)

(assert (=> b!3329472 m!3670855))

(assert (=> d!936294 d!936600))

(declare-fun d!936602 () Bool)

(assert (=> d!936602 (isPrefix!2814 lt!1131274 lt!1131274)))

(declare-fun lt!1131586 () Unit!51688)

(declare-fun choose!19293 (List!36801 List!36801) Unit!51688)

(assert (=> d!936602 (= lt!1131586 (choose!19293 lt!1131274 lt!1131274))))

(assert (=> d!936602 (= (lemmaIsPrefixRefl!1773 lt!1131274 lt!1131274) lt!1131586)))

(declare-fun bs!551224 () Bool)

(assert (= bs!551224 d!936602))

(assert (=> bs!551224 m!3670019))

(declare-fun m!3670857 () Bool)

(assert (=> bs!551224 m!3670857))

(assert (=> d!936294 d!936602))

(declare-fun d!936604 () Bool)

(assert (=> d!936604 true))

(declare-fun lt!1131589 () Bool)

(declare-fun lambda!119797 () Int)

(declare-fun forall!7662 (List!36802 Int) Bool)

(assert (=> d!936604 (= lt!1131589 (forall!7662 rules!2135 lambda!119797))))

(declare-fun e!2070544 () Bool)

(assert (=> d!936604 (= lt!1131589 e!2070544)))

(declare-fun res!1350431 () Bool)

(assert (=> d!936604 (=> res!1350431 e!2070544)))

(assert (=> d!936604 (= res!1350431 (not ((_ is Cons!36678) rules!2135)))))

(assert (=> d!936604 (= (rulesValidInductive!1821 thiss!18206 rules!2135) lt!1131589)))

(declare-fun b!3329478 () Bool)

(declare-fun e!2070545 () Bool)

(assert (=> b!3329478 (= e!2070544 e!2070545)))

(declare-fun res!1350432 () Bool)

(assert (=> b!3329478 (=> (not res!1350432) (not e!2070545))))

(declare-fun ruleValid!1680 (LexerInterface!4923 Rule!10468) Bool)

(assert (=> b!3329478 (= res!1350432 (ruleValid!1680 thiss!18206 (h!42098 rules!2135)))))

(declare-fun b!3329479 () Bool)

(assert (=> b!3329479 (= e!2070545 (rulesValidInductive!1821 thiss!18206 (t!256931 rules!2135)))))

(assert (= (and d!936604 (not res!1350431)) b!3329478))

(assert (= (and b!3329478 res!1350432) b!3329479))

(declare-fun m!3670859 () Bool)

(assert (=> d!936604 m!3670859))

(declare-fun m!3670861 () Bool)

(assert (=> b!3329478 m!3670861))

(assert (=> b!3329479 m!3670843))

(assert (=> d!936294 d!936604))

(declare-fun d!936606 () Bool)

(declare-fun lt!1131592 () Token!10034)

(assert (=> d!936606 (= lt!1131592 (apply!8473 (list!13212 (_1!21225 lt!1131436)) 0))))

(declare-fun apply!8474 (Conc!11044 Int) Token!10034)

(assert (=> d!936606 (= lt!1131592 (apply!8474 (c!565318 (_1!21225 lt!1131436)) 0))))

(declare-fun e!2070548 () Bool)

(assert (=> d!936606 e!2070548))

(declare-fun res!1350435 () Bool)

(assert (=> d!936606 (=> (not res!1350435) (not e!2070548))))

(assert (=> d!936606 (= res!1350435 (<= 0 0))))

(assert (=> d!936606 (= (apply!8470 (_1!21225 lt!1131436) 0) lt!1131592)))

(declare-fun b!3329484 () Bool)

(assert (=> b!3329484 (= e!2070548 (< 0 (size!27729 (_1!21225 lt!1131436))))))

(assert (= (and d!936606 res!1350435) b!3329484))

(assert (=> d!936606 m!3670477))

(assert (=> d!936606 m!3670477))

(declare-fun m!3670863 () Bool)

(assert (=> d!936606 m!3670863))

(declare-fun m!3670865 () Bool)

(assert (=> d!936606 m!3670865))

(assert (=> b!3329484 m!3670201))

(assert (=> b!3329122 d!936606))

(declare-fun d!936608 () Bool)

(declare-fun lt!1131595 () Int)

(assert (=> d!936608 (= lt!1131595 (size!27728 (list!13209 (_2!21225 lt!1131434))))))

(declare-fun size!27737 (Conc!11043) Int)

(assert (=> d!936608 (= lt!1131595 (size!27737 (c!565317 (_2!21225 lt!1131434))))))

(assert (=> d!936608 (= (size!27731 (_2!21225 lt!1131434)) lt!1131595)))

(declare-fun bs!551225 () Bool)

(assert (= bs!551225 d!936608))

(assert (=> bs!551225 m!3670169))

(assert (=> bs!551225 m!3670169))

(declare-fun m!3670867 () Bool)

(assert (=> bs!551225 m!3670867))

(declare-fun m!3670869 () Bool)

(assert (=> bs!551225 m!3670869))

(assert (=> b!3329101 d!936608))

(declare-fun d!936610 () Bool)

(declare-fun lt!1131596 () Int)

(assert (=> d!936610 (= lt!1131596 (size!27728 (list!13209 (seqFromList!3722 lt!1131274))))))

(assert (=> d!936610 (= lt!1131596 (size!27737 (c!565317 (seqFromList!3722 lt!1131274))))))

(assert (=> d!936610 (= (size!27731 (seqFromList!3722 lt!1131274)) lt!1131596)))

(declare-fun bs!551226 () Bool)

(assert (= bs!551226 d!936610))

(assert (=> bs!551226 m!3669661))

(assert (=> bs!551226 m!3670171))

(assert (=> bs!551226 m!3670171))

(declare-fun m!3670871 () Bool)

(assert (=> bs!551226 m!3670871))

(declare-fun m!3670873 () Bool)

(assert (=> bs!551226 m!3670873))

(assert (=> b!3329101 d!936610))

(declare-fun d!936612 () Bool)

(declare-fun e!2070551 () Bool)

(assert (=> d!936612 e!2070551))

(declare-fun res!1350438 () Bool)

(assert (=> d!936612 (=> (not res!1350438) (not e!2070551))))

(declare-fun lt!1131599 () BalanceConc!21700)

(assert (=> d!936612 (= res!1350438 (= (list!13209 lt!1131599) lt!1131274))))

(declare-fun fromList!684 (List!36801) Conc!11043)

(assert (=> d!936612 (= lt!1131599 (BalanceConc!21701 (fromList!684 lt!1131274)))))

(assert (=> d!936612 (= (fromListB!1647 lt!1131274) lt!1131599)))

(declare-fun b!3329487 () Bool)

(declare-fun isBalanced!3317 (Conc!11043) Bool)

(assert (=> b!3329487 (= e!2070551 (isBalanced!3317 (fromList!684 lt!1131274)))))

(assert (= (and d!936612 res!1350438) b!3329487))

(declare-fun m!3670875 () Bool)

(assert (=> d!936612 m!3670875))

(declare-fun m!3670877 () Bool)

(assert (=> d!936612 m!3670877))

(assert (=> b!3329487 m!3670877))

(assert (=> b!3329487 m!3670877))

(declare-fun m!3670879 () Bool)

(assert (=> b!3329487 m!3670879))

(assert (=> d!936346 d!936612))

(declare-fun d!936614 () Bool)

(declare-fun res!1350443 () Bool)

(declare-fun e!2070556 () Bool)

(assert (=> d!936614 (=> res!1350443 e!2070556)))

(assert (=> d!936614 (= res!1350443 ((_ is Nil!36678) rules!2135))))

(assert (=> d!936614 (= (noDuplicateTag!1971 thiss!18206 rules!2135 Nil!36681) e!2070556)))

(declare-fun b!3329492 () Bool)

(declare-fun e!2070557 () Bool)

(assert (=> b!3329492 (= e!2070556 e!2070557)))

(declare-fun res!1350444 () Bool)

(assert (=> b!3329492 (=> (not res!1350444) (not e!2070557))))

(declare-fun contains!6652 (List!36805 String!41154) Bool)

(assert (=> b!3329492 (= res!1350444 (not (contains!6652 Nil!36681 (tag!5886 (h!42098 rules!2135)))))))

(declare-fun b!3329493 () Bool)

(assert (=> b!3329493 (= e!2070557 (noDuplicateTag!1971 thiss!18206 (t!256931 rules!2135) (Cons!36681 (tag!5886 (h!42098 rules!2135)) Nil!36681)))))

(assert (= (and d!936614 (not res!1350443)) b!3329492))

(assert (= (and b!3329492 res!1350444) b!3329493))

(declare-fun m!3670881 () Bool)

(assert (=> b!3329492 m!3670881))

(declare-fun m!3670883 () Bool)

(assert (=> b!3329493 m!3670883))

(assert (=> b!3329108 d!936614))

(assert (=> b!3328965 d!936538))

(declare-fun d!936616 () Bool)

(declare-fun dynLambda!15138 (Int BalanceConc!21700) TokenValue!5564)

(assert (=> d!936616 (= (apply!8472 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))) (seqFromList!3722 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391))))) (dynLambda!15138 (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))) (seqFromList!3722 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391))))))))

(declare-fun b_lambda!94043 () Bool)

(assert (=> (not b_lambda!94043) (not d!936616)))

(declare-fun tb!174409 () Bool)

(declare-fun t!257026 () Bool)

(assert (=> (and b!3328722 (= (toValue!7498 (transformation!5334 (h!42098 rules!2135))) (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257026) tb!174409))

(declare-fun result!217530 () Bool)

(assert (=> tb!174409 (= result!217530 (inv!21 (dynLambda!15138 (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))) (seqFromList!3722 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391)))))))))

(declare-fun m!3670885 () Bool)

(assert (=> tb!174409 m!3670885))

(assert (=> d!936616 t!257026))

(declare-fun b_and!229597 () Bool)

(assert (= b_and!229495 (and (=> t!257026 result!217530) b_and!229597)))

(declare-fun tb!174411 () Bool)

(declare-fun t!257028 () Bool)

(assert (=> (and b!3329174 (= (toValue!7498 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257028) tb!174411))

(declare-fun result!217534 () Bool)

(assert (= result!217534 result!217530))

(assert (=> d!936616 t!257028))

(declare-fun b_and!229599 () Bool)

(assert (= b_and!229563 (and (=> t!257028 result!217534) b_and!229599)))

(declare-fun t!257030 () Bool)

(declare-fun tb!174413 () Bool)

(assert (=> (and b!3328729 (= (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241))) (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257030) tb!174413))

(declare-fun result!217536 () Bool)

(assert (= result!217536 result!217530))

(assert (=> d!936616 t!257030))

(declare-fun b_and!229601 () Bool)

(assert (= b_and!229491 (and (=> t!257030 result!217536) b_and!229601)))

(declare-fun tb!174415 () Bool)

(declare-fun t!257032 () Bool)

(assert (=> (and b!3328728 (= (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257032) tb!174415))

(declare-fun result!217538 () Bool)

(assert (= result!217538 result!217530))

(assert (=> d!936616 t!257032))

(declare-fun b_and!229603 () Bool)

(assert (= b_and!229499 (and (=> t!257032 result!217538) b_and!229603)))

(declare-fun tb!174417 () Bool)

(declare-fun t!257034 () Bool)

(assert (=> (and b!3329155 (= (toValue!7498 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257034) tb!174417))

(declare-fun result!217540 () Bool)

(assert (= result!217540 result!217530))

(assert (=> d!936616 t!257034))

(declare-fun b_and!229605 () Bool)

(assert (= b_and!229559 (and (=> t!257034 result!217540) b_and!229605)))

(assert (=> d!936616 m!3670029))

(declare-fun m!3670887 () Bool)

(assert (=> d!936616 m!3670887))

(assert (=> b!3328965 d!936616))

(declare-fun d!936618 () Bool)

(assert (=> d!936618 (= (seqFromList!3722 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391)))) (fromListB!1647 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131391)))))))

(declare-fun bs!551227 () Bool)

(assert (= bs!551227 d!936618))

(declare-fun m!3670889 () Bool)

(assert (=> bs!551227 m!3670889))

(assert (=> b!3328965 d!936618))

(declare-fun d!936620 () Bool)

(assert (=> d!936620 (= (list!13212 (_1!21225 lt!1131434)) (list!13215 (c!565318 (_1!21225 lt!1131434))))))

(declare-fun bs!551228 () Bool)

(assert (= bs!551228 d!936620))

(declare-fun m!3670891 () Bool)

(assert (=> bs!551228 m!3670891))

(assert (=> b!3329105 d!936620))

(declare-fun b!3329506 () Bool)

(declare-fun e!2070568 () tuple2!36186)

(assert (=> b!3329506 (= e!2070568 (tuple2!36187 Nil!36679 (list!13209 (seqFromList!3722 lt!1131274))))))

(declare-fun b!3329507 () Bool)

(declare-fun lt!1131607 () Option!7316)

(declare-fun lt!1131608 () tuple2!36186)

(assert (=> b!3329507 (= e!2070568 (tuple2!36187 (Cons!36679 (_1!21224 (v!36211 lt!1131607)) (_1!21227 lt!1131608)) (_2!21227 lt!1131608)))))

(assert (=> b!3329507 (= lt!1131608 (lexList!1378 thiss!18206 rules!2135 (_2!21224 (v!36211 lt!1131607))))))

(declare-fun d!936622 () Bool)

(declare-fun e!2070567 () Bool)

(assert (=> d!936622 e!2070567))

(declare-fun c!565448 () Bool)

(declare-fun lt!1131606 () tuple2!36186)

(assert (=> d!936622 (= c!565448 (> (size!27735 (_1!21227 lt!1131606)) 0))))

(assert (=> d!936622 (= lt!1131606 e!2070568)))

(declare-fun c!565449 () Bool)

(assert (=> d!936622 (= c!565449 ((_ is Some!7315) lt!1131607))))

(assert (=> d!936622 (= lt!1131607 (maxPrefix!2523 thiss!18206 rules!2135 (list!13209 (seqFromList!3722 lt!1131274))))))

(assert (=> d!936622 (= (lexList!1378 thiss!18206 rules!2135 (list!13209 (seqFromList!3722 lt!1131274))) lt!1131606)))

(declare-fun b!3329508 () Bool)

(assert (=> b!3329508 (= e!2070567 (= (_2!21227 lt!1131606) (list!13209 (seqFromList!3722 lt!1131274))))))

(declare-fun b!3329509 () Bool)

(declare-fun e!2070569 () Bool)

(assert (=> b!3329509 (= e!2070567 e!2070569)))

(declare-fun res!1350447 () Bool)

(assert (=> b!3329509 (= res!1350447 (< (size!27728 (_2!21227 lt!1131606)) (size!27728 (list!13209 (seqFromList!3722 lt!1131274)))))))

(assert (=> b!3329509 (=> (not res!1350447) (not e!2070569))))

(declare-fun b!3329510 () Bool)

(assert (=> b!3329510 (= e!2070569 (not (isEmpty!20848 (_1!21227 lt!1131606))))))

(assert (= (and d!936622 c!565449) b!3329507))

(assert (= (and d!936622 (not c!565449)) b!3329506))

(assert (= (and d!936622 c!565448) b!3329509))

(assert (= (and d!936622 (not c!565448)) b!3329508))

(assert (= (and b!3329509 res!1350447) b!3329510))

(declare-fun m!3670893 () Bool)

(assert (=> b!3329507 m!3670893))

(declare-fun m!3670895 () Bool)

(assert (=> d!936622 m!3670895))

(assert (=> d!936622 m!3670171))

(declare-fun m!3670897 () Bool)

(assert (=> d!936622 m!3670897))

(declare-fun m!3670899 () Bool)

(assert (=> b!3329509 m!3670899))

(assert (=> b!3329509 m!3670171))

(assert (=> b!3329509 m!3670871))

(declare-fun m!3670901 () Bool)

(assert (=> b!3329510 m!3670901))

(assert (=> b!3329105 d!936622))

(declare-fun d!936624 () Bool)

(assert (=> d!936624 (= (list!13209 (seqFromList!3722 lt!1131274)) (list!13213 (c!565317 (seqFromList!3722 lt!1131274))))))

(declare-fun bs!551229 () Bool)

(assert (= bs!551229 d!936624))

(declare-fun m!3670903 () Bool)

(assert (=> bs!551229 m!3670903))

(assert (=> b!3329105 d!936624))

(declare-fun d!936626 () Bool)

(declare-fun lt!1131609 () Token!10034)

(assert (=> d!936626 (= lt!1131609 (apply!8473 (list!13212 (_1!21225 lt!1131322)) 0))))

(assert (=> d!936626 (= lt!1131609 (apply!8474 (c!565318 (_1!21225 lt!1131322)) 0))))

(declare-fun e!2070570 () Bool)

(assert (=> d!936626 e!2070570))

(declare-fun res!1350448 () Bool)

(assert (=> d!936626 (=> (not res!1350448) (not e!2070570))))

(assert (=> d!936626 (= res!1350448 (<= 0 0))))

(assert (=> d!936626 (= (apply!8470 (_1!21225 lt!1131322) 0) lt!1131609)))

(declare-fun b!3329511 () Bool)

(assert (=> b!3329511 (= e!2070570 (< 0 (size!27729 (_1!21225 lt!1131322))))))

(assert (= (and d!936626 res!1350448) b!3329511))

(declare-fun m!3670905 () Bool)

(assert (=> d!936626 m!3670905))

(assert (=> d!936626 m!3670905))

(declare-fun m!3670907 () Bool)

(assert (=> d!936626 m!3670907))

(declare-fun m!3670909 () Bool)

(assert (=> d!936626 m!3670909))

(assert (=> b!3329511 m!3669813))

(assert (=> b!3328815 d!936626))

(declare-fun d!936628 () Bool)

(declare-fun e!2070573 () Bool)

(assert (=> d!936628 e!2070573))

(declare-fun res!1350451 () Bool)

(assert (=> d!936628 (=> (not res!1350451) (not e!2070573))))

(declare-fun lt!1131612 () BalanceConc!21702)

(assert (=> d!936628 (= res!1350451 (= (list!13212 lt!1131612) tokens!494))))

(declare-fun fromList!685 (List!36803) Conc!11044)

(assert (=> d!936628 (= lt!1131612 (BalanceConc!21703 (fromList!685 tokens!494)))))

(assert (=> d!936628 (= (fromListB!1645 tokens!494) lt!1131612)))

(declare-fun b!3329514 () Bool)

(assert (=> b!3329514 (= e!2070573 (isBalanced!3315 (fromList!685 tokens!494)))))

(assert (= (and d!936628 res!1350451) b!3329514))

(declare-fun m!3670911 () Bool)

(assert (=> d!936628 m!3670911))

(declare-fun m!3670913 () Bool)

(assert (=> d!936628 m!3670913))

(assert (=> b!3329514 m!3670913))

(assert (=> b!3329514 m!3670913))

(declare-fun m!3670915 () Bool)

(assert (=> b!3329514 m!3670915))

(assert (=> d!936246 d!936628))

(declare-fun d!936630 () Bool)

(assert (=> d!936630 (= (list!13209 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))) (list!13213 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))))))

(declare-fun bs!551230 () Bool)

(assert (= bs!551230 d!936630))

(declare-fun m!3670917 () Bool)

(assert (=> bs!551230 m!3670917))

(assert (=> b!3328751 d!936630))

(declare-fun lt!1131615 () Bool)

(declare-fun d!936632 () Bool)

(assert (=> d!936632 (= lt!1131615 (isEmpty!20840 (list!13209 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)))))))))

(declare-fun isEmpty!20851 (Conc!11043) Bool)

(assert (=> d!936632 (= lt!1131615 (isEmpty!20851 (c!565317 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241)))))))))

(assert (=> d!936632 (= (isEmpty!20843 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 separatorToken!241))))) lt!1131615)))

(declare-fun bs!551231 () Bool)

(assert (= bs!551231 d!936632))

(declare-fun m!3670919 () Bool)

(assert (=> bs!551231 m!3670919))

(assert (=> bs!551231 m!3670919))

(declare-fun m!3670921 () Bool)

(assert (=> bs!551231 m!3670921))

(declare-fun m!3670923 () Bool)

(assert (=> bs!551231 m!3670923))

(assert (=> b!3329124 d!936632))

(assert (=> b!3329124 d!936482))

(assert (=> b!3329124 d!936480))

(assert (=> b!3329124 d!936478))

(declare-fun d!936634 () Bool)

(assert (=> d!936634 (= (list!13209 (_2!21225 lt!1131434)) (list!13213 (c!565317 (_2!21225 lt!1131434))))))

(declare-fun bs!551232 () Bool)

(assert (= bs!551232 d!936634))

(declare-fun m!3670925 () Bool)

(assert (=> bs!551232 m!3670925))

(assert (=> b!3329103 d!936634))

(assert (=> b!3329103 d!936622))

(assert (=> b!3329103 d!936624))

(declare-fun d!936636 () Bool)

(assert (=> d!936636 (= (list!13209 lt!1131337) (list!13213 (c!565317 lt!1131337)))))

(declare-fun bs!551233 () Bool)

(assert (= bs!551233 d!936636))

(declare-fun m!3670927 () Bool)

(assert (=> bs!551233 m!3670927))

(assert (=> d!936270 d!936636))

(declare-fun d!936638 () Bool)

(assert (=> d!936638 true))

(declare-fun lambda!119800 () Int)

(declare-fun order!19205 () Int)

(declare-fun dynLambda!15139 (Int Int) Int)

(assert (=> d!936638 (< (dynLambda!15132 order!19197 (toChars!7357 (transformation!5334 (h!42098 rules!2135)))) (dynLambda!15139 order!19205 lambda!119800))))

(assert (=> d!936638 true))

(assert (=> d!936638 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (h!42098 rules!2135)))) (dynLambda!15139 order!19205 lambda!119800))))

(declare-fun Forall!1307 (Int) Bool)

(assert (=> d!936638 (= (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toValue!7498 (transformation!5334 (h!42098 rules!2135)))) (Forall!1307 lambda!119800))))

(declare-fun bs!551234 () Bool)

(assert (= bs!551234 d!936638))

(declare-fun m!3670929 () Bool)

(assert (=> bs!551234 m!3670929))

(assert (=> d!936252 d!936638))

(declare-fun d!936640 () Bool)

(assert (=> d!936640 (= (isEmpty!20840 (originalCharacters!6048 separatorToken!241)) ((_ is Nil!36677) (originalCharacters!6048 separatorToken!241)))))

(assert (=> d!936202 d!936640))

(assert (=> b!3328974 d!936580))

(declare-fun d!936642 () Bool)

(assert (=> d!936642 (= (list!13209 lt!1131341) (list!13213 (c!565317 lt!1131341)))))

(declare-fun bs!551235 () Bool)

(assert (= bs!551235 d!936642))

(declare-fun m!3670931 () Bool)

(assert (=> bs!551235 m!3670931))

(assert (=> d!936276 d!936642))

(declare-fun b!3329519 () Bool)

(declare-fun e!2070575 () Bool)

(assert (=> b!3329519 (= e!2070575 (inv!17 (value!172479 (h!42099 (t!256932 tokens!494)))))))

(declare-fun b!3329520 () Bool)

(declare-fun e!2070576 () Bool)

(assert (=> b!3329520 (= e!2070576 (inv!15 (value!172479 (h!42099 (t!256932 tokens!494)))))))

(declare-fun b!3329522 () Bool)

(declare-fun res!1350452 () Bool)

(assert (=> b!3329522 (=> res!1350452 e!2070576)))

(assert (=> b!3329522 (= res!1350452 (not ((_ is IntegerValue!16694) (value!172479 (h!42099 (t!256932 tokens!494))))))))

(assert (=> b!3329522 (= e!2070575 e!2070576)))

(declare-fun b!3329523 () Bool)

(declare-fun e!2070574 () Bool)

(assert (=> b!3329523 (= e!2070574 e!2070575)))

(declare-fun c!565452 () Bool)

(assert (=> b!3329523 (= c!565452 ((_ is IntegerValue!16693) (value!172479 (h!42099 (t!256932 tokens!494)))))))

(declare-fun d!936644 () Bool)

(declare-fun c!565451 () Bool)

(assert (=> d!936644 (= c!565451 ((_ is IntegerValue!16692) (value!172479 (h!42099 (t!256932 tokens!494)))))))

(assert (=> d!936644 (= (inv!21 (value!172479 (h!42099 (t!256932 tokens!494)))) e!2070574)))

(declare-fun b!3329521 () Bool)

(assert (=> b!3329521 (= e!2070574 (inv!16 (value!172479 (h!42099 (t!256932 tokens!494)))))))

(assert (= (and d!936644 c!565451) b!3329521))

(assert (= (and d!936644 (not c!565451)) b!3329523))

(assert (= (and b!3329523 c!565452) b!3329519))

(assert (= (and b!3329523 (not c!565452)) b!3329522))

(assert (= (and b!3329522 (not res!1350452)) b!3329520))

(declare-fun m!3670933 () Bool)

(assert (=> b!3329519 m!3670933))

(declare-fun m!3670935 () Bool)

(assert (=> b!3329520 m!3670935))

(declare-fun m!3670937 () Bool)

(assert (=> b!3329521 m!3670937))

(assert (=> b!3329172 d!936644))

(declare-fun d!936646 () Bool)

(declare-fun lt!1131616 () Bool)

(assert (=> d!936646 (= lt!1131616 (isEmpty!20840 (list!13209 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))))))))))

(assert (=> d!936646 (= lt!1131616 (isEmpty!20851 (c!565317 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))))))))))

(assert (=> d!936646 (= (isEmpty!20843 (_2!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)))))) lt!1131616)))

(declare-fun bs!551236 () Bool)

(assert (= bs!551236 d!936646))

(declare-fun m!3670939 () Bool)

(assert (=> bs!551236 m!3670939))

(assert (=> bs!551236 m!3670939))

(declare-fun m!3670941 () Bool)

(assert (=> bs!551236 m!3670941))

(declare-fun m!3670943 () Bool)

(assert (=> bs!551236 m!3670943))

(assert (=> b!3328817 d!936646))

(declare-fun b!3329524 () Bool)

(declare-fun e!2070578 () Bool)

(declare-fun e!2070577 () Bool)

(assert (=> b!3329524 (= e!2070578 e!2070577)))

(declare-fun res!1350454 () Bool)

(declare-fun lt!1131617 () tuple2!36182)

(assert (=> b!3329524 (= res!1350454 (< (size!27731 (_2!21225 lt!1131617)) (size!27731 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))))))))

(assert (=> b!3329524 (=> (not res!1350454) (not e!2070577))))

(declare-fun b!3329525 () Bool)

(assert (=> b!3329525 (= e!2070577 (not (isEmpty!20841 (_1!21225 lt!1131617))))))

(declare-fun b!3329526 () Bool)

(declare-fun e!2070579 () Bool)

(assert (=> b!3329526 (= e!2070579 (= (list!13209 (_2!21225 lt!1131617)) (_2!21227 (lexList!1378 thiss!18206 rules!2135 (list!13209 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))))))))))

(declare-fun d!936648 () Bool)

(assert (=> d!936648 e!2070579))

(declare-fun res!1350453 () Bool)

(assert (=> d!936648 (=> (not res!1350453) (not e!2070579))))

(assert (=> d!936648 (= res!1350453 e!2070578)))

(declare-fun c!565453 () Bool)

(assert (=> d!936648 (= c!565453 (> (size!27729 (_1!21225 lt!1131617)) 0))))

(assert (=> d!936648 (= lt!1131617 (lexTailRecV2!988 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))) (BalanceConc!21701 Empty!11043) (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))) (BalanceConc!21703 Empty!11044)))))

(assert (=> d!936648 (= (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)))) lt!1131617)))

(declare-fun b!3329527 () Bool)

(assert (=> b!3329527 (= e!2070578 (= (_2!21225 lt!1131617) (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)))))))

(declare-fun b!3329528 () Bool)

(declare-fun res!1350455 () Bool)

(assert (=> b!3329528 (=> (not res!1350455) (not e!2070579))))

(assert (=> b!3329528 (= res!1350455 (= (list!13212 (_1!21225 lt!1131617)) (_1!21227 (lexList!1378 thiss!18206 rules!2135 (list!13209 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))))))))))

(assert (= (and d!936648 c!565453) b!3329524))

(assert (= (and d!936648 (not c!565453)) b!3329527))

(assert (= (and b!3329524 res!1350454) b!3329525))

(assert (= (and d!936648 res!1350453) b!3329528))

(assert (= (and b!3329528 res!1350455) b!3329526))

(declare-fun m!3670945 () Bool)

(assert (=> d!936648 m!3670945))

(assert (=> d!936648 m!3669815))

(assert (=> d!936648 m!3669815))

(declare-fun m!3670947 () Bool)

(assert (=> d!936648 m!3670947))

(declare-fun m!3670949 () Bool)

(assert (=> b!3329525 m!3670949))

(declare-fun m!3670951 () Bool)

(assert (=> b!3329526 m!3670951))

(assert (=> b!3329526 m!3669815))

(declare-fun m!3670953 () Bool)

(assert (=> b!3329526 m!3670953))

(assert (=> b!3329526 m!3670953))

(declare-fun m!3670955 () Bool)

(assert (=> b!3329526 m!3670955))

(declare-fun m!3670957 () Bool)

(assert (=> b!3329528 m!3670957))

(assert (=> b!3329528 m!3669815))

(assert (=> b!3329528 m!3670953))

(assert (=> b!3329528 m!3670953))

(assert (=> b!3329528 m!3670955))

(declare-fun m!3670959 () Bool)

(assert (=> b!3329524 m!3670959))

(assert (=> b!3329524 m!3669815))

(declare-fun m!3670961 () Bool)

(assert (=> b!3329524 m!3670961))

(assert (=> b!3328817 d!936648))

(declare-fun d!936650 () Bool)

(declare-fun lt!1131618 () BalanceConc!21700)

(assert (=> d!936650 (= (list!13209 lt!1131618) (printList!1471 thiss!18206 (list!13212 (singletonSeq!2430 (h!42099 tokens!494)))))))

(assert (=> d!936650 (= lt!1131618 (printTailRec!1418 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)) 0 (BalanceConc!21701 Empty!11043)))))

(assert (=> d!936650 (= (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))) lt!1131618)))

(declare-fun bs!551237 () Bool)

(assert (= bs!551237 d!936650))

(declare-fun m!3670963 () Bool)

(assert (=> bs!551237 m!3670963))

(assert (=> bs!551237 m!3669621))

(assert (=> bs!551237 m!3669821))

(assert (=> bs!551237 m!3669821))

(declare-fun m!3670965 () Bool)

(assert (=> bs!551237 m!3670965))

(assert (=> bs!551237 m!3669621))

(declare-fun m!3670967 () Bool)

(assert (=> bs!551237 m!3670967))

(assert (=> b!3328817 d!936650))

(assert (=> b!3328817 d!936320))

(declare-fun bs!551238 () Bool)

(declare-fun d!936652 () Bool)

(assert (= bs!551238 (and d!936652 d!936468)))

(declare-fun lambda!119801 () Int)

(assert (=> bs!551238 (= (= (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))) (= lambda!119801 lambda!119794))))

(assert (=> d!936652 true))

(assert (=> d!936652 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) (dynLambda!15137 order!19203 lambda!119801))))

(assert (=> d!936652 (= (equivClasses!2114 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) (Forall2!904 lambda!119801))))

(declare-fun bs!551239 () Bool)

(assert (= bs!551239 d!936652))

(declare-fun m!3670969 () Bool)

(assert (=> bs!551239 m!3670969))

(assert (=> b!3329125 d!936652))

(declare-fun d!936654 () Bool)

(assert (=> d!936654 (= (list!13209 lt!1131340) (list!13213 (c!565317 lt!1131340)))))

(declare-fun bs!551240 () Bool)

(assert (= bs!551240 d!936654))

(declare-fun m!3670971 () Bool)

(assert (=> bs!551240 m!3670971))

(assert (=> d!936274 d!936654))

(declare-fun d!936656 () Bool)

(declare-fun c!565456 () Bool)

(assert (=> d!936656 (= c!565456 ((_ is Cons!36679) (list!13212 lt!1131267)))))

(declare-fun e!2070582 () List!36801)

(assert (=> d!936656 (= (printWithSeparatorTokenList!228 thiss!18206 (list!13212 lt!1131267) separatorToken!241) e!2070582)))

(declare-fun b!3329533 () Bool)

(assert (=> b!3329533 (= e!2070582 (++!8917 (++!8917 (list!13209 (charsOf!3348 (h!42099 (list!13212 lt!1131267)))) (list!13209 (charsOf!3348 separatorToken!241))) (printWithSeparatorTokenList!228 thiss!18206 (t!256932 (list!13212 lt!1131267)) separatorToken!241)))))

(declare-fun b!3329534 () Bool)

(assert (=> b!3329534 (= e!2070582 Nil!36677)))

(assert (= (and d!936656 c!565456) b!3329533))

(assert (= (and d!936656 (not c!565456)) b!3329534))

(assert (=> b!3329533 m!3669645))

(declare-fun m!3670973 () Bool)

(assert (=> b!3329533 m!3670973))

(declare-fun m!3670975 () Bool)

(assert (=> b!3329533 m!3670975))

(assert (=> b!3329533 m!3669639))

(declare-fun m!3670977 () Bool)

(assert (=> b!3329533 m!3670977))

(declare-fun m!3670979 () Bool)

(assert (=> b!3329533 m!3670979))

(assert (=> b!3329533 m!3670975))

(assert (=> b!3329533 m!3670979))

(assert (=> b!3329533 m!3669645))

(assert (=> b!3329533 m!3669639))

(assert (=> b!3329533 m!3670977))

(assert (=> b!3329533 m!3670973))

(declare-fun m!3670981 () Bool)

(assert (=> b!3329533 m!3670981))

(assert (=> d!936274 d!936656))

(assert (=> d!936274 d!936560))

(declare-fun lt!1131641 () BalanceConc!21700)

(declare-fun d!936658 () Bool)

(declare-fun printWithSeparatorTokenListTailRec!26 (LexerInterface!4923 List!36803 Token!10034 List!36801) List!36801)

(assert (=> d!936658 (= (list!13209 lt!1131641) (printWithSeparatorTokenListTailRec!26 thiss!18206 (dropList!1137 lt!1131267 0) separatorToken!241 (list!13209 (BalanceConc!21701 Empty!11043))))))

(declare-fun e!2070612 () BalanceConc!21700)

(assert (=> d!936658 (= lt!1131641 e!2070612)))

(declare-fun c!565465 () Bool)

(assert (=> d!936658 (= c!565465 (>= 0 (size!27729 lt!1131267)))))

(declare-fun e!2070611 () Bool)

(assert (=> d!936658 e!2070611))

(declare-fun res!1350481 () Bool)

(assert (=> d!936658 (=> (not res!1350481) (not e!2070611))))

(assert (=> d!936658 (= res!1350481 (>= 0 0))))

(assert (=> d!936658 (= (printWithSeparatorTokenTailRec!44 thiss!18206 lt!1131267 separatorToken!241 0 (BalanceConc!21701 Empty!11043)) lt!1131641)))

(declare-fun b!3329579 () Bool)

(assert (=> b!3329579 (= e!2070611 (<= 0 (size!27729 lt!1131267)))))

(declare-fun b!3329580 () Bool)

(assert (=> b!3329580 (= e!2070612 (BalanceConc!21701 Empty!11043))))

(declare-fun b!3329581 () Bool)

(assert (=> b!3329581 (= e!2070612 (printWithSeparatorTokenTailRec!44 thiss!18206 lt!1131267 separatorToken!241 (+ 0 1) (++!8919 (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (apply!8470 lt!1131267 0))) (charsOf!3348 separatorToken!241))))))

(declare-fun lt!1131644 () List!36803)

(assert (=> b!3329581 (= lt!1131644 (list!13212 lt!1131267))))

(declare-fun lt!1131643 () Unit!51688)

(assert (=> b!3329581 (= lt!1131643 (lemmaDropApply!1095 lt!1131644 0))))

(assert (=> b!3329581 (= (head!7161 (drop!1929 lt!1131644 0)) (apply!8473 lt!1131644 0))))

(declare-fun lt!1131639 () Unit!51688)

(assert (=> b!3329581 (= lt!1131639 lt!1131643)))

(declare-fun lt!1131640 () List!36803)

(assert (=> b!3329581 (= lt!1131640 (list!13212 lt!1131267))))

(declare-fun lt!1131645 () Unit!51688)

(assert (=> b!3329581 (= lt!1131645 (lemmaDropTail!979 lt!1131640 0))))

(assert (=> b!3329581 (= (tail!5301 (drop!1929 lt!1131640 0)) (drop!1929 lt!1131640 (+ 0 1)))))

(declare-fun lt!1131642 () Unit!51688)

(assert (=> b!3329581 (= lt!1131642 lt!1131645)))

(assert (= (and d!936658 res!1350481) b!3329579))

(assert (= (and d!936658 c!565465) b!3329580))

(assert (= (and d!936658 (not c!565465)) b!3329581))

(assert (=> d!936658 m!3670047))

(declare-fun m!3670997 () Bool)

(assert (=> d!936658 m!3670997))

(declare-fun m!3670999 () Bool)

(assert (=> d!936658 m!3670999))

(declare-fun m!3671001 () Bool)

(assert (=> d!936658 m!3671001))

(assert (=> d!936658 m!3671001))

(assert (=> d!936658 m!3670047))

(declare-fun m!3671003 () Bool)

(assert (=> d!936658 m!3671003))

(assert (=> b!3329579 m!3670999))

(declare-fun m!3671005 () Bool)

(assert (=> b!3329581 m!3671005))

(declare-fun m!3671007 () Bool)

(assert (=> b!3329581 m!3671007))

(declare-fun m!3671009 () Bool)

(assert (=> b!3329581 m!3671009))

(declare-fun m!3671011 () Bool)

(assert (=> b!3329581 m!3671011))

(declare-fun m!3671013 () Bool)

(assert (=> b!3329581 m!3671013))

(assert (=> b!3329581 m!3671009))

(declare-fun m!3671015 () Bool)

(assert (=> b!3329581 m!3671015))

(assert (=> b!3329581 m!3669645))

(declare-fun m!3671017 () Bool)

(assert (=> b!3329581 m!3671017))

(declare-fun m!3671019 () Bool)

(assert (=> b!3329581 m!3671019))

(declare-fun m!3671021 () Bool)

(assert (=> b!3329581 m!3671021))

(assert (=> b!3329581 m!3671007))

(declare-fun m!3671023 () Bool)

(assert (=> b!3329581 m!3671023))

(assert (=> b!3329581 m!3669841))

(assert (=> b!3329581 m!3671021))

(assert (=> b!3329581 m!3671015))

(declare-fun m!3671025 () Bool)

(assert (=> b!3329581 m!3671025))

(declare-fun m!3671027 () Bool)

(assert (=> b!3329581 m!3671027))

(assert (=> b!3329581 m!3669645))

(assert (=> b!3329581 m!3671019))

(assert (=> b!3329581 m!3671017))

(declare-fun m!3671029 () Bool)

(assert (=> b!3329581 m!3671029))

(assert (=> d!936274 d!936658))

(declare-fun b!3329598 () Bool)

(declare-fun res!1350491 () Bool)

(declare-fun e!2070620 () Bool)

(assert (=> b!3329598 (=> (not res!1350491) (not e!2070620))))

(declare-fun lt!1131647 () List!36801)

(assert (=> b!3329598 (= res!1350491 (= (size!27728 lt!1131647) (+ (size!27728 lt!1131274) (size!27728 lt!1131363))))))

(declare-fun b!3329597 () Bool)

(declare-fun e!2070621 () List!36801)

(assert (=> b!3329597 (= e!2070621 (Cons!36677 (h!42097 lt!1131274) (++!8917 (t!256930 lt!1131274) lt!1131363)))))

(declare-fun d!936670 () Bool)

(assert (=> d!936670 e!2070620))

(declare-fun res!1350490 () Bool)

(assert (=> d!936670 (=> (not res!1350490) (not e!2070620))))

(assert (=> d!936670 (= res!1350490 (= (content!5011 lt!1131647) ((_ map or) (content!5011 lt!1131274) (content!5011 lt!1131363))))))

(assert (=> d!936670 (= lt!1131647 e!2070621)))

(declare-fun c!565469 () Bool)

(assert (=> d!936670 (= c!565469 ((_ is Nil!36677) lt!1131274))))

(assert (=> d!936670 (= (++!8917 lt!1131274 lt!1131363) lt!1131647)))

(declare-fun b!3329599 () Bool)

(assert (=> b!3329599 (= e!2070620 (or (not (= lt!1131363 Nil!36677)) (= lt!1131647 lt!1131274)))))

(declare-fun b!3329596 () Bool)

(assert (=> b!3329596 (= e!2070621 lt!1131363)))

(assert (= (and d!936670 c!565469) b!3329596))

(assert (= (and d!936670 (not c!565469)) b!3329597))

(assert (= (and d!936670 res!1350490) b!3329598))

(assert (= (and b!3329598 res!1350491) b!3329599))

(declare-fun m!3671031 () Bool)

(assert (=> b!3329598 m!3671031))

(assert (=> b!3329598 m!3669925))

(declare-fun m!3671033 () Bool)

(assert (=> b!3329598 m!3671033))

(declare-fun m!3671035 () Bool)

(assert (=> b!3329597 m!3671035))

(declare-fun m!3671037 () Bool)

(assert (=> d!936670 m!3671037))

(assert (=> d!936670 m!3669933))

(declare-fun m!3671039 () Bool)

(assert (=> d!936670 m!3671039))

(assert (=> d!936290 d!936670))

(assert (=> d!936290 d!936498))

(declare-fun b!3329624 () Bool)

(declare-fun e!2070638 () List!36803)

(assert (=> b!3329624 (= e!2070638 lt!1131416)))

(declare-fun d!936672 () Bool)

(declare-fun e!2070640 () Bool)

(assert (=> d!936672 e!2070640))

(declare-fun res!1350496 () Bool)

(assert (=> d!936672 (=> (not res!1350496) (not e!2070640))))

(declare-fun lt!1131655 () List!36803)

(declare-fun content!5014 (List!36803) (InoxSet Token!10034))

(assert (=> d!936672 (= res!1350496 (= ((_ map implies) (content!5014 lt!1131655) (content!5014 lt!1131416)) ((as const (InoxSet Token!10034)) true)))))

(declare-fun e!2070639 () List!36803)

(assert (=> d!936672 (= lt!1131655 e!2070639)))

(declare-fun c!565481 () Bool)

(assert (=> d!936672 (= c!565481 ((_ is Nil!36679) lt!1131416))))

(assert (=> d!936672 (= (drop!1929 lt!1131416 0) lt!1131655)))

(declare-fun b!3329625 () Bool)

(declare-fun e!2070636 () Int)

(assert (=> b!3329625 (= e!2070640 (= (size!27735 lt!1131655) e!2070636))))

(declare-fun c!565483 () Bool)

(assert (=> b!3329625 (= c!565483 (<= 0 0))))

(declare-fun b!3329626 () Bool)

(declare-fun e!2070637 () Int)

(assert (=> b!3329626 (= e!2070636 e!2070637)))

(declare-fun c!565482 () Bool)

(declare-fun call!241390 () Int)

(assert (=> b!3329626 (= c!565482 (>= 0 call!241390))))

(declare-fun b!3329627 () Bool)

(assert (=> b!3329627 (= e!2070637 (- call!241390 0))))

(declare-fun b!3329628 () Bool)

(assert (=> b!3329628 (= e!2070639 Nil!36679)))

(declare-fun bm!241385 () Bool)

(assert (=> bm!241385 (= call!241390 (size!27735 lt!1131416))))

(declare-fun b!3329629 () Bool)

(assert (=> b!3329629 (= e!2070638 (drop!1929 (t!256932 lt!1131416) (- 0 1)))))

(declare-fun b!3329630 () Bool)

(assert (=> b!3329630 (= e!2070636 call!241390)))

(declare-fun b!3329631 () Bool)

(assert (=> b!3329631 (= e!2070637 0)))

(declare-fun b!3329632 () Bool)

(assert (=> b!3329632 (= e!2070639 e!2070638)))

(declare-fun c!565480 () Bool)

(assert (=> b!3329632 (= c!565480 (<= 0 0))))

(assert (= (and d!936672 c!565481) b!3329628))

(assert (= (and d!936672 (not c!565481)) b!3329632))

(assert (= (and b!3329632 c!565480) b!3329624))

(assert (= (and b!3329632 (not c!565480)) b!3329629))

(assert (= (and d!936672 res!1350496) b!3329625))

(assert (= (and b!3329625 c!565483) b!3329630))

(assert (= (and b!3329625 (not c!565483)) b!3329626))

(assert (= (and b!3329626 c!565482) b!3329631))

(assert (= (and b!3329626 (not c!565482)) b!3329627))

(assert (= (or b!3329630 b!3329626 b!3329627) bm!241385))

(declare-fun m!3671069 () Bool)

(assert (=> d!936672 m!3671069))

(declare-fun m!3671071 () Bool)

(assert (=> d!936672 m!3671071))

(declare-fun m!3671073 () Bool)

(assert (=> b!3329625 m!3671073))

(declare-fun m!3671075 () Bool)

(assert (=> bm!241385 m!3671075))

(declare-fun m!3671077 () Bool)

(assert (=> b!3329629 m!3671077))

(assert (=> b!3328976 d!936672))

(declare-fun b!3329633 () Bool)

(declare-fun e!2070643 () List!36803)

(assert (=> b!3329633 (= e!2070643 lt!1131419)))

(declare-fun d!936686 () Bool)

(declare-fun e!2070645 () Bool)

(assert (=> d!936686 e!2070645))

(declare-fun res!1350497 () Bool)

(assert (=> d!936686 (=> (not res!1350497) (not e!2070645))))

(declare-fun lt!1131656 () List!36803)

(assert (=> d!936686 (= res!1350497 (= ((_ map implies) (content!5014 lt!1131656) (content!5014 lt!1131419)) ((as const (InoxSet Token!10034)) true)))))

(declare-fun e!2070644 () List!36803)

(assert (=> d!936686 (= lt!1131656 e!2070644)))

(declare-fun c!565485 () Bool)

(assert (=> d!936686 (= c!565485 ((_ is Nil!36679) lt!1131419))))

(assert (=> d!936686 (= (drop!1929 lt!1131419 (+ 0 1)) lt!1131656)))

(declare-fun b!3329634 () Bool)

(declare-fun e!2070641 () Int)

(assert (=> b!3329634 (= e!2070645 (= (size!27735 lt!1131656) e!2070641))))

(declare-fun c!565487 () Bool)

(assert (=> b!3329634 (= c!565487 (<= (+ 0 1) 0))))

(declare-fun b!3329635 () Bool)

(declare-fun e!2070642 () Int)

(assert (=> b!3329635 (= e!2070641 e!2070642)))

(declare-fun c!565486 () Bool)

(declare-fun call!241391 () Int)

(assert (=> b!3329635 (= c!565486 (>= (+ 0 1) call!241391))))

(declare-fun b!3329636 () Bool)

(assert (=> b!3329636 (= e!2070642 (- call!241391 (+ 0 1)))))

(declare-fun b!3329637 () Bool)

(assert (=> b!3329637 (= e!2070644 Nil!36679)))

(declare-fun bm!241386 () Bool)

(assert (=> bm!241386 (= call!241391 (size!27735 lt!1131419))))

(declare-fun b!3329638 () Bool)

(assert (=> b!3329638 (= e!2070643 (drop!1929 (t!256932 lt!1131419) (- (+ 0 1) 1)))))

(declare-fun b!3329639 () Bool)

(assert (=> b!3329639 (= e!2070641 call!241391)))

(declare-fun b!3329640 () Bool)

(assert (=> b!3329640 (= e!2070642 0)))

(declare-fun b!3329641 () Bool)

(assert (=> b!3329641 (= e!2070644 e!2070643)))

(declare-fun c!565484 () Bool)

(assert (=> b!3329641 (= c!565484 (<= (+ 0 1) 0))))

(assert (= (and d!936686 c!565485) b!3329637))

(assert (= (and d!936686 (not c!565485)) b!3329641))

(assert (= (and b!3329641 c!565484) b!3329633))

(assert (= (and b!3329641 (not c!565484)) b!3329638))

(assert (= (and d!936686 res!1350497) b!3329634))

(assert (= (and b!3329634 c!565487) b!3329639))

(assert (= (and b!3329634 (not c!565487)) b!3329635))

(assert (= (and b!3329635 c!565486) b!3329640))

(assert (= (and b!3329635 (not c!565486)) b!3329636))

(assert (= (or b!3329639 b!3329635 b!3329636) bm!241386))

(declare-fun m!3671079 () Bool)

(assert (=> d!936686 m!3671079))

(declare-fun m!3671081 () Bool)

(assert (=> d!936686 m!3671081))

(declare-fun m!3671083 () Bool)

(assert (=> b!3329634 m!3671083))

(declare-fun m!3671085 () Bool)

(assert (=> bm!241386 m!3671085))

(declare-fun m!3671087 () Bool)

(assert (=> b!3329638 m!3671087))

(assert (=> b!3328976 d!936686))

(declare-fun b!3329684 () Bool)

(declare-fun e!2070665 () Bool)

(declare-fun lt!1131659 () BalanceConc!21700)

(assert (=> b!3329684 (= e!2070665 (= (list!13209 lt!1131659) (++!8917 (list!13209 (BalanceConc!21701 Empty!11043)) (list!13209 (charsOf!3348 (apply!8470 lt!1131272 0))))))))

(declare-fun b!3329681 () Bool)

(declare-fun res!1350531 () Bool)

(assert (=> b!3329681 (=> (not res!1350531) (not e!2070665))))

(declare-fun ++!8920 (Conc!11043 Conc!11043) Conc!11043)

(assert (=> b!3329681 (= res!1350531 (isBalanced!3317 (++!8920 (c!565317 (BalanceConc!21701 Empty!11043)) (c!565317 (charsOf!3348 (apply!8470 lt!1131272 0))))))))

(declare-fun d!936688 () Bool)

(assert (=> d!936688 e!2070665))

(declare-fun res!1350529 () Bool)

(assert (=> d!936688 (=> (not res!1350529) (not e!2070665))))

(declare-fun appendAssocInst!772 (Conc!11043 Conc!11043) Bool)

(assert (=> d!936688 (= res!1350529 (appendAssocInst!772 (c!565317 (BalanceConc!21701 Empty!11043)) (c!565317 (charsOf!3348 (apply!8470 lt!1131272 0)))))))

(assert (=> d!936688 (= lt!1131659 (BalanceConc!21701 (++!8920 (c!565317 (BalanceConc!21701 Empty!11043)) (c!565317 (charsOf!3348 (apply!8470 lt!1131272 0))))))))

(assert (=> d!936688 (= (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (apply!8470 lt!1131272 0))) lt!1131659)))

(declare-fun b!3329683 () Bool)

(declare-fun res!1350530 () Bool)

(assert (=> b!3329683 (=> (not res!1350530) (not e!2070665))))

(declare-fun height!1635 (Conc!11043) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3329683 (= res!1350530 (>= (height!1635 (++!8920 (c!565317 (BalanceConc!21701 Empty!11043)) (c!565317 (charsOf!3348 (apply!8470 lt!1131272 0))))) (max!0 (height!1635 (c!565317 (BalanceConc!21701 Empty!11043))) (height!1635 (c!565317 (charsOf!3348 (apply!8470 lt!1131272 0)))))))))

(declare-fun b!3329682 () Bool)

(declare-fun res!1350532 () Bool)

(assert (=> b!3329682 (=> (not res!1350532) (not e!2070665))))

(assert (=> b!3329682 (= res!1350532 (<= (height!1635 (++!8920 (c!565317 (BalanceConc!21701 Empty!11043)) (c!565317 (charsOf!3348 (apply!8470 lt!1131272 0))))) (+ (max!0 (height!1635 (c!565317 (BalanceConc!21701 Empty!11043))) (height!1635 (c!565317 (charsOf!3348 (apply!8470 lt!1131272 0))))) 1)))))

(assert (= (and d!936688 res!1350529) b!3329681))

(assert (= (and b!3329681 res!1350531) b!3329682))

(assert (= (and b!3329682 res!1350532) b!3329683))

(assert (= (and b!3329683 res!1350530) b!3329684))

(declare-fun m!3671115 () Bool)

(assert (=> b!3329684 m!3671115))

(assert (=> b!3329684 m!3670047))

(assert (=> b!3329684 m!3670079))

(declare-fun m!3671117 () Bool)

(assert (=> b!3329684 m!3671117))

(assert (=> b!3329684 m!3670047))

(assert (=> b!3329684 m!3671117))

(declare-fun m!3671119 () Bool)

(assert (=> b!3329684 m!3671119))

(declare-fun m!3671121 () Bool)

(assert (=> d!936688 m!3671121))

(declare-fun m!3671123 () Bool)

(assert (=> d!936688 m!3671123))

(assert (=> b!3329683 m!3671123))

(declare-fun m!3671125 () Bool)

(assert (=> b!3329683 m!3671125))

(declare-fun m!3671127 () Bool)

(assert (=> b!3329683 m!3671127))

(declare-fun m!3671129 () Bool)

(assert (=> b!3329683 m!3671129))

(assert (=> b!3329683 m!3671127))

(declare-fun m!3671131 () Bool)

(assert (=> b!3329683 m!3671131))

(assert (=> b!3329683 m!3671123))

(assert (=> b!3329683 m!3671129))

(assert (=> b!3329681 m!3671123))

(assert (=> b!3329681 m!3671123))

(declare-fun m!3671133 () Bool)

(assert (=> b!3329681 m!3671133))

(assert (=> b!3329682 m!3671123))

(assert (=> b!3329682 m!3671125))

(assert (=> b!3329682 m!3671127))

(assert (=> b!3329682 m!3671129))

(assert (=> b!3329682 m!3671127))

(assert (=> b!3329682 m!3671131))

(assert (=> b!3329682 m!3671123))

(assert (=> b!3329682 m!3671129))

(assert (=> b!3328976 d!936688))

(declare-fun d!936700 () Bool)

(assert (=> d!936700 (= (head!7161 (drop!1929 lt!1131416 0)) (h!42099 (drop!1929 lt!1131416 0)))))

(assert (=> b!3328976 d!936700))

(declare-fun b!3329685 () Bool)

(declare-fun e!2070668 () List!36803)

(assert (=> b!3329685 (= e!2070668 lt!1131419)))

(declare-fun d!936702 () Bool)

(declare-fun e!2070670 () Bool)

(assert (=> d!936702 e!2070670))

(declare-fun res!1350533 () Bool)

(assert (=> d!936702 (=> (not res!1350533) (not e!2070670))))

(declare-fun lt!1131660 () List!36803)

(assert (=> d!936702 (= res!1350533 (= ((_ map implies) (content!5014 lt!1131660) (content!5014 lt!1131419)) ((as const (InoxSet Token!10034)) true)))))

(declare-fun e!2070669 () List!36803)

(assert (=> d!936702 (= lt!1131660 e!2070669)))

(declare-fun c!565495 () Bool)

(assert (=> d!936702 (= c!565495 ((_ is Nil!36679) lt!1131419))))

(assert (=> d!936702 (= (drop!1929 lt!1131419 0) lt!1131660)))

(declare-fun b!3329686 () Bool)

(declare-fun e!2070666 () Int)

(assert (=> b!3329686 (= e!2070670 (= (size!27735 lt!1131660) e!2070666))))

(declare-fun c!565497 () Bool)

(assert (=> b!3329686 (= c!565497 (<= 0 0))))

(declare-fun b!3329687 () Bool)

(declare-fun e!2070667 () Int)

(assert (=> b!3329687 (= e!2070666 e!2070667)))

(declare-fun c!565496 () Bool)

(declare-fun call!241392 () Int)

(assert (=> b!3329687 (= c!565496 (>= 0 call!241392))))

(declare-fun b!3329688 () Bool)

(assert (=> b!3329688 (= e!2070667 (- call!241392 0))))

(declare-fun b!3329689 () Bool)

(assert (=> b!3329689 (= e!2070669 Nil!36679)))

(declare-fun bm!241387 () Bool)

(assert (=> bm!241387 (= call!241392 (size!27735 lt!1131419))))

(declare-fun b!3329690 () Bool)

(assert (=> b!3329690 (= e!2070668 (drop!1929 (t!256932 lt!1131419) (- 0 1)))))

(declare-fun b!3329691 () Bool)

(assert (=> b!3329691 (= e!2070666 call!241392)))

(declare-fun b!3329692 () Bool)

(assert (=> b!3329692 (= e!2070667 0)))

(declare-fun b!3329693 () Bool)

(assert (=> b!3329693 (= e!2070669 e!2070668)))

(declare-fun c!565494 () Bool)

(assert (=> b!3329693 (= c!565494 (<= 0 0))))

(assert (= (and d!936702 c!565495) b!3329689))

(assert (= (and d!936702 (not c!565495)) b!3329693))

(assert (= (and b!3329693 c!565494) b!3329685))

(assert (= (and b!3329693 (not c!565494)) b!3329690))

(assert (= (and d!936702 res!1350533) b!3329686))

(assert (= (and b!3329686 c!565497) b!3329691))

(assert (= (and b!3329686 (not c!565497)) b!3329687))

(assert (= (and b!3329687 c!565496) b!3329692))

(assert (= (and b!3329687 (not c!565496)) b!3329688))

(assert (= (or b!3329691 b!3329687 b!3329688) bm!241387))

(declare-fun m!3671135 () Bool)

(assert (=> d!936702 m!3671135))

(assert (=> d!936702 m!3671081))

(declare-fun m!3671137 () Bool)

(assert (=> b!3329686 m!3671137))

(assert (=> bm!241387 m!3671085))

(declare-fun m!3671139 () Bool)

(assert (=> b!3329690 m!3671139))

(assert (=> b!3328976 d!936702))

(declare-fun d!936704 () Bool)

(assert (=> d!936704 (= (tail!5301 (drop!1929 lt!1131419 0)) (t!256932 (drop!1929 lt!1131419 0)))))

(assert (=> b!3328976 d!936704))

(declare-fun d!936706 () Bool)

(declare-fun lt!1131666 () BalanceConc!21700)

(assert (=> d!936706 (= (list!13209 lt!1131666) (printListTailRec!620 thiss!18206 (dropList!1137 lt!1131272 (+ 0 1)) (list!13209 (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (apply!8470 lt!1131272 0))))))))

(declare-fun e!2070672 () BalanceConc!21700)

(assert (=> d!936706 (= lt!1131666 e!2070672)))

(declare-fun c!565498 () Bool)

(assert (=> d!936706 (= c!565498 (>= (+ 0 1) (size!27729 lt!1131272)))))

(declare-fun e!2070671 () Bool)

(assert (=> d!936706 e!2070671))

(declare-fun res!1350534 () Bool)

(assert (=> d!936706 (=> (not res!1350534) (not e!2070671))))

(assert (=> d!936706 (= res!1350534 (>= (+ 0 1) 0))))

(assert (=> d!936706 (= (printTailRec!1418 thiss!18206 lt!1131272 (+ 0 1) (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (apply!8470 lt!1131272 0)))) lt!1131666)))

(declare-fun b!3329694 () Bool)

(assert (=> b!3329694 (= e!2070671 (<= (+ 0 1) (size!27729 lt!1131272)))))

(declare-fun b!3329695 () Bool)

(assert (=> b!3329695 (= e!2070672 (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (apply!8470 lt!1131272 0))))))

(declare-fun b!3329696 () Bool)

(assert (=> b!3329696 (= e!2070672 (printTailRec!1418 thiss!18206 lt!1131272 (+ 0 1 1) (++!8919 (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (apply!8470 lt!1131272 0))) (charsOf!3348 (apply!8470 lt!1131272 (+ 0 1))))))))

(declare-fun lt!1131664 () List!36803)

(assert (=> b!3329696 (= lt!1131664 (list!13212 lt!1131272))))

(declare-fun lt!1131661 () Unit!51688)

(assert (=> b!3329696 (= lt!1131661 (lemmaDropApply!1095 lt!1131664 (+ 0 1)))))

(assert (=> b!3329696 (= (head!7161 (drop!1929 lt!1131664 (+ 0 1))) (apply!8473 lt!1131664 (+ 0 1)))))

(declare-fun lt!1131663 () Unit!51688)

(assert (=> b!3329696 (= lt!1131663 lt!1131661)))

(declare-fun lt!1131667 () List!36803)

(assert (=> b!3329696 (= lt!1131667 (list!13212 lt!1131272))))

(declare-fun lt!1131665 () Unit!51688)

(assert (=> b!3329696 (= lt!1131665 (lemmaDropTail!979 lt!1131667 (+ 0 1)))))

(assert (=> b!3329696 (= (tail!5301 (drop!1929 lt!1131667 (+ 0 1))) (drop!1929 lt!1131667 (+ 0 1 1)))))

(declare-fun lt!1131662 () Unit!51688)

(assert (=> b!3329696 (= lt!1131662 lt!1131665)))

(assert (= (and d!936706 res!1350534) b!3329694))

(assert (= (and d!936706 c!565498) b!3329695))

(assert (= (and d!936706 (not c!565498)) b!3329696))

(assert (=> d!936706 m!3670057))

(declare-fun m!3671141 () Bool)

(assert (=> d!936706 m!3671141))

(declare-fun m!3671143 () Bool)

(assert (=> d!936706 m!3671143))

(assert (=> d!936706 m!3671143))

(assert (=> d!936706 m!3671141))

(declare-fun m!3671145 () Bool)

(assert (=> d!936706 m!3671145))

(declare-fun m!3671147 () Bool)

(assert (=> d!936706 m!3671147))

(assert (=> d!936706 m!3670055))

(assert (=> b!3329694 m!3670055))

(declare-fun m!3671149 () Bool)

(assert (=> b!3329696 m!3671149))

(declare-fun m!3671151 () Bool)

(assert (=> b!3329696 m!3671151))

(declare-fun m!3671153 () Bool)

(assert (=> b!3329696 m!3671153))

(declare-fun m!3671155 () Bool)

(assert (=> b!3329696 m!3671155))

(declare-fun m!3671157 () Bool)

(assert (=> b!3329696 m!3671157))

(declare-fun m!3671159 () Bool)

(assert (=> b!3329696 m!3671159))

(assert (=> b!3329696 m!3671157))

(declare-fun m!3671161 () Bool)

(assert (=> b!3329696 m!3671161))

(assert (=> b!3329696 m!3671153))

(declare-fun m!3671163 () Bool)

(assert (=> b!3329696 m!3671163))

(declare-fun m!3671165 () Bool)

(assert (=> b!3329696 m!3671165))

(declare-fun m!3671167 () Bool)

(assert (=> b!3329696 m!3671167))

(declare-fun m!3671169 () Bool)

(assert (=> b!3329696 m!3671169))

(assert (=> b!3329696 m!3670057))

(declare-fun m!3671171 () Bool)

(assert (=> b!3329696 m!3671171))

(assert (=> b!3329696 m!3671149))

(assert (=> b!3329696 m!3671165))

(assert (=> b!3329696 m!3671171))

(assert (=> b!3329696 m!3670043))

(assert (=> b!3328976 d!936706))

(declare-fun d!936708 () Bool)

(declare-fun lt!1131668 () BalanceConc!21700)

(assert (=> d!936708 (= (list!13209 lt!1131668) (originalCharacters!6048 (apply!8470 lt!1131272 0)))))

(assert (=> d!936708 (= lt!1131668 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0)))) (value!172479 (apply!8470 lt!1131272 0))))))

(assert (=> d!936708 (= (charsOf!3348 (apply!8470 lt!1131272 0)) lt!1131668)))

(declare-fun b_lambda!94053 () Bool)

(assert (=> (not b_lambda!94053) (not d!936708)))

(declare-fun t!257049 () Bool)

(declare-fun tb!174429 () Bool)

(assert (=> (and b!3329174 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0))))) t!257049) tb!174429))

(declare-fun b!3329697 () Bool)

(declare-fun e!2070673 () Bool)

(declare-fun tp!1040554 () Bool)

(assert (=> b!3329697 (= e!2070673 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0)))) (value!172479 (apply!8470 lt!1131272 0))))) tp!1040554))))

(declare-fun result!217554 () Bool)

(assert (=> tb!174429 (= result!217554 (and (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0)))) (value!172479 (apply!8470 lt!1131272 0)))) e!2070673))))

(assert (= tb!174429 b!3329697))

(declare-fun m!3671173 () Bool)

(assert (=> b!3329697 m!3671173))

(declare-fun m!3671175 () Bool)

(assert (=> tb!174429 m!3671175))

(assert (=> d!936708 t!257049))

(declare-fun b_and!229617 () Bool)

(assert (= b_and!229595 (and (=> t!257049 result!217554) b_and!229617)))

(declare-fun tb!174431 () Bool)

(declare-fun t!257051 () Bool)

(assert (=> (and b!3328728 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0))))) t!257051) tb!174431))

(declare-fun result!217556 () Bool)

(assert (= result!217556 result!217554))

(assert (=> d!936708 t!257051))

(declare-fun b_and!229619 () Bool)

(assert (= b_and!229591 (and (=> t!257051 result!217556) b_and!229619)))

(declare-fun t!257053 () Bool)

(declare-fun tb!174433 () Bool)

(assert (=> (and b!3328729 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0))))) t!257053) tb!174433))

(declare-fun result!217558 () Bool)

(assert (= result!217558 result!217554))

(assert (=> d!936708 t!257053))

(declare-fun b_and!229621 () Bool)

(assert (= b_and!229593 (and (=> t!257053 result!217558) b_and!229621)))

(declare-fun t!257055 () Bool)

(declare-fun tb!174435 () Bool)

(assert (=> (and b!3328722 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0))))) t!257055) tb!174435))

(declare-fun result!217560 () Bool)

(assert (= result!217560 result!217554))

(assert (=> d!936708 t!257055))

(declare-fun b_and!229623 () Bool)

(assert (= b_and!229587 (and (=> t!257055 result!217560) b_and!229623)))

(declare-fun t!257057 () Bool)

(declare-fun tb!174437 () Bool)

(assert (=> (and b!3329155 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0))))) t!257057) tb!174437))

(declare-fun result!217562 () Bool)

(assert (= result!217562 result!217554))

(assert (=> d!936708 t!257057))

(declare-fun b_and!229625 () Bool)

(assert (= b_and!229589 (and (=> t!257057 result!217562) b_and!229625)))

(declare-fun m!3671177 () Bool)

(assert (=> d!936708 m!3671177))

(declare-fun m!3671179 () Bool)

(assert (=> d!936708 m!3671179))

(assert (=> b!3328976 d!936708))

(declare-fun d!936710 () Bool)

(declare-fun lt!1131669 () Token!10034)

(assert (=> d!936710 (= lt!1131669 (apply!8473 (list!13212 lt!1131272) 0))))

(assert (=> d!936710 (= lt!1131669 (apply!8474 (c!565318 lt!1131272) 0))))

(declare-fun e!2070674 () Bool)

(assert (=> d!936710 e!2070674))

(declare-fun res!1350535 () Bool)

(assert (=> d!936710 (=> (not res!1350535) (not e!2070674))))

(assert (=> d!936710 (= res!1350535 (<= 0 0))))

(assert (=> d!936710 (= (apply!8470 lt!1131272 0) lt!1131669)))

(declare-fun b!3329698 () Bool)

(assert (=> b!3329698 (= e!2070674 (< 0 (size!27729 lt!1131272)))))

(assert (= (and d!936710 res!1350535) b!3329698))

(assert (=> d!936710 m!3670043))

(assert (=> d!936710 m!3670043))

(declare-fun m!3671181 () Bool)

(assert (=> d!936710 m!3671181))

(declare-fun m!3671183 () Bool)

(assert (=> d!936710 m!3671183))

(assert (=> b!3329698 m!3670055))

(assert (=> b!3328976 d!936710))

(declare-fun d!936712 () Bool)

(assert (=> d!936712 (= (list!13212 lt!1131272) (list!13215 (c!565318 lt!1131272)))))

(declare-fun bs!551249 () Bool)

(assert (= bs!551249 d!936712))

(assert (=> bs!551249 m!3670781))

(assert (=> b!3328976 d!936712))

(declare-fun d!936714 () Bool)

(assert (=> d!936714 (= (tail!5301 (drop!1929 lt!1131419 0)) (drop!1929 lt!1131419 (+ 0 1)))))

(declare-fun lt!1131672 () Unit!51688)

(declare-fun choose!19295 (List!36803 Int) Unit!51688)

(assert (=> d!936714 (= lt!1131672 (choose!19295 lt!1131419 0))))

(declare-fun e!2070677 () Bool)

(assert (=> d!936714 e!2070677))

(declare-fun res!1350538 () Bool)

(assert (=> d!936714 (=> (not res!1350538) (not e!2070677))))

(assert (=> d!936714 (= res!1350538 (>= 0 0))))

(assert (=> d!936714 (= (lemmaDropTail!979 lt!1131419 0) lt!1131672)))

(declare-fun b!3329701 () Bool)

(assert (=> b!3329701 (= e!2070677 (< 0 (size!27735 lt!1131419)))))

(assert (= (and d!936714 res!1350538) b!3329701))

(assert (=> d!936714 m!3670061))

(assert (=> d!936714 m!3670061))

(assert (=> d!936714 m!3670071))

(assert (=> d!936714 m!3670063))

(declare-fun m!3671185 () Bool)

(assert (=> d!936714 m!3671185))

(assert (=> b!3329701 m!3671085))

(assert (=> b!3328976 d!936714))

(declare-fun d!936716 () Bool)

(declare-fun lt!1131675 () Token!10034)

(assert (=> d!936716 (contains!6649 lt!1131416 lt!1131675)))

(declare-fun e!2070683 () Token!10034)

(assert (=> d!936716 (= lt!1131675 e!2070683)))

(declare-fun c!565501 () Bool)

(assert (=> d!936716 (= c!565501 (= 0 0))))

(declare-fun e!2070682 () Bool)

(assert (=> d!936716 e!2070682))

(declare-fun res!1350541 () Bool)

(assert (=> d!936716 (=> (not res!1350541) (not e!2070682))))

(assert (=> d!936716 (= res!1350541 (<= 0 0))))

(assert (=> d!936716 (= (apply!8473 lt!1131416 0) lt!1131675)))

(declare-fun b!3329708 () Bool)

(assert (=> b!3329708 (= e!2070682 (< 0 (size!27735 lt!1131416)))))

(declare-fun b!3329709 () Bool)

(assert (=> b!3329709 (= e!2070683 (head!7161 lt!1131416))))

(declare-fun b!3329710 () Bool)

(assert (=> b!3329710 (= e!2070683 (apply!8473 (tail!5301 lt!1131416) (- 0 1)))))

(assert (= (and d!936716 res!1350541) b!3329708))

(assert (= (and d!936716 c!565501) b!3329709))

(assert (= (and d!936716 (not c!565501)) b!3329710))

(declare-fun m!3671187 () Bool)

(assert (=> d!936716 m!3671187))

(assert (=> b!3329708 m!3671075))

(declare-fun m!3671189 () Bool)

(assert (=> b!3329709 m!3671189))

(declare-fun m!3671191 () Bool)

(assert (=> b!3329710 m!3671191))

(assert (=> b!3329710 m!3671191))

(declare-fun m!3671193 () Bool)

(assert (=> b!3329710 m!3671193))

(assert (=> b!3328976 d!936716))

(declare-fun d!936718 () Bool)

(assert (=> d!936718 (= (head!7161 (drop!1929 lt!1131416 0)) (apply!8473 lt!1131416 0))))

(declare-fun lt!1131678 () Unit!51688)

(declare-fun choose!19296 (List!36803 Int) Unit!51688)

(assert (=> d!936718 (= lt!1131678 (choose!19296 lt!1131416 0))))

(declare-fun e!2070686 () Bool)

(assert (=> d!936718 e!2070686))

(declare-fun res!1350544 () Bool)

(assert (=> d!936718 (=> (not res!1350544) (not e!2070686))))

(assert (=> d!936718 (= res!1350544 (>= 0 0))))

(assert (=> d!936718 (= (lemmaDropApply!1095 lt!1131416 0) lt!1131678)))

(declare-fun b!3329713 () Bool)

(assert (=> b!3329713 (= e!2070686 (< 0 (size!27735 lt!1131416)))))

(assert (= (and d!936718 res!1350544) b!3329713))

(assert (=> d!936718 m!3670065))

(assert (=> d!936718 m!3670065))

(assert (=> d!936718 m!3670069))

(assert (=> d!936718 m!3670075))

(declare-fun m!3671195 () Bool)

(assert (=> d!936718 m!3671195))

(assert (=> b!3329713 m!3671075))

(assert (=> b!3328976 d!936718))

(declare-fun d!936720 () Bool)

(declare-fun lt!1131679 () Int)

(assert (=> d!936720 (= lt!1131679 (size!27735 (list!13212 (_1!21225 lt!1131434))))))

(assert (=> d!936720 (= lt!1131679 (size!27736 (c!565318 (_1!21225 lt!1131434))))))

(assert (=> d!936720 (= (size!27729 (_1!21225 lt!1131434)) lt!1131679)))

(declare-fun bs!551250 () Bool)

(assert (= bs!551250 d!936720))

(assert (=> bs!551250 m!3670175))

(assert (=> bs!551250 m!3670175))

(declare-fun m!3671197 () Bool)

(assert (=> bs!551250 m!3671197))

(declare-fun m!3671199 () Bool)

(assert (=> bs!551250 m!3671199))

(assert (=> d!936330 d!936720))

(declare-fun lt!1131785 () tuple2!36182)

(declare-fun e!2070724 () Bool)

(declare-fun b!3329772 () Bool)

(declare-fun lexRec!718 (LexerInterface!4923 List!36802 BalanceConc!21700) tuple2!36182)

(assert (=> b!3329772 (= e!2070724 (= (list!13209 (_2!21225 lt!1131785)) (list!13209 (_2!21225 (lexRec!718 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))))))

(declare-fun d!936722 () Bool)

(assert (=> d!936722 e!2070724))

(declare-fun res!1350564 () Bool)

(assert (=> d!936722 (=> (not res!1350564) (not e!2070724))))

(assert (=> d!936722 (= res!1350564 (= (list!13212 (_1!21225 lt!1131785)) (list!13212 (_1!21225 (lexRec!718 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))))))

(declare-fun e!2070727 () tuple2!36182)

(assert (=> d!936722 (= lt!1131785 e!2070727)))

(declare-fun c!565523 () Bool)

(declare-datatypes ((tuple2!36190 0))(
  ( (tuple2!36191 (_1!21229 Token!10034) (_2!21229 BalanceConc!21700)) )
))
(declare-datatypes ((Option!7317 0))(
  ( (None!7316) (Some!7316 (v!36224 tuple2!36190)) )
))
(declare-fun lt!1131787 () Option!7317)

(assert (=> d!936722 (= c!565523 ((_ is Some!7316) lt!1131787))))

(declare-fun maxPrefixZipperSequenceV2!505 (LexerInterface!4923 List!36802 BalanceConc!21700 BalanceConc!21700) Option!7317)

(assert (=> d!936722 (= lt!1131787 (maxPrefixZipperSequenceV2!505 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274) (seqFromList!3722 lt!1131274)))))

(declare-fun lt!1131803 () Unit!51688)

(declare-fun lt!1131797 () Unit!51688)

(assert (=> d!936722 (= lt!1131803 lt!1131797)))

(declare-fun lt!1131792 () List!36801)

(declare-fun lt!1131789 () List!36801)

(declare-fun isSuffix!880 (List!36801 List!36801) Bool)

(assert (=> d!936722 (isSuffix!880 lt!1131792 (++!8917 lt!1131789 lt!1131792))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!565 (List!36801 List!36801) Unit!51688)

(assert (=> d!936722 (= lt!1131797 (lemmaConcatTwoListThenFSndIsSuffix!565 lt!1131789 lt!1131792))))

(assert (=> d!936722 (= lt!1131792 (list!13209 (seqFromList!3722 lt!1131274)))))

(assert (=> d!936722 (= lt!1131789 (list!13209 (BalanceConc!21701 Empty!11043)))))

(assert (=> d!936722 (= (lexTailRecV2!988 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274) (BalanceConc!21701 Empty!11043) (seqFromList!3722 lt!1131274) (BalanceConc!21703 Empty!11044)) lt!1131785)))

(declare-fun b!3329773 () Bool)

(declare-fun e!2070725 () tuple2!36182)

(assert (=> b!3329773 (= e!2070725 (tuple2!36183 (BalanceConc!21703 Empty!11044) (seqFromList!3722 lt!1131274)))))

(declare-fun b!3329774 () Bool)

(declare-fun lt!1131807 () Option!7317)

(declare-fun lt!1131805 () tuple2!36182)

(assert (=> b!3329774 (= lt!1131805 (lexRec!718 thiss!18206 rules!2135 (_2!21229 (v!36224 lt!1131807))))))

(declare-fun prepend!1217 (BalanceConc!21702 Token!10034) BalanceConc!21702)

(assert (=> b!3329774 (= e!2070725 (tuple2!36183 (prepend!1217 (_1!21225 lt!1131805) (_1!21229 (v!36224 lt!1131807))) (_2!21225 lt!1131805)))))

(declare-fun lt!1131790 () BalanceConc!21700)

(declare-fun b!3329775 () Bool)

(declare-fun append!912 (BalanceConc!21702 Token!10034) BalanceConc!21702)

(assert (=> b!3329775 (= e!2070727 (lexTailRecV2!988 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274) lt!1131790 (_2!21229 (v!36224 lt!1131787)) (append!912 (BalanceConc!21703 Empty!11044) (_1!21229 (v!36224 lt!1131787)))))))

(declare-fun lt!1131778 () tuple2!36182)

(assert (=> b!3329775 (= lt!1131778 (lexRec!718 thiss!18206 rules!2135 (_2!21229 (v!36224 lt!1131787))))))

(declare-fun lt!1131783 () List!36801)

(assert (=> b!3329775 (= lt!1131783 (list!13209 (BalanceConc!21701 Empty!11043)))))

(declare-fun lt!1131808 () List!36801)

(assert (=> b!3329775 (= lt!1131808 (list!13209 (charsOf!3348 (_1!21229 (v!36224 lt!1131787)))))))

(declare-fun lt!1131810 () List!36801)

(assert (=> b!3329775 (= lt!1131810 (list!13209 (_2!21229 (v!36224 lt!1131787))))))

(declare-fun lt!1131801 () Unit!51688)

(assert (=> b!3329775 (= lt!1131801 (lemmaConcatAssociativity!1853 lt!1131783 lt!1131808 lt!1131810))))

(assert (=> b!3329775 (= (++!8917 (++!8917 lt!1131783 lt!1131808) lt!1131810) (++!8917 lt!1131783 (++!8917 lt!1131808 lt!1131810)))))

(declare-fun lt!1131777 () Unit!51688)

(assert (=> b!3329775 (= lt!1131777 lt!1131801)))

(declare-fun maxPrefixZipperSequence!1111 (LexerInterface!4923 List!36802 BalanceConc!21700) Option!7317)

(assert (=> b!3329775 (= lt!1131807 (maxPrefixZipperSequence!1111 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274)))))

(declare-fun c!565522 () Bool)

(assert (=> b!3329775 (= c!565522 ((_ is Some!7316) lt!1131807))))

(assert (=> b!3329775 (= (lexRec!718 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274)) e!2070725)))

(declare-fun lt!1131779 () Unit!51688)

(declare-fun Unit!51690 () Unit!51688)

(assert (=> b!3329775 (= lt!1131779 Unit!51690)))

(declare-fun lt!1131780 () List!36803)

(assert (=> b!3329775 (= lt!1131780 (list!13212 (BalanceConc!21703 Empty!11044)))))

(declare-fun lt!1131784 () List!36803)

(assert (=> b!3329775 (= lt!1131784 (Cons!36679 (_1!21229 (v!36224 lt!1131787)) Nil!36679))))

(declare-fun lt!1131795 () List!36803)

(assert (=> b!3329775 (= lt!1131795 (list!13212 (_1!21225 lt!1131778)))))

(declare-fun lt!1131804 () Unit!51688)

(declare-fun lemmaConcatAssociativity!1855 (List!36803 List!36803 List!36803) Unit!51688)

(assert (=> b!3329775 (= lt!1131804 (lemmaConcatAssociativity!1855 lt!1131780 lt!1131784 lt!1131795))))

(declare-fun ++!8921 (List!36803 List!36803) List!36803)

(assert (=> b!3329775 (= (++!8921 (++!8921 lt!1131780 lt!1131784) lt!1131795) (++!8921 lt!1131780 (++!8921 lt!1131784 lt!1131795)))))

(declare-fun lt!1131791 () Unit!51688)

(assert (=> b!3329775 (= lt!1131791 lt!1131804)))

(declare-fun lt!1131798 () List!36801)

(assert (=> b!3329775 (= lt!1131798 (++!8917 (list!13209 (BalanceConc!21701 Empty!11043)) (list!13209 (charsOf!3348 (_1!21229 (v!36224 lt!1131787))))))))

(declare-fun lt!1131809 () List!36801)

(assert (=> b!3329775 (= lt!1131809 (list!13209 (_2!21229 (v!36224 lt!1131787))))))

(declare-fun lt!1131782 () List!36803)

(assert (=> b!3329775 (= lt!1131782 (list!13212 (append!912 (BalanceConc!21703 Empty!11044) (_1!21229 (v!36224 lt!1131787)))))))

(declare-fun lt!1131802 () Unit!51688)

(declare-fun lemmaLexThenLexPrefix!483 (LexerInterface!4923 List!36802 List!36801 List!36801 List!36803 List!36803 List!36801) Unit!51688)

(assert (=> b!3329775 (= lt!1131802 (lemmaLexThenLexPrefix!483 thiss!18206 rules!2135 lt!1131798 lt!1131809 lt!1131782 (list!13212 (_1!21225 lt!1131778)) (list!13209 (_2!21225 lt!1131778))))))

(assert (=> b!3329775 (= (lexList!1378 thiss!18206 rules!2135 lt!1131798) (tuple2!36187 lt!1131782 Nil!36677))))

(declare-fun lt!1131806 () Unit!51688)

(assert (=> b!3329775 (= lt!1131806 lt!1131802)))

(declare-fun lt!1131788 () BalanceConc!21700)

(assert (=> b!3329775 (= lt!1131788 (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (_1!21229 (v!36224 lt!1131787)))))))

(declare-fun lt!1131786 () Option!7317)

(assert (=> b!3329775 (= lt!1131786 (maxPrefixZipperSequence!1111 thiss!18206 rules!2135 lt!1131788))))

(declare-fun c!565521 () Bool)

(assert (=> b!3329775 (= c!565521 ((_ is Some!7316) lt!1131786))))

(declare-fun e!2070726 () tuple2!36182)

(assert (=> b!3329775 (= (lexRec!718 thiss!18206 rules!2135 (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (_1!21229 (v!36224 lt!1131787))))) e!2070726)))

(declare-fun lt!1131794 () Unit!51688)

(declare-fun Unit!51692 () Unit!51688)

(assert (=> b!3329775 (= lt!1131794 Unit!51692)))

(assert (=> b!3329775 (= lt!1131790 (++!8919 (BalanceConc!21701 Empty!11043) (charsOf!3348 (_1!21229 (v!36224 lt!1131787)))))))

(declare-fun lt!1131800 () List!36801)

(assert (=> b!3329775 (= lt!1131800 (list!13209 lt!1131790))))

(declare-fun lt!1131796 () List!36801)

(assert (=> b!3329775 (= lt!1131796 (list!13209 (_2!21229 (v!36224 lt!1131787))))))

(declare-fun lt!1131799 () Unit!51688)

(assert (=> b!3329775 (= lt!1131799 (lemmaConcatTwoListThenFSndIsSuffix!565 lt!1131800 lt!1131796))))

(assert (=> b!3329775 (isSuffix!880 lt!1131796 (++!8917 lt!1131800 lt!1131796))))

(declare-fun lt!1131781 () Unit!51688)

(assert (=> b!3329775 (= lt!1131781 lt!1131799)))

(declare-fun b!3329776 () Bool)

(assert (=> b!3329776 (= e!2070727 (tuple2!36183 (BalanceConc!21703 Empty!11044) (seqFromList!3722 lt!1131274)))))

(declare-fun b!3329777 () Bool)

(declare-fun lt!1131793 () tuple2!36182)

(assert (=> b!3329777 (= lt!1131793 (lexRec!718 thiss!18206 rules!2135 (_2!21229 (v!36224 lt!1131786))))))

(assert (=> b!3329777 (= e!2070726 (tuple2!36183 (prepend!1217 (_1!21225 lt!1131793) (_1!21229 (v!36224 lt!1131786))) (_2!21225 lt!1131793)))))

(declare-fun b!3329778 () Bool)

(assert (=> b!3329778 (= e!2070726 (tuple2!36183 (BalanceConc!21703 Empty!11044) lt!1131788))))

(assert (= (and d!936722 c!565523) b!3329775))

(assert (= (and d!936722 (not c!565523)) b!3329776))

(assert (= (and b!3329775 c!565522) b!3329774))

(assert (= (and b!3329775 (not c!565522)) b!3329773))

(assert (= (and b!3329775 c!565521) b!3329777))

(assert (= (and b!3329775 (not c!565521)) b!3329778))

(assert (= (and d!936722 res!1350564) b!3329772))

(assert (=> b!3329775 m!3669661))

(declare-fun m!3671337 () Bool)

(assert (=> b!3329775 m!3671337))

(declare-fun m!3671339 () Bool)

(assert (=> b!3329775 m!3671339))

(declare-fun m!3671341 () Bool)

(assert (=> b!3329775 m!3671341))

(declare-fun m!3671343 () Bool)

(assert (=> b!3329775 m!3671343))

(assert (=> b!3329775 m!3671337))

(declare-fun m!3671345 () Bool)

(assert (=> b!3329775 m!3671345))

(declare-fun m!3671347 () Bool)

(assert (=> b!3329775 m!3671347))

(assert (=> b!3329775 m!3669661))

(declare-fun m!3671349 () Bool)

(assert (=> b!3329775 m!3671349))

(declare-fun m!3671351 () Bool)

(assert (=> b!3329775 m!3671351))

(declare-fun m!3671353 () Bool)

(assert (=> b!3329775 m!3671353))

(declare-fun m!3671355 () Bool)

(assert (=> b!3329775 m!3671355))

(declare-fun m!3671357 () Bool)

(assert (=> b!3329775 m!3671357))

(declare-fun m!3671359 () Bool)

(assert (=> b!3329775 m!3671359))

(declare-fun m!3671361 () Bool)

(assert (=> b!3329775 m!3671361))

(declare-fun m!3671363 () Bool)

(assert (=> b!3329775 m!3671363))

(assert (=> b!3329775 m!3671337))

(declare-fun m!3671365 () Bool)

(assert (=> b!3329775 m!3671365))

(declare-fun m!3671367 () Bool)

(assert (=> b!3329775 m!3671367))

(declare-fun m!3671369 () Bool)

(assert (=> b!3329775 m!3671369))

(assert (=> b!3329775 m!3671343))

(declare-fun m!3671371 () Bool)

(assert (=> b!3329775 m!3671371))

(assert (=> b!3329775 m!3671341))

(declare-fun m!3671373 () Bool)

(assert (=> b!3329775 m!3671373))

(declare-fun m!3671375 () Bool)

(assert (=> b!3329775 m!3671375))

(assert (=> b!3329775 m!3671363))

(declare-fun m!3671377 () Bool)

(assert (=> b!3329775 m!3671377))

(assert (=> b!3329775 m!3671363))

(declare-fun m!3671379 () Bool)

(assert (=> b!3329775 m!3671379))

(declare-fun m!3671381 () Bool)

(assert (=> b!3329775 m!3671381))

(assert (=> b!3329775 m!3671353))

(declare-fun m!3671383 () Bool)

(assert (=> b!3329775 m!3671383))

(declare-fun m!3671385 () Bool)

(assert (=> b!3329775 m!3671385))

(assert (=> b!3329775 m!3671365))

(assert (=> b!3329775 m!3671373))

(assert (=> b!3329775 m!3670047))

(assert (=> b!3329775 m!3669661))

(declare-fun m!3671387 () Bool)

(assert (=> b!3329775 m!3671387))

(assert (=> b!3329775 m!3670047))

(assert (=> b!3329775 m!3671379))

(declare-fun m!3671389 () Bool)

(assert (=> b!3329775 m!3671389))

(declare-fun m!3671391 () Bool)

(assert (=> b!3329775 m!3671391))

(declare-fun m!3671393 () Bool)

(assert (=> b!3329775 m!3671393))

(assert (=> b!3329775 m!3671381))

(declare-fun m!3671395 () Bool)

(assert (=> b!3329775 m!3671395))

(assert (=> b!3329775 m!3671377))

(declare-fun m!3671397 () Bool)

(assert (=> b!3329775 m!3671397))

(declare-fun m!3671399 () Bool)

(assert (=> b!3329775 m!3671399))

(assert (=> b!3329775 m!3671357))

(declare-fun m!3671401 () Bool)

(assert (=> b!3329774 m!3671401))

(declare-fun m!3671403 () Bool)

(assert (=> b!3329774 m!3671403))

(assert (=> d!936722 m!3669661))

(assert (=> d!936722 m!3669661))

(declare-fun m!3671405 () Bool)

(assert (=> d!936722 m!3671405))

(declare-fun m!3671407 () Bool)

(assert (=> d!936722 m!3671407))

(declare-fun m!3671409 () Bool)

(assert (=> d!936722 m!3671409))

(assert (=> d!936722 m!3669661))

(assert (=> d!936722 m!3670171))

(assert (=> d!936722 m!3670047))

(declare-fun m!3671411 () Bool)

(assert (=> d!936722 m!3671411))

(assert (=> d!936722 m!3669661))

(assert (=> d!936722 m!3671387))

(declare-fun m!3671413 () Bool)

(assert (=> d!936722 m!3671413))

(assert (=> d!936722 m!3671413))

(declare-fun m!3671415 () Bool)

(assert (=> d!936722 m!3671415))

(declare-fun m!3671417 () Bool)

(assert (=> b!3329777 m!3671417))

(declare-fun m!3671419 () Bool)

(assert (=> b!3329777 m!3671419))

(declare-fun m!3671421 () Bool)

(assert (=> b!3329772 m!3671421))

(assert (=> b!3329772 m!3669661))

(assert (=> b!3329772 m!3671387))

(declare-fun m!3671423 () Bool)

(assert (=> b!3329772 m!3671423))

(assert (=> d!936330 d!936722))

(declare-fun bs!551271 () Bool)

(declare-fun d!936784 () Bool)

(assert (= bs!551271 (and d!936784 d!936638)))

(declare-fun lambda!119807 () Int)

(assert (=> bs!551271 (= (and (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (h!42098 rules!2135)))) (= (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241))) (toValue!7498 (transformation!5334 (h!42098 rules!2135))))) (= lambda!119807 lambda!119800))))

(assert (=> d!936784 true))

(assert (=> d!936784 (< (dynLambda!15132 order!19197 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) (dynLambda!15139 order!19205 lambda!119807))))

(assert (=> d!936784 true))

(assert (=> d!936784 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))) (dynLambda!15139 order!19205 lambda!119807))))

(assert (=> d!936784 (= (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))) (Forall!1307 lambda!119807))))

(declare-fun bs!551272 () Bool)

(assert (= bs!551272 d!936784))

(declare-fun m!3671425 () Bool)

(assert (=> bs!551272 m!3671425))

(assert (=> d!936312 d!936784))

(declare-fun bs!551273 () Bool)

(declare-fun d!936786 () Bool)

(assert (= bs!551273 (and d!936786 d!936604)))

(declare-fun lambda!119810 () Int)

(assert (=> bs!551273 (= lambda!119810 lambda!119797)))

(assert (=> d!936786 true))

(declare-fun lt!1131813 () Bool)

(assert (=> d!936786 (= lt!1131813 (rulesValidInductive!1821 thiss!18206 rules!2135))))

(assert (=> d!936786 (= lt!1131813 (forall!7662 rules!2135 lambda!119810))))

(assert (=> d!936786 (= (rulesValid!1975 thiss!18206 rules!2135) lt!1131813)))

(declare-fun bs!551274 () Bool)

(assert (= bs!551274 d!936786))

(assert (=> bs!551274 m!3670023))

(declare-fun m!3671427 () Bool)

(assert (=> bs!551274 m!3671427))

(assert (=> d!936348 d!936786))

(declare-fun d!936788 () Bool)

(assert (=> d!936788 (= (isEmpty!20848 (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))) ((_ is Nil!36679) (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))))))

(assert (=> d!936328 d!936788))

(declare-fun d!936790 () Bool)

(assert (=> d!936790 (= (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274)))) (list!13215 (c!565318 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))))))

(declare-fun bs!551275 () Bool)

(assert (= bs!551275 d!936790))

(declare-fun m!3671429 () Bool)

(assert (=> bs!551275 m!3671429))

(assert (=> d!936328 d!936790))

(declare-fun d!936792 () Bool)

(declare-fun lt!1131816 () Bool)

(assert (=> d!936792 (= lt!1131816 (isEmpty!20848 (list!13215 (c!565318 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274)))))))))

(assert (=> d!936792 (= lt!1131816 (= (size!27736 (c!565318 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))) 0))))

(assert (=> d!936792 (= (isEmpty!20849 (c!565318 (_1!21225 (lex!2249 thiss!18206 rules!2135 (seqFromList!3722 lt!1131274))))) lt!1131816)))

(declare-fun bs!551276 () Bool)

(assert (= bs!551276 d!936792))

(assert (=> bs!551276 m!3671429))

(assert (=> bs!551276 m!3671429))

(declare-fun m!3671431 () Bool)

(assert (=> bs!551276 m!3671431))

(declare-fun m!3671433 () Bool)

(assert (=> bs!551276 m!3671433))

(assert (=> d!936328 d!936792))

(declare-fun d!936794 () Bool)

(assert (=> d!936794 (= (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))) (isBalanced!3317 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))))))

(declare-fun bs!551277 () Bool)

(assert (= bs!551277 d!936794))

(declare-fun m!3671435 () Bool)

(assert (=> bs!551277 m!3671435))

(assert (=> tb!174357 d!936794))

(declare-fun b!3329781 () Bool)

(declare-fun res!1350566 () Bool)

(declare-fun e!2070728 () Bool)

(assert (=> b!3329781 (=> (not res!1350566) (not e!2070728))))

(declare-fun lt!1131817 () List!36801)

(assert (=> b!3329781 (= res!1350566 (= (size!27728 lt!1131817) (+ (size!27728 (t!256930 lt!1131274)) (size!27728 (list!13209 (charsOf!3348 separatorToken!241))))))))

(declare-fun b!3329780 () Bool)

(declare-fun e!2070729 () List!36801)

(assert (=> b!3329780 (= e!2070729 (Cons!36677 (h!42097 (t!256930 lt!1131274)) (++!8917 (t!256930 (t!256930 lt!1131274)) (list!13209 (charsOf!3348 separatorToken!241)))))))

(declare-fun d!936796 () Bool)

(assert (=> d!936796 e!2070728))

(declare-fun res!1350565 () Bool)

(assert (=> d!936796 (=> (not res!1350565) (not e!2070728))))

(assert (=> d!936796 (= res!1350565 (= (content!5011 lt!1131817) ((_ map or) (content!5011 (t!256930 lt!1131274)) (content!5011 (list!13209 (charsOf!3348 separatorToken!241))))))))

(assert (=> d!936796 (= lt!1131817 e!2070729)))

(declare-fun c!565524 () Bool)

(assert (=> d!936796 (= c!565524 ((_ is Nil!36677) (t!256930 lt!1131274)))))

(assert (=> d!936796 (= (++!8917 (t!256930 lt!1131274) (list!13209 (charsOf!3348 separatorToken!241))) lt!1131817)))

(declare-fun b!3329782 () Bool)

(assert (=> b!3329782 (= e!2070728 (or (not (= (list!13209 (charsOf!3348 separatorToken!241)) Nil!36677)) (= lt!1131817 (t!256930 lt!1131274))))))

(declare-fun b!3329779 () Bool)

(assert (=> b!3329779 (= e!2070729 (list!13209 (charsOf!3348 separatorToken!241)))))

(assert (= (and d!936796 c!565524) b!3329779))

(assert (= (and d!936796 (not c!565524)) b!3329780))

(assert (= (and d!936796 res!1350565) b!3329781))

(assert (= (and b!3329781 res!1350566) b!3329782))

(declare-fun m!3671437 () Bool)

(assert (=> b!3329781 m!3671437))

(assert (=> b!3329781 m!3670277))

(assert (=> b!3329781 m!3669639))

(assert (=> b!3329781 m!3669927))

(assert (=> b!3329780 m!3669639))

(declare-fun m!3671439 () Bool)

(assert (=> b!3329780 m!3671439))

(declare-fun m!3671441 () Bool)

(assert (=> d!936796 m!3671441))

(declare-fun m!3671443 () Bool)

(assert (=> d!936796 m!3671443))

(assert (=> d!936796 m!3669639))

(assert (=> d!936796 m!3669935))

(assert (=> b!3328895 d!936796))

(declare-fun bs!551278 () Bool)

(declare-fun d!936798 () Bool)

(assert (= bs!551278 (and d!936798 b!3328738)))

(declare-fun lambda!119813 () Int)

(assert (=> bs!551278 (not (= lambda!119813 lambda!119767))))

(declare-fun bs!551279 () Bool)

(assert (= bs!551279 (and d!936798 d!936242)))

(assert (=> bs!551279 (= lambda!119813 lambda!119777)))

(declare-fun b!3329821 () Bool)

(declare-fun e!2070758 () Bool)

(assert (=> b!3329821 (= e!2070758 true)))

(declare-fun b!3329820 () Bool)

(declare-fun e!2070757 () Bool)

(assert (=> b!3329820 (= e!2070757 e!2070758)))

(declare-fun b!3329819 () Bool)

(declare-fun e!2070756 () Bool)

(assert (=> b!3329819 (= e!2070756 e!2070757)))

(assert (=> d!936798 e!2070756))

(assert (= b!3329820 b!3329821))

(assert (= b!3329819 b!3329820))

(assert (= (and d!936798 ((_ is Cons!36678) rules!2135)) b!3329819))

(assert (=> b!3329821 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (h!42098 rules!2135)))) (dynLambda!15131 order!19195 lambda!119813))))

(assert (=> b!3329821 (< (dynLambda!15132 order!19197 (toChars!7357 (transformation!5334 (h!42098 rules!2135)))) (dynLambda!15131 order!19195 lambda!119813))))

(assert (=> d!936798 true))

(declare-fun lt!1131922 () Bool)

(assert (=> d!936798 (= lt!1131922 (forall!7657 (list!13212 lt!1131267) lambda!119813))))

(declare-fun e!2070754 () Bool)

(assert (=> d!936798 (= lt!1131922 e!2070754)))

(declare-fun res!1350583 () Bool)

(assert (=> d!936798 (=> res!1350583 e!2070754)))

(assert (=> d!936798 (= res!1350583 (not ((_ is Cons!36679) (list!13212 lt!1131267))))))

(assert (=> d!936798 (not (isEmpty!20839 rules!2135))))

(assert (=> d!936798 (= (rulesProduceEachTokenIndividuallyList!1787 thiss!18206 rules!2135 (list!13212 lt!1131267)) lt!1131922)))

(declare-fun b!3329817 () Bool)

(declare-fun e!2070755 () Bool)

(assert (=> b!3329817 (= e!2070754 e!2070755)))

(declare-fun res!1350582 () Bool)

(assert (=> b!3329817 (=> (not res!1350582) (not e!2070755))))

(assert (=> b!3329817 (= res!1350582 (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 (h!42099 (list!13212 lt!1131267))))))

(declare-fun b!3329818 () Bool)

(assert (=> b!3329818 (= e!2070755 (rulesProduceEachTokenIndividuallyList!1787 thiss!18206 rules!2135 (t!256932 (list!13212 lt!1131267))))))

(assert (= (and d!936798 (not res!1350583)) b!3329817))

(assert (= (and b!3329817 res!1350582) b!3329818))

(assert (=> d!936798 m!3669841))

(declare-fun m!3671549 () Bool)

(assert (=> d!936798 m!3671549))

(assert (=> d!936798 m!3669615))

(declare-fun m!3671551 () Bool)

(assert (=> b!3329817 m!3671551))

(declare-fun m!3671553 () Bool)

(assert (=> b!3329818 m!3671553))

(assert (=> b!3328832 d!936798))

(assert (=> b!3328832 d!936560))

(declare-fun d!936806 () Bool)

(assert (=> d!936806 (= (inv!15 (value!172479 separatorToken!241)) (= (charsToBigInt!0 (text!39397 (value!172479 separatorToken!241)) 0) (value!172474 (value!172479 separatorToken!241))))))

(declare-fun bs!551280 () Bool)

(assert (= bs!551280 d!936806))

(declare-fun m!3671561 () Bool)

(assert (=> bs!551280 m!3671561))

(assert (=> b!3329110 d!936806))

(declare-fun d!936808 () Bool)

(assert (=> d!936808 (= (list!13212 (_1!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494)))))) (list!13215 (c!565318 (_1!21225 (lex!2249 thiss!18206 rules!2135 (print!1988 thiss!18206 (singletonSeq!2430 (h!42099 tokens!494))))))))))

(declare-fun bs!551281 () Bool)

(assert (= bs!551281 d!936808))

(declare-fun m!3671569 () Bool)

(assert (=> bs!551281 m!3671569))

(assert (=> d!936204 d!936808))

(assert (=> d!936204 d!936648))

(assert (=> d!936204 d!936650))

(declare-fun d!936810 () Bool)

(declare-fun lt!1131930 () Int)

(assert (=> d!936810 (= lt!1131930 (size!27735 (list!13212 (_1!21225 lt!1131322))))))

(assert (=> d!936810 (= lt!1131930 (size!27736 (c!565318 (_1!21225 lt!1131322))))))

(assert (=> d!936810 (= (size!27729 (_1!21225 lt!1131322)) lt!1131930)))

(declare-fun bs!551282 () Bool)

(assert (= bs!551282 d!936810))

(assert (=> bs!551282 m!3670905))

(assert (=> bs!551282 m!3670905))

(declare-fun m!3671585 () Bool)

(assert (=> bs!551282 m!3671585))

(declare-fun m!3671587 () Bool)

(assert (=> bs!551282 m!3671587))

(assert (=> d!936204 d!936810))

(declare-fun d!936812 () Bool)

(assert (=> d!936812 (= (list!13212 (singletonSeq!2430 (h!42099 tokens!494))) (list!13215 (c!565318 (singletonSeq!2430 (h!42099 tokens!494)))))))

(declare-fun bs!551283 () Bool)

(assert (= bs!551283 d!936812))

(declare-fun m!3671593 () Bool)

(assert (=> bs!551283 m!3671593))

(assert (=> d!936204 d!936812))

(assert (=> d!936204 d!936320))

(assert (=> d!936204 d!936326))

(declare-fun b!3329851 () Bool)

(declare-fun e!2070777 () Bool)

(declare-fun call!241400 () Bool)

(assert (=> b!3329851 (= e!2070777 call!241400)))

(declare-fun b!3329852 () Bool)

(declare-fun e!2070778 () Bool)

(assert (=> b!3329852 (= e!2070778 call!241400)))

(declare-fun b!3329853 () Bool)

(declare-fun e!2070779 () Bool)

(assert (=> b!3329853 (= e!2070779 e!2070778)))

(declare-fun res!1350591 () Bool)

(declare-fun rulesUseDisjointChars!311 (Rule!10468 Rule!10468) Bool)

(assert (=> b!3329853 (= res!1350591 (rulesUseDisjointChars!311 (h!42098 rules!2135) (h!42098 rules!2135)))))

(assert (=> b!3329853 (=> (not res!1350591) (not e!2070778))))

(declare-fun b!3329854 () Bool)

(assert (=> b!3329854 (= e!2070779 e!2070777)))

(declare-fun res!1350592 () Bool)

(assert (=> b!3329854 (= res!1350592 (not ((_ is Cons!36678) rules!2135)))))

(assert (=> b!3329854 (=> res!1350592 e!2070777)))

(declare-fun bm!241395 () Bool)

(assert (=> bm!241395 (= call!241400 (ruleDisjointCharsFromAllFromOtherType!650 (h!42098 rules!2135) (t!256931 rules!2135)))))

(declare-fun d!936816 () Bool)

(declare-fun c!565545 () Bool)

(assert (=> d!936816 (= c!565545 (and ((_ is Cons!36678) rules!2135) (not (= (isSeparator!5334 (h!42098 rules!2135)) (isSeparator!5334 (h!42098 rules!2135))))))))

(assert (=> d!936816 (= (ruleDisjointCharsFromAllFromOtherType!650 (h!42098 rules!2135) rules!2135) e!2070779)))

(assert (= (and d!936816 c!565545) b!3329853))

(assert (= (and d!936816 (not c!565545)) b!3329854))

(assert (= (and b!3329853 res!1350591) b!3329852))

(assert (= (and b!3329854 (not res!1350592)) b!3329851))

(assert (= (or b!3329852 b!3329851) bm!241395))

(declare-fun m!3671597 () Bool)

(assert (=> b!3329853 m!3671597))

(declare-fun m!3671599 () Bool)

(assert (=> bm!241395 m!3671599))

(assert (=> b!3328825 d!936816))

(declare-fun bs!551284 () Bool)

(declare-fun d!936818 () Bool)

(assert (= bs!551284 (and d!936818 d!936468)))

(declare-fun lambda!119814 () Int)

(assert (=> bs!551284 (= (= (toValue!7498 (transformation!5334 (h!42098 rules!2135))) (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241)))) (= lambda!119814 lambda!119794))))

(declare-fun bs!551285 () Bool)

(assert (= bs!551285 (and d!936818 d!936652)))

(assert (=> bs!551285 (= (= (toValue!7498 (transformation!5334 (h!42098 rules!2135))) (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) (= lambda!119814 lambda!119801))))

(assert (=> d!936818 true))

(assert (=> d!936818 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (h!42098 rules!2135)))) (dynLambda!15137 order!19203 lambda!119814))))

(assert (=> d!936818 (= (equivClasses!2114 (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toValue!7498 (transformation!5334 (h!42098 rules!2135)))) (Forall2!904 lambda!119814))))

(declare-fun bs!551286 () Bool)

(assert (= bs!551286 d!936818))

(declare-fun m!3671601 () Bool)

(assert (=> bs!551286 m!3671601))

(assert (=> b!3328871 d!936818))

(declare-fun d!936820 () Bool)

(declare-fun lt!1131933 () Int)

(assert (=> d!936820 (>= lt!1131933 0)))

(declare-fun e!2070780 () Int)

(assert (=> d!936820 (= lt!1131933 e!2070780)))

(declare-fun c!565546 () Bool)

(assert (=> d!936820 (= c!565546 ((_ is Nil!36677) (_2!21224 (get!11684 lt!1131391))))))

(assert (=> d!936820 (= (size!27728 (_2!21224 (get!11684 lt!1131391))) lt!1131933)))

(declare-fun b!3329855 () Bool)

(assert (=> b!3329855 (= e!2070780 0)))

(declare-fun b!3329856 () Bool)

(assert (=> b!3329856 (= e!2070780 (+ 1 (size!27728 (t!256930 (_2!21224 (get!11684 lt!1131391))))))))

(assert (= (and d!936820 c!565546) b!3329855))

(assert (= (and d!936820 (not c!565546)) b!3329856))

(declare-fun m!3671603 () Bool)

(assert (=> b!3329856 m!3671603))

(assert (=> b!3328959 d!936820))

(assert (=> b!3328959 d!936538))

(assert (=> b!3328959 d!936498))

(declare-fun d!936822 () Bool)

(assert (=> d!936822 (= (inv!17 (value!172479 (h!42099 tokens!494))) (= (charsToBigInt!1 (text!39396 (value!172479 (h!42099 tokens!494)))) (value!172471 (value!172479 (h!42099 tokens!494)))))))

(declare-fun bs!551287 () Bool)

(assert (= bs!551287 d!936822))

(declare-fun m!3671605 () Bool)

(assert (=> bs!551287 m!3671605))

(assert (=> b!3328996 d!936822))

(declare-fun d!936824 () Bool)

(declare-fun lt!1131934 () Int)

(assert (=> d!936824 (>= lt!1131934 0)))

(declare-fun e!2070782 () Int)

(assert (=> d!936824 (= lt!1131934 e!2070782)))

(declare-fun c!565549 () Bool)

(assert (=> d!936824 (= c!565549 ((_ is Nil!36677) (originalCharacters!6048 (h!42099 tokens!494))))))

(assert (=> d!936824 (= (size!27728 (originalCharacters!6048 (h!42099 tokens!494))) lt!1131934)))

(declare-fun b!3329857 () Bool)

(assert (=> b!3329857 (= e!2070782 0)))

(declare-fun b!3329858 () Bool)

(assert (=> b!3329858 (= e!2070782 (+ 1 (size!27728 (t!256930 (originalCharacters!6048 (h!42099 tokens!494))))))))

(assert (= (and d!936824 c!565549) b!3329857))

(assert (= (and d!936824 (not c!565549)) b!3329858))

(declare-fun m!3671607 () Bool)

(assert (=> b!3329858 m!3671607))

(assert (=> b!3329121 d!936824))

(declare-fun d!936826 () Bool)

(declare-fun lt!1131936 () Bool)

(assert (=> d!936826 (= lt!1131936 (isEmpty!20840 (list!13209 (_2!21225 lt!1131436))))))

(assert (=> d!936826 (= lt!1131936 (isEmpty!20851 (c!565317 (_2!21225 lt!1131436))))))

(assert (=> d!936826 (= (isEmpty!20843 (_2!21225 lt!1131436)) lt!1131936)))

(declare-fun bs!551288 () Bool)

(assert (= bs!551288 d!936826))

(declare-fun m!3671609 () Bool)

(assert (=> bs!551288 m!3671609))

(assert (=> bs!551288 m!3671609))

(declare-fun m!3671611 () Bool)

(assert (=> bs!551288 m!3671611))

(declare-fun m!3671613 () Bool)

(assert (=> bs!551288 m!3671613))

(assert (=> b!3329123 d!936826))

(declare-fun d!936828 () Bool)

(declare-fun lt!1131937 () Bool)

(assert (=> d!936828 (= lt!1131937 (isEmpty!20848 (list!13212 (_1!21225 lt!1131434))))))

(assert (=> d!936828 (= lt!1131937 (isEmpty!20849 (c!565318 (_1!21225 lt!1131434))))))

(assert (=> d!936828 (= (isEmpty!20841 (_1!21225 lt!1131434)) lt!1131937)))

(declare-fun bs!551289 () Bool)

(assert (= bs!551289 d!936828))

(assert (=> bs!551289 m!3670175))

(assert (=> bs!551289 m!3670175))

(declare-fun m!3671617 () Bool)

(assert (=> bs!551289 m!3671617))

(declare-fun m!3671621 () Bool)

(assert (=> bs!551289 m!3671621))

(assert (=> b!3329102 d!936828))

(declare-fun b!3330030 () Bool)

(declare-fun e!2070865 () Option!7316)

(assert (=> b!3330030 (= e!2070865 None!7315)))

(declare-fun b!3330031 () Bool)

(declare-fun e!2070866 () Bool)

(declare-fun e!2070867 () Bool)

(assert (=> b!3330031 (= e!2070866 e!2070867)))

(declare-fun res!1350638 () Bool)

(assert (=> b!3330031 (=> (not res!1350638) (not e!2070867))))

(declare-fun lt!1131967 () Option!7316)

(assert (=> b!3330031 (= res!1350638 (matchR!4685 (regex!5334 (h!42098 rules!2135)) (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131967))))))))

(declare-fun b!3330032 () Bool)

(assert (=> b!3330032 (= e!2070867 (= (size!27725 (_1!21224 (get!11684 lt!1131967))) (size!27728 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131967))))))))

(declare-fun b!3330033 () Bool)

(declare-fun res!1350639 () Bool)

(assert (=> b!3330033 (=> (not res!1350639) (not e!2070867))))

(assert (=> b!3330033 (= res!1350639 (= (rule!7856 (_1!21224 (get!11684 lt!1131967))) (h!42098 rules!2135)))))

(declare-fun b!3330035 () Bool)

(declare-fun res!1350636 () Bool)

(assert (=> b!3330035 (=> (not res!1350636) (not e!2070867))))

(assert (=> b!3330035 (= res!1350636 (= (value!172479 (_1!21224 (get!11684 lt!1131967))) (apply!8472 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131967)))) (seqFromList!3722 (originalCharacters!6048 (_1!21224 (get!11684 lt!1131967)))))))))

(declare-fun b!3330036 () Bool)

(declare-fun res!1350635 () Bool)

(assert (=> b!3330036 (=> (not res!1350635) (not e!2070867))))

(assert (=> b!3330036 (= res!1350635 (= (++!8917 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131967)))) (_2!21224 (get!11684 lt!1131967))) lt!1131274))))

(declare-fun b!3330037 () Bool)

(declare-fun e!2070868 () Bool)

(declare-datatypes ((tuple2!36194 0))(
  ( (tuple2!36195 (_1!21231 List!36801) (_2!21231 List!36801)) )
))
(declare-fun findLongestMatchInner!857 (Regex!10093 List!36801 Int List!36801 List!36801 Int) tuple2!36194)

(assert (=> b!3330037 (= e!2070868 (matchR!4685 (regex!5334 (h!42098 rules!2135)) (_1!21231 (findLongestMatchInner!857 (regex!5334 (h!42098 rules!2135)) Nil!36677 (size!27728 Nil!36677) lt!1131274 lt!1131274 (size!27728 lt!1131274)))))))

(declare-fun b!3330038 () Bool)

(declare-fun res!1350640 () Bool)

(assert (=> b!3330038 (=> (not res!1350640) (not e!2070867))))

(assert (=> b!3330038 (= res!1350640 (< (size!27728 (_2!21224 (get!11684 lt!1131967))) (size!27728 lt!1131274)))))

(declare-fun b!3330034 () Bool)

(declare-fun lt!1131970 () tuple2!36194)

(assert (=> b!3330034 (= e!2070865 (Some!7315 (tuple2!36181 (Token!10035 (apply!8472 (transformation!5334 (h!42098 rules!2135)) (seqFromList!3722 (_1!21231 lt!1131970))) (h!42098 rules!2135) (size!27731 (seqFromList!3722 (_1!21231 lt!1131970))) (_1!21231 lt!1131970)) (_2!21231 lt!1131970))))))

(declare-fun lt!1131966 () Unit!51688)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!830 (Regex!10093 List!36801) Unit!51688)

(assert (=> b!3330034 (= lt!1131966 (longestMatchIsAcceptedByMatchOrIsEmpty!830 (regex!5334 (h!42098 rules!2135)) lt!1131274))))

(declare-fun res!1350634 () Bool)

(assert (=> b!3330034 (= res!1350634 (isEmpty!20840 (_1!21231 (findLongestMatchInner!857 (regex!5334 (h!42098 rules!2135)) Nil!36677 (size!27728 Nil!36677) lt!1131274 lt!1131274 (size!27728 lt!1131274)))))))

(assert (=> b!3330034 (=> res!1350634 e!2070868)))

(assert (=> b!3330034 e!2070868))

(declare-fun lt!1131968 () Unit!51688)

(assert (=> b!3330034 (= lt!1131968 lt!1131966)))

(declare-fun lt!1131969 () Unit!51688)

(declare-fun lemmaSemiInverse!1203 (TokenValueInjection!10556 BalanceConc!21700) Unit!51688)

(assert (=> b!3330034 (= lt!1131969 (lemmaSemiInverse!1203 (transformation!5334 (h!42098 rules!2135)) (seqFromList!3722 (_1!21231 lt!1131970))))))

(declare-fun d!936830 () Bool)

(assert (=> d!936830 e!2070866))

(declare-fun res!1350637 () Bool)

(assert (=> d!936830 (=> res!1350637 e!2070866)))

(assert (=> d!936830 (= res!1350637 (isEmpty!20847 lt!1131967))))

(assert (=> d!936830 (= lt!1131967 e!2070865)))

(declare-fun c!565568 () Bool)

(assert (=> d!936830 (= c!565568 (isEmpty!20840 (_1!21231 lt!1131970)))))

(declare-fun findLongestMatch!772 (Regex!10093 List!36801) tuple2!36194)

(assert (=> d!936830 (= lt!1131970 (findLongestMatch!772 (regex!5334 (h!42098 rules!2135)) lt!1131274))))

(assert (=> d!936830 (ruleValid!1680 thiss!18206 (h!42098 rules!2135))))

(assert (=> d!936830 (= (maxPrefixOneRule!1656 thiss!18206 (h!42098 rules!2135) lt!1131274) lt!1131967)))

(assert (= (and d!936830 c!565568) b!3330030))

(assert (= (and d!936830 (not c!565568)) b!3330034))

(assert (= (and b!3330034 (not res!1350634)) b!3330037))

(assert (= (and d!936830 (not res!1350637)) b!3330031))

(assert (= (and b!3330031 res!1350638) b!3330036))

(assert (= (and b!3330036 res!1350635) b!3330038))

(assert (= (and b!3330038 res!1350640) b!3330033))

(assert (= (and b!3330033 res!1350639) b!3330035))

(assert (= (and b!3330035 res!1350636) b!3330032))

(declare-fun m!3671727 () Bool)

(assert (=> b!3330032 m!3671727))

(declare-fun m!3671729 () Bool)

(assert (=> b!3330032 m!3671729))

(declare-fun m!3671731 () Bool)

(assert (=> d!936830 m!3671731))

(declare-fun m!3671733 () Bool)

(assert (=> d!936830 m!3671733))

(declare-fun m!3671735 () Bool)

(assert (=> d!936830 m!3671735))

(assert (=> d!936830 m!3670861))

(assert (=> b!3330036 m!3671727))

(declare-fun m!3671737 () Bool)

(assert (=> b!3330036 m!3671737))

(assert (=> b!3330036 m!3671737))

(declare-fun m!3671739 () Bool)

(assert (=> b!3330036 m!3671739))

(assert (=> b!3330036 m!3671739))

(declare-fun m!3671741 () Bool)

(assert (=> b!3330036 m!3671741))

(assert (=> b!3330033 m!3671727))

(declare-fun m!3671743 () Bool)

(assert (=> b!3330034 m!3671743))

(assert (=> b!3330034 m!3669925))

(declare-fun m!3671745 () Bool)

(assert (=> b!3330034 m!3671745))

(declare-fun m!3671747 () Bool)

(assert (=> b!3330034 m!3671747))

(declare-fun m!3671749 () Bool)

(assert (=> b!3330034 m!3671749))

(declare-fun m!3671751 () Bool)

(assert (=> b!3330034 m!3671751))

(assert (=> b!3330034 m!3671747))

(declare-fun m!3671753 () Bool)

(assert (=> b!3330034 m!3671753))

(assert (=> b!3330034 m!3671743))

(assert (=> b!3330034 m!3669925))

(assert (=> b!3330034 m!3671747))

(assert (=> b!3330034 m!3671747))

(declare-fun m!3671755 () Bool)

(assert (=> b!3330034 m!3671755))

(declare-fun m!3671757 () Bool)

(assert (=> b!3330034 m!3671757))

(assert (=> b!3330031 m!3671727))

(assert (=> b!3330031 m!3671737))

(assert (=> b!3330031 m!3671737))

(assert (=> b!3330031 m!3671739))

(assert (=> b!3330031 m!3671739))

(declare-fun m!3671759 () Bool)

(assert (=> b!3330031 m!3671759))

(assert (=> b!3330035 m!3671727))

(declare-fun m!3671761 () Bool)

(assert (=> b!3330035 m!3671761))

(assert (=> b!3330035 m!3671761))

(declare-fun m!3671763 () Bool)

(assert (=> b!3330035 m!3671763))

(assert (=> b!3330038 m!3671727))

(declare-fun m!3671765 () Bool)

(assert (=> b!3330038 m!3671765))

(assert (=> b!3330038 m!3669925))

(assert (=> b!3330037 m!3671743))

(assert (=> b!3330037 m!3669925))

(assert (=> b!3330037 m!3671743))

(assert (=> b!3330037 m!3669925))

(assert (=> b!3330037 m!3671745))

(declare-fun m!3671767 () Bool)

(assert (=> b!3330037 m!3671767))

(assert (=> bm!241377 d!936830))

(declare-fun b!3330067 () Bool)

(declare-fun e!2070887 () Bool)

(declare-fun nullable!3424 (Regex!10093) Bool)

(assert (=> b!3330067 (= e!2070887 (nullable!3424 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))))))

(declare-fun b!3330068 () Bool)

(declare-fun e!2070886 () Bool)

(declare-fun e!2070888 () Bool)

(assert (=> b!3330068 (= e!2070886 e!2070888)))

(declare-fun c!565577 () Bool)

(assert (=> b!3330068 (= c!565577 ((_ is EmptyLang!10093) (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))))))

(declare-fun b!3330069 () Bool)

(declare-fun res!1350660 () Bool)

(declare-fun e!2070885 () Bool)

(assert (=> b!3330069 (=> (not res!1350660) (not e!2070885))))

(assert (=> b!3330069 (= res!1350660 (isEmpty!20840 (tail!5300 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))))))))

(declare-fun b!3330070 () Bool)

(assert (=> b!3330070 (= e!2070885 (= (head!7163 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))) (c!565316 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))))))

(declare-fun b!3330071 () Bool)

(declare-fun res!1350664 () Bool)

(assert (=> b!3330071 (=> (not res!1350664) (not e!2070885))))

(declare-fun call!241406 () Bool)

(assert (=> b!3330071 (= res!1350664 (not call!241406))))

(declare-fun b!3330072 () Bool)

(declare-fun res!1350662 () Bool)

(declare-fun e!2070883 () Bool)

(assert (=> b!3330072 (=> res!1350662 e!2070883)))

(assert (=> b!3330072 (= res!1350662 e!2070885)))

(declare-fun res!1350661 () Bool)

(assert (=> b!3330072 (=> (not res!1350661) (not e!2070885))))

(declare-fun lt!1131973 () Bool)

(assert (=> b!3330072 (= res!1350661 lt!1131973)))

(declare-fun b!3330073 () Bool)

(declare-fun res!1350659 () Bool)

(declare-fun e!2070889 () Bool)

(assert (=> b!3330073 (=> res!1350659 e!2070889)))

(assert (=> b!3330073 (= res!1350659 (not (isEmpty!20840 (tail!5300 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))))))))

(declare-fun b!3330075 () Bool)

(declare-fun res!1350663 () Bool)

(assert (=> b!3330075 (=> res!1350663 e!2070883)))

(assert (=> b!3330075 (= res!1350663 (not ((_ is ElementMatch!10093) (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))))))

(assert (=> b!3330075 (= e!2070888 e!2070883)))

(declare-fun b!3330076 () Bool)

(assert (=> b!3330076 (= e!2070888 (not lt!1131973))))

(declare-fun b!3330077 () Bool)

(assert (=> b!3330077 (= e!2070889 (not (= (head!7163 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))) (c!565316 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))))))))

(declare-fun b!3330078 () Bool)

(declare-fun e!2070884 () Bool)

(assert (=> b!3330078 (= e!2070883 e!2070884)))

(declare-fun res!1350657 () Bool)

(assert (=> b!3330078 (=> (not res!1350657) (not e!2070884))))

(assert (=> b!3330078 (= res!1350657 (not lt!1131973))))

(declare-fun b!3330079 () Bool)

(declare-fun derivativeStep!2977 (Regex!10093 C!20372) Regex!10093)

(assert (=> b!3330079 (= e!2070887 (matchR!4685 (derivativeStep!2977 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))) (head!7163 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))))) (tail!5300 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))))))))

(declare-fun bm!241401 () Bool)

(assert (=> bm!241401 (= call!241406 (isEmpty!20840 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))))))

(declare-fun b!3330080 () Bool)

(assert (=> b!3330080 (= e!2070886 (= lt!1131973 call!241406))))

(declare-fun d!936864 () Bool)

(assert (=> d!936864 e!2070886))

(declare-fun c!565576 () Bool)

(assert (=> d!936864 (= c!565576 ((_ is EmptyExpr!10093) (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391))))))))

(assert (=> d!936864 (= lt!1131973 e!2070887)))

(declare-fun c!565575 () Bool)

(assert (=> d!936864 (= c!565575 (isEmpty!20840 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))))))

(declare-fun validRegex!4580 (Regex!10093) Bool)

(assert (=> d!936864 (validRegex!4580 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))))

(assert (=> d!936864 (= (matchR!4685 (regex!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))) (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))) lt!1131973)))

(declare-fun b!3330074 () Bool)

(assert (=> b!3330074 (= e!2070884 e!2070889)))

(declare-fun res!1350658 () Bool)

(assert (=> b!3330074 (=> res!1350658 e!2070889)))

(assert (=> b!3330074 (= res!1350658 call!241406)))

(assert (= (and d!936864 c!565575) b!3330067))

(assert (= (and d!936864 (not c!565575)) b!3330079))

(assert (= (and d!936864 c!565576) b!3330080))

(assert (= (and d!936864 (not c!565576)) b!3330068))

(assert (= (and b!3330068 c!565577) b!3330076))

(assert (= (and b!3330068 (not c!565577)) b!3330075))

(assert (= (and b!3330075 (not res!1350663)) b!3330072))

(assert (= (and b!3330072 res!1350661) b!3330071))

(assert (= (and b!3330071 res!1350664) b!3330069))

(assert (= (and b!3330069 res!1350660) b!3330070))

(assert (= (and b!3330072 (not res!1350662)) b!3330078))

(assert (= (and b!3330078 res!1350657) b!3330074))

(assert (= (and b!3330074 (not res!1350658)) b!3330073))

(assert (= (and b!3330073 (not res!1350659)) b!3330077))

(assert (= (or b!3330080 b!3330071 b!3330074) bm!241401))

(assert (=> b!3330070 m!3670011))

(declare-fun m!3671769 () Bool)

(assert (=> b!3330070 m!3671769))

(assert (=> b!3330077 m!3670011))

(assert (=> b!3330077 m!3671769))

(assert (=> b!3330079 m!3670011))

(assert (=> b!3330079 m!3671769))

(assert (=> b!3330079 m!3671769))

(declare-fun m!3671771 () Bool)

(assert (=> b!3330079 m!3671771))

(assert (=> b!3330079 m!3670011))

(declare-fun m!3671773 () Bool)

(assert (=> b!3330079 m!3671773))

(assert (=> b!3330079 m!3671771))

(assert (=> b!3330079 m!3671773))

(declare-fun m!3671775 () Bool)

(assert (=> b!3330079 m!3671775))

(assert (=> bm!241401 m!3670011))

(declare-fun m!3671777 () Bool)

(assert (=> bm!241401 m!3671777))

(assert (=> b!3330073 m!3670011))

(assert (=> b!3330073 m!3671773))

(assert (=> b!3330073 m!3671773))

(declare-fun m!3671779 () Bool)

(assert (=> b!3330073 m!3671779))

(declare-fun m!3671781 () Bool)

(assert (=> b!3330067 m!3671781))

(assert (=> b!3330069 m!3670011))

(assert (=> b!3330069 m!3671773))

(assert (=> b!3330069 m!3671773))

(assert (=> b!3330069 m!3671779))

(assert (=> d!936864 m!3670011))

(assert (=> d!936864 m!3671777))

(declare-fun m!3671783 () Bool)

(assert (=> d!936864 m!3671783))

(assert (=> b!3328961 d!936864))

(assert (=> b!3328961 d!936538))

(assert (=> b!3328961 d!936508))

(assert (=> b!3328961 d!936510))

(declare-fun d!936866 () Bool)

(assert (=> d!936866 (= (inv!16 (value!172479 (h!42099 tokens!494))) (= (charsToInt!0 (text!39395 (value!172479 (h!42099 tokens!494)))) (value!172470 (value!172479 (h!42099 tokens!494)))))))

(declare-fun bs!551293 () Bool)

(assert (= bs!551293 d!936866))

(declare-fun m!3671785 () Bool)

(assert (=> bs!551293 m!3671785))

(assert (=> b!3328998 d!936866))

(assert (=> d!936292 d!936306))

(assert (=> d!936292 d!936290))

(declare-fun d!936868 () Bool)

(assert (=> d!936868 (isEmpty!20840 (getSuffix!1428 lt!1131274 lt!1131274))))

(assert (=> d!936868 true))

(declare-fun _$66!402 () Unit!51688)

(assert (=> d!936868 (= (choose!19289 lt!1131274) _$66!402)))

(declare-fun bs!551294 () Bool)

(assert (= bs!551294 d!936868))

(assert (=> bs!551294 m!3669651))

(assert (=> bs!551294 m!3669651))

(assert (=> bs!551294 m!3669657))

(assert (=> d!936292 d!936868))

(declare-fun b!3330082 () Bool)

(declare-fun e!2070890 () List!36801)

(declare-fun e!2070891 () List!36801)

(assert (=> b!3330082 (= e!2070890 e!2070891)))

(declare-fun c!565579 () Bool)

(assert (=> b!3330082 (= c!565579 ((_ is Leaf!17321) (c!565317 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241))))))

(declare-fun d!936870 () Bool)

(declare-fun c!565578 () Bool)

(assert (=> d!936870 (= c!565578 ((_ is Empty!11043) (c!565317 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241))))))

(assert (=> d!936870 (= (list!13213 (c!565317 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241))) e!2070890)))

(declare-fun b!3330081 () Bool)

(assert (=> b!3330081 (= e!2070890 Nil!36677)))

(declare-fun b!3330084 () Bool)

(assert (=> b!3330084 (= e!2070891 (++!8917 (list!13213 (left!28584 (c!565317 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241)))) (list!13213 (right!28914 (c!565317 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241))))))))

(declare-fun b!3330083 () Bool)

(assert (=> b!3330083 (= e!2070891 (list!13217 (xs!14181 (c!565317 (printWithSeparatorToken!114 thiss!18206 lt!1131267 separatorToken!241)))))))

(assert (= (and d!936870 c!565578) b!3330081))

(assert (= (and d!936870 (not c!565578)) b!3330082))

(assert (= (and b!3330082 c!565579) b!3330083))

(assert (= (and b!3330082 (not c!565579)) b!3330084))

(declare-fun m!3671787 () Bool)

(assert (=> b!3330084 m!3671787))

(declare-fun m!3671789 () Bool)

(assert (=> b!3330084 m!3671789))

(assert (=> b!3330084 m!3671787))

(assert (=> b!3330084 m!3671789))

(declare-fun m!3671791 () Bool)

(assert (=> b!3330084 m!3671791))

(declare-fun m!3671793 () Bool)

(assert (=> b!3330083 m!3671793))

(assert (=> d!936272 d!936870))

(declare-fun b!3330087 () Bool)

(declare-fun res!1350666 () Bool)

(declare-fun e!2070892 () Bool)

(assert (=> b!3330087 (=> (not res!1350666) (not e!2070892))))

(declare-fun lt!1131974 () List!36801)

(assert (=> b!3330087 (= res!1350666 (= (size!27728 lt!1131974) (+ (size!27728 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))) (size!27728 (_2!21224 (get!11684 lt!1131391))))))))

(declare-fun b!3330086 () Bool)

(declare-fun e!2070893 () List!36801)

(assert (=> b!3330086 (= e!2070893 (Cons!36677 (h!42097 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))) (++!8917 (t!256930 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))) (_2!21224 (get!11684 lt!1131391)))))))

(declare-fun d!936872 () Bool)

(assert (=> d!936872 e!2070892))

(declare-fun res!1350665 () Bool)

(assert (=> d!936872 (=> (not res!1350665) (not e!2070892))))

(assert (=> d!936872 (= res!1350665 (= (content!5011 lt!1131974) ((_ map or) (content!5011 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))) (content!5011 (_2!21224 (get!11684 lt!1131391))))))))

(assert (=> d!936872 (= lt!1131974 e!2070893)))

(declare-fun c!565580 () Bool)

(assert (=> d!936872 (= c!565580 ((_ is Nil!36677) (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391))))))))

(assert (=> d!936872 (= (++!8917 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))) (_2!21224 (get!11684 lt!1131391))) lt!1131974)))

(declare-fun b!3330088 () Bool)

(assert (=> b!3330088 (= e!2070892 (or (not (= (_2!21224 (get!11684 lt!1131391)) Nil!36677)) (= lt!1131974 (list!13209 (charsOf!3348 (_1!21224 (get!11684 lt!1131391)))))))))

(declare-fun b!3330085 () Bool)

(assert (=> b!3330085 (= e!2070893 (_2!21224 (get!11684 lt!1131391)))))

(assert (= (and d!936872 c!565580) b!3330085))

(assert (= (and d!936872 (not c!565580)) b!3330086))

(assert (= (and d!936872 res!1350665) b!3330087))

(assert (= (and b!3330087 res!1350666) b!3330088))

(declare-fun m!3671795 () Bool)

(assert (=> b!3330087 m!3671795))

(assert (=> b!3330087 m!3670011))

(declare-fun m!3671797 () Bool)

(assert (=> b!3330087 m!3671797))

(assert (=> b!3330087 m!3670005))

(declare-fun m!3671799 () Bool)

(assert (=> b!3330086 m!3671799))

(declare-fun m!3671801 () Bool)

(assert (=> d!936872 m!3671801))

(assert (=> d!936872 m!3670011))

(declare-fun m!3671803 () Bool)

(assert (=> d!936872 m!3671803))

(declare-fun m!3671805 () Bool)

(assert (=> d!936872 m!3671805))

(assert (=> b!3328964 d!936872))

(assert (=> b!3328964 d!936508))

(assert (=> b!3328964 d!936510))

(assert (=> b!3328964 d!936538))

(declare-fun d!936874 () Bool)

(declare-fun res!1350667 () Bool)

(declare-fun e!2070894 () Bool)

(assert (=> d!936874 (=> (not res!1350667) (not e!2070894))))

(assert (=> d!936874 (= res!1350667 (not (isEmpty!20840 (originalCharacters!6048 (h!42099 (t!256932 tokens!494))))))))

(assert (=> d!936874 (= (inv!49686 (h!42099 (t!256932 tokens!494))) e!2070894)))

(declare-fun b!3330089 () Bool)

(declare-fun res!1350668 () Bool)

(assert (=> b!3330089 (=> (not res!1350668) (not e!2070894))))

(assert (=> b!3330089 (= res!1350668 (= (originalCharacters!6048 (h!42099 (t!256932 tokens!494))) (list!13209 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (value!172479 (h!42099 (t!256932 tokens!494)))))))))

(declare-fun b!3330090 () Bool)

(assert (=> b!3330090 (= e!2070894 (= (size!27725 (h!42099 (t!256932 tokens!494))) (size!27728 (originalCharacters!6048 (h!42099 (t!256932 tokens!494))))))))

(assert (= (and d!936874 res!1350667) b!3330089))

(assert (= (and b!3330089 res!1350668) b!3330090))

(declare-fun b_lambda!94069 () Bool)

(assert (=> (not b_lambda!94069) (not b!3330089)))

(declare-fun tb!174497 () Bool)

(declare-fun t!257122 () Bool)

(assert (=> (and b!3328729 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) t!257122) tb!174497))

(declare-fun b!3330091 () Bool)

(declare-fun e!2070895 () Bool)

(declare-fun tp!1040667 () Bool)

(assert (=> b!3330091 (= e!2070895 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (value!172479 (h!42099 (t!256932 tokens!494)))))) tp!1040667))))

(declare-fun result!217624 () Bool)

(assert (=> tb!174497 (= result!217624 (and (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (value!172479 (h!42099 (t!256932 tokens!494))))) e!2070895))))

(assert (= tb!174497 b!3330091))

(declare-fun m!3671807 () Bool)

(assert (=> b!3330091 m!3671807))

(declare-fun m!3671809 () Bool)

(assert (=> tb!174497 m!3671809))

(assert (=> b!3330089 t!257122))

(declare-fun b_and!229665 () Bool)

(assert (= b_and!229621 (and (=> t!257122 result!217624) b_and!229665)))

(declare-fun t!257124 () Bool)

(declare-fun tb!174499 () Bool)

(assert (=> (and b!3328722 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) t!257124) tb!174499))

(declare-fun result!217626 () Bool)

(assert (= result!217626 result!217624))

(assert (=> b!3330089 t!257124))

(declare-fun b_and!229667 () Bool)

(assert (= b_and!229623 (and (=> t!257124 result!217626) b_and!229667)))

(declare-fun t!257126 () Bool)

(declare-fun tb!174501 () Bool)

(assert (=> (and b!3329174 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) t!257126) tb!174501))

(declare-fun result!217628 () Bool)

(assert (= result!217628 result!217624))

(assert (=> b!3330089 t!257126))

(declare-fun b_and!229669 () Bool)

(assert (= b_and!229617 (and (=> t!257126 result!217628) b_and!229669)))

(declare-fun tb!174503 () Bool)

(declare-fun t!257128 () Bool)

(assert (=> (and b!3329155 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) t!257128) tb!174503))

(declare-fun result!217630 () Bool)

(assert (= result!217630 result!217624))

(assert (=> b!3330089 t!257128))

(declare-fun b_and!229671 () Bool)

(assert (= b_and!229625 (and (=> t!257128 result!217630) b_and!229671)))

(declare-fun t!257130 () Bool)

(declare-fun tb!174505 () Bool)

(assert (=> (and b!3328728 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) t!257130) tb!174505))

(declare-fun result!217632 () Bool)

(assert (= result!217632 result!217624))

(assert (=> b!3330089 t!257130))

(declare-fun b_and!229673 () Bool)

(assert (= b_and!229619 (and (=> t!257130 result!217632) b_and!229673)))

(declare-fun m!3671811 () Bool)

(assert (=> d!936874 m!3671811))

(declare-fun m!3671813 () Bool)

(assert (=> b!3330089 m!3671813))

(assert (=> b!3330089 m!3671813))

(declare-fun m!3671815 () Bool)

(assert (=> b!3330089 m!3671815))

(declare-fun m!3671817 () Bool)

(assert (=> b!3330090 m!3671817))

(assert (=> b!3329171 d!936874))

(declare-fun d!936876 () Bool)

(declare-fun lt!1131975 () Int)

(assert (=> d!936876 (>= lt!1131975 0)))

(declare-fun e!2070896 () Int)

(assert (=> d!936876 (= lt!1131975 e!2070896)))

(declare-fun c!565581 () Bool)

(assert (=> d!936876 (= c!565581 ((_ is Nil!36677) (originalCharacters!6048 separatorToken!241)))))

(assert (=> d!936876 (= (size!27728 (originalCharacters!6048 separatorToken!241)) lt!1131975)))

(declare-fun b!3330092 () Bool)

(assert (=> b!3330092 (= e!2070896 0)))

(declare-fun b!3330093 () Bool)

(assert (=> b!3330093 (= e!2070896 (+ 1 (size!27728 (t!256930 (originalCharacters!6048 separatorToken!241)))))))

(assert (= (and d!936876 c!565581) b!3330092))

(assert (= (and d!936876 (not c!565581)) b!3330093))

(declare-fun m!3671819 () Bool)

(assert (=> b!3330093 m!3671819))

(assert (=> b!3328752 d!936876))

(declare-fun d!936878 () Bool)

(assert (=> d!936878 (= (list!13209 lt!1131398) (list!13213 (c!565317 lt!1131398)))))

(declare-fun bs!551295 () Bool)

(assert (= bs!551295 d!936878))

(declare-fun m!3671821 () Bool)

(assert (=> bs!551295 m!3671821))

(assert (=> d!936316 d!936878))

(declare-fun d!936880 () Bool)

(declare-fun c!565582 () Bool)

(assert (=> d!936880 (= c!565582 ((_ is Cons!36679) (list!13212 lt!1131272)))))

(declare-fun e!2070897 () List!36801)

(assert (=> d!936880 (= (printList!1471 thiss!18206 (list!13212 lt!1131272)) e!2070897)))

(declare-fun b!3330094 () Bool)

(assert (=> b!3330094 (= e!2070897 (++!8917 (list!13209 (charsOf!3348 (h!42099 (list!13212 lt!1131272)))) (printList!1471 thiss!18206 (t!256932 (list!13212 lt!1131272)))))))

(declare-fun b!3330095 () Bool)

(assert (=> b!3330095 (= e!2070897 Nil!36677)))

(assert (= (and d!936880 c!565582) b!3330094))

(assert (= (and d!936880 (not c!565582)) b!3330095))

(declare-fun m!3671823 () Bool)

(assert (=> b!3330094 m!3671823))

(assert (=> b!3330094 m!3671823))

(declare-fun m!3671825 () Bool)

(assert (=> b!3330094 m!3671825))

(declare-fun m!3671827 () Bool)

(assert (=> b!3330094 m!3671827))

(assert (=> b!3330094 m!3671825))

(assert (=> b!3330094 m!3671827))

(declare-fun m!3671829 () Bool)

(assert (=> b!3330094 m!3671829))

(assert (=> d!936316 d!936880))

(assert (=> d!936316 d!936712))

(assert (=> d!936316 d!936318))

(declare-fun d!936882 () Bool)

(declare-fun lt!1131976 () Bool)

(assert (=> d!936882 (= lt!1131976 (isEmpty!20840 (list!13209 (_2!21225 lt!1131322))))))

(assert (=> d!936882 (= lt!1131976 (isEmpty!20851 (c!565317 (_2!21225 lt!1131322))))))

(assert (=> d!936882 (= (isEmpty!20843 (_2!21225 lt!1131322)) lt!1131976)))

(declare-fun bs!551296 () Bool)

(assert (= bs!551296 d!936882))

(declare-fun m!3671831 () Bool)

(assert (=> bs!551296 m!3671831))

(assert (=> bs!551296 m!3671831))

(declare-fun m!3671833 () Bool)

(assert (=> bs!551296 m!3671833))

(declare-fun m!3671835 () Bool)

(assert (=> bs!551296 m!3671835))

(assert (=> b!3328816 d!936882))

(declare-fun d!936884 () Bool)

(declare-fun c!565585 () Bool)

(assert (=> d!936884 (= c!565585 ((_ is Nil!36677) lt!1131344))))

(declare-fun e!2070900 () (InoxSet C!20372))

(assert (=> d!936884 (= (content!5011 lt!1131344) e!2070900)))

(declare-fun b!3330100 () Bool)

(assert (=> b!3330100 (= e!2070900 ((as const (Array C!20372 Bool)) false))))

(declare-fun b!3330101 () Bool)

(assert (=> b!3330101 (= e!2070900 ((_ map or) (store ((as const (Array C!20372 Bool)) false) (h!42097 lt!1131344) true) (content!5011 (t!256930 lt!1131344))))))

(assert (= (and d!936884 c!565585) b!3330100))

(assert (= (and d!936884 (not c!565585)) b!3330101))

(declare-fun m!3671837 () Bool)

(assert (=> b!3330101 m!3671837))

(declare-fun m!3671839 () Bool)

(assert (=> b!3330101 m!3671839))

(assert (=> d!936280 d!936884))

(declare-fun d!936886 () Bool)

(declare-fun c!565586 () Bool)

(assert (=> d!936886 (= c!565586 ((_ is Nil!36677) lt!1131274))))

(declare-fun e!2070901 () (InoxSet C!20372))

(assert (=> d!936886 (= (content!5011 lt!1131274) e!2070901)))

(declare-fun b!3330102 () Bool)

(assert (=> b!3330102 (= e!2070901 ((as const (Array C!20372 Bool)) false))))

(declare-fun b!3330103 () Bool)

(assert (=> b!3330103 (= e!2070901 ((_ map or) (store ((as const (Array C!20372 Bool)) false) (h!42097 lt!1131274) true) (content!5011 (t!256930 lt!1131274))))))

(assert (= (and d!936886 c!565586) b!3330102))

(assert (= (and d!936886 (not c!565586)) b!3330103))

(declare-fun m!3671841 () Bool)

(assert (=> b!3330103 m!3671841))

(assert (=> b!3330103 m!3671443))

(assert (=> d!936280 d!936886))

(declare-fun d!936888 () Bool)

(declare-fun c!565587 () Bool)

(assert (=> d!936888 (= c!565587 ((_ is Nil!36677) (list!13209 (charsOf!3348 separatorToken!241))))))

(declare-fun e!2070902 () (InoxSet C!20372))

(assert (=> d!936888 (= (content!5011 (list!13209 (charsOf!3348 separatorToken!241))) e!2070902)))

(declare-fun b!3330104 () Bool)

(assert (=> b!3330104 (= e!2070902 ((as const (Array C!20372 Bool)) false))))

(declare-fun b!3330105 () Bool)

(assert (=> b!3330105 (= e!2070902 ((_ map or) (store ((as const (Array C!20372 Bool)) false) (h!42097 (list!13209 (charsOf!3348 separatorToken!241))) true) (content!5011 (t!256930 (list!13209 (charsOf!3348 separatorToken!241))))))))

(assert (= (and d!936888 c!565587) b!3330104))

(assert (= (and d!936888 (not c!565587)) b!3330105))

(declare-fun m!3671843 () Bool)

(assert (=> b!3330105 m!3671843))

(declare-fun m!3671845 () Bool)

(assert (=> b!3330105 m!3671845))

(assert (=> d!936280 d!936888))

(declare-fun d!936890 () Bool)

(assert (=> d!936890 (dynLambda!15133 lambda!119767 (h!42099 tokens!494))))

(assert (=> d!936890 true))

(declare-fun _$7!1191 () Unit!51688)

(assert (=> d!936890 (= (choose!19286 tokens!494 lambda!119767 (h!42099 tokens!494)) _$7!1191)))

(declare-fun b_lambda!94071 () Bool)

(assert (=> (not b_lambda!94071) (not d!936890)))

(declare-fun bs!551297 () Bool)

(assert (= bs!551297 d!936890))

(assert (=> bs!551297 m!3669895))

(assert (=> d!936254 d!936890))

(assert (=> d!936254 d!936352))

(declare-fun bs!551298 () Bool)

(declare-fun d!936892 () Bool)

(assert (= bs!551298 (and d!936892 d!936638)))

(declare-fun lambda!119815 () Int)

(assert (=> bs!551298 (= (and (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (h!42098 rules!2135)))) (= (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (h!42098 rules!2135))))) (= lambda!119815 lambda!119800))))

(declare-fun bs!551299 () Bool)

(assert (= bs!551299 (and d!936892 d!936784)))

(assert (=> bs!551299 (= (and (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) (= (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (rule!7856 separatorToken!241))))) (= lambda!119815 lambda!119807))))

(assert (=> d!936892 true))

(assert (=> d!936892 (< (dynLambda!15132 order!19197 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) (dynLambda!15139 order!19205 lambda!119815))))

(assert (=> d!936892 true))

(assert (=> d!936892 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) (dynLambda!15139 order!19205 lambda!119815))))

(assert (=> d!936892 (= (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toValue!7498 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) (Forall!1307 lambda!119815))))

(declare-fun bs!551300 () Bool)

(assert (= bs!551300 d!936892))

(declare-fun m!3671847 () Bool)

(assert (=> bs!551300 m!3671847))

(assert (=> d!936360 d!936892))

(declare-fun d!936894 () Bool)

(declare-fun lt!1131979 () Bool)

(assert (=> d!936894 (= lt!1131979 (select (content!5014 tokens!494) (h!42099 tokens!494)))))

(declare-fun e!2070908 () Bool)

(assert (=> d!936894 (= lt!1131979 e!2070908)))

(declare-fun res!1350673 () Bool)

(assert (=> d!936894 (=> (not res!1350673) (not e!2070908))))

(assert (=> d!936894 (= res!1350673 ((_ is Cons!36679) tokens!494))))

(assert (=> d!936894 (= (contains!6649 tokens!494 (h!42099 tokens!494)) lt!1131979)))

(declare-fun b!3330110 () Bool)

(declare-fun e!2070907 () Bool)

(assert (=> b!3330110 (= e!2070908 e!2070907)))

(declare-fun res!1350674 () Bool)

(assert (=> b!3330110 (=> res!1350674 e!2070907)))

(assert (=> b!3330110 (= res!1350674 (= (h!42099 tokens!494) (h!42099 tokens!494)))))

(declare-fun b!3330111 () Bool)

(assert (=> b!3330111 (= e!2070907 (contains!6649 (t!256932 tokens!494) (h!42099 tokens!494)))))

(assert (= (and d!936894 res!1350673) b!3330110))

(assert (= (and b!3330110 (not res!1350674)) b!3330111))

(declare-fun m!3671849 () Bool)

(assert (=> d!936894 m!3671849))

(declare-fun m!3671851 () Bool)

(assert (=> d!936894 m!3671851))

(declare-fun m!3671853 () Bool)

(assert (=> b!3330111 m!3671853))

(assert (=> b!3328884 d!936894))

(declare-fun d!936896 () Bool)

(declare-fun c!565588 () Bool)

(assert (=> d!936896 (= c!565588 ((_ is Node!11043) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))))))

(declare-fun e!2070909 () Bool)

(assert (=> d!936896 (= (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))) e!2070909)))

(declare-fun b!3330112 () Bool)

(assert (=> b!3330112 (= e!2070909 (inv!49691 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))))))

(declare-fun b!3330113 () Bool)

(declare-fun e!2070910 () Bool)

(assert (=> b!3330113 (= e!2070909 e!2070910)))

(declare-fun res!1350675 () Bool)

(assert (=> b!3330113 (= res!1350675 (not ((_ is Leaf!17321) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))))))))

(assert (=> b!3330113 (=> res!1350675 e!2070910)))

(declare-fun b!3330114 () Bool)

(assert (=> b!3330114 (= e!2070910 (inv!49692 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))))))

(assert (= (and d!936896 c!565588) b!3330112))

(assert (= (and d!936896 (not c!565588)) b!3330113))

(assert (= (and b!3330113 (not res!1350675)) b!3330114))

(declare-fun m!3671855 () Bool)

(assert (=> b!3330112 m!3671855))

(declare-fun m!3671857 () Bool)

(assert (=> b!3330114 m!3671857))

(assert (=> b!3328757 d!936896))

(declare-fun d!936898 () Bool)

(declare-fun lt!1131982 () Bool)

(declare-fun content!5015 (List!36802) (InoxSet Rule!10468))

(assert (=> d!936898 (= lt!1131982 (select (content!5015 rules!2135) (rule!7856 (_1!21224 (get!11684 lt!1131391)))))))

(declare-fun e!2070915 () Bool)

(assert (=> d!936898 (= lt!1131982 e!2070915)))

(declare-fun res!1350681 () Bool)

(assert (=> d!936898 (=> (not res!1350681) (not e!2070915))))

(assert (=> d!936898 (= res!1350681 ((_ is Cons!36678) rules!2135))))

(assert (=> d!936898 (= (contains!6650 rules!2135 (rule!7856 (_1!21224 (get!11684 lt!1131391)))) lt!1131982)))

(declare-fun b!3330119 () Bool)

(declare-fun e!2070916 () Bool)

(assert (=> b!3330119 (= e!2070915 e!2070916)))

(declare-fun res!1350680 () Bool)

(assert (=> b!3330119 (=> res!1350680 e!2070916)))

(assert (=> b!3330119 (= res!1350680 (= (h!42098 rules!2135) (rule!7856 (_1!21224 (get!11684 lt!1131391)))))))

(declare-fun b!3330120 () Bool)

(assert (=> b!3330120 (= e!2070916 (contains!6650 (t!256931 rules!2135) (rule!7856 (_1!21224 (get!11684 lt!1131391)))))))

(assert (= (and d!936898 res!1350681) b!3330119))

(assert (= (and b!3330119 (not res!1350680)) b!3330120))

(declare-fun m!3671859 () Bool)

(assert (=> d!936898 m!3671859))

(declare-fun m!3671861 () Bool)

(assert (=> d!936898 m!3671861))

(declare-fun m!3671863 () Bool)

(assert (=> b!3330120 m!3671863))

(assert (=> b!3328966 d!936898))

(assert (=> b!3328966 d!936538))

(declare-fun d!936900 () Bool)

(assert (=> d!936900 (= (inv!49682 (tag!5886 (rule!7856 (h!42099 (t!256932 tokens!494))))) (= (mod (str.len (value!172478 (tag!5886 (rule!7856 (h!42099 (t!256932 tokens!494)))))) 2) 0))))

(assert (=> b!3329173 d!936900))

(declare-fun d!936902 () Bool)

(declare-fun res!1350682 () Bool)

(declare-fun e!2070917 () Bool)

(assert (=> d!936902 (=> (not res!1350682) (not e!2070917))))

(assert (=> d!936902 (= res!1350682 (semiInverseModEq!2215 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toValue!7498 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))))))

(assert (=> d!936902 (= (inv!49685 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) e!2070917)))

(declare-fun b!3330121 () Bool)

(assert (=> b!3330121 (= e!2070917 (equivClasses!2114 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))) (toValue!7498 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))))))

(assert (= (and d!936902 res!1350682) b!3330121))

(declare-fun m!3671865 () Bool)

(assert (=> d!936902 m!3671865))

(declare-fun m!3671867 () Bool)

(assert (=> b!3330121 m!3671867))

(assert (=> b!3329173 d!936902))

(declare-fun d!936904 () Bool)

(assert (=> d!936904 (= (inv!49690 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))) (isBalanced!3317 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))))))

(declare-fun bs!551301 () Bool)

(assert (= bs!551301 d!936904))

(declare-fun m!3671869 () Bool)

(assert (=> bs!551301 m!3671869))

(assert (=> tb!174339 d!936904))

(declare-fun d!936906 () Bool)

(declare-fun res!1350683 () Bool)

(declare-fun e!2070918 () Bool)

(assert (=> d!936906 (=> res!1350683 e!2070918)))

(assert (=> d!936906 (= res!1350683 ((_ is Nil!36679) (t!256932 tokens!494)))))

(assert (=> d!936906 (= (forall!7657 (t!256932 tokens!494) lambda!119767) e!2070918)))

(declare-fun b!3330122 () Bool)

(declare-fun e!2070919 () Bool)

(assert (=> b!3330122 (= e!2070918 e!2070919)))

(declare-fun res!1350684 () Bool)

(assert (=> b!3330122 (=> (not res!1350684) (not e!2070919))))

(assert (=> b!3330122 (= res!1350684 (dynLambda!15133 lambda!119767 (h!42099 (t!256932 tokens!494))))))

(declare-fun b!3330123 () Bool)

(assert (=> b!3330123 (= e!2070919 (forall!7657 (t!256932 (t!256932 tokens!494)) lambda!119767))))

(assert (= (and d!936906 (not res!1350683)) b!3330122))

(assert (= (and b!3330122 res!1350684) b!3330123))

(declare-fun b_lambda!94073 () Bool)

(assert (=> (not b_lambda!94073) (not b!3330122)))

(declare-fun m!3671871 () Bool)

(assert (=> b!3330122 m!3671871))

(declare-fun m!3671873 () Bool)

(assert (=> b!3330123 m!3671873))

(assert (=> b!3329119 d!936906))

(declare-fun b!3330126 () Bool)

(declare-fun e!2070922 () Bool)

(assert (=> b!3330126 (= e!2070922 true)))

(declare-fun b!3330125 () Bool)

(declare-fun e!2070921 () Bool)

(assert (=> b!3330125 (= e!2070921 e!2070922)))

(declare-fun b!3330124 () Bool)

(declare-fun e!2070920 () Bool)

(assert (=> b!3330124 (= e!2070920 e!2070921)))

(assert (=> b!3328852 e!2070920))

(assert (= b!3330125 b!3330126))

(assert (= b!3330124 b!3330125))

(assert (= (and b!3328852 ((_ is Cons!36678) (t!256931 rules!2135))) b!3330124))

(assert (=> b!3330126 (< (dynLambda!15130 order!19191 (toValue!7498 (transformation!5334 (h!42098 (t!256931 rules!2135))))) (dynLambda!15131 order!19195 lambda!119777))))

(assert (=> b!3330126 (< (dynLambda!15132 order!19197 (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135))))) (dynLambda!15131 order!19195 lambda!119777))))

(declare-fun e!2070923 () Bool)

(assert (=> b!3329158 (= tp!1040527 e!2070923)))

(declare-fun b!3330129 () Bool)

(declare-fun tp!1040671 () Bool)

(assert (=> b!3330129 (= e!2070923 tp!1040671)))

(declare-fun b!3330130 () Bool)

(declare-fun tp!1040670 () Bool)

(declare-fun tp!1040672 () Bool)

(assert (=> b!3330130 (= e!2070923 (and tp!1040670 tp!1040672))))

(declare-fun b!3330127 () Bool)

(assert (=> b!3330127 (= e!2070923 tp_is_empty!17421)))

(declare-fun b!3330128 () Bool)

(declare-fun tp!1040669 () Bool)

(declare-fun tp!1040668 () Bool)

(assert (=> b!3330128 (= e!2070923 (and tp!1040669 tp!1040668))))

(assert (= (and b!3329158 ((_ is ElementMatch!10093) (regOne!20698 (regex!5334 (h!42098 rules!2135))))) b!3330127))

(assert (= (and b!3329158 ((_ is Concat!15657) (regOne!20698 (regex!5334 (h!42098 rules!2135))))) b!3330128))

(assert (= (and b!3329158 ((_ is Star!10093) (regOne!20698 (regex!5334 (h!42098 rules!2135))))) b!3330129))

(assert (= (and b!3329158 ((_ is Union!10093) (regOne!20698 (regex!5334 (h!42098 rules!2135))))) b!3330130))

(declare-fun e!2070924 () Bool)

(assert (=> b!3329158 (= tp!1040526 e!2070924)))

(declare-fun b!3330133 () Bool)

(declare-fun tp!1040676 () Bool)

(assert (=> b!3330133 (= e!2070924 tp!1040676)))

(declare-fun b!3330134 () Bool)

(declare-fun tp!1040675 () Bool)

(declare-fun tp!1040677 () Bool)

(assert (=> b!3330134 (= e!2070924 (and tp!1040675 tp!1040677))))

(declare-fun b!3330131 () Bool)

(assert (=> b!3330131 (= e!2070924 tp_is_empty!17421)))

(declare-fun b!3330132 () Bool)

(declare-fun tp!1040674 () Bool)

(declare-fun tp!1040673 () Bool)

(assert (=> b!3330132 (= e!2070924 (and tp!1040674 tp!1040673))))

(assert (= (and b!3329158 ((_ is ElementMatch!10093) (regTwo!20698 (regex!5334 (h!42098 rules!2135))))) b!3330131))

(assert (= (and b!3329158 ((_ is Concat!15657) (regTwo!20698 (regex!5334 (h!42098 rules!2135))))) b!3330132))

(assert (= (and b!3329158 ((_ is Star!10093) (regTwo!20698 (regex!5334 (h!42098 rules!2135))))) b!3330133))

(assert (= (and b!3329158 ((_ is Union!10093) (regTwo!20698 (regex!5334 (h!42098 rules!2135))))) b!3330134))

(declare-fun e!2070925 () Bool)

(assert (=> b!3329160 (= tp!1040528 e!2070925)))

(declare-fun b!3330137 () Bool)

(declare-fun tp!1040681 () Bool)

(assert (=> b!3330137 (= e!2070925 tp!1040681)))

(declare-fun b!3330138 () Bool)

(declare-fun tp!1040680 () Bool)

(declare-fun tp!1040682 () Bool)

(assert (=> b!3330138 (= e!2070925 (and tp!1040680 tp!1040682))))

(declare-fun b!3330135 () Bool)

(assert (=> b!3330135 (= e!2070925 tp_is_empty!17421)))

(declare-fun b!3330136 () Bool)

(declare-fun tp!1040679 () Bool)

(declare-fun tp!1040678 () Bool)

(assert (=> b!3330136 (= e!2070925 (and tp!1040679 tp!1040678))))

(assert (= (and b!3329160 ((_ is ElementMatch!10093) (regOne!20699 (regex!5334 (h!42098 rules!2135))))) b!3330135))

(assert (= (and b!3329160 ((_ is Concat!15657) (regOne!20699 (regex!5334 (h!42098 rules!2135))))) b!3330136))

(assert (= (and b!3329160 ((_ is Star!10093) (regOne!20699 (regex!5334 (h!42098 rules!2135))))) b!3330137))

(assert (= (and b!3329160 ((_ is Union!10093) (regOne!20699 (regex!5334 (h!42098 rules!2135))))) b!3330138))

(declare-fun e!2070926 () Bool)

(assert (=> b!3329160 (= tp!1040530 e!2070926)))

(declare-fun b!3330141 () Bool)

(declare-fun tp!1040686 () Bool)

(assert (=> b!3330141 (= e!2070926 tp!1040686)))

(declare-fun b!3330142 () Bool)

(declare-fun tp!1040685 () Bool)

(declare-fun tp!1040687 () Bool)

(assert (=> b!3330142 (= e!2070926 (and tp!1040685 tp!1040687))))

(declare-fun b!3330139 () Bool)

(assert (=> b!3330139 (= e!2070926 tp_is_empty!17421)))

(declare-fun b!3330140 () Bool)

(declare-fun tp!1040684 () Bool)

(declare-fun tp!1040683 () Bool)

(assert (=> b!3330140 (= e!2070926 (and tp!1040684 tp!1040683))))

(assert (= (and b!3329160 ((_ is ElementMatch!10093) (regTwo!20699 (regex!5334 (h!42098 rules!2135))))) b!3330139))

(assert (= (and b!3329160 ((_ is Concat!15657) (regTwo!20699 (regex!5334 (h!42098 rules!2135))))) b!3330140))

(assert (= (and b!3329160 ((_ is Star!10093) (regTwo!20699 (regex!5334 (h!42098 rules!2135))))) b!3330141))

(assert (= (and b!3329160 ((_ is Union!10093) (regTwo!20699 (regex!5334 (h!42098 rules!2135))))) b!3330142))

(declare-fun e!2070927 () Bool)

(assert (=> b!3329154 (= tp!1040523 e!2070927)))

(declare-fun b!3330145 () Bool)

(declare-fun tp!1040691 () Bool)

(assert (=> b!3330145 (= e!2070927 tp!1040691)))

(declare-fun b!3330146 () Bool)

(declare-fun tp!1040690 () Bool)

(declare-fun tp!1040692 () Bool)

(assert (=> b!3330146 (= e!2070927 (and tp!1040690 tp!1040692))))

(declare-fun b!3330143 () Bool)

(assert (=> b!3330143 (= e!2070927 tp_is_empty!17421)))

(declare-fun b!3330144 () Bool)

(declare-fun tp!1040689 () Bool)

(declare-fun tp!1040688 () Bool)

(assert (=> b!3330144 (= e!2070927 (and tp!1040689 tp!1040688))))

(assert (= (and b!3329154 ((_ is ElementMatch!10093) (regex!5334 (h!42098 (t!256931 rules!2135))))) b!3330143))

(assert (= (and b!3329154 ((_ is Concat!15657) (regex!5334 (h!42098 (t!256931 rules!2135))))) b!3330144))

(assert (= (and b!3329154 ((_ is Star!10093) (regex!5334 (h!42098 (t!256931 rules!2135))))) b!3330145))

(assert (= (and b!3329154 ((_ is Union!10093) (regex!5334 (h!42098 (t!256931 rules!2135))))) b!3330146))

(declare-fun e!2070928 () Bool)

(assert (=> b!3329159 (= tp!1040529 e!2070928)))

(declare-fun b!3330149 () Bool)

(declare-fun tp!1040696 () Bool)

(assert (=> b!3330149 (= e!2070928 tp!1040696)))

(declare-fun b!3330150 () Bool)

(declare-fun tp!1040695 () Bool)

(declare-fun tp!1040697 () Bool)

(assert (=> b!3330150 (= e!2070928 (and tp!1040695 tp!1040697))))

(declare-fun b!3330147 () Bool)

(assert (=> b!3330147 (= e!2070928 tp_is_empty!17421)))

(declare-fun b!3330148 () Bool)

(declare-fun tp!1040694 () Bool)

(declare-fun tp!1040693 () Bool)

(assert (=> b!3330148 (= e!2070928 (and tp!1040694 tp!1040693))))

(assert (= (and b!3329159 ((_ is ElementMatch!10093) (reg!10422 (regex!5334 (h!42098 rules!2135))))) b!3330147))

(assert (= (and b!3329159 ((_ is Concat!15657) (reg!10422 (regex!5334 (h!42098 rules!2135))))) b!3330148))

(assert (= (and b!3329159 ((_ is Star!10093) (reg!10422 (regex!5334 (h!42098 rules!2135))))) b!3330149))

(assert (= (and b!3329159 ((_ is Union!10093) (reg!10422 (regex!5334 (h!42098 rules!2135))))) b!3330150))

(declare-fun b!3330153 () Bool)

(declare-fun b_free!87685 () Bool)

(declare-fun b_next!88389 () Bool)

(assert (=> b!3330153 (= b_free!87685 (not b_next!88389))))

(declare-fun t!257132 () Bool)

(declare-fun tb!174507 () Bool)

(assert (=> (and b!3330153 (= (toValue!7498 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257132) tb!174507))

(declare-fun result!217634 () Bool)

(assert (= result!217634 result!217530))

(assert (=> d!936616 t!257132))

(declare-fun b_and!229675 () Bool)

(declare-fun tp!1040698 () Bool)

(assert (=> b!3330153 (= tp!1040698 (and (=> t!257132 result!217634) b_and!229675))))

(declare-fun b_free!87687 () Bool)

(declare-fun b_next!88391 () Bool)

(assert (=> b!3330153 (= b_free!87687 (not b_next!88391))))

(declare-fun t!257134 () Bool)

(declare-fun tb!174509 () Bool)

(assert (=> (and b!3330153 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) t!257134) tb!174509))

(declare-fun result!217636 () Bool)

(assert (= result!217636 result!217440))

(assert (=> b!3328751 t!257134))

(declare-fun tb!174511 () Bool)

(declare-fun t!257136 () Bool)

(assert (=> (and b!3330153 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) t!257136) tb!174511))

(declare-fun result!217638 () Bool)

(assert (= result!217638 result!217520))

(assert (=> d!936550 t!257136))

(declare-fun tb!174513 () Bool)

(declare-fun t!257138 () Bool)

(assert (=> (and b!3330153 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) t!257138) tb!174513))

(declare-fun result!217640 () Bool)

(assert (= result!217640 result!217462))

(assert (=> b!3329120 t!257138))

(assert (=> d!936276 t!257134))

(declare-fun t!257140 () Bool)

(declare-fun tb!174515 () Bool)

(assert (=> (and b!3330153 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0))))) t!257140) tb!174515))

(declare-fun result!217642 () Bool)

(assert (= result!217642 result!217554))

(assert (=> d!936708 t!257140))

(declare-fun t!257142 () Bool)

(declare-fun tb!174517 () Bool)

(assert (=> (and b!3330153 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257142) tb!174517))

(declare-fun result!217644 () Bool)

(assert (= result!217644 result!217510))

(assert (=> d!936510 t!257142))

(assert (=> d!936270 t!257138))

(declare-fun tb!174519 () Bool)

(declare-fun t!257144 () Bool)

(assert (=> (and b!3330153 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) t!257144) tb!174519))

(declare-fun result!217646 () Bool)

(assert (= result!217646 result!217624))

(assert (=> b!3330089 t!257144))

(declare-fun b_and!229677 () Bool)

(declare-fun tp!1040701 () Bool)

(assert (=> b!3330153 (= tp!1040701 (and (=> t!257136 result!217638) (=> t!257144 result!217646) (=> t!257134 result!217636) (=> t!257142 result!217644) (=> t!257140 result!217642) (=> t!257138 result!217640) b_and!229677))))

(declare-fun e!2070929 () Bool)

(assert (=> b!3330153 (= e!2070929 (and tp!1040698 tp!1040701))))

(declare-fun b!3330152 () Bool)

(declare-fun tp!1040700 () Bool)

(declare-fun e!2070931 () Bool)

(assert (=> b!3330152 (= e!2070931 (and tp!1040700 (inv!49682 (tag!5886 (h!42098 (t!256931 (t!256931 rules!2135))))) (inv!49685 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) e!2070929))))

(declare-fun b!3330151 () Bool)

(declare-fun e!2070932 () Bool)

(declare-fun tp!1040699 () Bool)

(assert (=> b!3330151 (= e!2070932 (and e!2070931 tp!1040699))))

(assert (=> b!3329153 (= tp!1040522 e!2070932)))

(assert (= b!3330152 b!3330153))

(assert (= b!3330151 b!3330152))

(assert (= (and b!3329153 ((_ is Cons!36678) (t!256931 (t!256931 rules!2135)))) b!3330151))

(declare-fun m!3671875 () Bool)

(assert (=> b!3330152 m!3671875))

(declare-fun m!3671877 () Bool)

(assert (=> b!3330152 m!3671877))

(declare-fun tp!1040709 () Bool)

(declare-fun e!2070937 () Bool)

(declare-fun tp!1040710 () Bool)

(declare-fun b!3330162 () Bool)

(assert (=> b!3330162 (= e!2070937 (and (inv!49689 (left!28584 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))))) tp!1040709 (inv!49689 (right!28914 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))))) tp!1040710))))

(declare-fun b!3330164 () Bool)

(declare-fun e!2070938 () Bool)

(declare-fun tp!1040708 () Bool)

(assert (=> b!3330164 (= e!2070938 tp!1040708)))

(declare-fun b!3330163 () Bool)

(declare-fun inv!49696 (IArray!22091) Bool)

(assert (=> b!3330163 (= e!2070937 (and (inv!49696 (xs!14181 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))))) e!2070938))))

(assert (=> b!3328885 (= tp!1040438 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494))))) e!2070937))))

(assert (= (and b!3328885 ((_ is Node!11043) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))))) b!3330162))

(assert (= b!3330163 b!3330164))

(assert (= (and b!3328885 ((_ is Leaf!17321) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (value!172479 (h!42099 tokens!494)))))) b!3330163))

(declare-fun m!3671879 () Bool)

(assert (=> b!3330162 m!3671879))

(declare-fun m!3671881 () Bool)

(assert (=> b!3330162 m!3671881))

(declare-fun m!3671883 () Bool)

(assert (=> b!3330163 m!3671883))

(assert (=> b!3328885 m!3669903))

(declare-fun b!3330165 () Bool)

(declare-fun e!2070939 () Bool)

(declare-fun tp!1040711 () Bool)

(assert (=> b!3330165 (= e!2070939 (and tp_is_empty!17421 tp!1040711))))

(assert (=> b!3329144 (= tp!1040512 e!2070939)))

(assert (= (and b!3329144 ((_ is Cons!36677) (t!256930 (originalCharacters!6048 (h!42099 tokens!494))))) b!3330165))

(declare-fun b!3330169 () Bool)

(declare-fun b_free!87689 () Bool)

(declare-fun b_next!88393 () Bool)

(assert (=> b!3330169 (= b_free!87689 (not b_next!88393))))

(declare-fun tb!174521 () Bool)

(declare-fun t!257146 () Bool)

(assert (=> (and b!3330169 (= (toValue!7498 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toValue!7498 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257146) tb!174521))

(declare-fun result!217650 () Bool)

(assert (= result!217650 result!217530))

(assert (=> d!936616 t!257146))

(declare-fun tp!1040713 () Bool)

(declare-fun b_and!229679 () Bool)

(assert (=> b!3330169 (= tp!1040713 (and (=> t!257146 result!217650) b_and!229679))))

(declare-fun b_free!87691 () Bool)

(declare-fun b_next!88395 () Bool)

(assert (=> b!3330169 (= b_free!87691 (not b_next!88395))))

(declare-fun t!257148 () Bool)

(declare-fun tb!174523 () Bool)

(assert (=> (and b!3330169 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241)))) t!257148) tb!174523))

(declare-fun result!217652 () Bool)

(assert (= result!217652 result!217440))

(assert (=> b!3328751 t!257148))

(declare-fun t!257150 () Bool)

(declare-fun tb!174525 () Bool)

(assert (=> (and b!3330169 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (Cons!36679 (h!42099 tokens!494) Nil!36679)))))) t!257150) tb!174525))

(declare-fun result!217654 () Bool)

(assert (= result!217654 result!217520))

(assert (=> d!936550 t!257150))

(declare-fun t!257152 () Bool)

(declare-fun tb!174527 () Bool)

(assert (=> (and b!3330169 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494))))) t!257152) tb!174527))

(declare-fun result!217656 () Bool)

(assert (= result!217656 result!217462))

(assert (=> b!3329120 t!257152))

(assert (=> d!936276 t!257148))

(declare-fun t!257154 () Bool)

(declare-fun tb!174529 () Bool)

(assert (=> (and b!3330169 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toChars!7357 (transformation!5334 (rule!7856 (apply!8470 lt!1131272 0))))) t!257154) tb!174529))

(declare-fun result!217658 () Bool)

(assert (= result!217658 result!217554))

(assert (=> d!936708 t!257154))

(declare-fun t!257156 () Bool)

(declare-fun tb!174531 () Bool)

(assert (=> (and b!3330169 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toChars!7357 (transformation!5334 (rule!7856 (_1!21224 (get!11684 lt!1131391)))))) t!257156) tb!174531))

(declare-fun result!217660 () Bool)

(assert (= result!217660 result!217510))

(assert (=> d!936510 t!257156))

(assert (=> d!936270 t!257152))

(declare-fun t!257158 () Bool)

(declare-fun tb!174533 () Bool)

(assert (=> (and b!3330169 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) t!257158) tb!174533))

(declare-fun result!217662 () Bool)

(assert (= result!217662 result!217624))

(assert (=> b!3330089 t!257158))

(declare-fun b_and!229681 () Bool)

(declare-fun tp!1040715 () Bool)

(assert (=> b!3330169 (= tp!1040715 (and (=> t!257158 result!217662) (=> t!257152 result!217656) (=> t!257148 result!217652) (=> t!257156 result!217660) (=> t!257150 result!217654) (=> t!257154 result!217658) b_and!229681))))

(declare-fun e!2070940 () Bool)

(declare-fun e!2070941 () Bool)

(declare-fun b!3330168 () Bool)

(declare-fun tp!1040716 () Bool)

(assert (=> b!3330168 (= e!2070940 (and tp!1040716 (inv!49682 (tag!5886 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (inv!49685 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) e!2070941))))

(declare-fun tp!1040712 () Bool)

(declare-fun b!3330167 () Bool)

(declare-fun e!2070943 () Bool)

(assert (=> b!3330167 (= e!2070943 (and (inv!21 (value!172479 (h!42099 (t!256932 (t!256932 tokens!494))))) e!2070940 tp!1040712))))

(assert (=> b!3330169 (= e!2070941 (and tp!1040713 tp!1040715))))

(declare-fun e!2070942 () Bool)

(declare-fun b!3330166 () Bool)

(declare-fun tp!1040714 () Bool)

(assert (=> b!3330166 (= e!2070942 (and (inv!49686 (h!42099 (t!256932 (t!256932 tokens!494)))) e!2070943 tp!1040714))))

(assert (=> b!3329171 (= tp!1040543 e!2070942)))

(assert (= b!3330168 b!3330169))

(assert (= b!3330167 b!3330168))

(assert (= b!3330166 b!3330167))

(assert (= (and b!3329171 ((_ is Cons!36679) (t!256932 (t!256932 tokens!494)))) b!3330166))

(declare-fun m!3671885 () Bool)

(assert (=> b!3330168 m!3671885))

(declare-fun m!3671887 () Bool)

(assert (=> b!3330168 m!3671887))

(declare-fun m!3671889 () Bool)

(assert (=> b!3330167 m!3671889))

(declare-fun m!3671891 () Bool)

(assert (=> b!3330166 m!3671891))

(declare-fun e!2070946 () Bool)

(assert (=> b!3329137 (= tp!1040506 e!2070946)))

(declare-fun b!3330172 () Bool)

(declare-fun tp!1040720 () Bool)

(assert (=> b!3330172 (= e!2070946 tp!1040720)))

(declare-fun b!3330173 () Bool)

(declare-fun tp!1040719 () Bool)

(declare-fun tp!1040721 () Bool)

(assert (=> b!3330173 (= e!2070946 (and tp!1040719 tp!1040721))))

(declare-fun b!3330170 () Bool)

(assert (=> b!3330170 (= e!2070946 tp_is_empty!17421)))

(declare-fun b!3330171 () Bool)

(declare-fun tp!1040718 () Bool)

(declare-fun tp!1040717 () Bool)

(assert (=> b!3330171 (= e!2070946 (and tp!1040718 tp!1040717))))

(assert (= (and b!3329137 ((_ is ElementMatch!10093) (regOne!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330170))

(assert (= (and b!3329137 ((_ is Concat!15657) (regOne!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330171))

(assert (= (and b!3329137 ((_ is Star!10093) (regOne!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330172))

(assert (= (and b!3329137 ((_ is Union!10093) (regOne!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330173))

(declare-fun e!2070947 () Bool)

(assert (=> b!3329137 (= tp!1040505 e!2070947)))

(declare-fun b!3330176 () Bool)

(declare-fun tp!1040725 () Bool)

(assert (=> b!3330176 (= e!2070947 tp!1040725)))

(declare-fun b!3330177 () Bool)

(declare-fun tp!1040724 () Bool)

(declare-fun tp!1040726 () Bool)

(assert (=> b!3330177 (= e!2070947 (and tp!1040724 tp!1040726))))

(declare-fun b!3330174 () Bool)

(assert (=> b!3330174 (= e!2070947 tp_is_empty!17421)))

(declare-fun b!3330175 () Bool)

(declare-fun tp!1040723 () Bool)

(declare-fun tp!1040722 () Bool)

(assert (=> b!3330175 (= e!2070947 (and tp!1040723 tp!1040722))))

(assert (= (and b!3329137 ((_ is ElementMatch!10093) (regTwo!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330174))

(assert (= (and b!3329137 ((_ is Concat!15657) (regTwo!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330175))

(assert (= (and b!3329137 ((_ is Star!10093) (regTwo!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330176))

(assert (= (and b!3329137 ((_ is Union!10093) (regTwo!20698 (regex!5334 (rule!7856 separatorToken!241))))) b!3330177))

(declare-fun e!2070948 () Bool)

(assert (=> b!3329177 (= tp!1040549 e!2070948)))

(declare-fun b!3330180 () Bool)

(declare-fun tp!1040730 () Bool)

(assert (=> b!3330180 (= e!2070948 tp!1040730)))

(declare-fun b!3330181 () Bool)

(declare-fun tp!1040729 () Bool)

(declare-fun tp!1040731 () Bool)

(assert (=> b!3330181 (= e!2070948 (and tp!1040729 tp!1040731))))

(declare-fun b!3330178 () Bool)

(assert (=> b!3330178 (= e!2070948 tp_is_empty!17421)))

(declare-fun b!3330179 () Bool)

(declare-fun tp!1040728 () Bool)

(declare-fun tp!1040727 () Bool)

(assert (=> b!3330179 (= e!2070948 (and tp!1040728 tp!1040727))))

(assert (= (and b!3329177 ((_ is ElementMatch!10093) (reg!10422 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330178))

(assert (= (and b!3329177 ((_ is Concat!15657) (reg!10422 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330179))

(assert (= (and b!3329177 ((_ is Star!10093) (reg!10422 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330180))

(assert (= (and b!3329177 ((_ is Union!10093) (reg!10422 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330181))

(declare-fun e!2070949 () Bool)

(assert (=> b!3329139 (= tp!1040507 e!2070949)))

(declare-fun b!3330184 () Bool)

(declare-fun tp!1040735 () Bool)

(assert (=> b!3330184 (= e!2070949 tp!1040735)))

(declare-fun b!3330185 () Bool)

(declare-fun tp!1040734 () Bool)

(declare-fun tp!1040736 () Bool)

(assert (=> b!3330185 (= e!2070949 (and tp!1040734 tp!1040736))))

(declare-fun b!3330182 () Bool)

(assert (=> b!3330182 (= e!2070949 tp_is_empty!17421)))

(declare-fun b!3330183 () Bool)

(declare-fun tp!1040733 () Bool)

(declare-fun tp!1040732 () Bool)

(assert (=> b!3330183 (= e!2070949 (and tp!1040733 tp!1040732))))

(assert (= (and b!3329139 ((_ is ElementMatch!10093) (regOne!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330182))

(assert (= (and b!3329139 ((_ is Concat!15657) (regOne!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330183))

(assert (= (and b!3329139 ((_ is Star!10093) (regOne!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330184))

(assert (= (and b!3329139 ((_ is Union!10093) (regOne!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330185))

(declare-fun e!2070950 () Bool)

(assert (=> b!3329139 (= tp!1040509 e!2070950)))

(declare-fun b!3330188 () Bool)

(declare-fun tp!1040740 () Bool)

(assert (=> b!3330188 (= e!2070950 tp!1040740)))

(declare-fun b!3330189 () Bool)

(declare-fun tp!1040739 () Bool)

(declare-fun tp!1040741 () Bool)

(assert (=> b!3330189 (= e!2070950 (and tp!1040739 tp!1040741))))

(declare-fun b!3330186 () Bool)

(assert (=> b!3330186 (= e!2070950 tp_is_empty!17421)))

(declare-fun b!3330187 () Bool)

(declare-fun tp!1040738 () Bool)

(declare-fun tp!1040737 () Bool)

(assert (=> b!3330187 (= e!2070950 (and tp!1040738 tp!1040737))))

(assert (= (and b!3329139 ((_ is ElementMatch!10093) (regTwo!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330186))

(assert (= (and b!3329139 ((_ is Concat!15657) (regTwo!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330187))

(assert (= (and b!3329139 ((_ is Star!10093) (regTwo!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330188))

(assert (= (and b!3329139 ((_ is Union!10093) (regTwo!20699 (regex!5334 (rule!7856 separatorToken!241))))) b!3330189))

(declare-fun b!3330190 () Bool)

(declare-fun e!2070951 () Bool)

(declare-fun tp!1040742 () Bool)

(assert (=> b!3330190 (= e!2070951 (and tp_is_empty!17421 tp!1040742))))

(assert (=> b!3329156 (= tp!1040525 e!2070951)))

(assert (= (and b!3329156 ((_ is Cons!36677) (t!256930 (originalCharacters!6048 separatorToken!241)))) b!3330190))

(declare-fun e!2070952 () Bool)

(assert (=> b!3329178 (= tp!1040548 e!2070952)))

(declare-fun b!3330193 () Bool)

(declare-fun tp!1040746 () Bool)

(assert (=> b!3330193 (= e!2070952 tp!1040746)))

(declare-fun b!3330194 () Bool)

(declare-fun tp!1040745 () Bool)

(declare-fun tp!1040747 () Bool)

(assert (=> b!3330194 (= e!2070952 (and tp!1040745 tp!1040747))))

(declare-fun b!3330191 () Bool)

(assert (=> b!3330191 (= e!2070952 tp_is_empty!17421)))

(declare-fun b!3330192 () Bool)

(declare-fun tp!1040744 () Bool)

(declare-fun tp!1040743 () Bool)

(assert (=> b!3330192 (= e!2070952 (and tp!1040744 tp!1040743))))

(assert (= (and b!3329178 ((_ is ElementMatch!10093) (regOne!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330191))

(assert (= (and b!3329178 ((_ is Concat!15657) (regOne!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330192))

(assert (= (and b!3329178 ((_ is Star!10093) (regOne!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330193))

(assert (= (and b!3329178 ((_ is Union!10093) (regOne!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330194))

(declare-fun e!2070953 () Bool)

(assert (=> b!3329178 (= tp!1040550 e!2070953)))

(declare-fun b!3330197 () Bool)

(declare-fun tp!1040751 () Bool)

(assert (=> b!3330197 (= e!2070953 tp!1040751)))

(declare-fun b!3330198 () Bool)

(declare-fun tp!1040750 () Bool)

(declare-fun tp!1040752 () Bool)

(assert (=> b!3330198 (= e!2070953 (and tp!1040750 tp!1040752))))

(declare-fun b!3330195 () Bool)

(assert (=> b!3330195 (= e!2070953 tp_is_empty!17421)))

(declare-fun b!3330196 () Bool)

(declare-fun tp!1040749 () Bool)

(declare-fun tp!1040748 () Bool)

(assert (=> b!3330196 (= e!2070953 (and tp!1040749 tp!1040748))))

(assert (= (and b!3329178 ((_ is ElementMatch!10093) (regTwo!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330195))

(assert (= (and b!3329178 ((_ is Concat!15657) (regTwo!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330196))

(assert (= (and b!3329178 ((_ is Star!10093) (regTwo!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330197))

(assert (= (and b!3329178 ((_ is Union!10093) (regTwo!20699 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330198))

(declare-fun b!3330199 () Bool)

(declare-fun e!2070954 () Bool)

(declare-fun tp!1040753 () Bool)

(assert (=> b!3330199 (= e!2070954 (and tp_is_empty!17421 tp!1040753))))

(assert (=> b!3329172 (= tp!1040541 e!2070954)))

(assert (= (and b!3329172 ((_ is Cons!36677) (originalCharacters!6048 (h!42099 (t!256932 tokens!494))))) b!3330199))

(declare-fun tp!1040755 () Bool)

(declare-fun b!3330200 () Bool)

(declare-fun tp!1040756 () Bool)

(declare-fun e!2070955 () Bool)

(assert (=> b!3330200 (= e!2070955 (and (inv!49689 (left!28584 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))))) tp!1040755 (inv!49689 (right!28914 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))))) tp!1040756))))

(declare-fun b!3330202 () Bool)

(declare-fun e!2070956 () Bool)

(declare-fun tp!1040754 () Bool)

(assert (=> b!3330202 (= e!2070956 tp!1040754)))

(declare-fun b!3330201 () Bool)

(assert (=> b!3330201 (= e!2070955 (and (inv!49696 (xs!14181 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))))) e!2070956))))

(assert (=> b!3328757 (= tp!1040433 (and (inv!49689 (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241)))) e!2070955))))

(assert (= (and b!3328757 ((_ is Node!11043) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))))) b!3330200))

(assert (= b!3330201 b!3330202))

(assert (= (and b!3328757 ((_ is Leaf!17321) (c!565317 (dynLambda!15129 (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (value!172479 separatorToken!241))))) b!3330201))

(declare-fun m!3671893 () Bool)

(assert (=> b!3330200 m!3671893))

(declare-fun m!3671895 () Bool)

(assert (=> b!3330200 m!3671895))

(declare-fun m!3671897 () Bool)

(assert (=> b!3330201 m!3671897))

(assert (=> b!3328757 m!3669683))

(declare-fun e!2070957 () Bool)

(assert (=> b!3329176 (= tp!1040547 e!2070957)))

(declare-fun b!3330205 () Bool)

(declare-fun tp!1040760 () Bool)

(assert (=> b!3330205 (= e!2070957 tp!1040760)))

(declare-fun b!3330206 () Bool)

(declare-fun tp!1040759 () Bool)

(declare-fun tp!1040761 () Bool)

(assert (=> b!3330206 (= e!2070957 (and tp!1040759 tp!1040761))))

(declare-fun b!3330203 () Bool)

(assert (=> b!3330203 (= e!2070957 tp_is_empty!17421)))

(declare-fun b!3330204 () Bool)

(declare-fun tp!1040758 () Bool)

(declare-fun tp!1040757 () Bool)

(assert (=> b!3330204 (= e!2070957 (and tp!1040758 tp!1040757))))

(assert (= (and b!3329176 ((_ is ElementMatch!10093) (regOne!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330203))

(assert (= (and b!3329176 ((_ is Concat!15657) (regOne!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330204))

(assert (= (and b!3329176 ((_ is Star!10093) (regOne!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330205))

(assert (= (and b!3329176 ((_ is Union!10093) (regOne!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330206))

(declare-fun e!2070958 () Bool)

(assert (=> b!3329176 (= tp!1040546 e!2070958)))

(declare-fun b!3330209 () Bool)

(declare-fun tp!1040765 () Bool)

(assert (=> b!3330209 (= e!2070958 tp!1040765)))

(declare-fun b!3330210 () Bool)

(declare-fun tp!1040764 () Bool)

(declare-fun tp!1040766 () Bool)

(assert (=> b!3330210 (= e!2070958 (and tp!1040764 tp!1040766))))

(declare-fun b!3330207 () Bool)

(assert (=> b!3330207 (= e!2070958 tp_is_empty!17421)))

(declare-fun b!3330208 () Bool)

(declare-fun tp!1040763 () Bool)

(declare-fun tp!1040762 () Bool)

(assert (=> b!3330208 (= e!2070958 (and tp!1040763 tp!1040762))))

(assert (= (and b!3329176 ((_ is ElementMatch!10093) (regTwo!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330207))

(assert (= (and b!3329176 ((_ is Concat!15657) (regTwo!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330208))

(assert (= (and b!3329176 ((_ is Star!10093) (regTwo!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330209))

(assert (= (and b!3329176 ((_ is Union!10093) (regTwo!20698 (regex!5334 (rule!7856 (h!42099 tokens!494)))))) b!3330210))

(declare-fun e!2070959 () Bool)

(assert (=> b!3329138 (= tp!1040508 e!2070959)))

(declare-fun b!3330213 () Bool)

(declare-fun tp!1040770 () Bool)

(assert (=> b!3330213 (= e!2070959 tp!1040770)))

(declare-fun b!3330214 () Bool)

(declare-fun tp!1040769 () Bool)

(declare-fun tp!1040771 () Bool)

(assert (=> b!3330214 (= e!2070959 (and tp!1040769 tp!1040771))))

(declare-fun b!3330211 () Bool)

(assert (=> b!3330211 (= e!2070959 tp_is_empty!17421)))

(declare-fun b!3330212 () Bool)

(declare-fun tp!1040768 () Bool)

(declare-fun tp!1040767 () Bool)

(assert (=> b!3330212 (= e!2070959 (and tp!1040768 tp!1040767))))

(assert (= (and b!3329138 ((_ is ElementMatch!10093) (reg!10422 (regex!5334 (rule!7856 separatorToken!241))))) b!3330211))

(assert (= (and b!3329138 ((_ is Concat!15657) (reg!10422 (regex!5334 (rule!7856 separatorToken!241))))) b!3330212))

(assert (= (and b!3329138 ((_ is Star!10093) (reg!10422 (regex!5334 (rule!7856 separatorToken!241))))) b!3330213))

(assert (= (and b!3329138 ((_ is Union!10093) (reg!10422 (regex!5334 (rule!7856 separatorToken!241))))) b!3330214))

(declare-fun e!2070960 () Bool)

(assert (=> b!3329173 (= tp!1040545 e!2070960)))

(declare-fun b!3330217 () Bool)

(declare-fun tp!1040775 () Bool)

(assert (=> b!3330217 (= e!2070960 tp!1040775)))

(declare-fun b!3330218 () Bool)

(declare-fun tp!1040774 () Bool)

(declare-fun tp!1040776 () Bool)

(assert (=> b!3330218 (= e!2070960 (and tp!1040774 tp!1040776))))

(declare-fun b!3330215 () Bool)

(assert (=> b!3330215 (= e!2070960 tp_is_empty!17421)))

(declare-fun b!3330216 () Bool)

(declare-fun tp!1040773 () Bool)

(declare-fun tp!1040772 () Bool)

(assert (=> b!3330216 (= e!2070960 (and tp!1040773 tp!1040772))))

(assert (= (and b!3329173 ((_ is ElementMatch!10093) (regex!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) b!3330215))

(assert (= (and b!3329173 ((_ is Concat!15657) (regex!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) b!3330216))

(assert (= (and b!3329173 ((_ is Star!10093) (regex!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) b!3330217))

(assert (= (and b!3329173 ((_ is Union!10093) (regex!5334 (rule!7856 (h!42099 (t!256932 tokens!494)))))) b!3330218))

(declare-fun b_lambda!94075 () Bool)

(assert (= b_lambda!94073 (or b!3328738 b_lambda!94075)))

(declare-fun bs!551302 () Bool)

(declare-fun d!936908 () Bool)

(assert (= bs!551302 (and d!936908 b!3328738)))

(assert (=> bs!551302 (= (dynLambda!15133 lambda!119767 (h!42099 (t!256932 tokens!494))) (not (isSeparator!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))))))

(assert (=> b!3330122 d!936908))

(declare-fun b_lambda!94077 () Bool)

(assert (= b_lambda!94069 (or (and b!3329155 b_free!87671 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 rules!2135)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))))) (and b!3330153 b_free!87687 (= (toChars!7357 (transformation!5334 (h!42098 (t!256931 (t!256931 rules!2135))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))))) (and b!3328722 b_free!87655 (= (toChars!7357 (transformation!5334 (h!42098 rules!2135))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))))) (and b!3328728 b_free!87659 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 tokens!494)))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))))) (and b!3329174 b_free!87675) (and b!3328729 b_free!87651 (= (toChars!7357 (transformation!5334 (rule!7856 separatorToken!241))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))))) (and b!3330169 b_free!87691 (= (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 (t!256932 tokens!494)))))) (toChars!7357 (transformation!5334 (rule!7856 (h!42099 (t!256932 tokens!494))))))) b_lambda!94077)))

(declare-fun b_lambda!94079 () Bool)

(assert (= b_lambda!94041 (or d!936242 b_lambda!94079)))

(declare-fun bs!551303 () Bool)

(declare-fun d!936910 () Bool)

(assert (= bs!551303 (and d!936910 d!936242)))

(assert (=> bs!551303 (= (dynLambda!15133 lambda!119777 (h!42099 (list!13212 lt!1131267))) (rulesProduceIndividualToken!2415 thiss!18206 rules!2135 (h!42099 (list!13212 lt!1131267))))))

(assert (=> bs!551303 m!3671551))

(assert (=> b!3329423 d!936910))

(declare-fun b_lambda!94081 () Bool)

(assert (= b_lambda!94071 (or b!3328738 b_lambda!94081)))

(assert (=> d!936890 d!936362))

(check-sat (not b!3329334) (not b!3330176) (not b!3330120) (not tb!174389) (not d!936610) b_and!229675 (not b_next!88361) (not d!936630) (not d!936872) (not d!936868) (not d!936628) (not b!3330172) (not b_lambda!94025) (not d!936798) (not b!3330210) (not b!3330137) (not b!3330193) (not b!3329330) (not b!3329681) (not b!3329780) (not d!936482) (not b!3330079) (not b_next!88355) (not b!3330162) (not b!3330148) (not bm!241395) (not b!3330200) (not b!3330165) (not b!3330204) (not b!3330130) (not d!936642) (not d!936792) b_and!229605 (not d!936564) (not b!3329412) (not b!3329690) (not b!3329473) (not d!936904) (not b!3330101) (not b!3330142) (not b!3329298) (not b!3330198) (not bm!241387) (not tb!174399) (not b!3330112) (not b!3329579) (not b!3330087) (not b!3330192) (not b!3329638) (not b!3329487) (not b!3329460) (not d!936808) (not b!3330196) (not b!3330103) (not b!3329317) (not b!3329457) (not b!3330035) (not d!936706) (not b!3330149) b_and!229603 b_and!229679 (not b!3329526) b_and!229597 (not b!3330094) (not b!3330217) (not b_next!88359) (not b!3330177) (not b!3329492) (not d!936478) (not b!3329514) (not b!3329772) (not d!936902) (not b!3330036) (not b!3330067) (not b!3329697) (not b!3329203) (not b!3330213) (not b!3329684) (not d!936636) (not b!3330199) (not d!936878) (not bs!551303) (not b!3329524) (not d!936784) (not b!3330185) (not b_next!88375) (not b!3330128) (not b_lambda!94027) (not b!3330034) (not b!3329819) (not b!3330114) (not d!936894) (not b!3329409) (not d!936584) (not b!3330167) (not b!3330032) (not d!936716) (not b!3329484) (not b!3330089) (not b!3329408) (not d!936818) (not b!3330175) (not d!936562) (not b_lambda!94023) (not b!3330151) (not b_next!88389) (not b!3329581) (not b!3329774) (not b!3329698) (not d!936550) (not d!936604) (not d!936602) (not b!3329683) b_and!229601 (not b_next!88363) (not d!936634) (not b!3329456) (not d!936494) (not b!3329420) (not b!3329634) (not b!3330164) (not d!936672) (not b!3330031) (not b_lambda!94077) (not b!3330205) (not d!936874) (not b_next!88357) (not b!3330202) (not b!3329509) (not b!3328885) (not b_next!88379) (not b_lambda!94075) (not b!3330144) (not b!3328757) (not d!936548) (not d!936794) (not tb!174497) b_and!229667 (not b!3329856) (not b!3329708) (not b!3329521) (not b!3330180) (not b_lambda!94081) (not d!936722) (not d!936892) (not b!3329346) (not b!3330166) (not d!936626) (not d!936612) b_and!229681 (not bm!241401) (not d!936710) (not b_lambda!94031) b_and!229677 (not d!936394) (not d!936632) (not d!936882) (not d!936654) (not b!3329625) (not d!936806) (not b_lambda!94037) (not b!3329775) (not d!936688) (not b!3330037) (not b!3330179) (not d!936468) (not b_lambda!94033) (not b!3330187) (not b!3329448) (not d!936624) (not b!3330134) (not d!936712) (not b!3330201) (not d!936490) (not b!3330216) (not b!3329525) (not d!936702) (not b!3329519) (not d!936474) (not b!3330188) (not b!3330194) (not b!3329777) (not b!3330171) (not b!3330070) tp_is_empty!17421 (not d!936648) (not b!3330086) (not b!3329701) (not b!3330183) (not b!3329493) (not d!936620) (not d!936826) (not d!936580) b_and!229673 (not b_next!88377) (not b_next!88353) (not b!3329510) (not d!936592) (not d!936540) (not d!936560) (not b!3330129) (not b!3330091) (not d!936590) (not d!936686) (not d!936618) (not d!936546) (not b!3329478) (not b!3329459) (not d!936608) (not b!3329629) (not b!3329422) (not d!936650) (not b!3330208) (not b!3329471) (not d!936566) (not b!3329332) (not d!936480) (not b!3329316) (not b!3330168) (not d!936898) (not b!3329858) (not b_lambda!94079) (not b!3330212) (not b!3329479) (not b!3330145) (not b!3329451) (not d!936720) (not d!936786) (not b!3330184) (not b!3329682) (not d!936606) (not d!936790) (not b!3329318) (not b!3329461) (not b!3329300) (not d!936652) (not d!936476) (not bm!241385) (not d!936810) (not b!3329507) (not b!3329324) (not b!3330132) (not b!3329320) (not b_lambda!94029) (not d!936388) (not bm!241386) (not b!3329322) (not b!3330111) (not b!3330163) (not d!936576) (not b!3329301) (not b!3329533) b_and!229669 (not d!936830) (not b!3329452) (not b!3329694) (not b!3329520) (not b!3329345) (not b!3330124) (not b!3329781) (not b!3329818) (not b!3330206) (not d!936866) (not d!936510) (not d!936864) (not tb!174429) (not b!3329853) (not d!936828) (not b!3330173) (not b!3329511) (not d!936708) (not b!3329411) (not b!3329350) (not b!3329299) (not tb!174409) (not b_next!88395) (not b!3329455) (not b!3330073) (not b!3329686) (not d!936554) (not d!936596) (not b!3330189) (not d!936714) b_and!229671 (not b!3329321) (not d!936508) (not b!3329435) (not b!3330152) (not d!936488) (not b!3330033) (not b!3330133) (not b!3330138) (not d!936812) (not b!3329710) (not b_lambda!94043) (not b!3330069) (not d!936622) (not d!936504) (not b!3330105) (not b!3330093) (not b!3330209) (not b_lambda!94039) (not b!3330123) (not b!3329713) b_and!229665 (not b!3330121) (not b!3330214) (not b_lambda!94053) (not b!3330083) (not b!3329349) (not b!3329472) (not d!936796) (not b!3330218) (not b!3329323) (not d!936646) (not b!3330181) (not bm!241379) (not b!3329598) b_and!229599 (not b!3329709) (not b!3329597) (not d!936638) (not b_next!88373) (not b!3329400) (not b!3329454) (not d!936472) (not b!3330197) (not b!3330038) (not b!3330146) (not b!3329528) (not d!936822) (not b!3330190) (not b!3330084) (not b!3330077) (not b!3330140) (not b!3329303) (not b!3329453) (not d!936658) (not b_next!88391) (not d!936670) (not b!3329424) (not b!3329817) (not b!3330150) (not b_next!88393) (not b!3329319) (not b!3329696) (not b!3330141) (not d!936718) (not b!3330090) (not b!3330136))
(check-sat (not b_next!88355) b_and!229605 b_and!229603 (not b_next!88375) b_and!229667 b_and!229669 b_and!229665 b_and!229599 (not b_next!88373) b_and!229675 (not b_next!88361) b_and!229679 b_and!229597 (not b_next!88359) (not b_next!88389) b_and!229601 (not b_next!88363) (not b_next!88357) (not b_next!88379) b_and!229681 b_and!229677 b_and!229673 (not b_next!88377) (not b_next!88353) (not b_next!88395) b_and!229671 (not b_next!88391) (not b_next!88393))
