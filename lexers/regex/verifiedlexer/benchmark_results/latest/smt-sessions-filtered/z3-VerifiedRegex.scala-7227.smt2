; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384772 () Bool)

(assert start!384772)

(declare-fun b!4075468 () Bool)

(declare-fun b_free!113593 () Bool)

(declare-fun b_next!114297 () Bool)

(assert (=> b!4075468 (= b_free!113593 (not b_next!114297))))

(declare-fun tp!1233720 () Bool)

(declare-fun b_and!313315 () Bool)

(assert (=> b!4075468 (= tp!1233720 b_and!313315)))

(declare-fun b_free!113595 () Bool)

(declare-fun b_next!114299 () Bool)

(assert (=> b!4075468 (= b_free!113595 (not b_next!114299))))

(declare-fun tp!1233718 () Bool)

(declare-fun b_and!313317 () Bool)

(assert (=> b!4075468 (= tp!1233718 b_and!313317)))

(declare-fun b!4075461 () Bool)

(declare-fun b_free!113597 () Bool)

(declare-fun b_next!114301 () Bool)

(assert (=> b!4075461 (= b_free!113597 (not b_next!114301))))

(declare-fun tp!1233716 () Bool)

(declare-fun b_and!313319 () Bool)

(assert (=> b!4075461 (= tp!1233716 b_and!313319)))

(declare-fun b_free!113599 () Bool)

(declare-fun b_next!114303 () Bool)

(assert (=> b!4075461 (= b_free!113599 (not b_next!114303))))

(declare-fun tp!1233714 () Bool)

(declare-fun b_and!313321 () Bool)

(assert (=> b!4075461 (= tp!1233714 b_and!313321)))

(declare-fun b!4075452 () Bool)

(declare-fun e!2529565 () Bool)

(declare-fun tp_is_empty!20865 () Bool)

(declare-fun tp!1233715 () Bool)

(assert (=> b!4075452 (= e!2529565 (and tp_is_empty!20865 tp!1233715))))

(declare-fun b!4075453 () Bool)

(declare-fun res!1664516 () Bool)

(declare-fun e!2529566 () Bool)

(assert (=> b!4075453 (=> res!1664516 e!2529566)))

(declare-datatypes ((List!43741 0))(
  ( (Nil!43617) (Cons!43617 (h!49037 (_ BitVec 16)) (t!337316 List!43741)) )
))
(declare-datatypes ((TokenValue!7256 0))(
  ( (FloatLiteralValue!14512 (text!51237 List!43741)) (TokenValueExt!7255 (__x!26729 Int)) (Broken!36280 (value!220867 List!43741)) (Object!7379) (End!7256) (Def!7256) (Underscore!7256) (Match!7256) (Else!7256) (Error!7256) (Case!7256) (If!7256) (Extends!7256) (Abstract!7256) (Class!7256) (Val!7256) (DelimiterValue!14512 (del!7316 List!43741)) (KeywordValue!7262 (value!220868 List!43741)) (CommentValue!14512 (value!220869 List!43741)) (WhitespaceValue!14512 (value!220870 List!43741)) (IndentationValue!7256 (value!220871 List!43741)) (String!50029) (Int32!7256) (Broken!36281 (value!220872 List!43741)) (Boolean!7257) (Unit!63162) (OperatorValue!7259 (op!7316 List!43741)) (IdentifierValue!14512 (value!220873 List!43741)) (IdentifierValue!14513 (value!220874 List!43741)) (WhitespaceValue!14513 (value!220875 List!43741)) (True!14512) (False!14512) (Broken!36282 (value!220876 List!43741)) (Broken!36283 (value!220877 List!43741)) (True!14513) (RightBrace!7256) (RightBracket!7256) (Colon!7256) (Null!7256) (Comma!7256) (LeftBracket!7256) (False!14513) (LeftBrace!7256) (ImaginaryLiteralValue!7256 (text!51238 List!43741)) (StringLiteralValue!21768 (value!220878 List!43741)) (EOFValue!7256 (value!220879 List!43741)) (IdentValue!7256 (value!220880 List!43741)) (DelimiterValue!14513 (value!220881 List!43741)) (DedentValue!7256 (value!220882 List!43741)) (NewLineValue!7256 (value!220883 List!43741)) (IntegerValue!21768 (value!220884 (_ BitVec 32)) (text!51239 List!43741)) (IntegerValue!21769 (value!220885 Int) (text!51240 List!43741)) (Times!7256) (Or!7256) (Equal!7256) (Minus!7256) (Broken!36284 (value!220886 List!43741)) (And!7256) (Div!7256) (LessEqual!7256) (Mod!7256) (Concat!19187) (Not!7256) (Plus!7256) (SpaceValue!7256 (value!220887 List!43741)) (IntegerValue!21770 (value!220888 Int) (text!51241 List!43741)) (StringLiteralValue!21769 (text!51242 List!43741)) (FloatLiteralValue!14513 (text!51243 List!43741)) (BytesLiteralValue!7256 (value!220889 List!43741)) (CommentValue!14513 (value!220890 List!43741)) (StringLiteralValue!21770 (value!220891 List!43741)) (ErrorTokenValue!7256 (msg!7317 List!43741)) )
))
(declare-datatypes ((C!24048 0))(
  ( (C!24049 (val!14134 Int)) )
))
(declare-datatypes ((Regex!11931 0))(
  ( (ElementMatch!11931 (c!703090 C!24048)) (Concat!19188 (regOne!24374 Regex!11931) (regTwo!24374 Regex!11931)) (EmptyExpr!11931) (Star!11931 (reg!12260 Regex!11931)) (EmptyLang!11931) (Union!11931 (regOne!24375 Regex!11931) (regTwo!24375 Regex!11931)) )
))
(declare-datatypes ((String!50030 0))(
  ( (String!50031 (value!220892 String)) )
))
(declare-datatypes ((List!43742 0))(
  ( (Nil!43618) (Cons!43618 (h!49038 C!24048) (t!337317 List!43742)) )
))
(declare-datatypes ((IArray!26479 0))(
  ( (IArray!26480 (innerList!13297 List!43742)) )
))
(declare-datatypes ((Conc!13237 0))(
  ( (Node!13237 (left!32784 Conc!13237) (right!33114 Conc!13237) (csize!26704 Int) (cheight!13448 Int)) (Leaf!20465 (xs!16543 IArray!26479) (csize!26705 Int)) (Empty!13237) )
))
(declare-datatypes ((BalanceConc!26068 0))(
  ( (BalanceConc!26069 (c!703091 Conc!13237)) )
))
(declare-datatypes ((TokenValueInjection!13940 0))(
  ( (TokenValueInjection!13941 (toValue!9590 Int) (toChars!9449 Int)) )
))
(declare-datatypes ((Rule!13852 0))(
  ( (Rule!13853 (regex!7026 Regex!11931) (tag!7886 String!50030) (isSeparator!7026 Bool) (transformation!7026 TokenValueInjection!13940)) )
))
(declare-datatypes ((List!43743 0))(
  ( (Nil!43619) (Cons!43619 (h!49039 Rule!13852) (t!337318 List!43743)) )
))
(declare-fun rules!3870 () List!43743)

(declare-fun r!4213 () Rule!13852)

(get-info :version)

(assert (=> b!4075453 (= res!1664516 (or (and ((_ is Cons!43619) rules!3870) (= (h!49039 rules!3870) r!4213)) (not ((_ is Cons!43619) rules!3870)) (= (h!49039 rules!3870) r!4213)))))

(declare-fun b!4075454 () Bool)

(declare-fun res!1664522 () Bool)

(declare-fun e!2529557 () Bool)

(assert (=> b!4075454 (=> (not res!1664522) (not e!2529557))))

(declare-fun isEmpty!26044 (List!43743) Bool)

(assert (=> b!4075454 (= res!1664522 (not (isEmpty!26044 rules!3870)))))

(declare-fun b!4075455 () Bool)

(declare-fun res!1664521 () Bool)

(assert (=> b!4075455 (=> (not res!1664521) (not e!2529557))))

(declare-fun p!2988 () List!43742)

(declare-fun isEmpty!26045 (List!43742) Bool)

(assert (=> b!4075455 (= res!1664521 (not (isEmpty!26045 p!2988)))))

(declare-fun b!4075456 () Bool)

(declare-fun e!2529568 () Bool)

(declare-fun e!2529559 () Bool)

(declare-fun tp!1233717 () Bool)

(assert (=> b!4075456 (= e!2529568 (and e!2529559 tp!1233717))))

(declare-fun b!4075457 () Bool)

(declare-fun e!2529563 () Bool)

(declare-fun tp!1233719 () Bool)

(assert (=> b!4075457 (= e!2529563 (and tp_is_empty!20865 tp!1233719))))

(declare-fun e!2529556 () Bool)

(declare-fun e!2529560 () Bool)

(declare-fun tp!1233721 () Bool)

(declare-fun b!4075458 () Bool)

(declare-fun inv!58265 (String!50030) Bool)

(declare-fun inv!58267 (TokenValueInjection!13940) Bool)

(assert (=> b!4075458 (= e!2529556 (and tp!1233721 (inv!58265 (tag!7886 r!4213)) (inv!58267 (transformation!7026 r!4213)) e!2529560))))

(declare-fun b!4075459 () Bool)

(declare-fun res!1664515 () Bool)

(assert (=> b!4075459 (=> (not res!1664515) (not e!2529557))))

(declare-fun suffix!1518 () List!43742)

(declare-fun input!3411 () List!43742)

(declare-fun ++!11432 (List!43742 List!43742) List!43742)

(assert (=> b!4075459 (= res!1664515 (= input!3411 (++!11432 p!2988 suffix!1518)))))

(declare-fun b!4075460 () Bool)

(declare-fun e!2529561 () Bool)

(declare-fun tp!1233722 () Bool)

(assert (=> b!4075460 (= e!2529561 (and tp_is_empty!20865 tp!1233722))))

(assert (=> b!4075461 (= e!2529560 (and tp!1233716 tp!1233714))))

(declare-fun b!4075462 () Bool)

(declare-fun res!1664518 () Bool)

(assert (=> b!4075462 (=> (not res!1664518) (not e!2529557))))

(declare-fun contains!8693 (List!43743 Rule!13852) Bool)

(assert (=> b!4075462 (= res!1664518 (contains!8693 rules!3870 r!4213))))

(declare-fun b!4075463 () Bool)

(declare-datatypes ((LexerInterface!6615 0))(
  ( (LexerInterfaceExt!6612 (__x!26730 Int)) (Lexer!6613) )
))
(declare-fun thiss!26199 () LexerInterface!6615)

(declare-fun ruleValid!2950 (LexerInterface!6615 Rule!13852) Bool)

(assert (=> b!4075463 (= e!2529566 (ruleValid!2950 thiss!26199 (h!49039 rules!3870)))))

(declare-fun rulesInvariant!5958 (LexerInterface!6615 List!43743) Bool)

(assert (=> b!4075463 (rulesInvariant!5958 thiss!26199 (t!337318 rules!3870))))

(declare-datatypes ((Unit!63163 0))(
  ( (Unit!63164) )
))
(declare-fun lt!1458490 () Unit!63163)

(declare-fun lemmaInvariantOnRulesThenOnTail!744 (LexerInterface!6615 Rule!13852 List!43743) Unit!63163)

(assert (=> b!4075463 (= lt!1458490 (lemmaInvariantOnRulesThenOnTail!744 thiss!26199 (h!49039 rules!3870) (t!337318 rules!3870)))))

(declare-fun tp!1233713 () Bool)

(declare-fun b!4075464 () Bool)

(declare-fun e!2529567 () Bool)

(assert (=> b!4075464 (= e!2529559 (and tp!1233713 (inv!58265 (tag!7886 (h!49039 rules!3870))) (inv!58267 (transformation!7026 (h!49039 rules!3870))) e!2529567))))

(declare-fun b!4075465 () Bool)

(declare-fun e!2529564 () Bool)

(assert (=> b!4075465 (= e!2529564 (not e!2529566))))

(declare-fun res!1664520 () Bool)

(assert (=> b!4075465 (=> res!1664520 e!2529566)))

(declare-fun matchR!5876 (Regex!11931 List!43742) Bool)

(assert (=> b!4075465 (= res!1664520 (not (matchR!5876 (regex!7026 r!4213) p!2988)))))

(assert (=> b!4075465 (ruleValid!2950 thiss!26199 r!4213)))

(declare-fun lt!1458491 () Unit!63163)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2018 (LexerInterface!6615 Rule!13852 List!43743) Unit!63163)

(assert (=> b!4075465 (= lt!1458491 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2018 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4075466 () Bool)

(assert (=> b!4075466 (= e!2529557 e!2529564)))

(declare-fun res!1664519 () Bool)

(assert (=> b!4075466 (=> (not res!1664519) (not e!2529564))))

(declare-fun lt!1458492 () BalanceConc!26068)

(declare-datatypes ((Token!13178 0))(
  ( (Token!13179 (value!220893 TokenValue!7256) (rule!10130 Rule!13852) (size!32583 Int) (originalCharacters!7620 List!43742)) )
))
(declare-datatypes ((tuple2!42594 0))(
  ( (tuple2!42595 (_1!24431 Token!13178) (_2!24431 List!43742)) )
))
(declare-datatypes ((Option!9434 0))(
  ( (None!9433) (Some!9433 (v!39877 tuple2!42594)) )
))
(declare-fun maxPrefix!3907 (LexerInterface!6615 List!43743 List!43742) Option!9434)

(declare-fun apply!10209 (TokenValueInjection!13940 BalanceConc!26068) TokenValue!7256)

(declare-fun size!32584 (List!43742) Int)

(assert (=> b!4075466 (= res!1664519 (= (maxPrefix!3907 thiss!26199 rules!3870 input!3411) (Some!9433 (tuple2!42595 (Token!13179 (apply!10209 (transformation!7026 r!4213) lt!1458492) r!4213 (size!32584 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458493 () Unit!63163)

(declare-fun lemmaSemiInverse!1993 (TokenValueInjection!13940 BalanceConc!26068) Unit!63163)

(assert (=> b!4075466 (= lt!1458493 (lemmaSemiInverse!1993 (transformation!7026 r!4213) lt!1458492))))

(declare-fun seqFromList!5243 (List!43742) BalanceConc!26068)

(assert (=> b!4075466 (= lt!1458492 (seqFromList!5243 p!2988))))

(declare-fun b!4075467 () Bool)

(declare-fun res!1664514 () Bool)

(assert (=> b!4075467 (=> (not res!1664514) (not e!2529557))))

(assert (=> b!4075467 (= res!1664514 (rulesInvariant!5958 thiss!26199 rules!3870))))

(declare-fun res!1664517 () Bool)

(assert (=> start!384772 (=> (not res!1664517) (not e!2529557))))

(assert (=> start!384772 (= res!1664517 ((_ is Lexer!6613) thiss!26199))))

(assert (=> start!384772 e!2529557))

(assert (=> start!384772 true))

(assert (=> start!384772 e!2529563))

(assert (=> start!384772 e!2529568))

(assert (=> start!384772 e!2529561))

(assert (=> start!384772 e!2529565))

(assert (=> start!384772 e!2529556))

(assert (=> b!4075468 (= e!2529567 (and tp!1233720 tp!1233718))))

(assert (= (and start!384772 res!1664517) b!4075454))

(assert (= (and b!4075454 res!1664522) b!4075467))

(assert (= (and b!4075467 res!1664514) b!4075462))

(assert (= (and b!4075462 res!1664518) b!4075459))

(assert (= (and b!4075459 res!1664515) b!4075455))

(assert (= (and b!4075455 res!1664521) b!4075466))

(assert (= (and b!4075466 res!1664519) b!4075465))

(assert (= (and b!4075465 (not res!1664520)) b!4075453))

(assert (= (and b!4075453 (not res!1664516)) b!4075463))

(assert (= (and start!384772 ((_ is Cons!43618) suffix!1518)) b!4075457))

(assert (= b!4075464 b!4075468))

(assert (= b!4075456 b!4075464))

(assert (= (and start!384772 ((_ is Cons!43619) rules!3870)) b!4075456))

(assert (= (and start!384772 ((_ is Cons!43618) p!2988)) b!4075460))

(assert (= (and start!384772 ((_ is Cons!43618) input!3411)) b!4075452))

(assert (= b!4075458 b!4075461))

(assert (= start!384772 b!4075458))

(declare-fun m!4683893 () Bool)

(assert (=> b!4075454 m!4683893))

(declare-fun m!4683895 () Bool)

(assert (=> b!4075465 m!4683895))

(declare-fun m!4683897 () Bool)

(assert (=> b!4075465 m!4683897))

(declare-fun m!4683899 () Bool)

(assert (=> b!4075465 m!4683899))

(declare-fun m!4683901 () Bool)

(assert (=> b!4075463 m!4683901))

(declare-fun m!4683903 () Bool)

(assert (=> b!4075463 m!4683903))

(declare-fun m!4683905 () Bool)

(assert (=> b!4075463 m!4683905))

(declare-fun m!4683907 () Bool)

(assert (=> b!4075466 m!4683907))

(declare-fun m!4683909 () Bool)

(assert (=> b!4075466 m!4683909))

(declare-fun m!4683911 () Bool)

(assert (=> b!4075466 m!4683911))

(declare-fun m!4683913 () Bool)

(assert (=> b!4075466 m!4683913))

(declare-fun m!4683915 () Bool)

(assert (=> b!4075466 m!4683915))

(declare-fun m!4683917 () Bool)

(assert (=> b!4075459 m!4683917))

(declare-fun m!4683919 () Bool)

(assert (=> b!4075467 m!4683919))

(declare-fun m!4683921 () Bool)

(assert (=> b!4075455 m!4683921))

(declare-fun m!4683923 () Bool)

(assert (=> b!4075458 m!4683923))

(declare-fun m!4683925 () Bool)

(assert (=> b!4075458 m!4683925))

(declare-fun m!4683927 () Bool)

(assert (=> b!4075462 m!4683927))

(declare-fun m!4683929 () Bool)

(assert (=> b!4075464 m!4683929))

(declare-fun m!4683931 () Bool)

(assert (=> b!4075464 m!4683931))

(check-sat (not b_next!114297) tp_is_empty!20865 (not b!4075455) (not b_next!114301) (not b!4075465) (not b!4075462) (not b_next!114299) (not b!4075460) b_and!313315 (not b!4075458) (not b!4075466) b_and!313319 (not b!4075457) b_and!313321 (not b!4075464) (not b!4075454) (not b!4075456) b_and!313317 (not b_next!114303) (not b!4075452) (not b!4075467) (not b!4075459) (not b!4075463))
(check-sat (not b_next!114297) b_and!313315 (not b_next!114301) b_and!313319 b_and!313321 b_and!313317 (not b_next!114299) (not b_next!114303))
(get-model)

(declare-fun d!1210922 () Bool)

(assert (=> d!1210922 (= (isEmpty!26044 rules!3870) ((_ is Nil!43619) rules!3870))))

(assert (=> b!4075454 d!1210922))

(declare-fun b!4075477 () Bool)

(declare-fun e!2529574 () List!43742)

(assert (=> b!4075477 (= e!2529574 suffix!1518)))

(declare-fun b!4075478 () Bool)

(assert (=> b!4075478 (= e!2529574 (Cons!43618 (h!49038 p!2988) (++!11432 (t!337317 p!2988) suffix!1518)))))

(declare-fun lt!1458498 () List!43742)

(declare-fun e!2529573 () Bool)

(declare-fun b!4075480 () Bool)

(assert (=> b!4075480 (= e!2529573 (or (not (= suffix!1518 Nil!43618)) (= lt!1458498 p!2988)))))

(declare-fun b!4075479 () Bool)

(declare-fun res!1664535 () Bool)

(assert (=> b!4075479 (=> (not res!1664535) (not e!2529573))))

(assert (=> b!4075479 (= res!1664535 (= (size!32584 lt!1458498) (+ (size!32584 p!2988) (size!32584 suffix!1518))))))

(declare-fun d!1210924 () Bool)

(assert (=> d!1210924 e!2529573))

(declare-fun res!1664534 () Bool)

(assert (=> d!1210924 (=> (not res!1664534) (not e!2529573))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6674 (List!43742) (InoxSet C!24048))

(assert (=> d!1210924 (= res!1664534 (= (content!6674 lt!1458498) ((_ map or) (content!6674 p!2988) (content!6674 suffix!1518))))))

(assert (=> d!1210924 (= lt!1458498 e!2529574)))

(declare-fun c!703095 () Bool)

(assert (=> d!1210924 (= c!703095 ((_ is Nil!43618) p!2988))))

(assert (=> d!1210924 (= (++!11432 p!2988 suffix!1518) lt!1458498)))

(assert (= (and d!1210924 c!703095) b!4075477))

(assert (= (and d!1210924 (not c!703095)) b!4075478))

(assert (= (and d!1210924 res!1664534) b!4075479))

(assert (= (and b!4075479 res!1664535) b!4075480))

(declare-fun m!4683933 () Bool)

(assert (=> b!4075478 m!4683933))

(declare-fun m!4683935 () Bool)

(assert (=> b!4075479 m!4683935))

(assert (=> b!4075479 m!4683915))

(declare-fun m!4683937 () Bool)

(assert (=> b!4075479 m!4683937))

(declare-fun m!4683939 () Bool)

(assert (=> d!1210924 m!4683939))

(declare-fun m!4683941 () Bool)

(assert (=> d!1210924 m!4683941))

(declare-fun m!4683943 () Bool)

(assert (=> d!1210924 m!4683943))

(assert (=> b!4075459 d!1210924))

(declare-fun b!4075509 () Bool)

(declare-fun e!2529595 () Bool)

(declare-fun lt!1458501 () Bool)

(declare-fun call!288437 () Bool)

(assert (=> b!4075509 (= e!2529595 (= lt!1458501 call!288437))))

(declare-fun b!4075510 () Bool)

(declare-fun res!1664552 () Bool)

(declare-fun e!2529591 () Bool)

(assert (=> b!4075510 (=> (not res!1664552) (not e!2529591))))

(declare-fun tail!6343 (List!43742) List!43742)

(assert (=> b!4075510 (= res!1664552 (isEmpty!26045 (tail!6343 p!2988)))))

(declare-fun bm!288432 () Bool)

(assert (=> bm!288432 (= call!288437 (isEmpty!26045 p!2988))))

(declare-fun b!4075511 () Bool)

(declare-fun e!2529592 () Bool)

(declare-fun nullable!4198 (Regex!11931) Bool)

(assert (=> b!4075511 (= e!2529592 (nullable!4198 (regex!7026 r!4213)))))

(declare-fun b!4075512 () Bool)

(declare-fun res!1664559 () Bool)

(declare-fun e!2529589 () Bool)

(assert (=> b!4075512 (=> res!1664559 e!2529589)))

(assert (=> b!4075512 (= res!1664559 (not ((_ is ElementMatch!11931) (regex!7026 r!4213))))))

(declare-fun e!2529594 () Bool)

(assert (=> b!4075512 (= e!2529594 e!2529589)))

(declare-fun d!1210926 () Bool)

(assert (=> d!1210926 e!2529595))

(declare-fun c!703104 () Bool)

(assert (=> d!1210926 (= c!703104 ((_ is EmptyExpr!11931) (regex!7026 r!4213)))))

(assert (=> d!1210926 (= lt!1458501 e!2529592)))

(declare-fun c!703102 () Bool)

(assert (=> d!1210926 (= c!703102 (isEmpty!26045 p!2988))))

(declare-fun validRegex!5398 (Regex!11931) Bool)

(assert (=> d!1210926 (validRegex!5398 (regex!7026 r!4213))))

(assert (=> d!1210926 (= (matchR!5876 (regex!7026 r!4213) p!2988) lt!1458501)))

(declare-fun b!4075513 () Bool)

(declare-fun e!2529593 () Bool)

(declare-fun head!8609 (List!43742) C!24048)

(assert (=> b!4075513 (= e!2529593 (not (= (head!8609 p!2988) (c!703090 (regex!7026 r!4213)))))))

(declare-fun b!4075514 () Bool)

(assert (=> b!4075514 (= e!2529595 e!2529594)))

(declare-fun c!703103 () Bool)

(assert (=> b!4075514 (= c!703103 ((_ is EmptyLang!11931) (regex!7026 r!4213)))))

(declare-fun b!4075515 () Bool)

(declare-fun e!2529590 () Bool)

(assert (=> b!4075515 (= e!2529590 e!2529593)))

(declare-fun res!1664553 () Bool)

(assert (=> b!4075515 (=> res!1664553 e!2529593)))

(assert (=> b!4075515 (= res!1664553 call!288437)))

(declare-fun b!4075516 () Bool)

(declare-fun res!1664558 () Bool)

(assert (=> b!4075516 (=> res!1664558 e!2529593)))

(assert (=> b!4075516 (= res!1664558 (not (isEmpty!26045 (tail!6343 p!2988))))))

(declare-fun b!4075517 () Bool)

(assert (=> b!4075517 (= e!2529591 (= (head!8609 p!2988) (c!703090 (regex!7026 r!4213))))))

(declare-fun b!4075518 () Bool)

(assert (=> b!4075518 (= e!2529594 (not lt!1458501))))

(declare-fun b!4075519 () Bool)

(declare-fun derivativeStep!3599 (Regex!11931 C!24048) Regex!11931)

(assert (=> b!4075519 (= e!2529592 (matchR!5876 (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988)) (tail!6343 p!2988)))))

(declare-fun b!4075520 () Bool)

(declare-fun res!1664555 () Bool)

(assert (=> b!4075520 (=> (not res!1664555) (not e!2529591))))

(assert (=> b!4075520 (= res!1664555 (not call!288437))))

(declare-fun b!4075521 () Bool)

(declare-fun res!1664557 () Bool)

(assert (=> b!4075521 (=> res!1664557 e!2529589)))

(assert (=> b!4075521 (= res!1664557 e!2529591)))

(declare-fun res!1664554 () Bool)

(assert (=> b!4075521 (=> (not res!1664554) (not e!2529591))))

(assert (=> b!4075521 (= res!1664554 lt!1458501)))

(declare-fun b!4075522 () Bool)

(assert (=> b!4075522 (= e!2529589 e!2529590)))

(declare-fun res!1664556 () Bool)

(assert (=> b!4075522 (=> (not res!1664556) (not e!2529590))))

(assert (=> b!4075522 (= res!1664556 (not lt!1458501))))

(assert (= (and d!1210926 c!703102) b!4075511))

(assert (= (and d!1210926 (not c!703102)) b!4075519))

(assert (= (and d!1210926 c!703104) b!4075509))

(assert (= (and d!1210926 (not c!703104)) b!4075514))

(assert (= (and b!4075514 c!703103) b!4075518))

(assert (= (and b!4075514 (not c!703103)) b!4075512))

(assert (= (and b!4075512 (not res!1664559)) b!4075521))

(assert (= (and b!4075521 res!1664554) b!4075520))

(assert (= (and b!4075520 res!1664555) b!4075510))

(assert (= (and b!4075510 res!1664552) b!4075517))

(assert (= (and b!4075521 (not res!1664557)) b!4075522))

(assert (= (and b!4075522 res!1664556) b!4075515))

(assert (= (and b!4075515 (not res!1664553)) b!4075516))

(assert (= (and b!4075516 (not res!1664558)) b!4075513))

(assert (= (or b!4075509 b!4075520 b!4075515) bm!288432))

(declare-fun m!4683945 () Bool)

(assert (=> b!4075516 m!4683945))

(assert (=> b!4075516 m!4683945))

(declare-fun m!4683947 () Bool)

(assert (=> b!4075516 m!4683947))

(declare-fun m!4683949 () Bool)

(assert (=> b!4075517 m!4683949))

(assert (=> b!4075510 m!4683945))

(assert (=> b!4075510 m!4683945))

(assert (=> b!4075510 m!4683947))

(assert (=> b!4075519 m!4683949))

(assert (=> b!4075519 m!4683949))

(declare-fun m!4683951 () Bool)

(assert (=> b!4075519 m!4683951))

(assert (=> b!4075519 m!4683945))

(assert (=> b!4075519 m!4683951))

(assert (=> b!4075519 m!4683945))

(declare-fun m!4683953 () Bool)

(assert (=> b!4075519 m!4683953))

(declare-fun m!4683955 () Bool)

(assert (=> b!4075511 m!4683955))

(assert (=> d!1210926 m!4683921))

(declare-fun m!4683957 () Bool)

(assert (=> d!1210926 m!4683957))

(assert (=> b!4075513 m!4683949))

(assert (=> bm!288432 m!4683921))

(assert (=> b!4075465 d!1210926))

(declare-fun d!1210928 () Bool)

(declare-fun res!1664564 () Bool)

(declare-fun e!2529598 () Bool)

(assert (=> d!1210928 (=> (not res!1664564) (not e!2529598))))

(assert (=> d!1210928 (= res!1664564 (validRegex!5398 (regex!7026 r!4213)))))

(assert (=> d!1210928 (= (ruleValid!2950 thiss!26199 r!4213) e!2529598)))

(declare-fun b!4075527 () Bool)

(declare-fun res!1664565 () Bool)

(assert (=> b!4075527 (=> (not res!1664565) (not e!2529598))))

(assert (=> b!4075527 (= res!1664565 (not (nullable!4198 (regex!7026 r!4213))))))

(declare-fun b!4075528 () Bool)

(assert (=> b!4075528 (= e!2529598 (not (= (tag!7886 r!4213) (String!50031 ""))))))

(assert (= (and d!1210928 res!1664564) b!4075527))

(assert (= (and b!4075527 res!1664565) b!4075528))

(assert (=> d!1210928 m!4683957))

(assert (=> b!4075527 m!4683955))

(assert (=> b!4075465 d!1210928))

(declare-fun d!1210930 () Bool)

(assert (=> d!1210930 (ruleValid!2950 thiss!26199 r!4213)))

(declare-fun lt!1458504 () Unit!63163)

(declare-fun choose!24879 (LexerInterface!6615 Rule!13852 List!43743) Unit!63163)

(assert (=> d!1210930 (= lt!1458504 (choose!24879 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1210930 (contains!8693 rules!3870 r!4213)))

(assert (=> d!1210930 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2018 thiss!26199 r!4213 rules!3870) lt!1458504)))

(declare-fun bs!592701 () Bool)

(assert (= bs!592701 d!1210930))

(assert (=> bs!592701 m!4683897))

(declare-fun m!4683959 () Bool)

(assert (=> bs!592701 m!4683959))

(assert (=> bs!592701 m!4683927))

(assert (=> b!4075465 d!1210930))

(declare-fun b!4075547 () Bool)

(declare-fun e!2529605 () Option!9434)

(declare-fun lt!1458515 () Option!9434)

(declare-fun lt!1458516 () Option!9434)

(assert (=> b!4075547 (= e!2529605 (ite (and ((_ is None!9433) lt!1458515) ((_ is None!9433) lt!1458516)) None!9433 (ite ((_ is None!9433) lt!1458516) lt!1458515 (ite ((_ is None!9433) lt!1458515) lt!1458516 (ite (>= (size!32583 (_1!24431 (v!39877 lt!1458515))) (size!32583 (_1!24431 (v!39877 lt!1458516)))) lt!1458515 lt!1458516)))))))

(declare-fun call!288440 () Option!9434)

(assert (=> b!4075547 (= lt!1458515 call!288440)))

(assert (=> b!4075547 (= lt!1458516 (maxPrefix!3907 thiss!26199 (t!337318 rules!3870) input!3411))))

(declare-fun b!4075549 () Bool)

(declare-fun e!2529606 () Bool)

(declare-fun e!2529607 () Bool)

(assert (=> b!4075549 (= e!2529606 e!2529607)))

(declare-fun res!1664586 () Bool)

(assert (=> b!4075549 (=> (not res!1664586) (not e!2529607))))

(declare-fun lt!1458517 () Option!9434)

(declare-fun isDefined!7150 (Option!9434) Bool)

(assert (=> b!4075549 (= res!1664586 (isDefined!7150 lt!1458517))))

(declare-fun b!4075550 () Bool)

(declare-fun res!1664581 () Bool)

(assert (=> b!4075550 (=> (not res!1664581) (not e!2529607))))

(declare-fun get!14303 (Option!9434) tuple2!42594)

(assert (=> b!4075550 (= res!1664581 (< (size!32584 (_2!24431 (get!14303 lt!1458517))) (size!32584 input!3411)))))

(declare-fun bm!288435 () Bool)

(declare-fun maxPrefixOneRule!2901 (LexerInterface!6615 Rule!13852 List!43742) Option!9434)

(assert (=> bm!288435 (= call!288440 (maxPrefixOneRule!2901 thiss!26199 (h!49039 rules!3870) input!3411))))

(declare-fun b!4075551 () Bool)

(declare-fun res!1664582 () Bool)

(assert (=> b!4075551 (=> (not res!1664582) (not e!2529607))))

(assert (=> b!4075551 (= res!1664582 (= (value!220893 (_1!24431 (get!14303 lt!1458517))) (apply!10209 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))) (seqFromList!5243 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517)))))))))

(declare-fun b!4075552 () Bool)

(declare-fun res!1664580 () Bool)

(assert (=> b!4075552 (=> (not res!1664580) (not e!2529607))))

(declare-fun list!16228 (BalanceConc!26068) List!43742)

(declare-fun charsOf!4814 (Token!13178) BalanceConc!26068)

(assert (=> b!4075552 (= res!1664580 (= (++!11432 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))) (_2!24431 (get!14303 lt!1458517))) input!3411))))

(declare-fun b!4075553 () Bool)

(assert (=> b!4075553 (= e!2529607 (contains!8693 rules!3870 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))))

(declare-fun b!4075554 () Bool)

(assert (=> b!4075554 (= e!2529605 call!288440)))

(declare-fun b!4075555 () Bool)

(declare-fun res!1664583 () Bool)

(assert (=> b!4075555 (=> (not res!1664583) (not e!2529607))))

(assert (=> b!4075555 (= res!1664583 (= (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))) (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517)))))))

(declare-fun b!4075548 () Bool)

(declare-fun res!1664584 () Bool)

(assert (=> b!4075548 (=> (not res!1664584) (not e!2529607))))

(assert (=> b!4075548 (= res!1664584 (matchR!5876 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))) (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))))))

(declare-fun d!1210932 () Bool)

(assert (=> d!1210932 e!2529606))

(declare-fun res!1664585 () Bool)

(assert (=> d!1210932 (=> res!1664585 e!2529606)))

(declare-fun isEmpty!26047 (Option!9434) Bool)

(assert (=> d!1210932 (= res!1664585 (isEmpty!26047 lt!1458517))))

(assert (=> d!1210932 (= lt!1458517 e!2529605)))

(declare-fun c!703107 () Bool)

(assert (=> d!1210932 (= c!703107 (and ((_ is Cons!43619) rules!3870) ((_ is Nil!43619) (t!337318 rules!3870))))))

(declare-fun lt!1458519 () Unit!63163)

(declare-fun lt!1458518 () Unit!63163)

(assert (=> d!1210932 (= lt!1458519 lt!1458518)))

(declare-fun isPrefix!4101 (List!43742 List!43742) Bool)

(assert (=> d!1210932 (isPrefix!4101 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2652 (List!43742 List!43742) Unit!63163)

(assert (=> d!1210932 (= lt!1458518 (lemmaIsPrefixRefl!2652 input!3411 input!3411))))

(declare-fun rulesValidInductive!2581 (LexerInterface!6615 List!43743) Bool)

(assert (=> d!1210932 (rulesValidInductive!2581 thiss!26199 rules!3870)))

(assert (=> d!1210932 (= (maxPrefix!3907 thiss!26199 rules!3870 input!3411) lt!1458517)))

(assert (= (and d!1210932 c!703107) b!4075554))

(assert (= (and d!1210932 (not c!703107)) b!4075547))

(assert (= (or b!4075554 b!4075547) bm!288435))

(assert (= (and d!1210932 (not res!1664585)) b!4075549))

(assert (= (and b!4075549 res!1664586) b!4075555))

(assert (= (and b!4075555 res!1664583) b!4075550))

(assert (= (and b!4075550 res!1664581) b!4075552))

(assert (= (and b!4075552 res!1664580) b!4075551))

(assert (= (and b!4075551 res!1664582) b!4075548))

(assert (= (and b!4075548 res!1664584) b!4075553))

(declare-fun m!4683961 () Bool)

(assert (=> b!4075548 m!4683961))

(declare-fun m!4683963 () Bool)

(assert (=> b!4075548 m!4683963))

(assert (=> b!4075548 m!4683963))

(declare-fun m!4683965 () Bool)

(assert (=> b!4075548 m!4683965))

(assert (=> b!4075548 m!4683965))

(declare-fun m!4683967 () Bool)

(assert (=> b!4075548 m!4683967))

(assert (=> b!4075553 m!4683961))

(declare-fun m!4683969 () Bool)

(assert (=> b!4075553 m!4683969))

(assert (=> b!4075552 m!4683961))

(assert (=> b!4075552 m!4683963))

(assert (=> b!4075552 m!4683963))

(assert (=> b!4075552 m!4683965))

(assert (=> b!4075552 m!4683965))

(declare-fun m!4683971 () Bool)

(assert (=> b!4075552 m!4683971))

(declare-fun m!4683973 () Bool)

(assert (=> b!4075547 m!4683973))

(declare-fun m!4683975 () Bool)

(assert (=> d!1210932 m!4683975))

(declare-fun m!4683977 () Bool)

(assert (=> d!1210932 m!4683977))

(declare-fun m!4683979 () Bool)

(assert (=> d!1210932 m!4683979))

(declare-fun m!4683981 () Bool)

(assert (=> d!1210932 m!4683981))

(declare-fun m!4683983 () Bool)

(assert (=> b!4075549 m!4683983))

(assert (=> b!4075550 m!4683961))

(declare-fun m!4683985 () Bool)

(assert (=> b!4075550 m!4683985))

(declare-fun m!4683987 () Bool)

(assert (=> b!4075550 m!4683987))

(assert (=> b!4075551 m!4683961))

(declare-fun m!4683989 () Bool)

(assert (=> b!4075551 m!4683989))

(assert (=> b!4075551 m!4683989))

(declare-fun m!4683991 () Bool)

(assert (=> b!4075551 m!4683991))

(assert (=> b!4075555 m!4683961))

(assert (=> b!4075555 m!4683963))

(assert (=> b!4075555 m!4683963))

(assert (=> b!4075555 m!4683965))

(declare-fun m!4683993 () Bool)

(assert (=> bm!288435 m!4683993))

(assert (=> b!4075466 d!1210932))

(declare-fun d!1210934 () Bool)

(declare-fun lt!1458522 () Int)

(assert (=> d!1210934 (>= lt!1458522 0)))

(declare-fun e!2529610 () Int)

(assert (=> d!1210934 (= lt!1458522 e!2529610)))

(declare-fun c!703110 () Bool)

(assert (=> d!1210934 (= c!703110 ((_ is Nil!43618) p!2988))))

(assert (=> d!1210934 (= (size!32584 p!2988) lt!1458522)))

(declare-fun b!4075560 () Bool)

(assert (=> b!4075560 (= e!2529610 0)))

(declare-fun b!4075561 () Bool)

(assert (=> b!4075561 (= e!2529610 (+ 1 (size!32584 (t!337317 p!2988))))))

(assert (= (and d!1210934 c!703110) b!4075560))

(assert (= (and d!1210934 (not c!703110)) b!4075561))

(declare-fun m!4683995 () Bool)

(assert (=> b!4075561 m!4683995))

(assert (=> b!4075466 d!1210934))

(declare-fun d!1210936 () Bool)

(declare-fun fromListB!2392 (List!43742) BalanceConc!26068)

(assert (=> d!1210936 (= (seqFromList!5243 p!2988) (fromListB!2392 p!2988))))

(declare-fun bs!592702 () Bool)

(assert (= bs!592702 d!1210936))

(declare-fun m!4683997 () Bool)

(assert (=> bs!592702 m!4683997))

(assert (=> b!4075466 d!1210936))

(declare-fun b!4075723 () Bool)

(declare-fun e!2529700 () Bool)

(assert (=> b!4075723 (= e!2529700 true)))

(declare-fun d!1210938 () Bool)

(assert (=> d!1210938 e!2529700))

(assert (= d!1210938 b!4075723))

(declare-fun order!22789 () Int)

(declare-fun order!22791 () Int)

(declare-fun lambda!127675 () Int)

(declare-fun dynLambda!18532 (Int Int) Int)

(declare-fun dynLambda!18533 (Int Int) Int)

(assert (=> b!4075723 (< (dynLambda!18532 order!22789 (toValue!9590 (transformation!7026 r!4213))) (dynLambda!18533 order!22791 lambda!127675))))

(declare-fun order!22793 () Int)

(declare-fun dynLambda!18534 (Int Int) Int)

(assert (=> b!4075723 (< (dynLambda!18534 order!22793 (toChars!9449 (transformation!7026 r!4213))) (dynLambda!18533 order!22791 lambda!127675))))

(declare-fun dynLambda!18535 (Int TokenValue!7256) BalanceConc!26068)

(declare-fun dynLambda!18536 (Int BalanceConc!26068) TokenValue!7256)

(assert (=> d!1210938 (= (list!16228 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))) (list!16228 lt!1458492))))

(declare-fun lt!1458559 () Unit!63163)

(declare-fun ForallOf!845 (Int BalanceConc!26068) Unit!63163)

(assert (=> d!1210938 (= lt!1458559 (ForallOf!845 lambda!127675 lt!1458492))))

(assert (=> d!1210938 (= (lemmaSemiInverse!1993 (transformation!7026 r!4213) lt!1458492) lt!1458559)))

(declare-fun b_lambda!119083 () Bool)

(assert (=> (not b_lambda!119083) (not d!1210938)))

(declare-fun t!337333 () Bool)

(declare-fun tb!244813 () Bool)

(assert (=> (and b!4075468 (= (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toChars!9449 (transformation!7026 r!4213))) t!337333) tb!244813))

(declare-fun e!2529703 () Bool)

(declare-fun b!4075728 () Bool)

(declare-fun tp!1233765 () Bool)

(declare-fun inv!58270 (Conc!13237) Bool)

(assert (=> b!4075728 (= e!2529703 (and (inv!58270 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))) tp!1233765))))

(declare-fun result!296848 () Bool)

(declare-fun inv!58271 (BalanceConc!26068) Bool)

(assert (=> tb!244813 (= result!296848 (and (inv!58271 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))) e!2529703))))

(assert (= tb!244813 b!4075728))

(declare-fun m!4684115 () Bool)

(assert (=> b!4075728 m!4684115))

(declare-fun m!4684117 () Bool)

(assert (=> tb!244813 m!4684117))

(assert (=> d!1210938 t!337333))

(declare-fun b_and!313339 () Bool)

(assert (= b_and!313317 (and (=> t!337333 result!296848) b_and!313339)))

(declare-fun t!337335 () Bool)

(declare-fun tb!244815 () Bool)

(assert (=> (and b!4075461 (= (toChars!9449 (transformation!7026 r!4213)) (toChars!9449 (transformation!7026 r!4213))) t!337335) tb!244815))

(declare-fun result!296852 () Bool)

(assert (= result!296852 result!296848))

(assert (=> d!1210938 t!337335))

(declare-fun b_and!313341 () Bool)

(assert (= b_and!313321 (and (=> t!337335 result!296852) b_and!313341)))

(declare-fun b_lambda!119085 () Bool)

(assert (=> (not b_lambda!119085) (not d!1210938)))

(declare-fun t!337337 () Bool)

(declare-fun tb!244817 () Bool)

(assert (=> (and b!4075468 (= (toValue!9590 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 r!4213))) t!337337) tb!244817))

(declare-fun result!296854 () Bool)

(declare-fun inv!21 (TokenValue!7256) Bool)

(assert (=> tb!244817 (= result!296854 (inv!21 (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))

(declare-fun m!4684119 () Bool)

(assert (=> tb!244817 m!4684119))

(assert (=> d!1210938 t!337337))

(declare-fun b_and!313343 () Bool)

(assert (= b_and!313315 (and (=> t!337337 result!296854) b_and!313343)))

(declare-fun t!337339 () Bool)

(declare-fun tb!244819 () Bool)

(assert (=> (and b!4075461 (= (toValue!9590 (transformation!7026 r!4213)) (toValue!9590 (transformation!7026 r!4213))) t!337339) tb!244819))

(declare-fun result!296858 () Bool)

(assert (= result!296858 result!296854))

(assert (=> d!1210938 t!337339))

(declare-fun b_and!313345 () Bool)

(assert (= b_and!313319 (and (=> t!337339 result!296858) b_and!313345)))

(declare-fun m!4684121 () Bool)

(assert (=> d!1210938 m!4684121))

(declare-fun m!4684123 () Bool)

(assert (=> d!1210938 m!4684123))

(declare-fun m!4684125 () Bool)

(assert (=> d!1210938 m!4684125))

(declare-fun m!4684127 () Bool)

(assert (=> d!1210938 m!4684127))

(declare-fun m!4684129 () Bool)

(assert (=> d!1210938 m!4684129))

(assert (=> d!1210938 m!4684125))

(assert (=> d!1210938 m!4684127))

(assert (=> b!4075466 d!1210938))

(declare-fun d!1210978 () Bool)

(assert (=> d!1210978 (= (apply!10209 (transformation!7026 r!4213) lt!1458492) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))

(declare-fun b_lambda!119087 () Bool)

(assert (=> (not b_lambda!119087) (not d!1210978)))

(assert (=> d!1210978 t!337337))

(declare-fun b_and!313347 () Bool)

(assert (= b_and!313343 (and (=> t!337337 result!296854) b_and!313347)))

(assert (=> d!1210978 t!337339))

(declare-fun b_and!313349 () Bool)

(assert (= b_and!313345 (and (=> t!337339 result!296858) b_and!313349)))

(assert (=> d!1210978 m!4684125))

(assert (=> b!4075466 d!1210978))

(declare-fun d!1210980 () Bool)

(assert (=> d!1210980 (= (isEmpty!26045 p!2988) ((_ is Nil!43618) p!2988))))

(assert (=> b!4075455 d!1210980))

(declare-fun d!1210982 () Bool)

(declare-fun lt!1458562 () Bool)

(declare-fun content!6675 (List!43743) (InoxSet Rule!13852))

(assert (=> d!1210982 (= lt!1458562 (select (content!6675 rules!3870) r!4213))))

(declare-fun e!2529712 () Bool)

(assert (=> d!1210982 (= lt!1458562 e!2529712)))

(declare-fun res!1664664 () Bool)

(assert (=> d!1210982 (=> (not res!1664664) (not e!2529712))))

(assert (=> d!1210982 (= res!1664664 ((_ is Cons!43619) rules!3870))))

(assert (=> d!1210982 (= (contains!8693 rules!3870 r!4213) lt!1458562)))

(declare-fun b!4075735 () Bool)

(declare-fun e!2529711 () Bool)

(assert (=> b!4075735 (= e!2529712 e!2529711)))

(declare-fun res!1664665 () Bool)

(assert (=> b!4075735 (=> res!1664665 e!2529711)))

(assert (=> b!4075735 (= res!1664665 (= (h!49039 rules!3870) r!4213))))

(declare-fun b!4075736 () Bool)

(assert (=> b!4075736 (= e!2529711 (contains!8693 (t!337318 rules!3870) r!4213))))

(assert (= (and d!1210982 res!1664664) b!4075735))

(assert (= (and b!4075735 (not res!1664665)) b!4075736))

(declare-fun m!4684131 () Bool)

(assert (=> d!1210982 m!4684131))

(declare-fun m!4684133 () Bool)

(assert (=> d!1210982 m!4684133))

(declare-fun m!4684135 () Bool)

(assert (=> b!4075736 m!4684135))

(assert (=> b!4075462 d!1210982))

(declare-fun d!1210984 () Bool)

(declare-fun res!1664668 () Bool)

(declare-fun e!2529715 () Bool)

(assert (=> d!1210984 (=> (not res!1664668) (not e!2529715))))

(declare-fun rulesValid!2740 (LexerInterface!6615 List!43743) Bool)

(assert (=> d!1210984 (= res!1664668 (rulesValid!2740 thiss!26199 rules!3870))))

(assert (=> d!1210984 (= (rulesInvariant!5958 thiss!26199 rules!3870) e!2529715)))

(declare-fun b!4075739 () Bool)

(declare-datatypes ((List!43745 0))(
  ( (Nil!43621) (Cons!43621 (h!49041 String!50030) (t!337344 List!43745)) )
))
(declare-fun noDuplicateTag!2741 (LexerInterface!6615 List!43743 List!43745) Bool)

(assert (=> b!4075739 (= e!2529715 (noDuplicateTag!2741 thiss!26199 rules!3870 Nil!43621))))

(assert (= (and d!1210984 res!1664668) b!4075739))

(declare-fun m!4684137 () Bool)

(assert (=> d!1210984 m!4684137))

(declare-fun m!4684139 () Bool)

(assert (=> b!4075739 m!4684139))

(assert (=> b!4075467 d!1210984))

(declare-fun d!1210986 () Bool)

(assert (=> d!1210986 (= (inv!58265 (tag!7886 r!4213)) (= (mod (str.len (value!220892 (tag!7886 r!4213))) 2) 0))))

(assert (=> b!4075458 d!1210986))

(declare-fun d!1210988 () Bool)

(declare-fun res!1664671 () Bool)

(declare-fun e!2529718 () Bool)

(assert (=> d!1210988 (=> (not res!1664671) (not e!2529718))))

(declare-fun semiInverseModEq!3006 (Int Int) Bool)

(assert (=> d!1210988 (= res!1664671 (semiInverseModEq!3006 (toChars!9449 (transformation!7026 r!4213)) (toValue!9590 (transformation!7026 r!4213))))))

(assert (=> d!1210988 (= (inv!58267 (transformation!7026 r!4213)) e!2529718)))

(declare-fun b!4075742 () Bool)

(declare-fun equivClasses!2905 (Int Int) Bool)

(assert (=> b!4075742 (= e!2529718 (equivClasses!2905 (toChars!9449 (transformation!7026 r!4213)) (toValue!9590 (transformation!7026 r!4213))))))

(assert (= (and d!1210988 res!1664671) b!4075742))

(declare-fun m!4684141 () Bool)

(assert (=> d!1210988 m!4684141))

(declare-fun m!4684143 () Bool)

(assert (=> b!4075742 m!4684143))

(assert (=> b!4075458 d!1210988))

(declare-fun d!1210990 () Bool)

(declare-fun res!1664672 () Bool)

(declare-fun e!2529719 () Bool)

(assert (=> d!1210990 (=> (not res!1664672) (not e!2529719))))

(assert (=> d!1210990 (= res!1664672 (validRegex!5398 (regex!7026 (h!49039 rules!3870))))))

(assert (=> d!1210990 (= (ruleValid!2950 thiss!26199 (h!49039 rules!3870)) e!2529719)))

(declare-fun b!4075743 () Bool)

(declare-fun res!1664673 () Bool)

(assert (=> b!4075743 (=> (not res!1664673) (not e!2529719))))

(assert (=> b!4075743 (= res!1664673 (not (nullable!4198 (regex!7026 (h!49039 rules!3870)))))))

(declare-fun b!4075744 () Bool)

(assert (=> b!4075744 (= e!2529719 (not (= (tag!7886 (h!49039 rules!3870)) (String!50031 ""))))))

(assert (= (and d!1210990 res!1664672) b!4075743))

(assert (= (and b!4075743 res!1664673) b!4075744))

(declare-fun m!4684145 () Bool)

(assert (=> d!1210990 m!4684145))

(declare-fun m!4684147 () Bool)

(assert (=> b!4075743 m!4684147))

(assert (=> b!4075463 d!1210990))

(declare-fun d!1210992 () Bool)

(declare-fun res!1664674 () Bool)

(declare-fun e!2529720 () Bool)

(assert (=> d!1210992 (=> (not res!1664674) (not e!2529720))))

(assert (=> d!1210992 (= res!1664674 (rulesValid!2740 thiss!26199 (t!337318 rules!3870)))))

(assert (=> d!1210992 (= (rulesInvariant!5958 thiss!26199 (t!337318 rules!3870)) e!2529720)))

(declare-fun b!4075745 () Bool)

(assert (=> b!4075745 (= e!2529720 (noDuplicateTag!2741 thiss!26199 (t!337318 rules!3870) Nil!43621))))

(assert (= (and d!1210992 res!1664674) b!4075745))

(declare-fun m!4684149 () Bool)

(assert (=> d!1210992 m!4684149))

(declare-fun m!4684151 () Bool)

(assert (=> b!4075745 m!4684151))

(assert (=> b!4075463 d!1210992))

(declare-fun d!1210994 () Bool)

(assert (=> d!1210994 (rulesInvariant!5958 thiss!26199 (t!337318 rules!3870))))

(declare-fun lt!1458565 () Unit!63163)

(declare-fun choose!24880 (LexerInterface!6615 Rule!13852 List!43743) Unit!63163)

(assert (=> d!1210994 (= lt!1458565 (choose!24880 thiss!26199 (h!49039 rules!3870) (t!337318 rules!3870)))))

(assert (=> d!1210994 (rulesInvariant!5958 thiss!26199 (Cons!43619 (h!49039 rules!3870) (t!337318 rules!3870)))))

(assert (=> d!1210994 (= (lemmaInvariantOnRulesThenOnTail!744 thiss!26199 (h!49039 rules!3870) (t!337318 rules!3870)) lt!1458565)))

(declare-fun bs!592706 () Bool)

(assert (= bs!592706 d!1210994))

(assert (=> bs!592706 m!4683903))

(declare-fun m!4684153 () Bool)

(assert (=> bs!592706 m!4684153))

(declare-fun m!4684155 () Bool)

(assert (=> bs!592706 m!4684155))

(assert (=> b!4075463 d!1210994))

(declare-fun d!1210996 () Bool)

(assert (=> d!1210996 (= (inv!58265 (tag!7886 (h!49039 rules!3870))) (= (mod (str.len (value!220892 (tag!7886 (h!49039 rules!3870)))) 2) 0))))

(assert (=> b!4075464 d!1210996))

(declare-fun d!1210998 () Bool)

(declare-fun res!1664675 () Bool)

(declare-fun e!2529721 () Bool)

(assert (=> d!1210998 (=> (not res!1664675) (not e!2529721))))

(assert (=> d!1210998 (= res!1664675 (semiInverseModEq!3006 (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 (h!49039 rules!3870)))))))

(assert (=> d!1210998 (= (inv!58267 (transformation!7026 (h!49039 rules!3870))) e!2529721)))

(declare-fun b!4075746 () Bool)

(assert (=> b!4075746 (= e!2529721 (equivClasses!2905 (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 (h!49039 rules!3870)))))))

(assert (= (and d!1210998 res!1664675) b!4075746))

(declare-fun m!4684157 () Bool)

(assert (=> d!1210998 m!4684157))

(declare-fun m!4684159 () Bool)

(assert (=> b!4075746 m!4684159))

(assert (=> b!4075464 d!1210998))

(declare-fun b!4075751 () Bool)

(declare-fun e!2529724 () Bool)

(declare-fun tp!1233768 () Bool)

(assert (=> b!4075751 (= e!2529724 (and tp_is_empty!20865 tp!1233768))))

(assert (=> b!4075460 (= tp!1233722 e!2529724)))

(assert (= (and b!4075460 ((_ is Cons!43618) (t!337317 p!2988))) b!4075751))

(declare-fun b!4075762 () Bool)

(declare-fun b_free!113605 () Bool)

(declare-fun b_next!114309 () Bool)

(assert (=> b!4075762 (= b_free!113605 (not b_next!114309))))

(declare-fun tb!244821 () Bool)

(declare-fun t!337341 () Bool)

(assert (=> (and b!4075762 (= (toValue!9590 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toValue!9590 (transformation!7026 r!4213))) t!337341) tb!244821))

(declare-fun result!296864 () Bool)

(assert (= result!296864 result!296854))

(assert (=> d!1210938 t!337341))

(assert (=> d!1210978 t!337341))

(declare-fun b_and!313351 () Bool)

(declare-fun tp!1233777 () Bool)

(assert (=> b!4075762 (= tp!1233777 (and (=> t!337341 result!296864) b_and!313351))))

(declare-fun b_free!113607 () Bool)

(declare-fun b_next!114311 () Bool)

(assert (=> b!4075762 (= b_free!113607 (not b_next!114311))))

(declare-fun t!337343 () Bool)

(declare-fun tb!244823 () Bool)

(assert (=> (and b!4075762 (= (toChars!9449 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toChars!9449 (transformation!7026 r!4213))) t!337343) tb!244823))

(declare-fun result!296866 () Bool)

(assert (= result!296866 result!296848))

(assert (=> d!1210938 t!337343))

(declare-fun tp!1233778 () Bool)

(declare-fun b_and!313353 () Bool)

(assert (=> b!4075762 (= tp!1233778 (and (=> t!337343 result!296866) b_and!313353))))

(declare-fun e!2529734 () Bool)

(assert (=> b!4075762 (= e!2529734 (and tp!1233777 tp!1233778))))

(declare-fun b!4075761 () Bool)

(declare-fun tp!1233779 () Bool)

(declare-fun e!2529736 () Bool)

(assert (=> b!4075761 (= e!2529736 (and tp!1233779 (inv!58265 (tag!7886 (h!49039 (t!337318 rules!3870)))) (inv!58267 (transformation!7026 (h!49039 (t!337318 rules!3870)))) e!2529734))))

(declare-fun b!4075760 () Bool)

(declare-fun e!2529733 () Bool)

(declare-fun tp!1233780 () Bool)

(assert (=> b!4075760 (= e!2529733 (and e!2529736 tp!1233780))))

(assert (=> b!4075456 (= tp!1233717 e!2529733)))

(assert (= b!4075761 b!4075762))

(assert (= b!4075760 b!4075761))

(assert (= (and b!4075456 ((_ is Cons!43619) (t!337318 rules!3870))) b!4075760))

(declare-fun m!4684161 () Bool)

(assert (=> b!4075761 m!4684161))

(declare-fun m!4684163 () Bool)

(assert (=> b!4075761 m!4684163))

(declare-fun b!4075763 () Bool)

(declare-fun e!2529737 () Bool)

(declare-fun tp!1233781 () Bool)

(assert (=> b!4075763 (= e!2529737 (and tp_is_empty!20865 tp!1233781))))

(assert (=> b!4075452 (= tp!1233715 e!2529737)))

(assert (= (and b!4075452 ((_ is Cons!43618) (t!337317 input!3411))) b!4075763))

(declare-fun b!4075764 () Bool)

(declare-fun e!2529738 () Bool)

(declare-fun tp!1233782 () Bool)

(assert (=> b!4075764 (= e!2529738 (and tp_is_empty!20865 tp!1233782))))

(assert (=> b!4075457 (= tp!1233719 e!2529738)))

(assert (= (and b!4075457 ((_ is Cons!43618) (t!337317 suffix!1518))) b!4075764))

(declare-fun b!4075778 () Bool)

(declare-fun e!2529741 () Bool)

(declare-fun tp!1233797 () Bool)

(declare-fun tp!1233793 () Bool)

(assert (=> b!4075778 (= e!2529741 (and tp!1233797 tp!1233793))))

(declare-fun b!4075775 () Bool)

(assert (=> b!4075775 (= e!2529741 tp_is_empty!20865)))

(assert (=> b!4075458 (= tp!1233721 e!2529741)))

(declare-fun b!4075776 () Bool)

(declare-fun tp!1233794 () Bool)

(declare-fun tp!1233796 () Bool)

(assert (=> b!4075776 (= e!2529741 (and tp!1233794 tp!1233796))))

(declare-fun b!4075777 () Bool)

(declare-fun tp!1233795 () Bool)

(assert (=> b!4075777 (= e!2529741 tp!1233795)))

(assert (= (and b!4075458 ((_ is ElementMatch!11931) (regex!7026 r!4213))) b!4075775))

(assert (= (and b!4075458 ((_ is Concat!19188) (regex!7026 r!4213))) b!4075776))

(assert (= (and b!4075458 ((_ is Star!11931) (regex!7026 r!4213))) b!4075777))

(assert (= (and b!4075458 ((_ is Union!11931) (regex!7026 r!4213))) b!4075778))

(declare-fun b!4075782 () Bool)

(declare-fun e!2529742 () Bool)

(declare-fun tp!1233802 () Bool)

(declare-fun tp!1233798 () Bool)

(assert (=> b!4075782 (= e!2529742 (and tp!1233802 tp!1233798))))

(declare-fun b!4075779 () Bool)

(assert (=> b!4075779 (= e!2529742 tp_is_empty!20865)))

(assert (=> b!4075464 (= tp!1233713 e!2529742)))

(declare-fun b!4075780 () Bool)

(declare-fun tp!1233799 () Bool)

(declare-fun tp!1233801 () Bool)

(assert (=> b!4075780 (= e!2529742 (and tp!1233799 tp!1233801))))

(declare-fun b!4075781 () Bool)

(declare-fun tp!1233800 () Bool)

(assert (=> b!4075781 (= e!2529742 tp!1233800)))

(assert (= (and b!4075464 ((_ is ElementMatch!11931) (regex!7026 (h!49039 rules!3870)))) b!4075779))

(assert (= (and b!4075464 ((_ is Concat!19188) (regex!7026 (h!49039 rules!3870)))) b!4075780))

(assert (= (and b!4075464 ((_ is Star!11931) (regex!7026 (h!49039 rules!3870)))) b!4075781))

(assert (= (and b!4075464 ((_ is Union!11931) (regex!7026 (h!49039 rules!3870)))) b!4075782))

(declare-fun b_lambda!119089 () Bool)

(assert (= b_lambda!119087 (or (and b!4075468 b_free!113593 (= (toValue!9590 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 r!4213)))) (and b!4075461 b_free!113597) (and b!4075762 b_free!113605 (= (toValue!9590 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toValue!9590 (transformation!7026 r!4213)))) b_lambda!119089)))

(declare-fun b_lambda!119091 () Bool)

(assert (= b_lambda!119083 (or (and b!4075468 b_free!113595 (= (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toChars!9449 (transformation!7026 r!4213)))) (and b!4075461 b_free!113599) (and b!4075762 b_free!113607 (= (toChars!9449 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toChars!9449 (transformation!7026 r!4213)))) b_lambda!119091)))

(declare-fun b_lambda!119093 () Bool)

(assert (= b_lambda!119085 (or (and b!4075468 b_free!113593 (= (toValue!9590 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 r!4213)))) (and b!4075461 b_free!113597) (and b!4075762 b_free!113605 (= (toValue!9590 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toValue!9590 (transformation!7026 r!4213)))) b_lambda!119093)))

(check-sat (not b_next!114297) (not b!4075513) (not d!1210924) (not b!4075780) b_and!313349 (not b_lambda!119093) (not b!4075549) tp_is_empty!20865 (not b!4075555) (not d!1210938) (not b!4075527) (not b_next!114309) (not b!4075781) (not tb!244813) (not b!4075547) (not b!4075551) (not b_next!114301) (not b!4075745) b_and!313351 (not d!1210982) (not b!4075510) b_and!313353 (not d!1210992) (not b_next!114311) (not b!4075516) (not b!4075760) (not b!4075553) (not bm!288432) (not b!4075751) (not b!4075743) (not d!1210990) (not d!1210936) (not b_lambda!119091) (not b!4075519) (not d!1210988) (not b!4075550) b_and!313347 (not b!4075478) (not b!4075736) (not d!1210994) (not d!1210926) (not b!4075777) (not b!4075764) b_and!313339 (not b!4075776) (not b!4075479) (not b_next!114299) (not b!4075746) (not b!4075742) (not b!4075511) (not b_next!114303) (not b!4075739) (not bm!288435) (not tb!244817) (not b!4075763) (not b_lambda!119089) (not d!1210932) b_and!313341 (not d!1210928) (not b!4075552) (not d!1210930) (not b!4075728) (not b!4075761) (not b!4075517) (not b!4075548) (not d!1210984) (not b!4075561) (not d!1210998) (not b!4075778) (not b!4075782))
(check-sat (not b_next!114297) (not b_next!114309) b_and!313353 (not b_next!114311) b_and!313349 b_and!313347 b_and!313339 (not b_next!114299) (not b_next!114303) b_and!313341 (not b_next!114301) b_and!313351)
(get-model)

(declare-fun d!1211050 () Bool)

(declare-fun lt!1458574 () Int)

(assert (=> d!1211050 (>= lt!1458574 0)))

(declare-fun e!2529819 () Int)

(assert (=> d!1211050 (= lt!1458574 e!2529819)))

(declare-fun c!703170 () Bool)

(assert (=> d!1211050 (= c!703170 ((_ is Nil!43618) (t!337317 p!2988)))))

(assert (=> d!1211050 (= (size!32584 (t!337317 p!2988)) lt!1458574)))

(declare-fun b!4075906 () Bool)

(assert (=> b!4075906 (= e!2529819 0)))

(declare-fun b!4075907 () Bool)

(assert (=> b!4075907 (= e!2529819 (+ 1 (size!32584 (t!337317 (t!337317 p!2988)))))))

(assert (= (and d!1211050 c!703170) b!4075906))

(assert (= (and d!1211050 (not c!703170)) b!4075907))

(declare-fun m!4684247 () Bool)

(assert (=> b!4075907 m!4684247))

(assert (=> b!4075561 d!1211050))

(assert (=> d!1210926 d!1210980))

(declare-fun b!4075943 () Bool)

(declare-fun e!2529849 () Bool)

(declare-fun call!288479 () Bool)

(assert (=> b!4075943 (= e!2529849 call!288479)))

(declare-fun b!4075944 () Bool)

(declare-fun e!2529848 () Bool)

(declare-fun e!2529846 () Bool)

(assert (=> b!4075944 (= e!2529848 e!2529846)))

(declare-fun res!1664733 () Bool)

(assert (=> b!4075944 (=> (not res!1664733) (not e!2529846))))

(declare-fun call!288478 () Bool)

(assert (=> b!4075944 (= res!1664733 call!288478)))

(declare-fun b!4075945 () Bool)

(declare-fun e!2529845 () Bool)

(assert (=> b!4075945 (= e!2529845 e!2529849)))

(declare-fun res!1664732 () Bool)

(assert (=> b!4075945 (= res!1664732 (not (nullable!4198 (reg!12260 (regex!7026 r!4213)))))))

(assert (=> b!4075945 (=> (not res!1664732) (not e!2529849))))

(declare-fun b!4075946 () Bool)

(declare-fun res!1664734 () Bool)

(assert (=> b!4075946 (=> res!1664734 e!2529848)))

(assert (=> b!4075946 (= res!1664734 (not ((_ is Concat!19188) (regex!7026 r!4213))))))

(declare-fun e!2529847 () Bool)

(assert (=> b!4075946 (= e!2529847 e!2529848)))

(declare-fun d!1211052 () Bool)

(declare-fun res!1664730 () Bool)

(declare-fun e!2529851 () Bool)

(assert (=> d!1211052 (=> res!1664730 e!2529851)))

(assert (=> d!1211052 (= res!1664730 ((_ is ElementMatch!11931) (regex!7026 r!4213)))))

(assert (=> d!1211052 (= (validRegex!5398 (regex!7026 r!4213)) e!2529851)))

(declare-fun bm!288473 () Bool)

(declare-fun call!288480 () Bool)

(declare-fun c!703181 () Bool)

(assert (=> bm!288473 (= call!288480 (validRegex!5398 (ite c!703181 (regTwo!24375 (regex!7026 r!4213)) (regTwo!24374 (regex!7026 r!4213)))))))

(declare-fun b!4075947 () Bool)

(assert (=> b!4075947 (= e!2529851 e!2529845)))

(declare-fun c!703182 () Bool)

(assert (=> b!4075947 (= c!703182 ((_ is Star!11931) (regex!7026 r!4213)))))

(declare-fun b!4075948 () Bool)

(declare-fun res!1664731 () Bool)

(declare-fun e!2529850 () Bool)

(assert (=> b!4075948 (=> (not res!1664731) (not e!2529850))))

(assert (=> b!4075948 (= res!1664731 call!288478)))

(assert (=> b!4075948 (= e!2529847 e!2529850)))

(declare-fun bm!288474 () Bool)

(assert (=> bm!288474 (= call!288479 (validRegex!5398 (ite c!703182 (reg!12260 (regex!7026 r!4213)) (ite c!703181 (regOne!24375 (regex!7026 r!4213)) (regOne!24374 (regex!7026 r!4213))))))))

(declare-fun b!4075949 () Bool)

(assert (=> b!4075949 (= e!2529846 call!288480)))

(declare-fun b!4075950 () Bool)

(assert (=> b!4075950 (= e!2529845 e!2529847)))

(assert (=> b!4075950 (= c!703181 ((_ is Union!11931) (regex!7026 r!4213)))))

(declare-fun bm!288475 () Bool)

(assert (=> bm!288475 (= call!288478 call!288479)))

(declare-fun b!4075951 () Bool)

(assert (=> b!4075951 (= e!2529850 call!288480)))

(assert (= (and d!1211052 (not res!1664730)) b!4075947))

(assert (= (and b!4075947 c!703182) b!4075945))

(assert (= (and b!4075947 (not c!703182)) b!4075950))

(assert (= (and b!4075945 res!1664732) b!4075943))

(assert (= (and b!4075950 c!703181) b!4075948))

(assert (= (and b!4075950 (not c!703181)) b!4075946))

(assert (= (and b!4075948 res!1664731) b!4075951))

(assert (= (and b!4075946 (not res!1664734)) b!4075944))

(assert (= (and b!4075944 res!1664733) b!4075949))

(assert (= (or b!4075951 b!4075949) bm!288473))

(assert (= (or b!4075948 b!4075944) bm!288475))

(assert (= (or b!4075943 bm!288475) bm!288474))

(declare-fun m!4684259 () Bool)

(assert (=> b!4075945 m!4684259))

(declare-fun m!4684261 () Bool)

(assert (=> bm!288473 m!4684261))

(declare-fun m!4684263 () Bool)

(assert (=> bm!288474 m!4684263))

(assert (=> d!1210926 d!1211052))

(declare-fun d!1211060 () Bool)

(declare-fun nullableFct!1176 (Regex!11931) Bool)

(assert (=> d!1211060 (= (nullable!4198 (regex!7026 (h!49039 rules!3870))) (nullableFct!1176 (regex!7026 (h!49039 rules!3870))))))

(declare-fun bs!592714 () Bool)

(assert (= bs!592714 d!1211060))

(declare-fun m!4684265 () Bool)

(assert (=> bs!592714 m!4684265))

(assert (=> b!4075743 d!1211060))

(declare-fun b!4075952 () Bool)

(declare-fun e!2529852 () Option!9434)

(declare-fun lt!1458577 () Option!9434)

(declare-fun lt!1458578 () Option!9434)

(assert (=> b!4075952 (= e!2529852 (ite (and ((_ is None!9433) lt!1458577) ((_ is None!9433) lt!1458578)) None!9433 (ite ((_ is None!9433) lt!1458578) lt!1458577 (ite ((_ is None!9433) lt!1458577) lt!1458578 (ite (>= (size!32583 (_1!24431 (v!39877 lt!1458577))) (size!32583 (_1!24431 (v!39877 lt!1458578)))) lt!1458577 lt!1458578)))))))

(declare-fun call!288481 () Option!9434)

(assert (=> b!4075952 (= lt!1458577 call!288481)))

(assert (=> b!4075952 (= lt!1458578 (maxPrefix!3907 thiss!26199 (t!337318 (t!337318 rules!3870)) input!3411))))

(declare-fun b!4075954 () Bool)

(declare-fun e!2529853 () Bool)

(declare-fun e!2529854 () Bool)

(assert (=> b!4075954 (= e!2529853 e!2529854)))

(declare-fun res!1664741 () Bool)

(assert (=> b!4075954 (=> (not res!1664741) (not e!2529854))))

(declare-fun lt!1458579 () Option!9434)

(assert (=> b!4075954 (= res!1664741 (isDefined!7150 lt!1458579))))

(declare-fun b!4075955 () Bool)

(declare-fun res!1664736 () Bool)

(assert (=> b!4075955 (=> (not res!1664736) (not e!2529854))))

(assert (=> b!4075955 (= res!1664736 (< (size!32584 (_2!24431 (get!14303 lt!1458579))) (size!32584 input!3411)))))

(declare-fun bm!288476 () Bool)

(assert (=> bm!288476 (= call!288481 (maxPrefixOneRule!2901 thiss!26199 (h!49039 (t!337318 rules!3870)) input!3411))))

(declare-fun b!4075956 () Bool)

(declare-fun res!1664737 () Bool)

(assert (=> b!4075956 (=> (not res!1664737) (not e!2529854))))

(assert (=> b!4075956 (= res!1664737 (= (value!220893 (_1!24431 (get!14303 lt!1458579))) (apply!10209 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458579)))) (seqFromList!5243 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458579)))))))))

(declare-fun b!4075957 () Bool)

(declare-fun res!1664735 () Bool)

(assert (=> b!4075957 (=> (not res!1664735) (not e!2529854))))

(assert (=> b!4075957 (= res!1664735 (= (++!11432 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458579)))) (_2!24431 (get!14303 lt!1458579))) input!3411))))

(declare-fun b!4075958 () Bool)

(assert (=> b!4075958 (= e!2529854 (contains!8693 (t!337318 rules!3870) (rule!10130 (_1!24431 (get!14303 lt!1458579)))))))

(declare-fun b!4075959 () Bool)

(assert (=> b!4075959 (= e!2529852 call!288481)))

(declare-fun b!4075960 () Bool)

(declare-fun res!1664738 () Bool)

(assert (=> b!4075960 (=> (not res!1664738) (not e!2529854))))

(assert (=> b!4075960 (= res!1664738 (= (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458579)))) (originalCharacters!7620 (_1!24431 (get!14303 lt!1458579)))))))

(declare-fun b!4075953 () Bool)

(declare-fun res!1664739 () Bool)

(assert (=> b!4075953 (=> (not res!1664739) (not e!2529854))))

(assert (=> b!4075953 (= res!1664739 (matchR!5876 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458579)))) (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458579))))))))

(declare-fun d!1211062 () Bool)

(assert (=> d!1211062 e!2529853))

(declare-fun res!1664740 () Bool)

(assert (=> d!1211062 (=> res!1664740 e!2529853)))

(assert (=> d!1211062 (= res!1664740 (isEmpty!26047 lt!1458579))))

(assert (=> d!1211062 (= lt!1458579 e!2529852)))

(declare-fun c!703183 () Bool)

(assert (=> d!1211062 (= c!703183 (and ((_ is Cons!43619) (t!337318 rules!3870)) ((_ is Nil!43619) (t!337318 (t!337318 rules!3870)))))))

(declare-fun lt!1458582 () Unit!63163)

(declare-fun lt!1458581 () Unit!63163)

(assert (=> d!1211062 (= lt!1458582 lt!1458581)))

(assert (=> d!1211062 (isPrefix!4101 input!3411 input!3411)))

(assert (=> d!1211062 (= lt!1458581 (lemmaIsPrefixRefl!2652 input!3411 input!3411))))

(assert (=> d!1211062 (rulesValidInductive!2581 thiss!26199 (t!337318 rules!3870))))

(assert (=> d!1211062 (= (maxPrefix!3907 thiss!26199 (t!337318 rules!3870) input!3411) lt!1458579)))

(assert (= (and d!1211062 c!703183) b!4075959))

(assert (= (and d!1211062 (not c!703183)) b!4075952))

(assert (= (or b!4075959 b!4075952) bm!288476))

(assert (= (and d!1211062 (not res!1664740)) b!4075954))

(assert (= (and b!4075954 res!1664741) b!4075960))

(assert (= (and b!4075960 res!1664738) b!4075955))

(assert (= (and b!4075955 res!1664736) b!4075957))

(assert (= (and b!4075957 res!1664735) b!4075956))

(assert (= (and b!4075956 res!1664737) b!4075953))

(assert (= (and b!4075953 res!1664739) b!4075958))

(declare-fun m!4684269 () Bool)

(assert (=> b!4075953 m!4684269))

(declare-fun m!4684271 () Bool)

(assert (=> b!4075953 m!4684271))

(assert (=> b!4075953 m!4684271))

(declare-fun m!4684273 () Bool)

(assert (=> b!4075953 m!4684273))

(assert (=> b!4075953 m!4684273))

(declare-fun m!4684275 () Bool)

(assert (=> b!4075953 m!4684275))

(assert (=> b!4075958 m!4684269))

(declare-fun m!4684277 () Bool)

(assert (=> b!4075958 m!4684277))

(assert (=> b!4075957 m!4684269))

(assert (=> b!4075957 m!4684271))

(assert (=> b!4075957 m!4684271))

(assert (=> b!4075957 m!4684273))

(assert (=> b!4075957 m!4684273))

(declare-fun m!4684279 () Bool)

(assert (=> b!4075957 m!4684279))

(declare-fun m!4684281 () Bool)

(assert (=> b!4075952 m!4684281))

(declare-fun m!4684283 () Bool)

(assert (=> d!1211062 m!4684283))

(assert (=> d!1211062 m!4683977))

(assert (=> d!1211062 m!4683979))

(declare-fun m!4684285 () Bool)

(assert (=> d!1211062 m!4684285))

(declare-fun m!4684287 () Bool)

(assert (=> b!4075954 m!4684287))

(assert (=> b!4075955 m!4684269))

(declare-fun m!4684289 () Bool)

(assert (=> b!4075955 m!4684289))

(assert (=> b!4075955 m!4683987))

(assert (=> b!4075956 m!4684269))

(declare-fun m!4684291 () Bool)

(assert (=> b!4075956 m!4684291))

(assert (=> b!4075956 m!4684291))

(declare-fun m!4684293 () Bool)

(assert (=> b!4075956 m!4684293))

(assert (=> b!4075960 m!4684269))

(assert (=> b!4075960 m!4684271))

(assert (=> b!4075960 m!4684271))

(assert (=> b!4075960 m!4684273))

(declare-fun m!4684295 () Bool)

(assert (=> bm!288476 m!4684295))

(assert (=> b!4075547 d!1211062))

(declare-fun b!4075965 () Bool)

(declare-fun e!2529863 () Bool)

(declare-fun lt!1458583 () Bool)

(declare-fun call!288482 () Bool)

(assert (=> b!4075965 (= e!2529863 (= lt!1458583 call!288482))))

(declare-fun b!4075966 () Bool)

(declare-fun res!1664744 () Bool)

(declare-fun e!2529859 () Bool)

(assert (=> b!4075966 (=> (not res!1664744) (not e!2529859))))

(assert (=> b!4075966 (= res!1664744 (isEmpty!26045 (tail!6343 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))))))))

(declare-fun bm!288477 () Bool)

(assert (=> bm!288477 (= call!288482 (isEmpty!26045 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))))))

(declare-fun b!4075967 () Bool)

(declare-fun e!2529860 () Bool)

(assert (=> b!4075967 (= e!2529860 (nullable!4198 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))))))

(declare-fun b!4075968 () Bool)

(declare-fun res!1664751 () Bool)

(declare-fun e!2529857 () Bool)

(assert (=> b!4075968 (=> res!1664751 e!2529857)))

(assert (=> b!4075968 (= res!1664751 (not ((_ is ElementMatch!11931) (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))))))

(declare-fun e!2529862 () Bool)

(assert (=> b!4075968 (= e!2529862 e!2529857)))

(declare-fun d!1211066 () Bool)

(assert (=> d!1211066 e!2529863))

(declare-fun c!703186 () Bool)

(assert (=> d!1211066 (= c!703186 ((_ is EmptyExpr!11931) (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))))))

(assert (=> d!1211066 (= lt!1458583 e!2529860)))

(declare-fun c!703184 () Bool)

(assert (=> d!1211066 (= c!703184 (isEmpty!26045 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))))))

(assert (=> d!1211066 (validRegex!5398 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))))

(assert (=> d!1211066 (= (matchR!5876 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))) (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))) lt!1458583)))

(declare-fun b!4075969 () Bool)

(declare-fun e!2529861 () Bool)

(assert (=> b!4075969 (= e!2529861 (not (= (head!8609 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))) (c!703090 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))))))))

(declare-fun b!4075970 () Bool)

(assert (=> b!4075970 (= e!2529863 e!2529862)))

(declare-fun c!703185 () Bool)

(assert (=> b!4075970 (= c!703185 ((_ is EmptyLang!11931) (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))))))

(declare-fun b!4075971 () Bool)

(declare-fun e!2529858 () Bool)

(assert (=> b!4075971 (= e!2529858 e!2529861)))

(declare-fun res!1664745 () Bool)

(assert (=> b!4075971 (=> res!1664745 e!2529861)))

(assert (=> b!4075971 (= res!1664745 call!288482)))

(declare-fun b!4075972 () Bool)

(declare-fun res!1664750 () Bool)

(assert (=> b!4075972 (=> res!1664750 e!2529861)))

(assert (=> b!4075972 (= res!1664750 (not (isEmpty!26045 (tail!6343 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))))))))

(declare-fun b!4075973 () Bool)

(assert (=> b!4075973 (= e!2529859 (= (head!8609 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))) (c!703090 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))))))

(declare-fun b!4075974 () Bool)

(assert (=> b!4075974 (= e!2529862 (not lt!1458583))))

(declare-fun b!4075975 () Bool)

(assert (=> b!4075975 (= e!2529860 (matchR!5876 (derivativeStep!3599 (regex!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))) (head!8609 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))))) (tail!6343 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))))))))

(declare-fun b!4075976 () Bool)

(declare-fun res!1664747 () Bool)

(assert (=> b!4075976 (=> (not res!1664747) (not e!2529859))))

(assert (=> b!4075976 (= res!1664747 (not call!288482))))

(declare-fun b!4075977 () Bool)

(declare-fun res!1664749 () Bool)

(assert (=> b!4075977 (=> res!1664749 e!2529857)))

(assert (=> b!4075977 (= res!1664749 e!2529859)))

(declare-fun res!1664746 () Bool)

(assert (=> b!4075977 (=> (not res!1664746) (not e!2529859))))

(assert (=> b!4075977 (= res!1664746 lt!1458583)))

(declare-fun b!4075978 () Bool)

(assert (=> b!4075978 (= e!2529857 e!2529858)))

(declare-fun res!1664748 () Bool)

(assert (=> b!4075978 (=> (not res!1664748) (not e!2529858))))

(assert (=> b!4075978 (= res!1664748 (not lt!1458583))))

(assert (= (and d!1211066 c!703184) b!4075967))

(assert (= (and d!1211066 (not c!703184)) b!4075975))

(assert (= (and d!1211066 c!703186) b!4075965))

(assert (= (and d!1211066 (not c!703186)) b!4075970))

(assert (= (and b!4075970 c!703185) b!4075974))

(assert (= (and b!4075970 (not c!703185)) b!4075968))

(assert (= (and b!4075968 (not res!1664751)) b!4075977))

(assert (= (and b!4075977 res!1664746) b!4075976))

(assert (= (and b!4075976 res!1664747) b!4075966))

(assert (= (and b!4075966 res!1664744) b!4075973))

(assert (= (and b!4075977 (not res!1664749)) b!4075978))

(assert (= (and b!4075978 res!1664748) b!4075971))

(assert (= (and b!4075971 (not res!1664745)) b!4075972))

(assert (= (and b!4075972 (not res!1664750)) b!4075969))

(assert (= (or b!4075965 b!4075976 b!4075971) bm!288477))

(assert (=> b!4075972 m!4683965))

(declare-fun m!4684297 () Bool)

(assert (=> b!4075972 m!4684297))

(assert (=> b!4075972 m!4684297))

(declare-fun m!4684299 () Bool)

(assert (=> b!4075972 m!4684299))

(assert (=> b!4075973 m!4683965))

(declare-fun m!4684301 () Bool)

(assert (=> b!4075973 m!4684301))

(assert (=> b!4075966 m!4683965))

(assert (=> b!4075966 m!4684297))

(assert (=> b!4075966 m!4684297))

(assert (=> b!4075966 m!4684299))

(assert (=> b!4075975 m!4683965))

(assert (=> b!4075975 m!4684301))

(assert (=> b!4075975 m!4684301))

(declare-fun m!4684303 () Bool)

(assert (=> b!4075975 m!4684303))

(assert (=> b!4075975 m!4683965))

(assert (=> b!4075975 m!4684297))

(assert (=> b!4075975 m!4684303))

(assert (=> b!4075975 m!4684297))

(declare-fun m!4684307 () Bool)

(assert (=> b!4075975 m!4684307))

(declare-fun m!4684309 () Bool)

(assert (=> b!4075967 m!4684309))

(assert (=> d!1211066 m!4683965))

(declare-fun m!4684311 () Bool)

(assert (=> d!1211066 m!4684311))

(declare-fun m!4684313 () Bool)

(assert (=> d!1211066 m!4684313))

(assert (=> b!4075969 m!4683965))

(assert (=> b!4075969 m!4684301))

(assert (=> bm!288477 m!4683965))

(assert (=> bm!288477 m!4684311))

(assert (=> b!4075548 d!1211066))

(declare-fun d!1211070 () Bool)

(assert (=> d!1211070 (= (get!14303 lt!1458517) (v!39877 lt!1458517))))

(assert (=> b!4075548 d!1211070))

(declare-fun d!1211074 () Bool)

(declare-fun list!16229 (Conc!13237) List!43742)

(assert (=> d!1211074 (= (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))) (list!16229 (c!703091 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))))))

(declare-fun bs!592717 () Bool)

(assert (= bs!592717 d!1211074))

(declare-fun m!4684315 () Bool)

(assert (=> bs!592717 m!4684315))

(assert (=> b!4075548 d!1211074))

(declare-fun d!1211076 () Bool)

(declare-fun lt!1458588 () BalanceConc!26068)

(assert (=> d!1211076 (= (list!16228 lt!1458588) (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517))))))

(assert (=> d!1211076 (= lt!1458588 (dynLambda!18535 (toChars!9449 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))) (value!220893 (_1!24431 (get!14303 lt!1458517)))))))

(assert (=> d!1211076 (= (charsOf!4814 (_1!24431 (get!14303 lt!1458517))) lt!1458588)))

(declare-fun b_lambda!119097 () Bool)

(assert (=> (not b_lambda!119097) (not d!1211076)))

(declare-fun t!337352 () Bool)

(declare-fun tb!244831 () Bool)

(assert (=> (and b!4075468 (= (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toChars!9449 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337352) tb!244831))

(declare-fun b!4075989 () Bool)

(declare-fun e!2529870 () Bool)

(declare-fun tp!1233803 () Bool)

(assert (=> b!4075989 (= e!2529870 (and (inv!58270 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))) (value!220893 (_1!24431 (get!14303 lt!1458517)))))) tp!1233803))))

(declare-fun result!296876 () Bool)

(assert (=> tb!244831 (= result!296876 (and (inv!58271 (dynLambda!18535 (toChars!9449 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))) (value!220893 (_1!24431 (get!14303 lt!1458517))))) e!2529870))))

(assert (= tb!244831 b!4075989))

(declare-fun m!4684317 () Bool)

(assert (=> b!4075989 m!4684317))

(declare-fun m!4684319 () Bool)

(assert (=> tb!244831 m!4684319))

(assert (=> d!1211076 t!337352))

(declare-fun b_and!313361 () Bool)

(assert (= b_and!313339 (and (=> t!337352 result!296876) b_and!313361)))

(declare-fun tb!244833 () Bool)

(declare-fun t!337354 () Bool)

(assert (=> (and b!4075461 (= (toChars!9449 (transformation!7026 r!4213)) (toChars!9449 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337354) tb!244833))

(declare-fun result!296878 () Bool)

(assert (= result!296878 result!296876))

(assert (=> d!1211076 t!337354))

(declare-fun b_and!313363 () Bool)

(assert (= b_and!313341 (and (=> t!337354 result!296878) b_and!313363)))

(declare-fun tb!244835 () Bool)

(declare-fun t!337356 () Bool)

(assert (=> (and b!4075762 (= (toChars!9449 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toChars!9449 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337356) tb!244835))

(declare-fun result!296880 () Bool)

(assert (= result!296880 result!296876))

(assert (=> d!1211076 t!337356))

(declare-fun b_and!313365 () Bool)

(assert (= b_and!313353 (and (=> t!337356 result!296880) b_and!313365)))

(declare-fun m!4684321 () Bool)

(assert (=> d!1211076 m!4684321))

(declare-fun m!4684323 () Bool)

(assert (=> d!1211076 m!4684323))

(assert (=> b!4075548 d!1211076))

(declare-fun d!1211078 () Bool)

(assert (=> d!1211078 (= (head!8609 p!2988) (h!49038 p!2988))))

(assert (=> b!4075517 d!1211078))

(declare-fun bs!592719 () Bool)

(declare-fun d!1211082 () Bool)

(assert (= bs!592719 (and d!1211082 d!1210938)))

(declare-fun lambda!127687 () Int)

(assert (=> bs!592719 (= lambda!127687 lambda!127675)))

(assert (=> d!1211082 true))

(assert (=> d!1211082 (< (dynLambda!18534 order!22793 (toChars!9449 (transformation!7026 r!4213))) (dynLambda!18533 order!22791 lambda!127687))))

(assert (=> d!1211082 true))

(assert (=> d!1211082 (< (dynLambda!18532 order!22789 (toValue!9590 (transformation!7026 r!4213))) (dynLambda!18533 order!22791 lambda!127687))))

(declare-fun Forall!1503 (Int) Bool)

(assert (=> d!1211082 (= (semiInverseModEq!3006 (toChars!9449 (transformation!7026 r!4213)) (toValue!9590 (transformation!7026 r!4213))) (Forall!1503 lambda!127687))))

(declare-fun bs!592720 () Bool)

(assert (= bs!592720 d!1211082))

(declare-fun m!4684333 () Bool)

(assert (=> bs!592720 m!4684333))

(assert (=> d!1210988 d!1211082))

(declare-fun d!1211086 () Bool)

(declare-fun isBalanced!3692 (Conc!13237) Bool)

(assert (=> d!1211086 (= (inv!58271 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))) (isBalanced!3692 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))))

(declare-fun bs!592721 () Bool)

(assert (= bs!592721 d!1211086))

(declare-fun m!4684335 () Bool)

(assert (=> bs!592721 m!4684335))

(assert (=> tb!244813 d!1211086))

(declare-fun b!4076004 () Bool)

(declare-fun e!2529886 () Bool)

(declare-fun lt!1458596 () Bool)

(declare-fun call!288483 () Bool)

(assert (=> b!4076004 (= e!2529886 (= lt!1458596 call!288483))))

(declare-fun b!4076005 () Bool)

(declare-fun res!1664770 () Bool)

(declare-fun e!2529882 () Bool)

(assert (=> b!4076005 (=> (not res!1664770) (not e!2529882))))

(assert (=> b!4076005 (= res!1664770 (isEmpty!26045 (tail!6343 (tail!6343 p!2988))))))

(declare-fun bm!288478 () Bool)

(assert (=> bm!288478 (= call!288483 (isEmpty!26045 (tail!6343 p!2988)))))

(declare-fun b!4076006 () Bool)

(declare-fun e!2529883 () Bool)

(assert (=> b!4076006 (= e!2529883 (nullable!4198 (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988))))))

(declare-fun b!4076007 () Bool)

(declare-fun res!1664777 () Bool)

(declare-fun e!2529880 () Bool)

(assert (=> b!4076007 (=> res!1664777 e!2529880)))

(assert (=> b!4076007 (= res!1664777 (not ((_ is ElementMatch!11931) (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988)))))))

(declare-fun e!2529885 () Bool)

(assert (=> b!4076007 (= e!2529885 e!2529880)))

(declare-fun d!1211088 () Bool)

(assert (=> d!1211088 e!2529886))

(declare-fun c!703189 () Bool)

(assert (=> d!1211088 (= c!703189 ((_ is EmptyExpr!11931) (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988))))))

(assert (=> d!1211088 (= lt!1458596 e!2529883)))

(declare-fun c!703187 () Bool)

(assert (=> d!1211088 (= c!703187 (isEmpty!26045 (tail!6343 p!2988)))))

(assert (=> d!1211088 (validRegex!5398 (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988)))))

(assert (=> d!1211088 (= (matchR!5876 (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988)) (tail!6343 p!2988)) lt!1458596)))

(declare-fun b!4076008 () Bool)

(declare-fun e!2529884 () Bool)

(assert (=> b!4076008 (= e!2529884 (not (= (head!8609 (tail!6343 p!2988)) (c!703090 (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988))))))))

(declare-fun b!4076009 () Bool)

(assert (=> b!4076009 (= e!2529886 e!2529885)))

(declare-fun c!703188 () Bool)

(assert (=> b!4076009 (= c!703188 ((_ is EmptyLang!11931) (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988))))))

(declare-fun b!4076010 () Bool)

(declare-fun e!2529881 () Bool)

(assert (=> b!4076010 (= e!2529881 e!2529884)))

(declare-fun res!1664771 () Bool)

(assert (=> b!4076010 (=> res!1664771 e!2529884)))

(assert (=> b!4076010 (= res!1664771 call!288483)))

(declare-fun b!4076011 () Bool)

(declare-fun res!1664776 () Bool)

(assert (=> b!4076011 (=> res!1664776 e!2529884)))

(assert (=> b!4076011 (= res!1664776 (not (isEmpty!26045 (tail!6343 (tail!6343 p!2988)))))))

(declare-fun b!4076012 () Bool)

(assert (=> b!4076012 (= e!2529882 (= (head!8609 (tail!6343 p!2988)) (c!703090 (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988)))))))

(declare-fun b!4076013 () Bool)

(assert (=> b!4076013 (= e!2529885 (not lt!1458596))))

(declare-fun b!4076014 () Bool)

(assert (=> b!4076014 (= e!2529883 (matchR!5876 (derivativeStep!3599 (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988)) (head!8609 (tail!6343 p!2988))) (tail!6343 (tail!6343 p!2988))))))

(declare-fun b!4076015 () Bool)

(declare-fun res!1664773 () Bool)

(assert (=> b!4076015 (=> (not res!1664773) (not e!2529882))))

(assert (=> b!4076015 (= res!1664773 (not call!288483))))

(declare-fun b!4076016 () Bool)

(declare-fun res!1664775 () Bool)

(assert (=> b!4076016 (=> res!1664775 e!2529880)))

(assert (=> b!4076016 (= res!1664775 e!2529882)))

(declare-fun res!1664772 () Bool)

(assert (=> b!4076016 (=> (not res!1664772) (not e!2529882))))

(assert (=> b!4076016 (= res!1664772 lt!1458596)))

(declare-fun b!4076017 () Bool)

(assert (=> b!4076017 (= e!2529880 e!2529881)))

(declare-fun res!1664774 () Bool)

(assert (=> b!4076017 (=> (not res!1664774) (not e!2529881))))

(assert (=> b!4076017 (= res!1664774 (not lt!1458596))))

(assert (= (and d!1211088 c!703187) b!4076006))

(assert (= (and d!1211088 (not c!703187)) b!4076014))

(assert (= (and d!1211088 c!703189) b!4076004))

(assert (= (and d!1211088 (not c!703189)) b!4076009))

(assert (= (and b!4076009 c!703188) b!4076013))

(assert (= (and b!4076009 (not c!703188)) b!4076007))

(assert (= (and b!4076007 (not res!1664777)) b!4076016))

(assert (= (and b!4076016 res!1664772) b!4076015))

(assert (= (and b!4076015 res!1664773) b!4076005))

(assert (= (and b!4076005 res!1664770) b!4076012))

(assert (= (and b!4076016 (not res!1664775)) b!4076017))

(assert (= (and b!4076017 res!1664774) b!4076010))

(assert (= (and b!4076010 (not res!1664771)) b!4076011))

(assert (= (and b!4076011 (not res!1664776)) b!4076008))

(assert (= (or b!4076004 b!4076015 b!4076010) bm!288478))

(assert (=> b!4076011 m!4683945))

(declare-fun m!4684341 () Bool)

(assert (=> b!4076011 m!4684341))

(assert (=> b!4076011 m!4684341))

(declare-fun m!4684343 () Bool)

(assert (=> b!4076011 m!4684343))

(assert (=> b!4076012 m!4683945))

(declare-fun m!4684345 () Bool)

(assert (=> b!4076012 m!4684345))

(assert (=> b!4076005 m!4683945))

(assert (=> b!4076005 m!4684341))

(assert (=> b!4076005 m!4684341))

(assert (=> b!4076005 m!4684343))

(assert (=> b!4076014 m!4683945))

(assert (=> b!4076014 m!4684345))

(assert (=> b!4076014 m!4683951))

(assert (=> b!4076014 m!4684345))

(declare-fun m!4684347 () Bool)

(assert (=> b!4076014 m!4684347))

(assert (=> b!4076014 m!4683945))

(assert (=> b!4076014 m!4684341))

(assert (=> b!4076014 m!4684347))

(assert (=> b!4076014 m!4684341))

(declare-fun m!4684349 () Bool)

(assert (=> b!4076014 m!4684349))

(assert (=> b!4076006 m!4683951))

(declare-fun m!4684353 () Bool)

(assert (=> b!4076006 m!4684353))

(assert (=> d!1211088 m!4683945))

(assert (=> d!1211088 m!4683947))

(assert (=> d!1211088 m!4683951))

(declare-fun m!4684355 () Bool)

(assert (=> d!1211088 m!4684355))

(assert (=> b!4076008 m!4683945))

(assert (=> b!4076008 m!4684345))

(assert (=> bm!288478 m!4683945))

(assert (=> bm!288478 m!4683947))

(assert (=> b!4075519 d!1211088))

(declare-fun b!4076058 () Bool)

(declare-fun c!703206 () Bool)

(assert (=> b!4076058 (= c!703206 ((_ is Union!11931) (regex!7026 r!4213)))))

(declare-fun e!2529909 () Regex!11931)

(declare-fun e!2529907 () Regex!11931)

(assert (=> b!4076058 (= e!2529909 e!2529907)))

(declare-fun bm!288488 () Bool)

(declare-fun call!288495 () Regex!11931)

(declare-fun call!288496 () Regex!11931)

(assert (=> bm!288488 (= call!288495 call!288496)))

(declare-fun b!4076059 () Bool)

(declare-fun e!2529910 () Regex!11931)

(assert (=> b!4076059 (= e!2529910 (Concat!19188 call!288495 (regex!7026 r!4213)))))

(declare-fun b!4076060 () Bool)

(assert (=> b!4076060 (= e!2529907 e!2529910)))

(declare-fun c!703204 () Bool)

(assert (=> b!4076060 (= c!703204 ((_ is Star!11931) (regex!7026 r!4213)))))

(declare-fun e!2529908 () Regex!11931)

(declare-fun b!4076061 () Bool)

(declare-fun call!288493 () Regex!11931)

(declare-fun call!288494 () Regex!11931)

(assert (=> b!4076061 (= e!2529908 (Union!11931 (Concat!19188 call!288494 (regTwo!24374 (regex!7026 r!4213))) call!288493))))

(declare-fun b!4076062 () Bool)

(declare-fun e!2529906 () Regex!11931)

(assert (=> b!4076062 (= e!2529906 EmptyLang!11931)))

(declare-fun b!4076063 () Bool)

(assert (=> b!4076063 (= e!2529909 (ite (= (head!8609 p!2988) (c!703090 (regex!7026 r!4213))) EmptyExpr!11931 EmptyLang!11931))))

(declare-fun bm!288489 () Bool)

(assert (=> bm!288489 (= call!288493 (derivativeStep!3599 (ite c!703206 (regTwo!24375 (regex!7026 r!4213)) (regTwo!24374 (regex!7026 r!4213))) (head!8609 p!2988)))))

(declare-fun bm!288490 () Bool)

(assert (=> bm!288490 (= call!288494 call!288495)))

(declare-fun d!1211094 () Bool)

(declare-fun lt!1458614 () Regex!11931)

(assert (=> d!1211094 (validRegex!5398 lt!1458614)))

(assert (=> d!1211094 (= lt!1458614 e!2529906)))

(declare-fun c!703205 () Bool)

(assert (=> d!1211094 (= c!703205 (or ((_ is EmptyExpr!11931) (regex!7026 r!4213)) ((_ is EmptyLang!11931) (regex!7026 r!4213))))))

(assert (=> d!1211094 (validRegex!5398 (regex!7026 r!4213))))

(assert (=> d!1211094 (= (derivativeStep!3599 (regex!7026 r!4213) (head!8609 p!2988)) lt!1458614)))

(declare-fun b!4076057 () Bool)

(assert (=> b!4076057 (= e!2529908 (Union!11931 (Concat!19188 call!288494 (regTwo!24374 (regex!7026 r!4213))) EmptyLang!11931))))

(declare-fun b!4076064 () Bool)

(assert (=> b!4076064 (= e!2529907 (Union!11931 call!288496 call!288493))))

(declare-fun b!4076065 () Bool)

(assert (=> b!4076065 (= e!2529906 e!2529909)))

(declare-fun c!703208 () Bool)

(assert (=> b!4076065 (= c!703208 ((_ is ElementMatch!11931) (regex!7026 r!4213)))))

(declare-fun bm!288491 () Bool)

(assert (=> bm!288491 (= call!288496 (derivativeStep!3599 (ite c!703206 (regOne!24375 (regex!7026 r!4213)) (ite c!703204 (reg!12260 (regex!7026 r!4213)) (regOne!24374 (regex!7026 r!4213)))) (head!8609 p!2988)))))

(declare-fun b!4076066 () Bool)

(declare-fun c!703207 () Bool)

(assert (=> b!4076066 (= c!703207 (nullable!4198 (regOne!24374 (regex!7026 r!4213))))))

(assert (=> b!4076066 (= e!2529910 e!2529908)))

(assert (= (and d!1211094 c!703205) b!4076062))

(assert (= (and d!1211094 (not c!703205)) b!4076065))

(assert (= (and b!4076065 c!703208) b!4076063))

(assert (= (and b!4076065 (not c!703208)) b!4076058))

(assert (= (and b!4076058 c!703206) b!4076064))

(assert (= (and b!4076058 (not c!703206)) b!4076060))

(assert (= (and b!4076060 c!703204) b!4076059))

(assert (= (and b!4076060 (not c!703204)) b!4076066))

(assert (= (and b!4076066 c!703207) b!4076061))

(assert (= (and b!4076066 (not c!703207)) b!4076057))

(assert (= (or b!4076061 b!4076057) bm!288490))

(assert (= (or b!4076059 bm!288490) bm!288488))

(assert (= (or b!4076064 bm!288488) bm!288491))

(assert (= (or b!4076064 b!4076061) bm!288489))

(assert (=> bm!288489 m!4683949))

(declare-fun m!4684415 () Bool)

(assert (=> bm!288489 m!4684415))

(declare-fun m!4684419 () Bool)

(assert (=> d!1211094 m!4684419))

(assert (=> d!1211094 m!4683957))

(assert (=> bm!288491 m!4683949))

(declare-fun m!4684423 () Bool)

(assert (=> bm!288491 m!4684423))

(declare-fun m!4684425 () Bool)

(assert (=> b!4076066 m!4684425))

(assert (=> b!4075519 d!1211094))

(assert (=> b!4075519 d!1211078))

(declare-fun d!1211120 () Bool)

(assert (=> d!1211120 (= (tail!6343 p!2988) (t!337317 p!2988))))

(assert (=> b!4075519 d!1211120))

(declare-fun d!1211124 () Bool)

(declare-fun c!703215 () Bool)

(assert (=> d!1211124 (= c!703215 ((_ is Node!13237) (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))))

(declare-fun e!2529924 () Bool)

(assert (=> d!1211124 (= (inv!58270 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))) e!2529924)))

(declare-fun b!4076091 () Bool)

(declare-fun inv!58274 (Conc!13237) Bool)

(assert (=> b!4076091 (= e!2529924 (inv!58274 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))))

(declare-fun b!4076092 () Bool)

(declare-fun e!2529925 () Bool)

(assert (=> b!4076092 (= e!2529924 e!2529925)))

(declare-fun res!1664800 () Bool)

(assert (=> b!4076092 (= res!1664800 (not ((_ is Leaf!20465) (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))))))

(assert (=> b!4076092 (=> res!1664800 e!2529925)))

(declare-fun b!4076093 () Bool)

(declare-fun inv!58275 (Conc!13237) Bool)

(assert (=> b!4076093 (= e!2529925 (inv!58275 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))))

(assert (= (and d!1211124 c!703215) b!4076091))

(assert (= (and d!1211124 (not c!703215)) b!4076092))

(assert (= (and b!4076092 (not res!1664800)) b!4076093))

(declare-fun m!4684457 () Bool)

(assert (=> b!4076091 m!4684457))

(declare-fun m!4684459 () Bool)

(assert (=> b!4076093 m!4684459))

(assert (=> b!4075728 d!1211124))

(declare-fun d!1211130 () Bool)

(declare-fun c!703219 () Bool)

(assert (=> d!1211130 (= c!703219 ((_ is Nil!43618) lt!1458498))))

(declare-fun e!2529930 () (InoxSet C!24048))

(assert (=> d!1211130 (= (content!6674 lt!1458498) e!2529930)))

(declare-fun b!4076100 () Bool)

(assert (=> b!4076100 (= e!2529930 ((as const (Array C!24048 Bool)) false))))

(declare-fun b!4076101 () Bool)

(assert (=> b!4076101 (= e!2529930 ((_ map or) (store ((as const (Array C!24048 Bool)) false) (h!49038 lt!1458498) true) (content!6674 (t!337317 lt!1458498))))))

(assert (= (and d!1211130 c!703219) b!4076100))

(assert (= (and d!1211130 (not c!703219)) b!4076101))

(declare-fun m!4684461 () Bool)

(assert (=> b!4076101 m!4684461))

(declare-fun m!4684463 () Bool)

(assert (=> b!4076101 m!4684463))

(assert (=> d!1210924 d!1211130))

(declare-fun d!1211132 () Bool)

(declare-fun c!703220 () Bool)

(assert (=> d!1211132 (= c!703220 ((_ is Nil!43618) p!2988))))

(declare-fun e!2529931 () (InoxSet C!24048))

(assert (=> d!1211132 (= (content!6674 p!2988) e!2529931)))

(declare-fun b!4076102 () Bool)

(assert (=> b!4076102 (= e!2529931 ((as const (Array C!24048 Bool)) false))))

(declare-fun b!4076103 () Bool)

(assert (=> b!4076103 (= e!2529931 ((_ map or) (store ((as const (Array C!24048 Bool)) false) (h!49038 p!2988) true) (content!6674 (t!337317 p!2988))))))

(assert (= (and d!1211132 c!703220) b!4076102))

(assert (= (and d!1211132 (not c!703220)) b!4076103))

(declare-fun m!4684465 () Bool)

(assert (=> b!4076103 m!4684465))

(declare-fun m!4684467 () Bool)

(assert (=> b!4076103 m!4684467))

(assert (=> d!1210924 d!1211132))

(declare-fun d!1211134 () Bool)

(declare-fun c!703221 () Bool)

(assert (=> d!1211134 (= c!703221 ((_ is Nil!43618) suffix!1518))))

(declare-fun e!2529932 () (InoxSet C!24048))

(assert (=> d!1211134 (= (content!6674 suffix!1518) e!2529932)))

(declare-fun b!4076104 () Bool)

(assert (=> b!4076104 (= e!2529932 ((as const (Array C!24048 Bool)) false))))

(declare-fun b!4076105 () Bool)

(assert (=> b!4076105 (= e!2529932 ((_ map or) (store ((as const (Array C!24048 Bool)) false) (h!49038 suffix!1518) true) (content!6674 (t!337317 suffix!1518))))))

(assert (= (and d!1211134 c!703221) b!4076104))

(assert (= (and d!1211134 (not c!703221)) b!4076105))

(declare-fun m!4684469 () Bool)

(assert (=> b!4076105 m!4684469))

(declare-fun m!4684471 () Bool)

(assert (=> b!4076105 m!4684471))

(assert (=> d!1210924 d!1211134))

(assert (=> d!1210994 d!1210992))

(declare-fun d!1211136 () Bool)

(assert (=> d!1211136 (rulesInvariant!5958 thiss!26199 (t!337318 rules!3870))))

(assert (=> d!1211136 true))

(declare-fun _$66!565 () Unit!63163)

(assert (=> d!1211136 (= (choose!24880 thiss!26199 (h!49039 rules!3870) (t!337318 rules!3870)) _$66!565)))

(declare-fun bs!592735 () Bool)

(assert (= bs!592735 d!1211136))

(assert (=> bs!592735 m!4683903))

(assert (=> d!1210994 d!1211136))

(declare-fun d!1211140 () Bool)

(declare-fun res!1664804 () Bool)

(declare-fun e!2529934 () Bool)

(assert (=> d!1211140 (=> (not res!1664804) (not e!2529934))))

(assert (=> d!1211140 (= res!1664804 (rulesValid!2740 thiss!26199 (Cons!43619 (h!49039 rules!3870) (t!337318 rules!3870))))))

(assert (=> d!1211140 (= (rulesInvariant!5958 thiss!26199 (Cons!43619 (h!49039 rules!3870) (t!337318 rules!3870))) e!2529934)))

(declare-fun b!4076107 () Bool)

(assert (=> b!4076107 (= e!2529934 (noDuplicateTag!2741 thiss!26199 (Cons!43619 (h!49039 rules!3870) (t!337318 rules!3870)) Nil!43621))))

(assert (= (and d!1211140 res!1664804) b!4076107))

(declare-fun m!4684479 () Bool)

(assert (=> d!1211140 m!4684479))

(declare-fun m!4684481 () Bool)

(assert (=> b!4076107 m!4684481))

(assert (=> d!1210994 d!1211140))

(declare-fun d!1211144 () Bool)

(assert (=> d!1211144 (= (isEmpty!26045 (tail!6343 p!2988)) ((_ is Nil!43618) (tail!6343 p!2988)))))

(assert (=> b!4075516 d!1211144))

(assert (=> b!4075516 d!1211120))

(declare-fun b!4076109 () Bool)

(declare-fun e!2529940 () Bool)

(declare-fun call!288499 () Bool)

(assert (=> b!4076109 (= e!2529940 call!288499)))

(declare-fun b!4076110 () Bool)

(declare-fun e!2529939 () Bool)

(declare-fun e!2529937 () Bool)

(assert (=> b!4076110 (= e!2529939 e!2529937)))

(declare-fun res!1664809 () Bool)

(assert (=> b!4076110 (=> (not res!1664809) (not e!2529937))))

(declare-fun call!288498 () Bool)

(assert (=> b!4076110 (= res!1664809 call!288498)))

(declare-fun b!4076111 () Bool)

(declare-fun e!2529936 () Bool)

(assert (=> b!4076111 (= e!2529936 e!2529940)))

(declare-fun res!1664808 () Bool)

(assert (=> b!4076111 (= res!1664808 (not (nullable!4198 (reg!12260 (regex!7026 (h!49039 rules!3870))))))))

(assert (=> b!4076111 (=> (not res!1664808) (not e!2529940))))

(declare-fun b!4076112 () Bool)

(declare-fun res!1664810 () Bool)

(assert (=> b!4076112 (=> res!1664810 e!2529939)))

(assert (=> b!4076112 (= res!1664810 (not ((_ is Concat!19188) (regex!7026 (h!49039 rules!3870)))))))

(declare-fun e!2529938 () Bool)

(assert (=> b!4076112 (= e!2529938 e!2529939)))

(declare-fun d!1211146 () Bool)

(declare-fun res!1664806 () Bool)

(declare-fun e!2529942 () Bool)

(assert (=> d!1211146 (=> res!1664806 e!2529942)))

(assert (=> d!1211146 (= res!1664806 ((_ is ElementMatch!11931) (regex!7026 (h!49039 rules!3870))))))

(assert (=> d!1211146 (= (validRegex!5398 (regex!7026 (h!49039 rules!3870))) e!2529942)))

(declare-fun bm!288493 () Bool)

(declare-fun call!288500 () Bool)

(declare-fun c!703222 () Bool)

(assert (=> bm!288493 (= call!288500 (validRegex!5398 (ite c!703222 (regTwo!24375 (regex!7026 (h!49039 rules!3870))) (regTwo!24374 (regex!7026 (h!49039 rules!3870))))))))

(declare-fun b!4076113 () Bool)

(assert (=> b!4076113 (= e!2529942 e!2529936)))

(declare-fun c!703223 () Bool)

(assert (=> b!4076113 (= c!703223 ((_ is Star!11931) (regex!7026 (h!49039 rules!3870))))))

(declare-fun b!4076114 () Bool)

(declare-fun res!1664807 () Bool)

(declare-fun e!2529941 () Bool)

(assert (=> b!4076114 (=> (not res!1664807) (not e!2529941))))

(assert (=> b!4076114 (= res!1664807 call!288498)))

(assert (=> b!4076114 (= e!2529938 e!2529941)))

(declare-fun bm!288494 () Bool)

(assert (=> bm!288494 (= call!288499 (validRegex!5398 (ite c!703223 (reg!12260 (regex!7026 (h!49039 rules!3870))) (ite c!703222 (regOne!24375 (regex!7026 (h!49039 rules!3870))) (regOne!24374 (regex!7026 (h!49039 rules!3870)))))))))

(declare-fun b!4076115 () Bool)

(assert (=> b!4076115 (= e!2529937 call!288500)))

(declare-fun b!4076116 () Bool)

(assert (=> b!4076116 (= e!2529936 e!2529938)))

(assert (=> b!4076116 (= c!703222 ((_ is Union!11931) (regex!7026 (h!49039 rules!3870))))))

(declare-fun bm!288495 () Bool)

(assert (=> bm!288495 (= call!288498 call!288499)))

(declare-fun b!4076117 () Bool)

(assert (=> b!4076117 (= e!2529941 call!288500)))

(assert (= (and d!1211146 (not res!1664806)) b!4076113))

(assert (= (and b!4076113 c!703223) b!4076111))

(assert (= (and b!4076113 (not c!703223)) b!4076116))

(assert (= (and b!4076111 res!1664808) b!4076109))

(assert (= (and b!4076116 c!703222) b!4076114))

(assert (= (and b!4076116 (not c!703222)) b!4076112))

(assert (= (and b!4076114 res!1664807) b!4076117))

(assert (= (and b!4076112 (not res!1664810)) b!4076110))

(assert (= (and b!4076110 res!1664809) b!4076115))

(assert (= (or b!4076117 b!4076115) bm!288493))

(assert (= (or b!4076114 b!4076110) bm!288495))

(assert (= (or b!4076109 bm!288495) bm!288494))

(declare-fun m!4684487 () Bool)

(assert (=> b!4076111 m!4684487))

(declare-fun m!4684489 () Bool)

(assert (=> bm!288493 m!4684489))

(declare-fun m!4684491 () Bool)

(assert (=> bm!288494 m!4684491))

(assert (=> d!1210990 d!1211146))

(assert (=> d!1210928 d!1211052))

(assert (=> d!1210930 d!1210928))

(declare-fun d!1211150 () Bool)

(assert (=> d!1211150 (ruleValid!2950 thiss!26199 r!4213)))

(assert (=> d!1211150 true))

(declare-fun _$65!1543 () Unit!63163)

(assert (=> d!1211150 (= (choose!24879 thiss!26199 r!4213 rules!3870) _$65!1543)))

(declare-fun bs!592737 () Bool)

(assert (= bs!592737 d!1211150))

(assert (=> bs!592737 m!4683897))

(assert (=> d!1210930 d!1211150))

(assert (=> d!1210930 d!1210982))

(declare-fun d!1211152 () Bool)

(assert (=> d!1211152 (= (nullable!4198 (regex!7026 r!4213)) (nullableFct!1176 (regex!7026 r!4213)))))

(declare-fun bs!592738 () Bool)

(assert (= bs!592738 d!1211152))

(declare-fun m!4684493 () Bool)

(assert (=> bs!592738 m!4684493))

(assert (=> b!4075527 d!1211152))

(declare-fun b!4076128 () Bool)

(declare-fun e!2529951 () Bool)

(declare-fun e!2529949 () Bool)

(assert (=> b!4076128 (= e!2529951 e!2529949)))

(declare-fun c!703229 () Bool)

(assert (=> b!4076128 (= c!703229 ((_ is IntegerValue!21769) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))

(declare-fun b!4076129 () Bool)

(declare-fun e!2529950 () Bool)

(declare-fun inv!15 (TokenValue!7256) Bool)

(assert (=> b!4076129 (= e!2529950 (inv!15 (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))

(declare-fun b!4076130 () Bool)

(declare-fun inv!16 (TokenValue!7256) Bool)

(assert (=> b!4076130 (= e!2529951 (inv!16 (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))

(declare-fun b!4076131 () Bool)

(declare-fun res!1664813 () Bool)

(assert (=> b!4076131 (=> res!1664813 e!2529950)))

(assert (=> b!4076131 (= res!1664813 (not ((_ is IntegerValue!21770) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))))

(assert (=> b!4076131 (= e!2529949 e!2529950)))

(declare-fun d!1211154 () Bool)

(declare-fun c!703228 () Bool)

(assert (=> d!1211154 (= c!703228 ((_ is IntegerValue!21768) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))

(assert (=> d!1211154 (= (inv!21 (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)) e!2529951)))

(declare-fun b!4076132 () Bool)

(declare-fun inv!17 (TokenValue!7256) Bool)

(assert (=> b!4076132 (= e!2529949 (inv!17 (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))

(assert (= (and d!1211154 c!703228) b!4076130))

(assert (= (and d!1211154 (not c!703228)) b!4076128))

(assert (= (and b!4076128 c!703229) b!4076132))

(assert (= (and b!4076128 (not c!703229)) b!4076131))

(assert (= (and b!4076131 (not res!1664813)) b!4076129))

(declare-fun m!4684495 () Bool)

(assert (=> b!4076129 m!4684495))

(declare-fun m!4684497 () Bool)

(assert (=> b!4076130 m!4684497))

(declare-fun m!4684499 () Bool)

(assert (=> b!4076132 m!4684499))

(assert (=> tb!244817 d!1211154))

(assert (=> b!4075513 d!1211078))

(declare-fun d!1211156 () Bool)

(assert (=> d!1211156 true))

(declare-fun lambda!127696 () Int)

(declare-fun order!22797 () Int)

(declare-fun dynLambda!18538 (Int Int) Int)

(assert (=> d!1211156 (< (dynLambda!18532 order!22789 (toValue!9590 (transformation!7026 (h!49039 rules!3870)))) (dynLambda!18538 order!22797 lambda!127696))))

(declare-fun Forall2!1103 (Int) Bool)

(assert (=> d!1211156 (= (equivClasses!2905 (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 (h!49039 rules!3870)))) (Forall2!1103 lambda!127696))))

(declare-fun bs!592739 () Bool)

(assert (= bs!592739 d!1211156))

(declare-fun m!4684501 () Bool)

(assert (=> bs!592739 m!4684501))

(assert (=> b!4075746 d!1211156))

(declare-fun d!1211158 () Bool)

(assert (=> d!1211158 true))

(declare-fun lt!1458622 () Bool)

(assert (=> d!1211158 (= lt!1458622 (rulesValidInductive!2581 thiss!26199 rules!3870))))

(declare-fun lambda!127699 () Int)

(declare-fun forall!8396 (List!43743 Int) Bool)

(assert (=> d!1211158 (= lt!1458622 (forall!8396 rules!3870 lambda!127699))))

(assert (=> d!1211158 (= (rulesValid!2740 thiss!26199 rules!3870) lt!1458622)))

(declare-fun bs!592740 () Bool)

(assert (= bs!592740 d!1211158))

(assert (=> bs!592740 m!4683981))

(declare-fun m!4684503 () Bool)

(assert (=> bs!592740 m!4684503))

(assert (=> d!1210984 d!1211158))

(assert (=> b!4075510 d!1211144))

(assert (=> b!4075510 d!1211120))

(assert (=> bm!288432 d!1210980))

(declare-fun bs!592741 () Bool)

(declare-fun d!1211160 () Bool)

(assert (= bs!592741 (and d!1211160 d!1211156)))

(declare-fun lambda!127700 () Int)

(assert (=> bs!592741 (= (= (toValue!9590 (transformation!7026 r!4213)) (toValue!9590 (transformation!7026 (h!49039 rules!3870)))) (= lambda!127700 lambda!127696))))

(assert (=> d!1211160 true))

(assert (=> d!1211160 (< (dynLambda!18532 order!22789 (toValue!9590 (transformation!7026 r!4213))) (dynLambda!18538 order!22797 lambda!127700))))

(assert (=> d!1211160 (= (equivClasses!2905 (toChars!9449 (transformation!7026 r!4213)) (toValue!9590 (transformation!7026 r!4213))) (Forall2!1103 lambda!127700))))

(declare-fun bs!592742 () Bool)

(assert (= bs!592742 d!1211160))

(declare-fun m!4684505 () Bool)

(assert (=> bs!592742 m!4684505))

(assert (=> b!4075742 d!1211160))

(declare-fun d!1211162 () Bool)

(assert (=> d!1211162 (= (list!16228 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))) (list!16229 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))))))

(declare-fun bs!592743 () Bool)

(assert (= bs!592743 d!1211162))

(declare-fun m!4684507 () Bool)

(assert (=> bs!592743 m!4684507))

(assert (=> d!1210938 d!1211162))

(declare-fun d!1211164 () Bool)

(assert (=> d!1211164 (= (list!16228 lt!1458492) (list!16229 (c!703091 lt!1458492)))))

(declare-fun bs!592744 () Bool)

(assert (= bs!592744 d!1211164))

(declare-fun m!4684509 () Bool)

(assert (=> bs!592744 m!4684509))

(assert (=> d!1210938 d!1211164))

(declare-fun d!1211166 () Bool)

(declare-fun dynLambda!18540 (Int BalanceConc!26068) Bool)

(assert (=> d!1211166 (dynLambda!18540 lambda!127675 lt!1458492)))

(declare-fun lt!1458625 () Unit!63163)

(declare-fun choose!24883 (Int BalanceConc!26068) Unit!63163)

(assert (=> d!1211166 (= lt!1458625 (choose!24883 lambda!127675 lt!1458492))))

(assert (=> d!1211166 (Forall!1503 lambda!127675)))

(assert (=> d!1211166 (= (ForallOf!845 lambda!127675 lt!1458492) lt!1458625)))

(declare-fun b_lambda!119103 () Bool)

(assert (=> (not b_lambda!119103) (not d!1211166)))

(declare-fun bs!592745 () Bool)

(assert (= bs!592745 d!1211166))

(declare-fun m!4684511 () Bool)

(assert (=> bs!592745 m!4684511))

(declare-fun m!4684513 () Bool)

(assert (=> bs!592745 m!4684513))

(declare-fun m!4684515 () Bool)

(assert (=> bs!592745 m!4684515))

(assert (=> d!1210938 d!1211166))

(declare-fun bs!592746 () Bool)

(declare-fun d!1211168 () Bool)

(assert (= bs!592746 (and d!1211168 d!1210938)))

(declare-fun lambda!127701 () Int)

(assert (=> bs!592746 (= (and (= (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toChars!9449 (transformation!7026 r!4213))) (= (toValue!9590 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 r!4213)))) (= lambda!127701 lambda!127675))))

(declare-fun bs!592747 () Bool)

(assert (= bs!592747 (and d!1211168 d!1211082)))

(assert (=> bs!592747 (= (and (= (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toChars!9449 (transformation!7026 r!4213))) (= (toValue!9590 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 r!4213)))) (= lambda!127701 lambda!127687))))

(assert (=> d!1211168 true))

(assert (=> d!1211168 (< (dynLambda!18534 order!22793 (toChars!9449 (transformation!7026 (h!49039 rules!3870)))) (dynLambda!18533 order!22791 lambda!127701))))

(assert (=> d!1211168 true))

(assert (=> d!1211168 (< (dynLambda!18532 order!22789 (toValue!9590 (transformation!7026 (h!49039 rules!3870)))) (dynLambda!18533 order!22791 lambda!127701))))

(assert (=> d!1211168 (= (semiInverseModEq!3006 (toChars!9449 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 (h!49039 rules!3870)))) (Forall!1503 lambda!127701))))

(declare-fun bs!592748 () Bool)

(assert (= bs!592748 d!1211168))

(declare-fun m!4684517 () Bool)

(assert (=> bs!592748 m!4684517))

(assert (=> d!1210998 d!1211168))

(assert (=> b!4075511 d!1211152))

(declare-fun d!1211170 () Bool)

(declare-fun lt!1458626 () Bool)

(assert (=> d!1211170 (= lt!1458626 (select (content!6675 rules!3870) (rule!10130 (_1!24431 (get!14303 lt!1458517)))))))

(declare-fun e!2529955 () Bool)

(assert (=> d!1211170 (= lt!1458626 e!2529955)))

(declare-fun res!1664816 () Bool)

(assert (=> d!1211170 (=> (not res!1664816) (not e!2529955))))

(assert (=> d!1211170 (= res!1664816 ((_ is Cons!43619) rules!3870))))

(assert (=> d!1211170 (= (contains!8693 rules!3870 (rule!10130 (_1!24431 (get!14303 lt!1458517)))) lt!1458626)))

(declare-fun b!4076139 () Bool)

(declare-fun e!2529954 () Bool)

(assert (=> b!4076139 (= e!2529955 e!2529954)))

(declare-fun res!1664817 () Bool)

(assert (=> b!4076139 (=> res!1664817 e!2529954)))

(assert (=> b!4076139 (= res!1664817 (= (h!49039 rules!3870) (rule!10130 (_1!24431 (get!14303 lt!1458517)))))))

(declare-fun b!4076140 () Bool)

(assert (=> b!4076140 (= e!2529954 (contains!8693 (t!337318 rules!3870) (rule!10130 (_1!24431 (get!14303 lt!1458517)))))))

(assert (= (and d!1211170 res!1664816) b!4076139))

(assert (= (and b!4076139 (not res!1664817)) b!4076140))

(assert (=> d!1211170 m!4684131))

(declare-fun m!4684519 () Bool)

(assert (=> d!1211170 m!4684519))

(declare-fun m!4684521 () Bool)

(assert (=> b!4076140 m!4684521))

(assert (=> b!4075553 d!1211170))

(assert (=> b!4075553 d!1211070))

(declare-fun d!1211172 () Bool)

(assert (=> d!1211172 (= (inv!58265 (tag!7886 (h!49039 (t!337318 rules!3870)))) (= (mod (str.len (value!220892 (tag!7886 (h!49039 (t!337318 rules!3870))))) 2) 0))))

(assert (=> b!4075761 d!1211172))

(declare-fun d!1211174 () Bool)

(declare-fun res!1664818 () Bool)

(declare-fun e!2529956 () Bool)

(assert (=> d!1211174 (=> (not res!1664818) (not e!2529956))))

(assert (=> d!1211174 (= res!1664818 (semiInverseModEq!3006 (toChars!9449 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toValue!9590 (transformation!7026 (h!49039 (t!337318 rules!3870))))))))

(assert (=> d!1211174 (= (inv!58267 (transformation!7026 (h!49039 (t!337318 rules!3870)))) e!2529956)))

(declare-fun b!4076141 () Bool)

(assert (=> b!4076141 (= e!2529956 (equivClasses!2905 (toChars!9449 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toValue!9590 (transformation!7026 (h!49039 (t!337318 rules!3870))))))))

(assert (= (and d!1211174 res!1664818) b!4076141))

(declare-fun m!4684523 () Bool)

(assert (=> d!1211174 m!4684523))

(declare-fun m!4684525 () Bool)

(assert (=> b!4076141 m!4684525))

(assert (=> b!4075761 d!1211174))

(declare-fun d!1211176 () Bool)

(declare-fun res!1664823 () Bool)

(declare-fun e!2529961 () Bool)

(assert (=> d!1211176 (=> res!1664823 e!2529961)))

(assert (=> d!1211176 (= res!1664823 ((_ is Nil!43619) rules!3870))))

(assert (=> d!1211176 (= (noDuplicateTag!2741 thiss!26199 rules!3870 Nil!43621) e!2529961)))

(declare-fun b!4076146 () Bool)

(declare-fun e!2529962 () Bool)

(assert (=> b!4076146 (= e!2529961 e!2529962)))

(declare-fun res!1664824 () Bool)

(assert (=> b!4076146 (=> (not res!1664824) (not e!2529962))))

(declare-fun contains!8695 (List!43745 String!50030) Bool)

(assert (=> b!4076146 (= res!1664824 (not (contains!8695 Nil!43621 (tag!7886 (h!49039 rules!3870)))))))

(declare-fun b!4076147 () Bool)

(assert (=> b!4076147 (= e!2529962 (noDuplicateTag!2741 thiss!26199 (t!337318 rules!3870) (Cons!43621 (tag!7886 (h!49039 rules!3870)) Nil!43621)))))

(assert (= (and d!1211176 (not res!1664823)) b!4076146))

(assert (= (and b!4076146 res!1664824) b!4076147))

(declare-fun m!4684527 () Bool)

(assert (=> b!4076146 m!4684527))

(declare-fun m!4684529 () Bool)

(assert (=> b!4076147 m!4684529))

(assert (=> b!4075739 d!1211176))

(declare-fun d!1211178 () Bool)

(assert (=> d!1211178 (= (isEmpty!26047 lt!1458517) (not ((_ is Some!9433) lt!1458517)))))

(assert (=> d!1210932 d!1211178))

(declare-fun b!4076156 () Bool)

(declare-fun e!2529970 () Bool)

(declare-fun e!2529969 () Bool)

(assert (=> b!4076156 (= e!2529970 e!2529969)))

(declare-fun res!1664835 () Bool)

(assert (=> b!4076156 (=> (not res!1664835) (not e!2529969))))

(assert (=> b!4076156 (= res!1664835 (not ((_ is Nil!43618) input!3411)))))

(declare-fun b!4076158 () Bool)

(assert (=> b!4076158 (= e!2529969 (isPrefix!4101 (tail!6343 input!3411) (tail!6343 input!3411)))))

(declare-fun b!4076157 () Bool)

(declare-fun res!1664836 () Bool)

(assert (=> b!4076157 (=> (not res!1664836) (not e!2529969))))

(assert (=> b!4076157 (= res!1664836 (= (head!8609 input!3411) (head!8609 input!3411)))))

(declare-fun b!4076159 () Bool)

(declare-fun e!2529971 () Bool)

(assert (=> b!4076159 (= e!2529971 (>= (size!32584 input!3411) (size!32584 input!3411)))))

(declare-fun d!1211180 () Bool)

(assert (=> d!1211180 e!2529971))

(declare-fun res!1664834 () Bool)

(assert (=> d!1211180 (=> res!1664834 e!2529971)))

(declare-fun lt!1458629 () Bool)

(assert (=> d!1211180 (= res!1664834 (not lt!1458629))))

(assert (=> d!1211180 (= lt!1458629 e!2529970)))

(declare-fun res!1664833 () Bool)

(assert (=> d!1211180 (=> res!1664833 e!2529970)))

(assert (=> d!1211180 (= res!1664833 ((_ is Nil!43618) input!3411))))

(assert (=> d!1211180 (= (isPrefix!4101 input!3411 input!3411) lt!1458629)))

(assert (= (and d!1211180 (not res!1664833)) b!4076156))

(assert (= (and b!4076156 res!1664835) b!4076157))

(assert (= (and b!4076157 res!1664836) b!4076158))

(assert (= (and d!1211180 (not res!1664834)) b!4076159))

(declare-fun m!4684531 () Bool)

(assert (=> b!4076158 m!4684531))

(assert (=> b!4076158 m!4684531))

(assert (=> b!4076158 m!4684531))

(assert (=> b!4076158 m!4684531))

(declare-fun m!4684533 () Bool)

(assert (=> b!4076158 m!4684533))

(declare-fun m!4684535 () Bool)

(assert (=> b!4076157 m!4684535))

(assert (=> b!4076157 m!4684535))

(assert (=> b!4076159 m!4683987))

(assert (=> b!4076159 m!4683987))

(assert (=> d!1210932 d!1211180))

(declare-fun d!1211182 () Bool)

(assert (=> d!1211182 (isPrefix!4101 input!3411 input!3411)))

(declare-fun lt!1458632 () Unit!63163)

(declare-fun choose!24884 (List!43742 List!43742) Unit!63163)

(assert (=> d!1211182 (= lt!1458632 (choose!24884 input!3411 input!3411))))

(assert (=> d!1211182 (= (lemmaIsPrefixRefl!2652 input!3411 input!3411) lt!1458632)))

(declare-fun bs!592749 () Bool)

(assert (= bs!592749 d!1211182))

(assert (=> bs!592749 m!4683977))

(declare-fun m!4684537 () Bool)

(assert (=> bs!592749 m!4684537))

(assert (=> d!1210932 d!1211182))

(declare-fun bs!592750 () Bool)

(declare-fun d!1211184 () Bool)

(assert (= bs!592750 (and d!1211184 d!1211158)))

(declare-fun lambda!127704 () Int)

(assert (=> bs!592750 (= lambda!127704 lambda!127699)))

(assert (=> d!1211184 true))

(declare-fun lt!1458635 () Bool)

(assert (=> d!1211184 (= lt!1458635 (forall!8396 rules!3870 lambda!127704))))

(declare-fun e!2529977 () Bool)

(assert (=> d!1211184 (= lt!1458635 e!2529977)))

(declare-fun res!1664841 () Bool)

(assert (=> d!1211184 (=> res!1664841 e!2529977)))

(assert (=> d!1211184 (= res!1664841 (not ((_ is Cons!43619) rules!3870)))))

(assert (=> d!1211184 (= (rulesValidInductive!2581 thiss!26199 rules!3870) lt!1458635)))

(declare-fun b!4076164 () Bool)

(declare-fun e!2529976 () Bool)

(assert (=> b!4076164 (= e!2529977 e!2529976)))

(declare-fun res!1664842 () Bool)

(assert (=> b!4076164 (=> (not res!1664842) (not e!2529976))))

(assert (=> b!4076164 (= res!1664842 (ruleValid!2950 thiss!26199 (h!49039 rules!3870)))))

(declare-fun b!4076165 () Bool)

(assert (=> b!4076165 (= e!2529976 (rulesValidInductive!2581 thiss!26199 (t!337318 rules!3870)))))

(assert (= (and d!1211184 (not res!1664841)) b!4076164))

(assert (= (and b!4076164 res!1664842) b!4076165))

(declare-fun m!4684539 () Bool)

(assert (=> d!1211184 m!4684539))

(assert (=> b!4076164 m!4683901))

(assert (=> b!4076165 m!4684285))

(assert (=> d!1210932 d!1211184))

(assert (=> b!4075555 d!1211074))

(assert (=> b!4075555 d!1211076))

(assert (=> b!4075555 d!1211070))

(declare-fun d!1211186 () Bool)

(declare-fun res!1664843 () Bool)

(declare-fun e!2529978 () Bool)

(assert (=> d!1211186 (=> res!1664843 e!2529978)))

(assert (=> d!1211186 (= res!1664843 ((_ is Nil!43619) (t!337318 rules!3870)))))

(assert (=> d!1211186 (= (noDuplicateTag!2741 thiss!26199 (t!337318 rules!3870) Nil!43621) e!2529978)))

(declare-fun b!4076166 () Bool)

(declare-fun e!2529979 () Bool)

(assert (=> b!4076166 (= e!2529978 e!2529979)))

(declare-fun res!1664844 () Bool)

(assert (=> b!4076166 (=> (not res!1664844) (not e!2529979))))

(assert (=> b!4076166 (= res!1664844 (not (contains!8695 Nil!43621 (tag!7886 (h!49039 (t!337318 rules!3870))))))))

(declare-fun b!4076167 () Bool)

(assert (=> b!4076167 (= e!2529979 (noDuplicateTag!2741 thiss!26199 (t!337318 (t!337318 rules!3870)) (Cons!43621 (tag!7886 (h!49039 (t!337318 rules!3870))) Nil!43621)))))

(assert (= (and d!1211186 (not res!1664843)) b!4076166))

(assert (= (and b!4076166 res!1664844) b!4076167))

(declare-fun m!4684541 () Bool)

(assert (=> b!4076166 m!4684541))

(declare-fun m!4684543 () Bool)

(assert (=> b!4076167 m!4684543))

(assert (=> b!4075745 d!1211186))

(declare-fun b!4076168 () Bool)

(declare-fun e!2529981 () List!43742)

(assert (=> b!4076168 (= e!2529981 suffix!1518)))

(declare-fun b!4076169 () Bool)

(assert (=> b!4076169 (= e!2529981 (Cons!43618 (h!49038 (t!337317 p!2988)) (++!11432 (t!337317 (t!337317 p!2988)) suffix!1518)))))

(declare-fun e!2529980 () Bool)

(declare-fun lt!1458636 () List!43742)

(declare-fun b!4076171 () Bool)

(assert (=> b!4076171 (= e!2529980 (or (not (= suffix!1518 Nil!43618)) (= lt!1458636 (t!337317 p!2988))))))

(declare-fun b!4076170 () Bool)

(declare-fun res!1664846 () Bool)

(assert (=> b!4076170 (=> (not res!1664846) (not e!2529980))))

(assert (=> b!4076170 (= res!1664846 (= (size!32584 lt!1458636) (+ (size!32584 (t!337317 p!2988)) (size!32584 suffix!1518))))))

(declare-fun d!1211188 () Bool)

(assert (=> d!1211188 e!2529980))

(declare-fun res!1664845 () Bool)

(assert (=> d!1211188 (=> (not res!1664845) (not e!2529980))))

(assert (=> d!1211188 (= res!1664845 (= (content!6674 lt!1458636) ((_ map or) (content!6674 (t!337317 p!2988)) (content!6674 suffix!1518))))))

(assert (=> d!1211188 (= lt!1458636 e!2529981)))

(declare-fun c!703230 () Bool)

(assert (=> d!1211188 (= c!703230 ((_ is Nil!43618) (t!337317 p!2988)))))

(assert (=> d!1211188 (= (++!11432 (t!337317 p!2988) suffix!1518) lt!1458636)))

(assert (= (and d!1211188 c!703230) b!4076168))

(assert (= (and d!1211188 (not c!703230)) b!4076169))

(assert (= (and d!1211188 res!1664845) b!4076170))

(assert (= (and b!4076170 res!1664846) b!4076171))

(declare-fun m!4684545 () Bool)

(assert (=> b!4076169 m!4684545))

(declare-fun m!4684547 () Bool)

(assert (=> b!4076170 m!4684547))

(assert (=> b!4076170 m!4683995))

(assert (=> b!4076170 m!4683937))

(declare-fun m!4684549 () Bool)

(assert (=> d!1211188 m!4684549))

(assert (=> d!1211188 m!4684467))

(assert (=> d!1211188 m!4683943))

(assert (=> b!4075478 d!1211188))

(declare-fun b!4076280 () Bool)

(declare-fun e!2530030 () Bool)

(declare-fun e!2530031 () Bool)

(assert (=> b!4076280 (= e!2530030 e!2530031)))

(declare-fun res!1664885 () Bool)

(assert (=> b!4076280 (=> (not res!1664885) (not e!2530031))))

(declare-fun lt!1458666 () Option!9434)

(assert (=> b!4076280 (= res!1664885 (matchR!5876 (regex!7026 (h!49039 rules!3870)) (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458666))))))))

(declare-fun b!4076281 () Bool)

(declare-fun e!2530029 () Option!9434)

(assert (=> b!4076281 (= e!2530029 None!9433)))

(declare-fun b!4076282 () Bool)

(declare-datatypes ((tuple2!42596 0))(
  ( (tuple2!42597 (_1!24432 List!43742) (_2!24432 List!43742)) )
))
(declare-fun lt!1458667 () tuple2!42596)

(declare-fun size!32585 (BalanceConc!26068) Int)

(assert (=> b!4076282 (= e!2530029 (Some!9433 (tuple2!42595 (Token!13179 (apply!10209 (transformation!7026 (h!49039 rules!3870)) (seqFromList!5243 (_1!24432 lt!1458667))) (h!49039 rules!3870) (size!32585 (seqFromList!5243 (_1!24432 lt!1458667))) (_1!24432 lt!1458667)) (_2!24432 lt!1458667))))))

(declare-fun lt!1458663 () Unit!63163)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1397 (Regex!11931 List!43742) Unit!63163)

(assert (=> b!4076282 (= lt!1458663 (longestMatchIsAcceptedByMatchOrIsEmpty!1397 (regex!7026 (h!49039 rules!3870)) input!3411))))

(declare-fun res!1664889 () Bool)

(declare-fun findLongestMatchInner!1424 (Regex!11931 List!43742 Int List!43742 List!43742 Int) tuple2!42596)

(assert (=> b!4076282 (= res!1664889 (isEmpty!26045 (_1!24432 (findLongestMatchInner!1424 (regex!7026 (h!49039 rules!3870)) Nil!43618 (size!32584 Nil!43618) input!3411 input!3411 (size!32584 input!3411)))))))

(declare-fun e!2530028 () Bool)

(assert (=> b!4076282 (=> res!1664889 e!2530028)))

(assert (=> b!4076282 e!2530028))

(declare-fun lt!1458664 () Unit!63163)

(assert (=> b!4076282 (= lt!1458664 lt!1458663)))

(declare-fun lt!1458665 () Unit!63163)

(assert (=> b!4076282 (= lt!1458665 (lemmaSemiInverse!1993 (transformation!7026 (h!49039 rules!3870)) (seqFromList!5243 (_1!24432 lt!1458667))))))

(declare-fun b!4076283 () Bool)

(assert (=> b!4076283 (= e!2530028 (matchR!5876 (regex!7026 (h!49039 rules!3870)) (_1!24432 (findLongestMatchInner!1424 (regex!7026 (h!49039 rules!3870)) Nil!43618 (size!32584 Nil!43618) input!3411 input!3411 (size!32584 input!3411)))))))

(declare-fun b!4076284 () Bool)

(declare-fun res!1664888 () Bool)

(assert (=> b!4076284 (=> (not res!1664888) (not e!2530031))))

(assert (=> b!4076284 (= res!1664888 (= (value!220893 (_1!24431 (get!14303 lt!1458666))) (apply!10209 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458666)))) (seqFromList!5243 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458666)))))))))

(declare-fun d!1211190 () Bool)

(assert (=> d!1211190 e!2530030))

(declare-fun res!1664887 () Bool)

(assert (=> d!1211190 (=> res!1664887 e!2530030)))

(assert (=> d!1211190 (= res!1664887 (isEmpty!26047 lt!1458666))))

(assert (=> d!1211190 (= lt!1458666 e!2530029)))

(declare-fun c!703236 () Bool)

(assert (=> d!1211190 (= c!703236 (isEmpty!26045 (_1!24432 lt!1458667)))))

(declare-fun findLongestMatch!1337 (Regex!11931 List!43742) tuple2!42596)

(assert (=> d!1211190 (= lt!1458667 (findLongestMatch!1337 (regex!7026 (h!49039 rules!3870)) input!3411))))

(assert (=> d!1211190 (ruleValid!2950 thiss!26199 (h!49039 rules!3870))))

(assert (=> d!1211190 (= (maxPrefixOneRule!2901 thiss!26199 (h!49039 rules!3870) input!3411) lt!1458666)))

(declare-fun b!4076285 () Bool)

(assert (=> b!4076285 (= e!2530031 (= (size!32583 (_1!24431 (get!14303 lt!1458666))) (size!32584 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458666))))))))

(declare-fun b!4076286 () Bool)

(declare-fun res!1664884 () Bool)

(assert (=> b!4076286 (=> (not res!1664884) (not e!2530031))))

(assert (=> b!4076286 (= res!1664884 (< (size!32584 (_2!24431 (get!14303 lt!1458666))) (size!32584 input!3411)))))

(declare-fun b!4076287 () Bool)

(declare-fun res!1664890 () Bool)

(assert (=> b!4076287 (=> (not res!1664890) (not e!2530031))))

(assert (=> b!4076287 (= res!1664890 (= (++!11432 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458666)))) (_2!24431 (get!14303 lt!1458666))) input!3411))))

(declare-fun b!4076288 () Bool)

(declare-fun res!1664886 () Bool)

(assert (=> b!4076288 (=> (not res!1664886) (not e!2530031))))

(assert (=> b!4076288 (= res!1664886 (= (rule!10130 (_1!24431 (get!14303 lt!1458666))) (h!49039 rules!3870)))))

(assert (= (and d!1211190 c!703236) b!4076281))

(assert (= (and d!1211190 (not c!703236)) b!4076282))

(assert (= (and b!4076282 (not res!1664889)) b!4076283))

(assert (= (and d!1211190 (not res!1664887)) b!4076280))

(assert (= (and b!4076280 res!1664885) b!4076287))

(assert (= (and b!4076287 res!1664890) b!4076286))

(assert (= (and b!4076286 res!1664884) b!4076288))

(assert (= (and b!4076288 res!1664886) b!4076284))

(assert (= (and b!4076284 res!1664888) b!4076285))

(declare-fun m!4684607 () Bool)

(assert (=> b!4076287 m!4684607))

(declare-fun m!4684609 () Bool)

(assert (=> b!4076287 m!4684609))

(assert (=> b!4076287 m!4684609))

(declare-fun m!4684611 () Bool)

(assert (=> b!4076287 m!4684611))

(assert (=> b!4076287 m!4684611))

(declare-fun m!4684613 () Bool)

(assert (=> b!4076287 m!4684613))

(assert (=> b!4076280 m!4684607))

(assert (=> b!4076280 m!4684609))

(assert (=> b!4076280 m!4684609))

(assert (=> b!4076280 m!4684611))

(assert (=> b!4076280 m!4684611))

(declare-fun m!4684615 () Bool)

(assert (=> b!4076280 m!4684615))

(assert (=> b!4076285 m!4684607))

(declare-fun m!4684617 () Bool)

(assert (=> b!4076285 m!4684617))

(assert (=> b!4076286 m!4684607))

(declare-fun m!4684619 () Bool)

(assert (=> b!4076286 m!4684619))

(assert (=> b!4076286 m!4683987))

(declare-fun m!4684621 () Bool)

(assert (=> b!4076282 m!4684621))

(assert (=> b!4076282 m!4683987))

(declare-fun m!4684623 () Bool)

(assert (=> b!4076282 m!4684623))

(assert (=> b!4076282 m!4683987))

(declare-fun m!4684625 () Bool)

(assert (=> b!4076282 m!4684625))

(declare-fun m!4684627 () Bool)

(assert (=> b!4076282 m!4684627))

(assert (=> b!4076282 m!4684625))

(assert (=> b!4076282 m!4684625))

(declare-fun m!4684629 () Bool)

(assert (=> b!4076282 m!4684629))

(declare-fun m!4684631 () Bool)

(assert (=> b!4076282 m!4684631))

(declare-fun m!4684633 () Bool)

(assert (=> b!4076282 m!4684633))

(assert (=> b!4076282 m!4684625))

(declare-fun m!4684635 () Bool)

(assert (=> b!4076282 m!4684635))

(assert (=> b!4076282 m!4684621))

(assert (=> b!4076283 m!4684621))

(assert (=> b!4076283 m!4683987))

(assert (=> b!4076283 m!4684621))

(assert (=> b!4076283 m!4683987))

(assert (=> b!4076283 m!4684623))

(declare-fun m!4684637 () Bool)

(assert (=> b!4076283 m!4684637))

(assert (=> b!4076284 m!4684607))

(declare-fun m!4684639 () Bool)

(assert (=> b!4076284 m!4684639))

(assert (=> b!4076284 m!4684639))

(declare-fun m!4684641 () Bool)

(assert (=> b!4076284 m!4684641))

(assert (=> b!4076288 m!4684607))

(declare-fun m!4684643 () Bool)

(assert (=> d!1211190 m!4684643))

(declare-fun m!4684645 () Bool)

(assert (=> d!1211190 m!4684645))

(declare-fun m!4684647 () Bool)

(assert (=> d!1211190 m!4684647))

(assert (=> d!1211190 m!4683901))

(assert (=> bm!288435 d!1211190))

(declare-fun d!1211198 () Bool)

(declare-fun lt!1458668 () Int)

(assert (=> d!1211198 (>= lt!1458668 0)))

(declare-fun e!2530032 () Int)

(assert (=> d!1211198 (= lt!1458668 e!2530032)))

(declare-fun c!703237 () Bool)

(assert (=> d!1211198 (= c!703237 ((_ is Nil!43618) lt!1458498))))

(assert (=> d!1211198 (= (size!32584 lt!1458498) lt!1458668)))

(declare-fun b!4076289 () Bool)

(assert (=> b!4076289 (= e!2530032 0)))

(declare-fun b!4076290 () Bool)

(assert (=> b!4076290 (= e!2530032 (+ 1 (size!32584 (t!337317 lt!1458498))))))

(assert (= (and d!1211198 c!703237) b!4076289))

(assert (= (and d!1211198 (not c!703237)) b!4076290))

(declare-fun m!4684649 () Bool)

(assert (=> b!4076290 m!4684649))

(assert (=> b!4075479 d!1211198))

(assert (=> b!4075479 d!1210934))

(declare-fun d!1211200 () Bool)

(declare-fun lt!1458669 () Int)

(assert (=> d!1211200 (>= lt!1458669 0)))

(declare-fun e!2530033 () Int)

(assert (=> d!1211200 (= lt!1458669 e!2530033)))

(declare-fun c!703238 () Bool)

(assert (=> d!1211200 (= c!703238 ((_ is Nil!43618) suffix!1518))))

(assert (=> d!1211200 (= (size!32584 suffix!1518) lt!1458669)))

(declare-fun b!4076291 () Bool)

(assert (=> b!4076291 (= e!2530033 0)))

(declare-fun b!4076292 () Bool)

(assert (=> b!4076292 (= e!2530033 (+ 1 (size!32584 (t!337317 suffix!1518))))))

(assert (= (and d!1211200 c!703238) b!4076291))

(assert (= (and d!1211200 (not c!703238)) b!4076292))

(declare-fun m!4684651 () Bool)

(assert (=> b!4076292 m!4684651))

(assert (=> b!4075479 d!1211200))

(assert (=> b!4075551 d!1211070))

(declare-fun d!1211202 () Bool)

(assert (=> d!1211202 (= (apply!10209 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))) (seqFromList!5243 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517))))) (dynLambda!18536 (toValue!9590 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))) (seqFromList!5243 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517))))))))

(declare-fun b_lambda!119111 () Bool)

(assert (=> (not b_lambda!119111) (not d!1211202)))

(declare-fun tb!244851 () Bool)

(declare-fun t!337372 () Bool)

(assert (=> (and b!4075468 (= (toValue!9590 (transformation!7026 (h!49039 rules!3870))) (toValue!9590 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337372) tb!244851))

(declare-fun result!296898 () Bool)

(assert (=> tb!244851 (= result!296898 (inv!21 (dynLambda!18536 (toValue!9590 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517))))) (seqFromList!5243 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517)))))))))

(declare-fun m!4684653 () Bool)

(assert (=> tb!244851 m!4684653))

(assert (=> d!1211202 t!337372))

(declare-fun b_and!313393 () Bool)

(assert (= b_and!313347 (and (=> t!337372 result!296898) b_and!313393)))

(declare-fun t!337374 () Bool)

(declare-fun tb!244853 () Bool)

(assert (=> (and b!4075461 (= (toValue!9590 (transformation!7026 r!4213)) (toValue!9590 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337374) tb!244853))

(declare-fun result!296900 () Bool)

(assert (= result!296900 result!296898))

(assert (=> d!1211202 t!337374))

(declare-fun b_and!313395 () Bool)

(assert (= b_and!313349 (and (=> t!337374 result!296900) b_and!313395)))

(declare-fun tb!244855 () Bool)

(declare-fun t!337376 () Bool)

(assert (=> (and b!4075762 (= (toValue!9590 (transformation!7026 (h!49039 (t!337318 rules!3870)))) (toValue!9590 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337376) tb!244855))

(declare-fun result!296902 () Bool)

(assert (= result!296902 result!296898))

(assert (=> d!1211202 t!337376))

(declare-fun b_and!313397 () Bool)

(assert (= b_and!313351 (and (=> t!337376 result!296902) b_and!313397)))

(assert (=> d!1211202 m!4683989))

(declare-fun m!4684655 () Bool)

(assert (=> d!1211202 m!4684655))

(assert (=> b!4075551 d!1211202))

(declare-fun d!1211204 () Bool)

(assert (=> d!1211204 (= (seqFromList!5243 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517)))) (fromListB!2392 (originalCharacters!7620 (_1!24431 (get!14303 lt!1458517)))))))

(declare-fun bs!592753 () Bool)

(assert (= bs!592753 d!1211204))

(declare-fun m!4684657 () Bool)

(assert (=> bs!592753 m!4684657))

(assert (=> b!4075551 d!1211204))

(declare-fun d!1211206 () Bool)

(declare-fun lt!1458670 () Bool)

(assert (=> d!1211206 (= lt!1458670 (select (content!6675 (t!337318 rules!3870)) r!4213))))

(declare-fun e!2530036 () Bool)

(assert (=> d!1211206 (= lt!1458670 e!2530036)))

(declare-fun res!1664891 () Bool)

(assert (=> d!1211206 (=> (not res!1664891) (not e!2530036))))

(assert (=> d!1211206 (= res!1664891 ((_ is Cons!43619) (t!337318 rules!3870)))))

(assert (=> d!1211206 (= (contains!8693 (t!337318 rules!3870) r!4213) lt!1458670)))

(declare-fun b!4076293 () Bool)

(declare-fun e!2530035 () Bool)

(assert (=> b!4076293 (= e!2530036 e!2530035)))

(declare-fun res!1664892 () Bool)

(assert (=> b!4076293 (=> res!1664892 e!2530035)))

(assert (=> b!4076293 (= res!1664892 (= (h!49039 (t!337318 rules!3870)) r!4213))))

(declare-fun b!4076294 () Bool)

(assert (=> b!4076294 (= e!2530035 (contains!8693 (t!337318 (t!337318 rules!3870)) r!4213))))

(assert (= (and d!1211206 res!1664891) b!4076293))

(assert (= (and b!4076293 (not res!1664892)) b!4076294))

(declare-fun m!4684659 () Bool)

(assert (=> d!1211206 m!4684659))

(declare-fun m!4684661 () Bool)

(assert (=> d!1211206 m!4684661))

(declare-fun m!4684663 () Bool)

(assert (=> b!4076294 m!4684663))

(assert (=> b!4075736 d!1211206))

(declare-fun bs!592754 () Bool)

(declare-fun d!1211208 () Bool)

(assert (= bs!592754 (and d!1211208 d!1211158)))

(declare-fun lambda!127705 () Int)

(assert (=> bs!592754 (= lambda!127705 lambda!127699)))

(declare-fun bs!592755 () Bool)

(assert (= bs!592755 (and d!1211208 d!1211184)))

(assert (=> bs!592755 (= lambda!127705 lambda!127704)))

(assert (=> d!1211208 true))

(declare-fun lt!1458671 () Bool)

(assert (=> d!1211208 (= lt!1458671 (rulesValidInductive!2581 thiss!26199 (t!337318 rules!3870)))))

(assert (=> d!1211208 (= lt!1458671 (forall!8396 (t!337318 rules!3870) lambda!127705))))

(assert (=> d!1211208 (= (rulesValid!2740 thiss!26199 (t!337318 rules!3870)) lt!1458671)))

(declare-fun bs!592756 () Bool)

(assert (= bs!592756 d!1211208))

(assert (=> bs!592756 m!4684285))

(declare-fun m!4684665 () Bool)

(assert (=> bs!592756 m!4684665))

(assert (=> d!1210992 d!1211208))

(declare-fun b!4076295 () Bool)

(declare-fun e!2530038 () List!43742)

(assert (=> b!4076295 (= e!2530038 (_2!24431 (get!14303 lt!1458517)))))

(declare-fun b!4076296 () Bool)

(assert (=> b!4076296 (= e!2530038 (Cons!43618 (h!49038 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))) (++!11432 (t!337317 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))) (_2!24431 (get!14303 lt!1458517)))))))

(declare-fun b!4076298 () Bool)

(declare-fun e!2530037 () Bool)

(declare-fun lt!1458672 () List!43742)

(assert (=> b!4076298 (= e!2530037 (or (not (= (_2!24431 (get!14303 lt!1458517)) Nil!43618)) (= lt!1458672 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))))))))

(declare-fun b!4076297 () Bool)

(declare-fun res!1664894 () Bool)

(assert (=> b!4076297 (=> (not res!1664894) (not e!2530037))))

(assert (=> b!4076297 (= res!1664894 (= (size!32584 lt!1458672) (+ (size!32584 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))) (size!32584 (_2!24431 (get!14303 lt!1458517))))))))

(declare-fun d!1211210 () Bool)

(assert (=> d!1211210 e!2530037))

(declare-fun res!1664893 () Bool)

(assert (=> d!1211210 (=> (not res!1664893) (not e!2530037))))

(assert (=> d!1211210 (= res!1664893 (= (content!6674 lt!1458672) ((_ map or) (content!6674 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))) (content!6674 (_2!24431 (get!14303 lt!1458517))))))))

(assert (=> d!1211210 (= lt!1458672 e!2530038)))

(declare-fun c!703239 () Bool)

(assert (=> d!1211210 (= c!703239 ((_ is Nil!43618) (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517))))))))

(assert (=> d!1211210 (= (++!11432 (list!16228 (charsOf!4814 (_1!24431 (get!14303 lt!1458517)))) (_2!24431 (get!14303 lt!1458517))) lt!1458672)))

(assert (= (and d!1211210 c!703239) b!4076295))

(assert (= (and d!1211210 (not c!703239)) b!4076296))

(assert (= (and d!1211210 res!1664893) b!4076297))

(assert (= (and b!4076297 res!1664894) b!4076298))

(declare-fun m!4684667 () Bool)

(assert (=> b!4076296 m!4684667))

(declare-fun m!4684669 () Bool)

(assert (=> b!4076297 m!4684669))

(assert (=> b!4076297 m!4683965))

(declare-fun m!4684671 () Bool)

(assert (=> b!4076297 m!4684671))

(assert (=> b!4076297 m!4683985))

(declare-fun m!4684673 () Bool)

(assert (=> d!1211210 m!4684673))

(assert (=> d!1211210 m!4683965))

(declare-fun m!4684675 () Bool)

(assert (=> d!1211210 m!4684675))

(declare-fun m!4684677 () Bool)

(assert (=> d!1211210 m!4684677))

(assert (=> b!4075552 d!1211210))

(assert (=> b!4075552 d!1211074))

(assert (=> b!4075552 d!1211076))

(assert (=> b!4075552 d!1211070))

(declare-fun d!1211212 () Bool)

(declare-fun c!703242 () Bool)

(assert (=> d!1211212 (= c!703242 ((_ is Nil!43619) rules!3870))))

(declare-fun e!2530041 () (InoxSet Rule!13852))

(assert (=> d!1211212 (= (content!6675 rules!3870) e!2530041)))

(declare-fun b!4076303 () Bool)

(assert (=> b!4076303 (= e!2530041 ((as const (Array Rule!13852 Bool)) false))))

(declare-fun b!4076304 () Bool)

(assert (=> b!4076304 (= e!2530041 ((_ map or) (store ((as const (Array Rule!13852 Bool)) false) (h!49039 rules!3870) true) (content!6675 (t!337318 rules!3870))))))

(assert (= (and d!1211212 c!703242) b!4076303))

(assert (= (and d!1211212 (not c!703242)) b!4076304))

(declare-fun m!4684679 () Bool)

(assert (=> b!4076304 m!4684679))

(assert (=> b!4076304 m!4684659))

(assert (=> d!1210982 d!1211212))

(declare-fun d!1211214 () Bool)

(assert (=> d!1211214 (= (isDefined!7150 lt!1458517) (not (isEmpty!26047 lt!1458517)))))

(declare-fun bs!592757 () Bool)

(assert (= bs!592757 d!1211214))

(assert (=> bs!592757 m!4683975))

(assert (=> b!4075549 d!1211214))

(declare-fun d!1211216 () Bool)

(declare-fun e!2530044 () Bool)

(assert (=> d!1211216 e!2530044))

(declare-fun res!1664897 () Bool)

(assert (=> d!1211216 (=> (not res!1664897) (not e!2530044))))

(declare-fun lt!1458675 () BalanceConc!26068)

(assert (=> d!1211216 (= res!1664897 (= (list!16228 lt!1458675) p!2988))))

(declare-fun fromList!872 (List!43742) Conc!13237)

(assert (=> d!1211216 (= lt!1458675 (BalanceConc!26069 (fromList!872 p!2988)))))

(assert (=> d!1211216 (= (fromListB!2392 p!2988) lt!1458675)))

(declare-fun b!4076307 () Bool)

(assert (=> b!4076307 (= e!2530044 (isBalanced!3692 (fromList!872 p!2988)))))

(assert (= (and d!1211216 res!1664897) b!4076307))

(declare-fun m!4684681 () Bool)

(assert (=> d!1211216 m!4684681))

(declare-fun m!4684683 () Bool)

(assert (=> d!1211216 m!4684683))

(assert (=> b!4076307 m!4684683))

(assert (=> b!4076307 m!4684683))

(declare-fun m!4684685 () Bool)

(assert (=> b!4076307 m!4684685))

(assert (=> d!1210936 d!1211216))

(declare-fun d!1211218 () Bool)

(declare-fun lt!1458676 () Int)

(assert (=> d!1211218 (>= lt!1458676 0)))

(declare-fun e!2530045 () Int)

(assert (=> d!1211218 (= lt!1458676 e!2530045)))

(declare-fun c!703244 () Bool)

(assert (=> d!1211218 (= c!703244 ((_ is Nil!43618) (_2!24431 (get!14303 lt!1458517))))))

(assert (=> d!1211218 (= (size!32584 (_2!24431 (get!14303 lt!1458517))) lt!1458676)))

(declare-fun b!4076308 () Bool)

(assert (=> b!4076308 (= e!2530045 0)))

(declare-fun b!4076309 () Bool)

(assert (=> b!4076309 (= e!2530045 (+ 1 (size!32584 (t!337317 (_2!24431 (get!14303 lt!1458517))))))))

(assert (= (and d!1211218 c!703244) b!4076308))

(assert (= (and d!1211218 (not c!703244)) b!4076309))

(declare-fun m!4684687 () Bool)

(assert (=> b!4076309 m!4684687))

(assert (=> b!4075550 d!1211218))

(assert (=> b!4075550 d!1211070))

(declare-fun d!1211220 () Bool)

(declare-fun lt!1458677 () Int)

(assert (=> d!1211220 (>= lt!1458677 0)))

(declare-fun e!2530046 () Int)

(assert (=> d!1211220 (= lt!1458677 e!2530046)))

(declare-fun c!703245 () Bool)

(assert (=> d!1211220 (= c!703245 ((_ is Nil!43618) input!3411))))

(assert (=> d!1211220 (= (size!32584 input!3411) lt!1458677)))

(declare-fun b!4076310 () Bool)

(assert (=> b!4076310 (= e!2530046 0)))

(declare-fun b!4076311 () Bool)

(assert (=> b!4076311 (= e!2530046 (+ 1 (size!32584 (t!337317 input!3411))))))

(assert (= (and d!1211220 c!703245) b!4076310))

(assert (= (and d!1211220 (not c!703245)) b!4076311))

(declare-fun m!4684689 () Bool)

(assert (=> b!4076311 m!4684689))

(assert (=> b!4075550 d!1211220))

(declare-fun b!4076312 () Bool)

(declare-fun e!2530047 () Bool)

(declare-fun tp!1233876 () Bool)

(assert (=> b!4076312 (= e!2530047 (and tp_is_empty!20865 tp!1233876))))

(assert (=> b!4075764 (= tp!1233782 e!2530047)))

(assert (= (and b!4075764 ((_ is Cons!43618) (t!337317 (t!337317 suffix!1518)))) b!4076312))

(declare-fun b!4076316 () Bool)

(declare-fun e!2530048 () Bool)

(declare-fun tp!1233881 () Bool)

(declare-fun tp!1233877 () Bool)

(assert (=> b!4076316 (= e!2530048 (and tp!1233881 tp!1233877))))

(declare-fun b!4076313 () Bool)

(assert (=> b!4076313 (= e!2530048 tp_is_empty!20865)))

(assert (=> b!4075780 (= tp!1233799 e!2530048)))

(declare-fun b!4076314 () Bool)

(declare-fun tp!1233878 () Bool)

(declare-fun tp!1233880 () Bool)

(assert (=> b!4076314 (= e!2530048 (and tp!1233878 tp!1233880))))

(declare-fun b!4076315 () Bool)

(declare-fun tp!1233879 () Bool)

(assert (=> b!4076315 (= e!2530048 tp!1233879)))

(assert (= (and b!4075780 ((_ is ElementMatch!11931) (regOne!24374 (regex!7026 (h!49039 rules!3870))))) b!4076313))

(assert (= (and b!4075780 ((_ is Concat!19188) (regOne!24374 (regex!7026 (h!49039 rules!3870))))) b!4076314))

(assert (= (and b!4075780 ((_ is Star!11931) (regOne!24374 (regex!7026 (h!49039 rules!3870))))) b!4076315))

(assert (= (and b!4075780 ((_ is Union!11931) (regOne!24374 (regex!7026 (h!49039 rules!3870))))) b!4076316))

(declare-fun b!4076320 () Bool)

(declare-fun e!2530049 () Bool)

(declare-fun tp!1233886 () Bool)

(declare-fun tp!1233882 () Bool)

(assert (=> b!4076320 (= e!2530049 (and tp!1233886 tp!1233882))))

(declare-fun b!4076317 () Bool)

(assert (=> b!4076317 (= e!2530049 tp_is_empty!20865)))

(assert (=> b!4075780 (= tp!1233801 e!2530049)))

(declare-fun b!4076318 () Bool)

(declare-fun tp!1233883 () Bool)

(declare-fun tp!1233885 () Bool)

(assert (=> b!4076318 (= e!2530049 (and tp!1233883 tp!1233885))))

(declare-fun b!4076319 () Bool)

(declare-fun tp!1233884 () Bool)

(assert (=> b!4076319 (= e!2530049 tp!1233884)))

(assert (= (and b!4075780 ((_ is ElementMatch!11931) (regTwo!24374 (regex!7026 (h!49039 rules!3870))))) b!4076317))

(assert (= (and b!4075780 ((_ is Concat!19188) (regTwo!24374 (regex!7026 (h!49039 rules!3870))))) b!4076318))

(assert (= (and b!4075780 ((_ is Star!11931) (regTwo!24374 (regex!7026 (h!49039 rules!3870))))) b!4076319))

(assert (= (and b!4075780 ((_ is Union!11931) (regTwo!24374 (regex!7026 (h!49039 rules!3870))))) b!4076320))

(declare-fun b!4076321 () Bool)

(declare-fun e!2530050 () Bool)

(declare-fun tp!1233887 () Bool)

(assert (=> b!4076321 (= e!2530050 (and tp_is_empty!20865 tp!1233887))))

(assert (=> b!4075751 (= tp!1233768 e!2530050)))

(assert (= (and b!4075751 ((_ is Cons!43618) (t!337317 (t!337317 p!2988)))) b!4076321))

(declare-fun b!4076325 () Bool)

(declare-fun e!2530051 () Bool)

(declare-fun tp!1233892 () Bool)

(declare-fun tp!1233888 () Bool)

(assert (=> b!4076325 (= e!2530051 (and tp!1233892 tp!1233888))))

(declare-fun b!4076322 () Bool)

(assert (=> b!4076322 (= e!2530051 tp_is_empty!20865)))

(assert (=> b!4075776 (= tp!1233794 e!2530051)))

(declare-fun b!4076323 () Bool)

(declare-fun tp!1233889 () Bool)

(declare-fun tp!1233891 () Bool)

(assert (=> b!4076323 (= e!2530051 (and tp!1233889 tp!1233891))))

(declare-fun b!4076324 () Bool)

(declare-fun tp!1233890 () Bool)

(assert (=> b!4076324 (= e!2530051 tp!1233890)))

(assert (= (and b!4075776 ((_ is ElementMatch!11931) (regOne!24374 (regex!7026 r!4213)))) b!4076322))

(assert (= (and b!4075776 ((_ is Concat!19188) (regOne!24374 (regex!7026 r!4213)))) b!4076323))

(assert (= (and b!4075776 ((_ is Star!11931) (regOne!24374 (regex!7026 r!4213)))) b!4076324))

(assert (= (and b!4075776 ((_ is Union!11931) (regOne!24374 (regex!7026 r!4213)))) b!4076325))

(declare-fun b!4076329 () Bool)

(declare-fun e!2530052 () Bool)

(declare-fun tp!1233897 () Bool)

(declare-fun tp!1233893 () Bool)

(assert (=> b!4076329 (= e!2530052 (and tp!1233897 tp!1233893))))

(declare-fun b!4076326 () Bool)

(assert (=> b!4076326 (= e!2530052 tp_is_empty!20865)))

(assert (=> b!4075776 (= tp!1233796 e!2530052)))

(declare-fun b!4076327 () Bool)

(declare-fun tp!1233894 () Bool)

(declare-fun tp!1233896 () Bool)

(assert (=> b!4076327 (= e!2530052 (and tp!1233894 tp!1233896))))

(declare-fun b!4076328 () Bool)

(declare-fun tp!1233895 () Bool)

(assert (=> b!4076328 (= e!2530052 tp!1233895)))

(assert (= (and b!4075776 ((_ is ElementMatch!11931) (regTwo!24374 (regex!7026 r!4213)))) b!4076326))

(assert (= (and b!4075776 ((_ is Concat!19188) (regTwo!24374 (regex!7026 r!4213)))) b!4076327))

(assert (= (and b!4075776 ((_ is Star!11931) (regTwo!24374 (regex!7026 r!4213)))) b!4076328))

(assert (= (and b!4075776 ((_ is Union!11931) (regTwo!24374 (regex!7026 r!4213)))) b!4076329))

(declare-fun b!4076333 () Bool)

(declare-fun e!2530053 () Bool)

(declare-fun tp!1233902 () Bool)

(declare-fun tp!1233898 () Bool)

(assert (=> b!4076333 (= e!2530053 (and tp!1233902 tp!1233898))))

(declare-fun b!4076330 () Bool)

(assert (=> b!4076330 (= e!2530053 tp_is_empty!20865)))

(assert (=> b!4075761 (= tp!1233779 e!2530053)))

(declare-fun b!4076331 () Bool)

(declare-fun tp!1233899 () Bool)

(declare-fun tp!1233901 () Bool)

(assert (=> b!4076331 (= e!2530053 (and tp!1233899 tp!1233901))))

(declare-fun b!4076332 () Bool)

(declare-fun tp!1233900 () Bool)

(assert (=> b!4076332 (= e!2530053 tp!1233900)))

(assert (= (and b!4075761 ((_ is ElementMatch!11931) (regex!7026 (h!49039 (t!337318 rules!3870))))) b!4076330))

(assert (= (and b!4075761 ((_ is Concat!19188) (regex!7026 (h!49039 (t!337318 rules!3870))))) b!4076331))

(assert (= (and b!4075761 ((_ is Star!11931) (regex!7026 (h!49039 (t!337318 rules!3870))))) b!4076332))

(assert (= (and b!4075761 ((_ is Union!11931) (regex!7026 (h!49039 (t!337318 rules!3870))))) b!4076333))

(declare-fun b!4076334 () Bool)

(declare-fun e!2530054 () Bool)

(declare-fun tp!1233903 () Bool)

(assert (=> b!4076334 (= e!2530054 (and tp_is_empty!20865 tp!1233903))))

(assert (=> b!4075763 (= tp!1233781 e!2530054)))

(assert (= (and b!4075763 ((_ is Cons!43618) (t!337317 (t!337317 input!3411)))) b!4076334))

(declare-fun tp!1233910 () Bool)

(declare-fun e!2530060 () Bool)

(declare-fun b!4076343 () Bool)

(declare-fun tp!1233912 () Bool)

(assert (=> b!4076343 (= e!2530060 (and (inv!58270 (left!32784 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))) tp!1233912 (inv!58270 (right!33114 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))) tp!1233910))))

(declare-fun b!4076345 () Bool)

(declare-fun e!2530059 () Bool)

(declare-fun tp!1233911 () Bool)

(assert (=> b!4076345 (= e!2530059 tp!1233911)))

(declare-fun b!4076344 () Bool)

(declare-fun inv!58276 (IArray!26479) Bool)

(assert (=> b!4076344 (= e!2530060 (and (inv!58276 (xs!16543 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))) e!2530059))))

(assert (=> b!4075728 (= tp!1233765 (and (inv!58270 (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492)))) e!2530060))))

(assert (= (and b!4075728 ((_ is Node!13237) (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))) b!4076343))

(assert (= b!4076344 b!4076345))

(assert (= (and b!4075728 ((_ is Leaf!20465) (c!703091 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))))) b!4076344))

(declare-fun m!4684691 () Bool)

(assert (=> b!4076343 m!4684691))

(declare-fun m!4684693 () Bool)

(assert (=> b!4076343 m!4684693))

(declare-fun m!4684695 () Bool)

(assert (=> b!4076344 m!4684695))

(assert (=> b!4075728 m!4684115))

(declare-fun b!4076348 () Bool)

(declare-fun b_free!113613 () Bool)

(declare-fun b_next!114317 () Bool)

(assert (=> b!4076348 (= b_free!113613 (not b_next!114317))))

(declare-fun tb!244857 () Bool)

(declare-fun t!337378 () Bool)

(assert (=> (and b!4076348 (= (toValue!9590 (transformation!7026 (h!49039 (t!337318 (t!337318 rules!3870))))) (toValue!9590 (transformation!7026 r!4213))) t!337378) tb!244857))

(declare-fun result!296906 () Bool)

(assert (= result!296906 result!296854))

(assert (=> d!1210938 t!337378))

(assert (=> d!1210978 t!337378))

(declare-fun t!337380 () Bool)

(declare-fun tb!244859 () Bool)

(assert (=> (and b!4076348 (= (toValue!9590 (transformation!7026 (h!49039 (t!337318 (t!337318 rules!3870))))) (toValue!9590 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337380) tb!244859))

(declare-fun result!296908 () Bool)

(assert (= result!296908 result!296898))

(assert (=> d!1211202 t!337380))

(declare-fun tp!1233913 () Bool)

(declare-fun b_and!313399 () Bool)

(assert (=> b!4076348 (= tp!1233913 (and (=> t!337378 result!296906) (=> t!337380 result!296908) b_and!313399))))

(declare-fun b_free!113615 () Bool)

(declare-fun b_next!114319 () Bool)

(assert (=> b!4076348 (= b_free!113615 (not b_next!114319))))

(declare-fun t!337382 () Bool)

(declare-fun tb!244861 () Bool)

(assert (=> (and b!4076348 (= (toChars!9449 (transformation!7026 (h!49039 (t!337318 (t!337318 rules!3870))))) (toChars!9449 (transformation!7026 r!4213))) t!337382) tb!244861))

(declare-fun result!296910 () Bool)

(assert (= result!296910 result!296848))

(assert (=> d!1210938 t!337382))

(declare-fun t!337384 () Bool)

(declare-fun tb!244863 () Bool)

(assert (=> (and b!4076348 (= (toChars!9449 (transformation!7026 (h!49039 (t!337318 (t!337318 rules!3870))))) (toChars!9449 (transformation!7026 (rule!10130 (_1!24431 (get!14303 lt!1458517)))))) t!337384) tb!244863))

(declare-fun result!296912 () Bool)

(assert (= result!296912 result!296876))

(assert (=> d!1211076 t!337384))

(declare-fun b_and!313401 () Bool)

(declare-fun tp!1233914 () Bool)

(assert (=> b!4076348 (= tp!1233914 (and (=> t!337382 result!296910) (=> t!337384 result!296912) b_and!313401))))

(declare-fun e!2530062 () Bool)

(assert (=> b!4076348 (= e!2530062 (and tp!1233913 tp!1233914))))

(declare-fun tp!1233915 () Bool)

(declare-fun b!4076347 () Bool)

(declare-fun e!2530064 () Bool)

(assert (=> b!4076347 (= e!2530064 (and tp!1233915 (inv!58265 (tag!7886 (h!49039 (t!337318 (t!337318 rules!3870))))) (inv!58267 (transformation!7026 (h!49039 (t!337318 (t!337318 rules!3870))))) e!2530062))))

(declare-fun b!4076346 () Bool)

(declare-fun e!2530061 () Bool)

(declare-fun tp!1233916 () Bool)

(assert (=> b!4076346 (= e!2530061 (and e!2530064 tp!1233916))))

(assert (=> b!4075760 (= tp!1233780 e!2530061)))

(assert (= b!4076347 b!4076348))

(assert (= b!4076346 b!4076347))

(assert (= (and b!4075760 ((_ is Cons!43619) (t!337318 (t!337318 rules!3870)))) b!4076346))

(declare-fun m!4684697 () Bool)

(assert (=> b!4076347 m!4684697))

(declare-fun m!4684699 () Bool)

(assert (=> b!4076347 m!4684699))

(declare-fun b!4076352 () Bool)

(declare-fun e!2530065 () Bool)

(declare-fun tp!1233921 () Bool)

(declare-fun tp!1233917 () Bool)

(assert (=> b!4076352 (= e!2530065 (and tp!1233921 tp!1233917))))

(declare-fun b!4076349 () Bool)

(assert (=> b!4076349 (= e!2530065 tp_is_empty!20865)))

(assert (=> b!4075781 (= tp!1233800 e!2530065)))

(declare-fun b!4076350 () Bool)

(declare-fun tp!1233918 () Bool)

(declare-fun tp!1233920 () Bool)

(assert (=> b!4076350 (= e!2530065 (and tp!1233918 tp!1233920))))

(declare-fun b!4076351 () Bool)

(declare-fun tp!1233919 () Bool)

(assert (=> b!4076351 (= e!2530065 tp!1233919)))

(assert (= (and b!4075781 ((_ is ElementMatch!11931) (reg!12260 (regex!7026 (h!49039 rules!3870))))) b!4076349))

(assert (= (and b!4075781 ((_ is Concat!19188) (reg!12260 (regex!7026 (h!49039 rules!3870))))) b!4076350))

(assert (= (and b!4075781 ((_ is Star!11931) (reg!12260 (regex!7026 (h!49039 rules!3870))))) b!4076351))

(assert (= (and b!4075781 ((_ is Union!11931) (reg!12260 (regex!7026 (h!49039 rules!3870))))) b!4076352))

(declare-fun b!4076356 () Bool)

(declare-fun e!2530066 () Bool)

(declare-fun tp!1233926 () Bool)

(declare-fun tp!1233922 () Bool)

(assert (=> b!4076356 (= e!2530066 (and tp!1233926 tp!1233922))))

(declare-fun b!4076353 () Bool)

(assert (=> b!4076353 (= e!2530066 tp_is_empty!20865)))

(assert (=> b!4075777 (= tp!1233795 e!2530066)))

(declare-fun b!4076354 () Bool)

(declare-fun tp!1233923 () Bool)

(declare-fun tp!1233925 () Bool)

(assert (=> b!4076354 (= e!2530066 (and tp!1233923 tp!1233925))))

(declare-fun b!4076355 () Bool)

(declare-fun tp!1233924 () Bool)

(assert (=> b!4076355 (= e!2530066 tp!1233924)))

(assert (= (and b!4075777 ((_ is ElementMatch!11931) (reg!12260 (regex!7026 r!4213)))) b!4076353))

(assert (= (and b!4075777 ((_ is Concat!19188) (reg!12260 (regex!7026 r!4213)))) b!4076354))

(assert (= (and b!4075777 ((_ is Star!11931) (reg!12260 (regex!7026 r!4213)))) b!4076355))

(assert (= (and b!4075777 ((_ is Union!11931) (reg!12260 (regex!7026 r!4213)))) b!4076356))

(declare-fun b!4076360 () Bool)

(declare-fun e!2530067 () Bool)

(declare-fun tp!1233931 () Bool)

(declare-fun tp!1233927 () Bool)

(assert (=> b!4076360 (= e!2530067 (and tp!1233931 tp!1233927))))

(declare-fun b!4076357 () Bool)

(assert (=> b!4076357 (= e!2530067 tp_is_empty!20865)))

(assert (=> b!4075782 (= tp!1233802 e!2530067)))

(declare-fun b!4076358 () Bool)

(declare-fun tp!1233928 () Bool)

(declare-fun tp!1233930 () Bool)

(assert (=> b!4076358 (= e!2530067 (and tp!1233928 tp!1233930))))

(declare-fun b!4076359 () Bool)

(declare-fun tp!1233929 () Bool)

(assert (=> b!4076359 (= e!2530067 tp!1233929)))

(assert (= (and b!4075782 ((_ is ElementMatch!11931) (regOne!24375 (regex!7026 (h!49039 rules!3870))))) b!4076357))

(assert (= (and b!4075782 ((_ is Concat!19188) (regOne!24375 (regex!7026 (h!49039 rules!3870))))) b!4076358))

(assert (= (and b!4075782 ((_ is Star!11931) (regOne!24375 (regex!7026 (h!49039 rules!3870))))) b!4076359))

(assert (= (and b!4075782 ((_ is Union!11931) (regOne!24375 (regex!7026 (h!49039 rules!3870))))) b!4076360))

(declare-fun b!4076364 () Bool)

(declare-fun e!2530068 () Bool)

(declare-fun tp!1233936 () Bool)

(declare-fun tp!1233932 () Bool)

(assert (=> b!4076364 (= e!2530068 (and tp!1233936 tp!1233932))))

(declare-fun b!4076361 () Bool)

(assert (=> b!4076361 (= e!2530068 tp_is_empty!20865)))

(assert (=> b!4075782 (= tp!1233798 e!2530068)))

(declare-fun b!4076362 () Bool)

(declare-fun tp!1233933 () Bool)

(declare-fun tp!1233935 () Bool)

(assert (=> b!4076362 (= e!2530068 (and tp!1233933 tp!1233935))))

(declare-fun b!4076363 () Bool)

(declare-fun tp!1233934 () Bool)

(assert (=> b!4076363 (= e!2530068 tp!1233934)))

(assert (= (and b!4075782 ((_ is ElementMatch!11931) (regTwo!24375 (regex!7026 (h!49039 rules!3870))))) b!4076361))

(assert (= (and b!4075782 ((_ is Concat!19188) (regTwo!24375 (regex!7026 (h!49039 rules!3870))))) b!4076362))

(assert (= (and b!4075782 ((_ is Star!11931) (regTwo!24375 (regex!7026 (h!49039 rules!3870))))) b!4076363))

(assert (= (and b!4075782 ((_ is Union!11931) (regTwo!24375 (regex!7026 (h!49039 rules!3870))))) b!4076364))

(declare-fun b!4076368 () Bool)

(declare-fun e!2530069 () Bool)

(declare-fun tp!1233941 () Bool)

(declare-fun tp!1233937 () Bool)

(assert (=> b!4076368 (= e!2530069 (and tp!1233941 tp!1233937))))

(declare-fun b!4076365 () Bool)

(assert (=> b!4076365 (= e!2530069 tp_is_empty!20865)))

(assert (=> b!4075778 (= tp!1233797 e!2530069)))

(declare-fun b!4076366 () Bool)

(declare-fun tp!1233938 () Bool)

(declare-fun tp!1233940 () Bool)

(assert (=> b!4076366 (= e!2530069 (and tp!1233938 tp!1233940))))

(declare-fun b!4076367 () Bool)

(declare-fun tp!1233939 () Bool)

(assert (=> b!4076367 (= e!2530069 tp!1233939)))

(assert (= (and b!4075778 ((_ is ElementMatch!11931) (regOne!24375 (regex!7026 r!4213)))) b!4076365))

(assert (= (and b!4075778 ((_ is Concat!19188) (regOne!24375 (regex!7026 r!4213)))) b!4076366))

(assert (= (and b!4075778 ((_ is Star!11931) (regOne!24375 (regex!7026 r!4213)))) b!4076367))

(assert (= (and b!4075778 ((_ is Union!11931) (regOne!24375 (regex!7026 r!4213)))) b!4076368))

(declare-fun b!4076372 () Bool)

(declare-fun e!2530070 () Bool)

(declare-fun tp!1233946 () Bool)

(declare-fun tp!1233942 () Bool)

(assert (=> b!4076372 (= e!2530070 (and tp!1233946 tp!1233942))))

(declare-fun b!4076369 () Bool)

(assert (=> b!4076369 (= e!2530070 tp_is_empty!20865)))

(assert (=> b!4075778 (= tp!1233793 e!2530070)))

(declare-fun b!4076370 () Bool)

(declare-fun tp!1233943 () Bool)

(declare-fun tp!1233945 () Bool)

(assert (=> b!4076370 (= e!2530070 (and tp!1233943 tp!1233945))))

(declare-fun b!4076371 () Bool)

(declare-fun tp!1233944 () Bool)

(assert (=> b!4076371 (= e!2530070 tp!1233944)))

(assert (= (and b!4075778 ((_ is ElementMatch!11931) (regTwo!24375 (regex!7026 r!4213)))) b!4076369))

(assert (= (and b!4075778 ((_ is Concat!19188) (regTwo!24375 (regex!7026 r!4213)))) b!4076370))

(assert (= (and b!4075778 ((_ is Star!11931) (regTwo!24375 (regex!7026 r!4213)))) b!4076371))

(assert (= (and b!4075778 ((_ is Union!11931) (regTwo!24375 (regex!7026 r!4213)))) b!4076372))

(declare-fun b_lambda!119113 () Bool)

(assert (= b_lambda!119103 (or d!1210938 b_lambda!119113)))

(declare-fun bs!592758 () Bool)

(declare-fun d!1211222 () Bool)

(assert (= bs!592758 (and d!1211222 d!1210938)))

(assert (=> bs!592758 (= (dynLambda!18540 lambda!127675 lt!1458492) (= (list!16228 (dynLambda!18535 (toChars!9449 (transformation!7026 r!4213)) (dynLambda!18536 (toValue!9590 (transformation!7026 r!4213)) lt!1458492))) (list!16228 lt!1458492)))))

(declare-fun b_lambda!119115 () Bool)

(assert (=> (not b_lambda!119115) (not bs!592758)))

(assert (=> bs!592758 t!337333))

(declare-fun b_and!313403 () Bool)

(assert (= b_and!313361 (and (=> t!337333 result!296848) b_and!313403)))

(assert (=> bs!592758 t!337335))

(declare-fun b_and!313405 () Bool)

(assert (= b_and!313363 (and (=> t!337335 result!296852) b_and!313405)))

(assert (=> bs!592758 t!337343))

(declare-fun b_and!313407 () Bool)

(assert (= b_and!313365 (and (=> t!337343 result!296866) b_and!313407)))

(assert (=> bs!592758 t!337382))

(declare-fun b_and!313409 () Bool)

(assert (= b_and!313401 (and (=> t!337382 result!296910) b_and!313409)))

(declare-fun b_lambda!119117 () Bool)

(assert (=> (not b_lambda!119117) (not bs!592758)))

(assert (=> bs!592758 t!337337))

(declare-fun b_and!313411 () Bool)

(assert (= b_and!313393 (and (=> t!337337 result!296854) b_and!313411)))

(assert (=> bs!592758 t!337339))

(declare-fun b_and!313413 () Bool)

(assert (= b_and!313395 (and (=> t!337339 result!296858) b_and!313413)))

(assert (=> bs!592758 t!337341))

(declare-fun b_and!313415 () Bool)

(assert (= b_and!313397 (and (=> t!337341 result!296864) b_and!313415)))

(assert (=> bs!592758 t!337378))

(declare-fun b_and!313417 () Bool)

(assert (= b_and!313399 (and (=> t!337378 result!296906) b_and!313417)))

(assert (=> bs!592758 m!4684121))

(assert (=> bs!592758 m!4684125))

(assert (=> bs!592758 m!4684127))

(assert (=> bs!592758 m!4684127))

(assert (=> bs!592758 m!4684129))

(assert (=> bs!592758 m!4684125))

(assert (=> d!1211166 d!1211222))

(check-sat (not bm!288491) (not b!4076352) (not b_next!114297) (not bm!288473) (not b!4076356) (not b!4076354) (not b!4076158) tp_is_empty!20865 (not b!4076107) (not d!1211184) (not b_lambda!119111) (not b!4075955) (not b!4076360) (not b!4076111) (not b!4075975) b_and!313403 (not b!4076285) (not b!4076372) (not b!4076355) (not b!4075954) (not b!4076166) (not b_next!114309) (not b!4076006) (not b!4076169) (not b!4076290) (not b!4076005) (not d!1211158) (not b!4076331) (not b!4076371) (not d!1211062) (not b!4076332) (not b!4076346) (not b!4075969) (not b!4075966) (not d!1211140) (not b!4076292) (not b!4076359) (not b!4076283) (not b!4075973) (not b_next!114301) (not b!4076309) (not bm!288494) (not d!1211190) (not b!4076132) (not b_lambda!119115) (not d!1211156) (not d!1211094) (not b_next!114317) (not b!4076091) b_and!313415 (not b!4075956) (not b!4075972) (not b!4076307) (not d!1211206) (not b!4076325) (not b_next!114311) (not d!1211136) (not b!4076351) (not b!4076167) (not b!4076159) (not d!1211162) (not b!4076297) (not b!4076321) (not b!4076157) (not b!4076296) (not b!4076014) (not b!4076284) (not b_lambda!119093) (not tb!244831) (not d!1211204) (not b!4076130) (not b!4076344) (not d!1211060) (not b!4076012) b_and!313411 (not b!4076364) b_and!313405 (not b!4076093) (not b!4075957) (not b!4076141) (not b!4076294) (not b!4076140) (not b!4075960) (not b!4075907) (not b_lambda!119117) (not bm!288478) (not b!4076311) (not b!4076008) (not d!1211216) (not b!4076280) (not b!4076314) (not b_lambda!119091) (not d!1211182) (not b!4075989) (not bs!592758) (not b_lambda!119113) (not b!4076333) (not b!4076287) (not b!4075952) (not b!4076146) b_and!313409 (not b!4076362) (not d!1211164) (not b!4076105) (not b!4076350) (not b!4076358) (not b!4076103) (not b!4076329) (not d!1211160) (not b_next!114319) (not d!1211088) (not b_lambda!119097) (not d!1211170) (not bm!288477) (not d!1211174) (not b!4076323) (not b!4076170) (not b!4076345) (not d!1211166) (not b!4076368) (not b!4076343) (not b!4076066) (not b!4076101) (not b!4076165) (not d!1211066) (not d!1211214) (not b!4076366) (not b!4075967) b_and!313413 (not b!4075945) (not b!4076363) (not b_next!114299) (not d!1211152) (not bm!288489) (not b_next!114303) (not b!4076164) (not bm!288476) (not b!4076324) (not tb!244851) (not b_lambda!119089) (not bm!288474) (not b!4076327) (not b!4076288) (not b!4075953) (not b!4076315) (not b!4076129) b_and!313417 (not b!4076286) (not b!4076312) (not b!4076282) (not d!1211082) (not b!4076328) (not d!1211086) (not b!4076319) (not b!4076367) (not b!4076316) (not b!4076304) (not d!1211208) (not b!4075728) (not bm!288493) (not b!4076147) (not b!4076011) (not d!1211076) (not b!4076318) (not b!4076347) (not d!1211150) b_and!313407 (not d!1211210) (not b!4076320) (not d!1211074) (not b!4076370) (not d!1211168) (not b!4076334) (not d!1211188) (not b!4075958))
(check-sat (not b_next!114297) b_and!313403 (not b_next!114309) (not b_next!114301) (not b_next!114311) b_and!313409 (not b_next!114319) b_and!313413 (not b_next!114299) (not b_next!114303) b_and!313417 b_and!313407 (not b_next!114317) b_and!313415 b_and!313411 b_and!313405)
