; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297666 () Bool)

(assert start!297666)

(declare-fun b!3178347 () Bool)

(declare-fun b_free!83617 () Bool)

(declare-fun b_next!84321 () Bool)

(assert (=> b!3178347 (= b_free!83617 (not b_next!84321))))

(declare-fun tp!1005403 () Bool)

(declare-fun b_and!209911 () Bool)

(assert (=> b!3178347 (= tp!1005403 b_and!209911)))

(declare-fun b_free!83619 () Bool)

(declare-fun b_next!84323 () Bool)

(assert (=> b!3178347 (= b_free!83619 (not b_next!84323))))

(declare-fun tp!1005400 () Bool)

(declare-fun b_and!209913 () Bool)

(assert (=> b!3178347 (= tp!1005400 b_and!209913)))

(declare-fun b!3178334 () Bool)

(declare-fun b_free!83621 () Bool)

(declare-fun b_next!84325 () Bool)

(assert (=> b!3178334 (= b_free!83621 (not b_next!84325))))

(declare-fun tp!1005397 () Bool)

(declare-fun b_and!209915 () Bool)

(assert (=> b!3178334 (= tp!1005397 b_and!209915)))

(declare-fun b_free!83623 () Bool)

(declare-fun b_next!84327 () Bool)

(assert (=> b!3178334 (= b_free!83623 (not b_next!84327))))

(declare-fun tp!1005401 () Bool)

(declare-fun b_and!209917 () Bool)

(assert (=> b!3178334 (= tp!1005401 b_and!209917)))

(declare-fun b!3178352 () Bool)

(declare-fun b_free!83625 () Bool)

(declare-fun b_next!84329 () Bool)

(assert (=> b!3178352 (= b_free!83625 (not b_next!84329))))

(declare-fun tp!1005394 () Bool)

(declare-fun b_and!209919 () Bool)

(assert (=> b!3178352 (= tp!1005394 b_and!209919)))

(declare-fun b_free!83627 () Bool)

(declare-fun b_next!84331 () Bool)

(assert (=> b!3178352 (= b_free!83627 (not b_next!84331))))

(declare-fun tp!1005404 () Bool)

(declare-fun b_and!209921 () Bool)

(assert (=> b!3178352 (= tp!1005404 b_and!209921)))

(declare-fun b!3178333 () Bool)

(declare-fun res!1291347 () Bool)

(declare-fun e!1979808 () Bool)

(assert (=> b!3178333 (=> res!1291347 e!1979808)))

(declare-datatypes ((LexerInterface!4691 0))(
  ( (LexerInterfaceExt!4688 (__x!22881 Int)) (Lexer!4689) )
))
(declare-fun thiss!18206 () LexerInterface!4691)

(declare-datatypes ((C!19908 0))(
  ( (C!19909 (val!12002 Int)) )
))
(declare-datatypes ((Regex!9861 0))(
  ( (ElementMatch!9861 (c!534032 C!19908)) (Concat!15193 (regOne!20234 Regex!9861) (regTwo!20234 Regex!9861)) (EmptyExpr!9861) (Star!9861 (reg!10190 Regex!9861)) (EmptyLang!9861) (Union!9861 (regOne!20235 Regex!9861) (regTwo!20235 Regex!9861)) )
))
(declare-datatypes ((List!35784 0))(
  ( (Nil!35660) (Cons!35660 (h!41080 (_ BitVec 16)) (t!234887 List!35784)) )
))
(declare-datatypes ((TokenValue!5332 0))(
  ( (FloatLiteralValue!10664 (text!37769 List!35784)) (TokenValueExt!5331 (__x!22882 Int)) (Broken!26660 (value!165841 List!35784)) (Object!5455) (End!5332) (Def!5332) (Underscore!5332) (Match!5332) (Else!5332) (Error!5332) (Case!5332) (If!5332) (Extends!5332) (Abstract!5332) (Class!5332) (Val!5332) (DelimiterValue!10664 (del!5392 List!35784)) (KeywordValue!5338 (value!165842 List!35784)) (CommentValue!10664 (value!165843 List!35784)) (WhitespaceValue!10664 (value!165844 List!35784)) (IndentationValue!5332 (value!165845 List!35784)) (String!39993) (Int32!5332) (Broken!26661 (value!165846 List!35784)) (Boolean!5333) (Unit!50089) (OperatorValue!5335 (op!5392 List!35784)) (IdentifierValue!10664 (value!165847 List!35784)) (IdentifierValue!10665 (value!165848 List!35784)) (WhitespaceValue!10665 (value!165849 List!35784)) (True!10664) (False!10664) (Broken!26662 (value!165850 List!35784)) (Broken!26663 (value!165851 List!35784)) (True!10665) (RightBrace!5332) (RightBracket!5332) (Colon!5332) (Null!5332) (Comma!5332) (LeftBracket!5332) (False!10665) (LeftBrace!5332) (ImaginaryLiteralValue!5332 (text!37770 List!35784)) (StringLiteralValue!15996 (value!165852 List!35784)) (EOFValue!5332 (value!165853 List!35784)) (IdentValue!5332 (value!165854 List!35784)) (DelimiterValue!10665 (value!165855 List!35784)) (DedentValue!5332 (value!165856 List!35784)) (NewLineValue!5332 (value!165857 List!35784)) (IntegerValue!15996 (value!165858 (_ BitVec 32)) (text!37771 List!35784)) (IntegerValue!15997 (value!165859 Int) (text!37772 List!35784)) (Times!5332) (Or!5332) (Equal!5332) (Minus!5332) (Broken!26664 (value!165860 List!35784)) (And!5332) (Div!5332) (LessEqual!5332) (Mod!5332) (Concat!15194) (Not!5332) (Plus!5332) (SpaceValue!5332 (value!165861 List!35784)) (IntegerValue!15998 (value!165862 Int) (text!37773 List!35784)) (StringLiteralValue!15997 (text!37774 List!35784)) (FloatLiteralValue!10665 (text!37775 List!35784)) (BytesLiteralValue!5332 (value!165863 List!35784)) (CommentValue!10665 (value!165864 List!35784)) (StringLiteralValue!15998 (value!165865 List!35784)) (ErrorTokenValue!5332 (msg!5393 List!35784)) )
))
(declare-datatypes ((List!35785 0))(
  ( (Nil!35661) (Cons!35661 (h!41081 C!19908) (t!234888 List!35785)) )
))
(declare-datatypes ((IArray!21163 0))(
  ( (IArray!21164 (innerList!10639 List!35785)) )
))
(declare-datatypes ((Conc!10579 0))(
  ( (Node!10579 (left!27740 Conc!10579) (right!28070 Conc!10579) (csize!21388 Int) (cheight!10790 Int)) (Leaf!16741 (xs!13697 IArray!21163) (csize!21389 Int)) (Empty!10579) )
))
(declare-datatypes ((BalanceConc!20772 0))(
  ( (BalanceConc!20773 (c!534033 Conc!10579)) )
))
(declare-datatypes ((String!39994 0))(
  ( (String!39995 (value!165866 String)) )
))
(declare-datatypes ((TokenValueInjection!10092 0))(
  ( (TokenValueInjection!10093 (toValue!7162 Int) (toChars!7021 Int)) )
))
(declare-datatypes ((Rule!10004 0))(
  ( (Rule!10005 (regex!5102 Regex!9861) (tag!5606 String!39994) (isSeparator!5102 Bool) (transformation!5102 TokenValueInjection!10092)) )
))
(declare-datatypes ((List!35786 0))(
  ( (Nil!35662) (Cons!35662 (h!41082 Rule!10004) (t!234889 List!35786)) )
))
(declare-fun rules!2135 () List!35786)

(declare-datatypes ((Token!9570 0))(
  ( (Token!9571 (value!165867 TokenValue!5332) (rule!7512 Rule!10004) (size!26931 Int) (originalCharacters!5816 List!35785)) )
))
(declare-datatypes ((List!35787 0))(
  ( (Nil!35663) (Cons!35663 (h!41083 Token!9570) (t!234890 List!35787)) )
))
(declare-fun tokens!494 () List!35787)

(declare-fun rulesProduceIndividualToken!2183 (LexerInterface!4691 List!35786 Token!9570) Bool)

(assert (=> b!3178333 (= res!1291347 (not (rulesProduceIndividualToken!2183 thiss!18206 rules!2135 (h!41083 tokens!494))))))

(declare-fun e!1979797 () Bool)

(assert (=> b!3178334 (= e!1979797 (and tp!1005397 tp!1005401))))

(declare-fun res!1291345 () Bool)

(declare-fun e!1979796 () Bool)

(assert (=> start!297666 (=> (not res!1291345) (not e!1979796))))

(get-info :version)

(assert (=> start!297666 (= res!1291345 ((_ is Lexer!4689) thiss!18206))))

(assert (=> start!297666 e!1979796))

(assert (=> start!297666 true))

(declare-fun e!1979801 () Bool)

(assert (=> start!297666 e!1979801))

(declare-fun e!1979807 () Bool)

(assert (=> start!297666 e!1979807))

(declare-fun separatorToken!241 () Token!9570)

(declare-fun e!1979799 () Bool)

(declare-fun inv!48516 (Token!9570) Bool)

(assert (=> start!297666 (and (inv!48516 separatorToken!241) e!1979799)))

(declare-fun b!3178335 () Bool)

(declare-fun res!1291344 () Bool)

(assert (=> b!3178335 (=> (not res!1291344) (not e!1979796))))

(declare-fun sepAndNonSepRulesDisjointChars!1296 (List!35786 List!35786) Bool)

(assert (=> b!3178335 (= res!1291344 (sepAndNonSepRulesDisjointChars!1296 rules!2135 rules!2135))))

(declare-fun b!3178336 () Bool)

(declare-fun e!1979795 () Bool)

(declare-fun tp!1005402 () Bool)

(assert (=> b!3178336 (= e!1979801 (and e!1979795 tp!1005402))))

(declare-fun b!3178337 () Bool)

(declare-fun e!1979800 () Bool)

(declare-fun tp!1005398 () Bool)

(declare-fun inv!21 (TokenValue!5332) Bool)

(assert (=> b!3178337 (= e!1979799 (and (inv!21 (value!165867 separatorToken!241)) e!1979800 tp!1005398))))

(declare-fun b!3178338 () Bool)

(declare-fun res!1291341 () Bool)

(assert (=> b!3178338 (=> (not res!1291341) (not e!1979796))))

(assert (=> b!3178338 (= res!1291341 (and (not ((_ is Nil!35663) tokens!494)) ((_ is Nil!35663) (t!234890 tokens!494))))))

(declare-fun tp!1005405 () Bool)

(declare-fun b!3178339 () Bool)

(declare-fun inv!48513 (String!39994) Bool)

(declare-fun inv!48517 (TokenValueInjection!10092) Bool)

(assert (=> b!3178339 (= e!1979795 (and tp!1005405 (inv!48513 (tag!5606 (h!41082 rules!2135))) (inv!48517 (transformation!5102 (h!41082 rules!2135))) e!1979797))))

(declare-fun b!3178340 () Bool)

(declare-fun res!1291349 () Bool)

(assert (=> b!3178340 (=> (not res!1291349) (not e!1979796))))

(assert (=> b!3178340 (= res!1291349 (isSeparator!5102 (rule!7512 separatorToken!241)))))

(declare-fun e!1979805 () Bool)

(declare-fun tp!1005399 () Bool)

(declare-fun b!3178341 () Bool)

(assert (=> b!3178341 (= e!1979800 (and tp!1005399 (inv!48513 (tag!5606 (rule!7512 separatorToken!241))) (inv!48517 (transformation!5102 (rule!7512 separatorToken!241))) e!1979805))))

(declare-fun tp!1005396 () Bool)

(declare-fun e!1979793 () Bool)

(declare-fun e!1979804 () Bool)

(declare-fun b!3178342 () Bool)

(assert (=> b!3178342 (= e!1979804 (and tp!1005396 (inv!48513 (tag!5606 (rule!7512 (h!41083 tokens!494)))) (inv!48517 (transformation!5102 (rule!7512 (h!41083 tokens!494)))) e!1979793))))

(declare-fun b!3178343 () Bool)

(declare-fun res!1291343 () Bool)

(assert (=> b!3178343 (=> (not res!1291343) (not e!1979796))))

(assert (=> b!3178343 (= res!1291343 (rulesProduceIndividualToken!2183 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1979802 () Bool)

(declare-fun b!3178344 () Bool)

(declare-fun tp!1005406 () Bool)

(assert (=> b!3178344 (= e!1979802 (and (inv!21 (value!165867 (h!41083 tokens!494))) e!1979804 tp!1005406))))

(declare-fun b!3178345 () Bool)

(declare-fun e!1979798 () Bool)

(assert (=> b!3178345 (= e!1979798 e!1979808)))

(declare-fun res!1291348 () Bool)

(assert (=> b!3178345 (=> res!1291348 e!1979808)))

(declare-fun lt!1068234 () List!35785)

(declare-fun lt!1068236 () List!35785)

(declare-fun lt!1068233 () List!35785)

(assert (=> b!3178345 (= res!1291348 (or (not (= lt!1068234 lt!1068236)) (not (= lt!1068233 lt!1068236))))))

(declare-fun list!12655 (BalanceConc!20772) List!35785)

(declare-fun charsOf!3124 (Token!9570) BalanceConc!20772)

(assert (=> b!3178345 (= lt!1068236 (list!12655 (charsOf!3124 (h!41083 tokens!494))))))

(declare-fun b!3178346 () Bool)

(assert (=> b!3178346 (= e!1979808 true)))

(declare-fun lt!1068235 () BalanceConc!20772)

(declare-fun seqFromList!3283 (List!35785) BalanceConc!20772)

(assert (=> b!3178346 (= lt!1068235 (seqFromList!3283 lt!1068236))))

(assert (=> b!3178347 (= e!1979793 (and tp!1005403 tp!1005400))))

(declare-fun b!3178348 () Bool)

(declare-fun res!1291339 () Bool)

(assert (=> b!3178348 (=> (not res!1291339) (not e!1979796))))

(declare-fun isEmpty!19783 (List!35786) Bool)

(assert (=> b!3178348 (= res!1291339 (not (isEmpty!19783 rules!2135)))))

(declare-fun b!3178349 () Bool)

(declare-fun res!1291340 () Bool)

(assert (=> b!3178349 (=> (not res!1291340) (not e!1979796))))

(declare-datatypes ((IArray!21165 0))(
  ( (IArray!21166 (innerList!10640 List!35787)) )
))
(declare-datatypes ((Conc!10580 0))(
  ( (Node!10580 (left!27741 Conc!10580) (right!28071 Conc!10580) (csize!21390 Int) (cheight!10791 Int)) (Leaf!16742 (xs!13698 IArray!21165) (csize!21391 Int)) (Empty!10580) )
))
(declare-datatypes ((BalanceConc!20774 0))(
  ( (BalanceConc!20775 (c!534034 Conc!10580)) )
))
(declare-fun rulesProduceEachTokenIndividually!1142 (LexerInterface!4691 List!35786 BalanceConc!20774) Bool)

(declare-fun seqFromList!3284 (List!35787) BalanceConc!20774)

(assert (=> b!3178349 (= res!1291340 (rulesProduceEachTokenIndividually!1142 thiss!18206 rules!2135 (seqFromList!3284 tokens!494)))))

(declare-fun b!3178350 () Bool)

(assert (=> b!3178350 (= e!1979796 (not e!1979798))))

(declare-fun res!1291346 () Bool)

(assert (=> b!3178350 (=> res!1291346 e!1979798)))

(assert (=> b!3178350 (= res!1291346 (not (= lt!1068233 lt!1068234)))))

(declare-fun printList!1245 (LexerInterface!4691 List!35787) List!35785)

(assert (=> b!3178350 (= lt!1068234 (printList!1245 thiss!18206 (Cons!35663 (h!41083 tokens!494) Nil!35663)))))

(declare-fun lt!1068231 () BalanceConc!20772)

(assert (=> b!3178350 (= lt!1068233 (list!12655 lt!1068231))))

(declare-fun lt!1068232 () BalanceConc!20774)

(declare-fun printTailRec!1190 (LexerInterface!4691 BalanceConc!20774 Int BalanceConc!20772) BalanceConc!20772)

(assert (=> b!3178350 (= lt!1068231 (printTailRec!1190 thiss!18206 lt!1068232 0 (BalanceConc!20773 Empty!10579)))))

(declare-fun print!1758 (LexerInterface!4691 BalanceConc!20774) BalanceConc!20772)

(assert (=> b!3178350 (= lt!1068231 (print!1758 thiss!18206 lt!1068232))))

(declare-fun singletonSeq!2198 (Token!9570) BalanceConc!20774)

(assert (=> b!3178350 (= lt!1068232 (singletonSeq!2198 (h!41083 tokens!494)))))

(declare-fun tp!1005395 () Bool)

(declare-fun b!3178351 () Bool)

(assert (=> b!3178351 (= e!1979807 (and (inv!48516 (h!41083 tokens!494)) e!1979802 tp!1005395))))

(assert (=> b!3178352 (= e!1979805 (and tp!1005394 tp!1005404))))

(declare-fun b!3178353 () Bool)

(declare-fun res!1291342 () Bool)

(assert (=> b!3178353 (=> (not res!1291342) (not e!1979796))))

(declare-fun rulesInvariant!4088 (LexerInterface!4691 List!35786) Bool)

(assert (=> b!3178353 (= res!1291342 (rulesInvariant!4088 thiss!18206 rules!2135))))

(declare-fun b!3178354 () Bool)

(declare-fun res!1291338 () Bool)

(assert (=> b!3178354 (=> (not res!1291338) (not e!1979796))))

(declare-fun lambda!116293 () Int)

(declare-fun forall!7210 (List!35787 Int) Bool)

(assert (=> b!3178354 (= res!1291338 (forall!7210 tokens!494 lambda!116293))))

(assert (= (and start!297666 res!1291345) b!3178348))

(assert (= (and b!3178348 res!1291339) b!3178353))

(assert (= (and b!3178353 res!1291342) b!3178349))

(assert (= (and b!3178349 res!1291340) b!3178343))

(assert (= (and b!3178343 res!1291343) b!3178340))

(assert (= (and b!3178340 res!1291349) b!3178354))

(assert (= (and b!3178354 res!1291338) b!3178335))

(assert (= (and b!3178335 res!1291344) b!3178338))

(assert (= (and b!3178338 res!1291341) b!3178350))

(assert (= (and b!3178350 (not res!1291346)) b!3178345))

(assert (= (and b!3178345 (not res!1291348)) b!3178333))

(assert (= (and b!3178333 (not res!1291347)) b!3178346))

(assert (= b!3178339 b!3178334))

(assert (= b!3178336 b!3178339))

(assert (= (and start!297666 ((_ is Cons!35662) rules!2135)) b!3178336))

(assert (= b!3178342 b!3178347))

(assert (= b!3178344 b!3178342))

(assert (= b!3178351 b!3178344))

(assert (= (and start!297666 ((_ is Cons!35663) tokens!494)) b!3178351))

(assert (= b!3178341 b!3178352))

(assert (= b!3178337 b!3178341))

(assert (= start!297666 b!3178337))

(declare-fun m!3434795 () Bool)

(assert (=> b!3178344 m!3434795))

(declare-fun m!3434797 () Bool)

(assert (=> b!3178337 m!3434797))

(declare-fun m!3434799 () Bool)

(assert (=> b!3178342 m!3434799))

(declare-fun m!3434801 () Bool)

(assert (=> b!3178342 m!3434801))

(declare-fun m!3434803 () Bool)

(assert (=> b!3178348 m!3434803))

(declare-fun m!3434805 () Bool)

(assert (=> b!3178346 m!3434805))

(declare-fun m!3434807 () Bool)

(assert (=> b!3178333 m!3434807))

(declare-fun m!3434809 () Bool)

(assert (=> b!3178335 m!3434809))

(declare-fun m!3434811 () Bool)

(assert (=> b!3178349 m!3434811))

(assert (=> b!3178349 m!3434811))

(declare-fun m!3434813 () Bool)

(assert (=> b!3178349 m!3434813))

(declare-fun m!3434815 () Bool)

(assert (=> start!297666 m!3434815))

(declare-fun m!3434817 () Bool)

(assert (=> b!3178354 m!3434817))

(declare-fun m!3434819 () Bool)

(assert (=> b!3178343 m!3434819))

(declare-fun m!3434821 () Bool)

(assert (=> b!3178339 m!3434821))

(declare-fun m!3434823 () Bool)

(assert (=> b!3178339 m!3434823))

(declare-fun m!3434825 () Bool)

(assert (=> b!3178353 m!3434825))

(declare-fun m!3434827 () Bool)

(assert (=> b!3178351 m!3434827))

(declare-fun m!3434829 () Bool)

(assert (=> b!3178350 m!3434829))

(declare-fun m!3434831 () Bool)

(assert (=> b!3178350 m!3434831))

(declare-fun m!3434833 () Bool)

(assert (=> b!3178350 m!3434833))

(declare-fun m!3434835 () Bool)

(assert (=> b!3178350 m!3434835))

(declare-fun m!3434837 () Bool)

(assert (=> b!3178350 m!3434837))

(declare-fun m!3434839 () Bool)

(assert (=> b!3178345 m!3434839))

(assert (=> b!3178345 m!3434839))

(declare-fun m!3434841 () Bool)

(assert (=> b!3178345 m!3434841))

(declare-fun m!3434843 () Bool)

(assert (=> b!3178341 m!3434843))

(declare-fun m!3434845 () Bool)

(assert (=> b!3178341 m!3434845))

(check-sat (not b!3178339) (not b!3178344) (not b!3178345) (not b!3178346) (not b!3178349) (not b_next!84321) (not b!3178333) (not b_next!84331) (not b!3178353) (not b!3178336) b_and!209913 (not b!3178350) b_and!209919 (not b!3178354) (not b_next!84327) b_and!209911 (not b!3178351) (not b!3178348) (not start!297666) (not b_next!84323) (not b!3178337) b_and!209915 (not b!3178342) (not b!3178335) (not b!3178341) (not b_next!84325) b_and!209921 (not b_next!84329) (not b!3178343) b_and!209917)
(check-sat (not b_next!84327) b_and!209915 (not b_next!84321) (not b_next!84325) (not b_next!84331) b_and!209917 b_and!209913 b_and!209919 b_and!209911 (not b_next!84323) b_and!209921 (not b_next!84329))
