; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51144 () Bool)

(assert start!51144)

(declare-fun b!552119 () Bool)

(declare-fun b_free!15425 () Bool)

(declare-fun b_next!15441 () Bool)

(assert (=> b!552119 (= b_free!15425 (not b_next!15441))))

(declare-fun tp!174563 () Bool)

(declare-fun b_and!53907 () Bool)

(assert (=> b!552119 (= tp!174563 b_and!53907)))

(declare-fun b_free!15427 () Bool)

(declare-fun b_next!15443 () Bool)

(assert (=> b!552119 (= b_free!15427 (not b_next!15443))))

(declare-fun tp!174570 () Bool)

(declare-fun b_and!53909 () Bool)

(assert (=> b!552119 (= tp!174570 b_and!53909)))

(declare-fun b!552112 () Bool)

(declare-fun b_free!15429 () Bool)

(declare-fun b_next!15445 () Bool)

(assert (=> b!552112 (= b_free!15429 (not b_next!15445))))

(declare-fun tp!174566 () Bool)

(declare-fun b_and!53911 () Bool)

(assert (=> b!552112 (= tp!174566 b_and!53911)))

(declare-fun b_free!15431 () Bool)

(declare-fun b_next!15447 () Bool)

(assert (=> b!552112 (= b_free!15431 (not b_next!15447))))

(declare-fun tp!174567 () Bool)

(declare-fun b_and!53913 () Bool)

(assert (=> b!552112 (= tp!174567 b_and!53913)))

(declare-fun e!333973 () Bool)

(assert (=> b!552112 (= e!333973 (and tp!174566 tp!174567))))

(declare-fun b!552113 () Bool)

(declare-fun e!333963 () Bool)

(declare-fun tp_is_empty!3101 () Bool)

(declare-fun tp!174571 () Bool)

(assert (=> b!552113 (= e!333963 (and tp_is_empty!3101 tp!174571))))

(declare-fun b!552114 () Bool)

(declare-fun e!333964 () Bool)

(declare-fun e!333962 () Bool)

(assert (=> b!552114 (= e!333964 e!333962)))

(declare-fun res!236769 () Bool)

(assert (=> b!552114 (=> (not res!236769) (not e!333962))))

(declare-datatypes ((C!3668 0))(
  ( (C!3669 (val!2060 Int)) )
))
(declare-datatypes ((Regex!1373 0))(
  ( (ElementMatch!1373 (c!103768 C!3668)) (Concat!2436 (regOne!3258 Regex!1373) (regTwo!3258 Regex!1373)) (EmptyExpr!1373) (Star!1373 (reg!1702 Regex!1373)) (EmptyLang!1373) (Union!1373 (regOne!3259 Regex!1373) (regTwo!3259 Regex!1373)) )
))
(declare-datatypes ((List!5475 0))(
  ( (Nil!5465) (Cons!5465 (h!10866 (_ BitVec 16)) (t!75148 List!5475)) )
))
(declare-datatypes ((List!5476 0))(
  ( (Nil!5466) (Cons!5466 (h!10867 C!3668) (t!75149 List!5476)) )
))
(declare-datatypes ((IArray!3513 0))(
  ( (IArray!3514 (innerList!1814 List!5476)) )
))
(declare-datatypes ((Conc!1756 0))(
  ( (Node!1756 (left!4512 Conc!1756) (right!4842 Conc!1756) (csize!3742 Int) (cheight!1967 Int)) (Leaf!2783 (xs!4393 IArray!3513) (csize!3743 Int)) (Empty!1756) )
))
(declare-datatypes ((BalanceConc!3520 0))(
  ( (BalanceConc!3521 (c!103769 Conc!1756)) )
))
(declare-datatypes ((TokenValue!1063 0))(
  ( (FloatLiteralValue!2126 (text!7886 List!5475)) (TokenValueExt!1062 (__x!4024 Int)) (Broken!5315 (value!34452 List!5475)) (Object!1072) (End!1063) (Def!1063) (Underscore!1063) (Match!1063) (Else!1063) (Error!1063) (Case!1063) (If!1063) (Extends!1063) (Abstract!1063) (Class!1063) (Val!1063) (DelimiterValue!2126 (del!1123 List!5475)) (KeywordValue!1069 (value!34453 List!5475)) (CommentValue!2126 (value!34454 List!5475)) (WhitespaceValue!2126 (value!34455 List!5475)) (IndentationValue!1063 (value!34456 List!5475)) (String!7058) (Int32!1063) (Broken!5316 (value!34457 List!5475)) (Boolean!1064) (Unit!9716) (OperatorValue!1066 (op!1123 List!5475)) (IdentifierValue!2126 (value!34458 List!5475)) (IdentifierValue!2127 (value!34459 List!5475)) (WhitespaceValue!2127 (value!34460 List!5475)) (True!2126) (False!2126) (Broken!5317 (value!34461 List!5475)) (Broken!5318 (value!34462 List!5475)) (True!2127) (RightBrace!1063) (RightBracket!1063) (Colon!1063) (Null!1063) (Comma!1063) (LeftBracket!1063) (False!2127) (LeftBrace!1063) (ImaginaryLiteralValue!1063 (text!7887 List!5475)) (StringLiteralValue!3189 (value!34463 List!5475)) (EOFValue!1063 (value!34464 List!5475)) (IdentValue!1063 (value!34465 List!5475)) (DelimiterValue!2127 (value!34466 List!5475)) (DedentValue!1063 (value!34467 List!5475)) (NewLineValue!1063 (value!34468 List!5475)) (IntegerValue!3189 (value!34469 (_ BitVec 32)) (text!7888 List!5475)) (IntegerValue!3190 (value!34470 Int) (text!7889 List!5475)) (Times!1063) (Or!1063) (Equal!1063) (Minus!1063) (Broken!5319 (value!34471 List!5475)) (And!1063) (Div!1063) (LessEqual!1063) (Mod!1063) (Concat!2437) (Not!1063) (Plus!1063) (SpaceValue!1063 (value!34472 List!5475)) (IntegerValue!3191 (value!34473 Int) (text!7890 List!5475)) (StringLiteralValue!3190 (text!7891 List!5475)) (FloatLiteralValue!2127 (text!7892 List!5475)) (BytesLiteralValue!1063 (value!34474 List!5475)) (CommentValue!2127 (value!34475 List!5475)) (StringLiteralValue!3191 (value!34476 List!5475)) (ErrorTokenValue!1063 (msg!1124 List!5475)) )
))
(declare-datatypes ((String!7059 0))(
  ( (String!7060 (value!34477 String)) )
))
(declare-datatypes ((TokenValueInjection!1894 0))(
  ( (TokenValueInjection!1895 (toValue!1886 Int) (toChars!1745 Int)) )
))
(declare-datatypes ((Rule!1878 0))(
  ( (Rule!1879 (regex!1039 Regex!1373) (tag!1301 String!7059) (isSeparator!1039 Bool) (transformation!1039 TokenValueInjection!1894)) )
))
(declare-datatypes ((Token!1814 0))(
  ( (Token!1815 (value!34478 TokenValue!1063) (rule!1765 Rule!1878) (size!4369 Int) (originalCharacters!1078 List!5476)) )
))
(declare-datatypes ((tuple2!6484 0))(
  ( (tuple2!6485 (_1!3506 Token!1814) (_2!3506 List!5476)) )
))
(declare-datatypes ((Option!1389 0))(
  ( (None!1388) (Some!1388 (v!16215 tuple2!6484)) )
))
(declare-fun lt!232980 () Option!1389)

(declare-fun isDefined!1201 (Option!1389) Bool)

(assert (=> b!552114 (= res!236769 (isDefined!1201 lt!232980))))

(declare-fun suffix!1342 () List!5476)

(declare-datatypes ((List!5477 0))(
  ( (Nil!5467) (Cons!5467 (h!10868 Rule!1878) (t!75150 List!5477)) )
))
(declare-fun rules!3103 () List!5477)

(declare-datatypes ((LexerInterface!925 0))(
  ( (LexerInterfaceExt!922 (__x!4025 Int)) (Lexer!923) )
))
(declare-fun thiss!22590 () LexerInterface!925)

(declare-fun input!2705 () List!5476)

(declare-fun maxPrefix!623 (LexerInterface!925 List!5477 List!5476) Option!1389)

(declare-fun ++!1527 (List!5476 List!5476) List!5476)

(assert (=> b!552114 (= lt!232980 (maxPrefix!623 thiss!22590 rules!3103 (++!1527 input!2705 suffix!1342)))))

(declare-fun b!552115 () Bool)

(declare-fun res!236773 () Bool)

(declare-fun e!333968 () Bool)

(assert (=> b!552115 (=> (not res!236773) (not e!333968))))

(get-info :version)

(assert (=> b!552115 (= res!236773 (not ((_ is Some!1388) (maxPrefix!623 thiss!22590 rules!3103 input!2705))))))

(declare-fun e!333965 () Bool)

(declare-fun b!552116 () Bool)

(declare-fun token!491 () Token!1814)

(declare-fun tp!174572 () Bool)

(declare-fun inv!6853 (String!7059) Bool)

(declare-fun inv!6856 (TokenValueInjection!1894) Bool)

(assert (=> b!552116 (= e!333965 (and tp!174572 (inv!6853 (tag!1301 (rule!1765 token!491))) (inv!6856 (transformation!1039 (rule!1765 token!491))) e!333973))))

(declare-fun b!552117 () Bool)

(assert (=> b!552117 (= e!333962 e!333968)))

(declare-fun res!236772 () Bool)

(assert (=> b!552117 (=> (not res!236772) (not e!333968))))

(declare-fun lt!232981 () tuple2!6484)

(assert (=> b!552117 (= res!236772 (and (= (_1!3506 lt!232981) token!491) (= (_2!3506 lt!232981) suffix!1342)))))

(declare-fun get!2073 (Option!1389) tuple2!6484)

(assert (=> b!552117 (= lt!232981 (get!2073 lt!232980))))

(declare-fun b!552118 () Bool)

(declare-fun e!333967 () Bool)

(declare-fun e!333971 () Bool)

(declare-fun tp!174569 () Bool)

(assert (=> b!552118 (= e!333967 (and e!333971 tp!174569))))

(declare-fun e!333969 () Bool)

(assert (=> b!552119 (= e!333969 (and tp!174563 tp!174570))))

(declare-fun res!236767 () Bool)

(assert (=> start!51144 (=> (not res!236767) (not e!333964))))

(assert (=> start!51144 (= res!236767 ((_ is Lexer!923) thiss!22590))))

(assert (=> start!51144 e!333964))

(declare-fun e!333961 () Bool)

(assert (=> start!51144 e!333961))

(assert (=> start!51144 e!333967))

(declare-fun e!333970 () Bool)

(declare-fun inv!6857 (Token!1814) Bool)

(assert (=> start!51144 (and (inv!6857 token!491) e!333970)))

(assert (=> start!51144 true))

(assert (=> start!51144 e!333963))

(declare-fun b!552120 () Bool)

(declare-fun res!236768 () Bool)

(assert (=> b!552120 (=> (not res!236768) (not e!333964))))

(declare-fun list!2265 (BalanceConc!3520) List!5476)

(declare-fun charsOf!668 (Token!1814) BalanceConc!3520)

(assert (=> b!552120 (= res!236768 (= (list!2265 (charsOf!668 token!491)) input!2705))))

(declare-fun tp!174568 () Bool)

(declare-fun b!552121 () Bool)

(assert (=> b!552121 (= e!333971 (and tp!174568 (inv!6853 (tag!1301 (h!10868 rules!3103))) (inv!6856 (transformation!1039 (h!10868 rules!3103))) e!333969))))

(declare-fun b!552122 () Bool)

(declare-fun res!236771 () Bool)

(assert (=> b!552122 (=> (not res!236771) (not e!333964))))

(declare-fun isEmpty!3944 (List!5476) Bool)

(assert (=> b!552122 (= res!236771 (not (isEmpty!3944 input!2705)))))

(declare-fun b!552123 () Bool)

(declare-fun tp!174564 () Bool)

(assert (=> b!552123 (= e!333961 (and tp_is_empty!3101 tp!174564))))

(declare-fun b!552124 () Bool)

(assert (=> b!552124 (= e!333968 (not true))))

(declare-fun matchR!530 (Regex!1373 List!5476) Bool)

(assert (=> b!552124 (not (matchR!530 (regex!1039 (rule!1765 token!491)) input!2705))))

(declare-datatypes ((Unit!9717 0))(
  ( (Unit!9718) )
))
(declare-fun lt!232979 () Unit!9717)

(declare-fun lemmaMaxPrefNoneThenNoRuleMatches!2 (LexerInterface!925 List!5477 Rule!1878 List!5476 List!5476) Unit!9717)

(assert (=> b!552124 (= lt!232979 (lemmaMaxPrefNoneThenNoRuleMatches!2 thiss!22590 rules!3103 (rule!1765 token!491) input!2705 input!2705))))

(declare-fun b!552125 () Bool)

(declare-fun res!236770 () Bool)

(assert (=> b!552125 (=> (not res!236770) (not e!333964))))

(declare-fun isEmpty!3945 (List!5477) Bool)

(assert (=> b!552125 (= res!236770 (not (isEmpty!3945 rules!3103)))))

(declare-fun b!552126 () Bool)

(declare-fun res!236774 () Bool)

(assert (=> b!552126 (=> (not res!236774) (not e!333964))))

(declare-fun rulesInvariant!888 (LexerInterface!925 List!5477) Bool)

(assert (=> b!552126 (= res!236774 (rulesInvariant!888 thiss!22590 rules!3103))))

(declare-fun tp!174565 () Bool)

(declare-fun b!552127 () Bool)

(declare-fun inv!21 (TokenValue!1063) Bool)

(assert (=> b!552127 (= e!333970 (and (inv!21 (value!34478 token!491)) e!333965 tp!174565))))

(assert (= (and start!51144 res!236767) b!552125))

(assert (= (and b!552125 res!236770) b!552126))

(assert (= (and b!552126 res!236774) b!552122))

(assert (= (and b!552122 res!236771) b!552120))

(assert (= (and b!552120 res!236768) b!552114))

(assert (= (and b!552114 res!236769) b!552117))

(assert (= (and b!552117 res!236772) b!552115))

(assert (= (and b!552115 res!236773) b!552124))

(assert (= (and start!51144 ((_ is Cons!5466) suffix!1342)) b!552123))

(assert (= b!552121 b!552119))

(assert (= b!552118 b!552121))

(assert (= (and start!51144 ((_ is Cons!5467) rules!3103)) b!552118))

(assert (= b!552116 b!552112))

(assert (= b!552127 b!552116))

(assert (= start!51144 b!552127))

(assert (= (and start!51144 ((_ is Cons!5466) input!2705)) b!552113))

(declare-fun m!801699 () Bool)

(assert (=> b!552126 m!801699))

(declare-fun m!801701 () Bool)

(assert (=> b!552116 m!801701))

(declare-fun m!801703 () Bool)

(assert (=> b!552116 m!801703))

(declare-fun m!801705 () Bool)

(assert (=> start!51144 m!801705))

(declare-fun m!801707 () Bool)

(assert (=> b!552120 m!801707))

(assert (=> b!552120 m!801707))

(declare-fun m!801709 () Bool)

(assert (=> b!552120 m!801709))

(declare-fun m!801711 () Bool)

(assert (=> b!552124 m!801711))

(declare-fun m!801713 () Bool)

(assert (=> b!552124 m!801713))

(declare-fun m!801715 () Bool)

(assert (=> b!552114 m!801715))

(declare-fun m!801717 () Bool)

(assert (=> b!552114 m!801717))

(assert (=> b!552114 m!801717))

(declare-fun m!801719 () Bool)

(assert (=> b!552114 m!801719))

(declare-fun m!801721 () Bool)

(assert (=> b!552115 m!801721))

(declare-fun m!801723 () Bool)

(assert (=> b!552122 m!801723))

(declare-fun m!801725 () Bool)

(assert (=> b!552127 m!801725))

(declare-fun m!801727 () Bool)

(assert (=> b!552117 m!801727))

(declare-fun m!801729 () Bool)

(assert (=> b!552125 m!801729))

(declare-fun m!801731 () Bool)

(assert (=> b!552121 m!801731))

(declare-fun m!801733 () Bool)

(assert (=> b!552121 m!801733))

(check-sat b_and!53911 b_and!53909 (not start!51144) (not b_next!15441) (not b!552121) (not b!552122) b_and!53907 (not b_next!15443) (not b!552114) (not b!552127) (not b_next!15445) b_and!53913 (not b!552118) (not b_next!15447) (not b!552113) (not b!552124) (not b!552116) (not b!552123) (not b!552117) tp_is_empty!3101 (not b!552120) (not b!552115) (not b!552126) (not b!552125))
(check-sat b_and!53911 b_and!53909 (not b_next!15441) b_and!53907 (not b_next!15443) (not b_next!15447) (not b_next!15445) b_and!53913)
