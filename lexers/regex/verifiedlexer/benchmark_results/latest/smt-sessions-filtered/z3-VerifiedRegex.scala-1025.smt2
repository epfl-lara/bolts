; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51140 () Bool)

(assert start!51140)

(declare-fun b!552023 () Bool)

(declare-fun b_free!15409 () Bool)

(declare-fun b_next!15425 () Bool)

(assert (=> b!552023 (= b_free!15409 (not b_next!15425))))

(declare-fun tp!174509 () Bool)

(declare-fun b_and!53891 () Bool)

(assert (=> b!552023 (= tp!174509 b_and!53891)))

(declare-fun b_free!15411 () Bool)

(declare-fun b_next!15427 () Bool)

(assert (=> b!552023 (= b_free!15411 (not b_next!15427))))

(declare-fun tp!174503 () Bool)

(declare-fun b_and!53893 () Bool)

(assert (=> b!552023 (= tp!174503 b_and!53893)))

(declare-fun b!552019 () Bool)

(declare-fun b_free!15413 () Bool)

(declare-fun b_next!15429 () Bool)

(assert (=> b!552019 (= b_free!15413 (not b_next!15429))))

(declare-fun tp!174505 () Bool)

(declare-fun b_and!53895 () Bool)

(assert (=> b!552019 (= tp!174505 b_and!53895)))

(declare-fun b_free!15415 () Bool)

(declare-fun b_next!15431 () Bool)

(assert (=> b!552019 (= b_free!15415 (not b_next!15431))))

(declare-fun tp!174508 () Bool)

(declare-fun b_and!53897 () Bool)

(assert (=> b!552019 (= tp!174508 b_and!53897)))

(declare-fun b!552015 () Bool)

(declare-fun res!236726 () Bool)

(declare-fun e!333884 () Bool)

(assert (=> b!552015 (=> (not res!236726) (not e!333884))))

(declare-datatypes ((String!7048 0))(
  ( (String!7049 (value!34395 String)) )
))
(declare-datatypes ((C!3664 0))(
  ( (C!3665 (val!2058 Int)) )
))
(declare-datatypes ((Regex!1371 0))(
  ( (ElementMatch!1371 (c!103762 C!3664)) (Concat!2432 (regOne!3254 Regex!1371) (regTwo!3254 Regex!1371)) (EmptyExpr!1371) (Star!1371 (reg!1700 Regex!1371)) (EmptyLang!1371) (Union!1371 (regOne!3255 Regex!1371) (regTwo!3255 Regex!1371)) )
))
(declare-datatypes ((List!5469 0))(
  ( (Nil!5459) (Cons!5459 (h!10860 (_ BitVec 16)) (t!75142 List!5469)) )
))
(declare-datatypes ((TokenValue!1061 0))(
  ( (FloatLiteralValue!2122 (text!7872 List!5469)) (TokenValueExt!1060 (__x!4020 Int)) (Broken!5305 (value!34396 List!5469)) (Object!1070) (End!1061) (Def!1061) (Underscore!1061) (Match!1061) (Else!1061) (Error!1061) (Case!1061) (If!1061) (Extends!1061) (Abstract!1061) (Class!1061) (Val!1061) (DelimiterValue!2122 (del!1121 List!5469)) (KeywordValue!1067 (value!34397 List!5469)) (CommentValue!2122 (value!34398 List!5469)) (WhitespaceValue!2122 (value!34399 List!5469)) (IndentationValue!1061 (value!34400 List!5469)) (String!7050) (Int32!1061) (Broken!5306 (value!34401 List!5469)) (Boolean!1062) (Unit!9712) (OperatorValue!1064 (op!1121 List!5469)) (IdentifierValue!2122 (value!34402 List!5469)) (IdentifierValue!2123 (value!34403 List!5469)) (WhitespaceValue!2123 (value!34404 List!5469)) (True!2122) (False!2122) (Broken!5307 (value!34405 List!5469)) (Broken!5308 (value!34406 List!5469)) (True!2123) (RightBrace!1061) (RightBracket!1061) (Colon!1061) (Null!1061) (Comma!1061) (LeftBracket!1061) (False!2123) (LeftBrace!1061) (ImaginaryLiteralValue!1061 (text!7873 List!5469)) (StringLiteralValue!3183 (value!34407 List!5469)) (EOFValue!1061 (value!34408 List!5469)) (IdentValue!1061 (value!34409 List!5469)) (DelimiterValue!2123 (value!34410 List!5469)) (DedentValue!1061 (value!34411 List!5469)) (NewLineValue!1061 (value!34412 List!5469)) (IntegerValue!3183 (value!34413 (_ BitVec 32)) (text!7874 List!5469)) (IntegerValue!3184 (value!34414 Int) (text!7875 List!5469)) (Times!1061) (Or!1061) (Equal!1061) (Minus!1061) (Broken!5309 (value!34415 List!5469)) (And!1061) (Div!1061) (LessEqual!1061) (Mod!1061) (Concat!2433) (Not!1061) (Plus!1061) (SpaceValue!1061 (value!34416 List!5469)) (IntegerValue!3185 (value!34417 Int) (text!7876 List!5469)) (StringLiteralValue!3184 (text!7877 List!5469)) (FloatLiteralValue!2123 (text!7878 List!5469)) (BytesLiteralValue!1061 (value!34418 List!5469)) (CommentValue!2123 (value!34419 List!5469)) (StringLiteralValue!3185 (value!34420 List!5469)) (ErrorTokenValue!1061 (msg!1122 List!5469)) )
))
(declare-datatypes ((List!5470 0))(
  ( (Nil!5460) (Cons!5460 (h!10861 C!3664) (t!75143 List!5470)) )
))
(declare-datatypes ((IArray!3509 0))(
  ( (IArray!3510 (innerList!1812 List!5470)) )
))
(declare-datatypes ((Conc!1754 0))(
  ( (Node!1754 (left!4509 Conc!1754) (right!4839 Conc!1754) (csize!3738 Int) (cheight!1965 Int)) (Leaf!2780 (xs!4391 IArray!3509) (csize!3739 Int)) (Empty!1754) )
))
(declare-datatypes ((BalanceConc!3516 0))(
  ( (BalanceConc!3517 (c!103763 Conc!1754)) )
))
(declare-datatypes ((TokenValueInjection!1890 0))(
  ( (TokenValueInjection!1891 (toValue!1884 Int) (toChars!1743 Int)) )
))
(declare-datatypes ((Rule!1874 0))(
  ( (Rule!1875 (regex!1037 Regex!1371) (tag!1299 String!7048) (isSeparator!1037 Bool) (transformation!1037 TokenValueInjection!1890)) )
))
(declare-datatypes ((Token!1810 0))(
  ( (Token!1811 (value!34421 TokenValue!1061) (rule!1763 Rule!1874) (size!4367 Int) (originalCharacters!1076 List!5470)) )
))
(declare-fun token!491 () Token!1810)

(declare-fun input!2705 () List!5470)

(declare-fun list!2263 (BalanceConc!3516) List!5470)

(declare-fun charsOf!666 (Token!1810) BalanceConc!3516)

(assert (=> b!552015 (= res!236726 (= (list!2263 (charsOf!666 token!491)) input!2705))))

(declare-fun b!552017 () Bool)

(declare-fun res!236725 () Bool)

(assert (=> b!552017 (=> (not res!236725) (not e!333884))))

(declare-datatypes ((List!5471 0))(
  ( (Nil!5461) (Cons!5461 (h!10862 Rule!1874) (t!75144 List!5471)) )
))
(declare-fun rules!3103 () List!5471)

(declare-fun isEmpty!3940 (List!5471) Bool)

(assert (=> b!552017 (= res!236725 (not (isEmpty!3940 rules!3103)))))

(declare-fun b!552018 () Bool)

(declare-fun e!333882 () Bool)

(assert (=> b!552018 (= e!333882 false)))

(declare-fun lt!232962 () Bool)

(declare-fun contains!1279 (List!5471 Rule!1874) Bool)

(assert (=> b!552018 (= lt!232962 (contains!1279 rules!3103 (rule!1763 token!491)))))

(declare-fun e!333886 () Bool)

(assert (=> b!552019 (= e!333886 (and tp!174505 tp!174508))))

(declare-fun b!552020 () Bool)

(declare-fun e!333877 () Bool)

(declare-fun tp!174504 () Bool)

(declare-fun e!333878 () Bool)

(declare-fun inv!6846 (String!7048) Bool)

(declare-fun inv!6849 (TokenValueInjection!1890) Bool)

(assert (=> b!552020 (= e!333877 (and tp!174504 (inv!6846 (tag!1299 (rule!1763 token!491))) (inv!6849 (transformation!1037 (rule!1763 token!491))) e!333878))))

(declare-fun b!552021 () Bool)

(declare-fun res!236723 () Bool)

(assert (=> b!552021 (=> (not res!236723) (not e!333884))))

(declare-datatypes ((LexerInterface!923 0))(
  ( (LexerInterfaceExt!920 (__x!4021 Int)) (Lexer!921) )
))
(declare-fun thiss!22590 () LexerInterface!923)

(declare-fun rulesInvariant!886 (LexerInterface!923 List!5471) Bool)

(assert (=> b!552021 (= res!236723 (rulesInvariant!886 thiss!22590 rules!3103))))

(declare-fun b!552022 () Bool)

(declare-fun e!333888 () Bool)

(assert (=> b!552022 (= e!333888 e!333882)))

(declare-fun res!236721 () Bool)

(assert (=> b!552022 (=> (not res!236721) (not e!333882))))

(declare-fun suffix!1342 () List!5470)

(declare-datatypes ((tuple2!6480 0))(
  ( (tuple2!6481 (_1!3504 Token!1810) (_2!3504 List!5470)) )
))
(declare-fun lt!232961 () tuple2!6480)

(assert (=> b!552022 (= res!236721 (and (= (_1!3504 lt!232961) token!491) (= (_2!3504 lt!232961) suffix!1342)))))

(declare-datatypes ((Option!1387 0))(
  ( (None!1386) (Some!1386 (v!16213 tuple2!6480)) )
))
(declare-fun lt!232963 () Option!1387)

(declare-fun get!2070 (Option!1387) tuple2!6480)

(assert (=> b!552022 (= lt!232961 (get!2070 lt!232963))))

(assert (=> b!552023 (= e!333878 (and tp!174509 tp!174503))))

(declare-fun b!552024 () Bool)

(declare-fun e!333881 () Bool)

(declare-fun tp_is_empty!3097 () Bool)

(declare-fun tp!174507 () Bool)

(assert (=> b!552024 (= e!333881 (and tp_is_empty!3097 tp!174507))))

(declare-fun tp!174510 () Bool)

(declare-fun e!333890 () Bool)

(declare-fun b!552025 () Bool)

(assert (=> b!552025 (= e!333890 (and tp!174510 (inv!6846 (tag!1299 (h!10862 rules!3103))) (inv!6849 (transformation!1037 (h!10862 rules!3103))) e!333886))))

(declare-fun res!236722 () Bool)

(assert (=> start!51140 (=> (not res!236722) (not e!333884))))

(get-info :version)

(assert (=> start!51140 (= res!236722 ((_ is Lexer!921) thiss!22590))))

(assert (=> start!51140 e!333884))

(declare-fun e!333879 () Bool)

(assert (=> start!51140 e!333879))

(declare-fun e!333885 () Bool)

(assert (=> start!51140 e!333885))

(declare-fun e!333883 () Bool)

(declare-fun inv!6850 (Token!1810) Bool)

(assert (=> start!51140 (and (inv!6850 token!491) e!333883)))

(assert (=> start!51140 true))

(assert (=> start!51140 e!333881))

(declare-fun b!552016 () Bool)

(declare-fun tp!174506 () Bool)

(assert (=> b!552016 (= e!333885 (and e!333890 tp!174506))))

(declare-fun b!552026 () Bool)

(declare-fun res!236718 () Bool)

(assert (=> b!552026 (=> (not res!236718) (not e!333882))))

(declare-fun isPrefix!679 (List!5470 List!5470) Bool)

(assert (=> b!552026 (= res!236718 (isPrefix!679 input!2705 input!2705))))

(declare-fun b!552027 () Bool)

(assert (=> b!552027 (= e!333884 e!333888)))

(declare-fun res!236720 () Bool)

(assert (=> b!552027 (=> (not res!236720) (not e!333888))))

(declare-fun isDefined!1199 (Option!1387) Bool)

(assert (=> b!552027 (= res!236720 (isDefined!1199 lt!232963))))

(declare-fun maxPrefix!621 (LexerInterface!923 List!5471 List!5470) Option!1387)

(declare-fun ++!1525 (List!5470 List!5470) List!5470)

(assert (=> b!552027 (= lt!232963 (maxPrefix!621 thiss!22590 rules!3103 (++!1525 input!2705 suffix!1342)))))

(declare-fun b!552028 () Bool)

(declare-fun res!236719 () Bool)

(assert (=> b!552028 (=> (not res!236719) (not e!333884))))

(declare-fun isEmpty!3941 (List!5470) Bool)

(assert (=> b!552028 (= res!236719 (not (isEmpty!3941 input!2705)))))

(declare-fun b!552029 () Bool)

(declare-fun tp!174512 () Bool)

(assert (=> b!552029 (= e!333879 (and tp_is_empty!3097 tp!174512))))

(declare-fun tp!174511 () Bool)

(declare-fun b!552030 () Bool)

(declare-fun inv!21 (TokenValue!1061) Bool)

(assert (=> b!552030 (= e!333883 (and (inv!21 (value!34421 token!491)) e!333877 tp!174511))))

(declare-fun b!552031 () Bool)

(declare-fun res!236724 () Bool)

(assert (=> b!552031 (=> (not res!236724) (not e!333882))))

(assert (=> b!552031 (= res!236724 (not ((_ is Some!1386) (maxPrefix!621 thiss!22590 rules!3103 input!2705))))))

(assert (= (and start!51140 res!236722) b!552017))

(assert (= (and b!552017 res!236725) b!552021))

(assert (= (and b!552021 res!236723) b!552028))

(assert (= (and b!552028 res!236719) b!552015))

(assert (= (and b!552015 res!236726) b!552027))

(assert (= (and b!552027 res!236720) b!552022))

(assert (= (and b!552022 res!236721) b!552031))

(assert (= (and b!552031 res!236724) b!552026))

(assert (= (and b!552026 res!236718) b!552018))

(assert (= (and start!51140 ((_ is Cons!5460) suffix!1342)) b!552029))

(assert (= b!552025 b!552019))

(assert (= b!552016 b!552025))

(assert (= (and start!51140 ((_ is Cons!5461) rules!3103)) b!552016))

(assert (= b!552020 b!552023))

(assert (= b!552030 b!552020))

(assert (= start!51140 b!552030))

(assert (= (and start!51140 ((_ is Cons!5460) input!2705)) b!552024))

(declare-fun m!801627 () Bool)

(assert (=> b!552031 m!801627))

(declare-fun m!801629 () Bool)

(assert (=> b!552027 m!801629))

(declare-fun m!801631 () Bool)

(assert (=> b!552027 m!801631))

(assert (=> b!552027 m!801631))

(declare-fun m!801633 () Bool)

(assert (=> b!552027 m!801633))

(declare-fun m!801635 () Bool)

(assert (=> b!552020 m!801635))

(declare-fun m!801637 () Bool)

(assert (=> b!552020 m!801637))

(declare-fun m!801639 () Bool)

(assert (=> start!51140 m!801639))

(declare-fun m!801641 () Bool)

(assert (=> b!552025 m!801641))

(declare-fun m!801643 () Bool)

(assert (=> b!552025 m!801643))

(declare-fun m!801645 () Bool)

(assert (=> b!552017 m!801645))

(declare-fun m!801647 () Bool)

(assert (=> b!552018 m!801647))

(declare-fun m!801649 () Bool)

(assert (=> b!552030 m!801649))

(declare-fun m!801651 () Bool)

(assert (=> b!552021 m!801651))

(declare-fun m!801653 () Bool)

(assert (=> b!552015 m!801653))

(assert (=> b!552015 m!801653))

(declare-fun m!801655 () Bool)

(assert (=> b!552015 m!801655))

(declare-fun m!801657 () Bool)

(assert (=> b!552026 m!801657))

(declare-fun m!801659 () Bool)

(assert (=> b!552028 m!801659))

(declare-fun m!801661 () Bool)

(assert (=> b!552022 m!801661))

(check-sat (not b!552017) (not b!552029) b_and!53891 (not b!552025) (not b!552016) (not b_next!15429) (not b!552022) (not b_next!15427) (not b!552030) (not b!552024) (not b!552021) tp_is_empty!3097 (not b!552031) b_and!53893 (not start!51140) (not b!552027) (not b!552015) (not b_next!15431) b_and!53897 b_and!53895 (not b_next!15425) (not b!552018) (not b!552028) (not b!552026) (not b!552020))
(check-sat b_and!53891 b_and!53893 (not b_next!15431) (not b_next!15429) (not b_next!15427) (not b_next!15425) b_and!53897 b_and!53895)
