; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147730 () Bool)

(assert start!147730)

(declare-fun b!1579106 () Bool)

(declare-fun b_free!42615 () Bool)

(declare-fun b_next!43319 () Bool)

(assert (=> b!1579106 (= b_free!42615 (not b_next!43319))))

(declare-fun tp!464906 () Bool)

(declare-fun b_and!110605 () Bool)

(assert (=> b!1579106 (= tp!464906 b_and!110605)))

(declare-fun b_free!42617 () Bool)

(declare-fun b_next!43321 () Bool)

(assert (=> b!1579106 (= b_free!42617 (not b_next!43321))))

(declare-fun tp!464905 () Bool)

(declare-fun b_and!110607 () Bool)

(assert (=> b!1579106 (= tp!464905 b_and!110607)))

(declare-fun b!1579118 () Bool)

(declare-fun b_free!42619 () Bool)

(declare-fun b_next!43323 () Bool)

(assert (=> b!1579118 (= b_free!42619 (not b_next!43323))))

(declare-fun tp!464911 () Bool)

(declare-fun b_and!110609 () Bool)

(assert (=> b!1579118 (= tp!464911 b_and!110609)))

(declare-fun b_free!42621 () Bool)

(declare-fun b_next!43325 () Bool)

(assert (=> b!1579118 (= b_free!42621 (not b_next!43325))))

(declare-fun tp!464909 () Bool)

(declare-fun b_and!110611 () Bool)

(assert (=> b!1579118 (= tp!464909 b_and!110611)))

(declare-fun b!1579102 () Bool)

(declare-fun e!1014380 () Bool)

(assert (=> b!1579102 (= e!1014380 true)))

(declare-datatypes ((C!8936 0))(
  ( (C!8937 (val!5064 Int)) )
))
(declare-datatypes ((List!17405 0))(
  ( (Nil!17335) (Cons!17335 (h!22736 C!8936) (t!143582 List!17405)) )
))
(declare-datatypes ((IArray!11513 0))(
  ( (IArray!11514 (innerList!5814 List!17405)) )
))
(declare-datatypes ((Conc!5754 0))(
  ( (Node!5754 (left!14010 Conc!5754) (right!14340 Conc!5754) (csize!11738 Int) (cheight!5965 Int)) (Leaf!8501 (xs!8558 IArray!11513) (csize!11739 Int)) (Empty!5754) )
))
(declare-datatypes ((BalanceConc!11452 0))(
  ( (BalanceConc!11453 (c!255931 Conc!5754)) )
))
(declare-fun lt!551864 () BalanceConc!11452)

(declare-fun lt!551857 () List!17405)

(declare-fun seqFromList!1855 (List!17405) BalanceConc!11452)

(assert (=> b!1579102 (= lt!551864 (seqFromList!1855 lt!551857))))

(declare-fun b!1579103 () Bool)

(declare-fun e!1014375 () Bool)

(declare-fun e!1014369 () Bool)

(assert (=> b!1579103 (= e!1014375 e!1014369)))

(declare-fun res!703869 () Bool)

(assert (=> b!1579103 (=> res!703869 e!1014369)))

(declare-datatypes ((List!17406 0))(
  ( (Nil!17336) (Cons!17336 (h!22737 (_ BitVec 16)) (t!143583 List!17406)) )
))
(declare-datatypes ((TokenValue!3143 0))(
  ( (FloatLiteralValue!6286 (text!22446 List!17406)) (TokenValueExt!3142 (__x!11588 Int)) (Broken!15715 (value!96657 List!17406)) (Object!3212) (End!3143) (Def!3143) (Underscore!3143) (Match!3143) (Else!3143) (Error!3143) (Case!3143) (If!3143) (Extends!3143) (Abstract!3143) (Class!3143) (Val!3143) (DelimiterValue!6286 (del!3203 List!17406)) (KeywordValue!3149 (value!96658 List!17406)) (CommentValue!6286 (value!96659 List!17406)) (WhitespaceValue!6286 (value!96660 List!17406)) (IndentationValue!3143 (value!96661 List!17406)) (String!20046) (Int32!3143) (Broken!15716 (value!96662 List!17406)) (Boolean!3144) (Unit!26952) (OperatorValue!3146 (op!3203 List!17406)) (IdentifierValue!6286 (value!96663 List!17406)) (IdentifierValue!6287 (value!96664 List!17406)) (WhitespaceValue!6287 (value!96665 List!17406)) (True!6286) (False!6286) (Broken!15717 (value!96666 List!17406)) (Broken!15718 (value!96667 List!17406)) (True!6287) (RightBrace!3143) (RightBracket!3143) (Colon!3143) (Null!3143) (Comma!3143) (LeftBracket!3143) (False!6287) (LeftBrace!3143) (ImaginaryLiteralValue!3143 (text!22447 List!17406)) (StringLiteralValue!9429 (value!96668 List!17406)) (EOFValue!3143 (value!96669 List!17406)) (IdentValue!3143 (value!96670 List!17406)) (DelimiterValue!6287 (value!96671 List!17406)) (DedentValue!3143 (value!96672 List!17406)) (NewLineValue!3143 (value!96673 List!17406)) (IntegerValue!9429 (value!96674 (_ BitVec 32)) (text!22448 List!17406)) (IntegerValue!9430 (value!96675 Int) (text!22449 List!17406)) (Times!3143) (Or!3143) (Equal!3143) (Minus!3143) (Broken!15719 (value!96676 List!17406)) (And!3143) (Div!3143) (LessEqual!3143) (Mod!3143) (Concat!7524) (Not!3143) (Plus!3143) (SpaceValue!3143 (value!96677 List!17406)) (IntegerValue!9431 (value!96678 Int) (text!22450 List!17406)) (StringLiteralValue!9430 (text!22451 List!17406)) (FloatLiteralValue!6287 (text!22452 List!17406)) (BytesLiteralValue!3143 (value!96679 List!17406)) (CommentValue!6287 (value!96680 List!17406)) (StringLiteralValue!9431 (value!96681 List!17406)) (ErrorTokenValue!3143 (msg!3204 List!17406)) )
))
(declare-datatypes ((Regex!4381 0))(
  ( (ElementMatch!4381 (c!255932 C!8936)) (Concat!7525 (regOne!9274 Regex!4381) (regTwo!9274 Regex!4381)) (EmptyExpr!4381) (Star!4381 (reg!4710 Regex!4381)) (EmptyLang!4381) (Union!4381 (regOne!9275 Regex!4381) (regTwo!9275 Regex!4381)) )
))
(declare-datatypes ((String!20047 0))(
  ( (String!20048 (value!96682 String)) )
))
(declare-datatypes ((TokenValueInjection!5946 0))(
  ( (TokenValueInjection!5947 (toValue!4456 Int) (toChars!4315 Int)) )
))
(declare-datatypes ((Rule!5906 0))(
  ( (Rule!5907 (regex!3053 Regex!4381) (tag!3319 String!20047) (isSeparator!3053 Bool) (transformation!3053 TokenValueInjection!5946)) )
))
(declare-datatypes ((Token!5672 0))(
  ( (Token!5673 (value!96683 TokenValue!3143) (rule!4849 Rule!5906) (size!13954 Int) (originalCharacters!3867 List!17405)) )
))
(declare-datatypes ((List!17407 0))(
  ( (Nil!17337) (Cons!17337 (h!22738 Token!5672) (t!143584 List!17407)) )
))
(declare-fun lt!551855 () List!17407)

(declare-fun lt!551861 () List!17407)

(declare-fun lt!551858 () List!17407)

(assert (=> b!1579103 (= res!703869 (or (not (= lt!551861 lt!551855)) (not (= lt!551855 lt!551858))))))

(declare-datatypes ((IArray!11515 0))(
  ( (IArray!11516 (innerList!5815 List!17407)) )
))
(declare-datatypes ((Conc!5755 0))(
  ( (Node!5755 (left!14011 Conc!5755) (right!14341 Conc!5755) (csize!11740 Int) (cheight!5966 Int)) (Leaf!8502 (xs!8559 IArray!11515) (csize!11741 Int)) (Empty!5755) )
))
(declare-datatypes ((BalanceConc!11454 0))(
  ( (BalanceConc!11455 (c!255933 Conc!5755)) )
))
(declare-fun lt!551859 () BalanceConc!11454)

(declare-fun list!6695 (BalanceConc!11454) List!17407)

(assert (=> b!1579103 (= lt!551855 (list!6695 lt!551859))))

(assert (=> b!1579103 (= lt!551861 lt!551858)))

(declare-fun tokens!457 () List!17407)

(declare-fun prepend!527 (BalanceConc!11454 Token!5672) BalanceConc!11454)

(declare-fun seqFromList!1856 (List!17407) BalanceConc!11454)

(assert (=> b!1579103 (= lt!551858 (list!6695 (prepend!527 (seqFromList!1856 (t!143584 (t!143584 tokens!457))) (h!22738 (t!143584 tokens!457)))))))

(declare-datatypes ((Unit!26953 0))(
  ( (Unit!26954) )
))
(declare-fun lt!551862 () Unit!26953)

(declare-datatypes ((tuple2!16804 0))(
  ( (tuple2!16805 (_1!9804 BalanceConc!11454) (_2!9804 BalanceConc!11452)) )
))
(declare-fun lt!551849 () tuple2!16804)

(declare-fun seqFromListBHdTlConstructive!130 (Token!5672 List!17407 BalanceConc!11454) Unit!26953)

(assert (=> b!1579103 (= lt!551862 (seqFromListBHdTlConstructive!130 (h!22738 (t!143584 tokens!457)) (t!143584 (t!143584 tokens!457)) (_1!9804 lt!551849)))))

(declare-fun b!1579104 () Bool)

(declare-fun res!703874 () Bool)

(declare-fun e!1014379 () Bool)

(assert (=> b!1579104 (=> (not res!703874) (not e!1014379))))

(get-info :version)

(assert (=> b!1579104 (= res!703874 (and (not ((_ is Nil!17337) tokens!457)) (not ((_ is Nil!17337) (t!143584 tokens!457)))))))

(declare-fun b!1579105 () Bool)

(declare-fun res!703878 () Bool)

(assert (=> b!1579105 (=> res!703878 e!1014380)))

(declare-datatypes ((List!17408 0))(
  ( (Nil!17338) (Cons!17338 (h!22739 Rule!5906) (t!143585 List!17408)) )
))
(declare-fun rules!1846 () List!17408)

(declare-datatypes ((LexerInterface!2682 0))(
  ( (LexerInterfaceExt!2679 (__x!11589 Int)) (Lexer!2680) )
))
(declare-fun thiss!17113 () LexerInterface!2682)

(declare-fun rulesProduceIndividualToken!1334 (LexerInterface!2682 List!17408 Token!5672) Bool)

(assert (=> b!1579105 (= res!703878 (not (rulesProduceIndividualToken!1334 thiss!17113 rules!1846 (h!22738 tokens!457))))))

(declare-fun b!1579107 () Bool)

(declare-fun e!1014371 () Bool)

(declare-fun e!1014377 () Bool)

(declare-fun tp!464910 () Bool)

(declare-fun inv!22748 (String!20047) Bool)

(declare-fun inv!22751 (TokenValueInjection!5946) Bool)

(assert (=> b!1579107 (= e!1014377 (and tp!464910 (inv!22748 (tag!3319 (rule!4849 (h!22738 tokens!457)))) (inv!22751 (transformation!3053 (rule!4849 (h!22738 tokens!457)))) e!1014371))))

(declare-fun e!1014368 () Bool)

(declare-fun b!1579108 () Bool)

(declare-fun tp!464907 () Bool)

(declare-fun inv!21 (TokenValue!3143) Bool)

(assert (=> b!1579108 (= e!1014368 (and (inv!21 (value!96683 (h!22738 tokens!457))) e!1014377 tp!464907))))

(declare-fun b!1579109 () Bool)

(declare-fun res!703871 () Bool)

(assert (=> b!1579109 (=> (not res!703871) (not e!1014379))))

(declare-fun isEmpty!10351 (List!17408) Bool)

(assert (=> b!1579109 (= res!703871 (not (isEmpty!10351 rules!1846)))))

(declare-fun b!1579110 () Bool)

(declare-fun res!703870 () Bool)

(assert (=> b!1579110 (=> (not res!703870) (not e!1014379))))

(declare-fun rulesProduceEachTokenIndividuallyList!884 (LexerInterface!2682 List!17408 List!17407) Bool)

(assert (=> b!1579110 (= res!703870 (rulesProduceEachTokenIndividuallyList!884 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1579111 () Bool)

(declare-fun e!1014373 () Bool)

(declare-fun e!1014382 () Bool)

(declare-fun tp!464908 () Bool)

(assert (=> b!1579111 (= e!1014373 (and e!1014382 tp!464908))))

(declare-fun b!1579112 () Bool)

(declare-fun e!1014370 () Bool)

(assert (=> b!1579112 (= e!1014379 e!1014370)))

(declare-fun res!703875 () Bool)

(assert (=> b!1579112 (=> (not res!703875) (not e!1014370))))

(declare-fun lt!551856 () List!17405)

(declare-fun lt!551865 () List!17405)

(assert (=> b!1579112 (= res!703875 (= lt!551856 lt!551865))))

(declare-fun lt!551850 () List!17405)

(declare-fun ++!4501 (List!17405 List!17405) List!17405)

(assert (=> b!1579112 (= lt!551865 (++!4501 lt!551857 lt!551850))))

(declare-fun lt!551848 () BalanceConc!11452)

(declare-fun list!6696 (BalanceConc!11452) List!17405)

(assert (=> b!1579112 (= lt!551856 (list!6696 lt!551848))))

(declare-fun lt!551863 () BalanceConc!11452)

(assert (=> b!1579112 (= lt!551850 (list!6696 lt!551863))))

(declare-fun charsOf!1702 (Token!5672) BalanceConc!11452)

(assert (=> b!1579112 (= lt!551857 (list!6696 (charsOf!1702 (h!22738 tokens!457))))))

(declare-fun lex!1166 (LexerInterface!2682 List!17408 BalanceConc!11452) tuple2!16804)

(assert (=> b!1579112 (= lt!551849 (lex!1166 thiss!17113 rules!1846 lt!551863))))

(declare-fun print!1213 (LexerInterface!2682 BalanceConc!11454) BalanceConc!11452)

(assert (=> b!1579112 (= lt!551863 (print!1213 thiss!17113 lt!551859))))

(assert (=> b!1579112 (= lt!551859 (seqFromList!1856 (t!143584 tokens!457)))))

(assert (=> b!1579112 (= lt!551848 (print!1213 thiss!17113 (seqFromList!1856 tokens!457)))))

(declare-fun b!1579113 () Bool)

(declare-fun res!703877 () Bool)

(assert (=> b!1579113 (=> (not res!703877) (not e!1014379))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!375 (LexerInterface!2682 List!17407 List!17408) Bool)

(assert (=> b!1579113 (= res!703877 (tokensListTwoByTwoPredicateSeparableList!375 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1579114 () Bool)

(declare-fun res!703872 () Bool)

(assert (=> b!1579114 (=> (not res!703872) (not e!1014379))))

(declare-fun rulesInvariant!2351 (LexerInterface!2682 List!17408) Bool)

(assert (=> b!1579114 (= res!703872 (rulesInvariant!2351 thiss!17113 rules!1846))))

(declare-fun tp!464912 () Bool)

(declare-fun b!1579115 () Bool)

(declare-fun e!1014378 () Bool)

(assert (=> b!1579115 (= e!1014382 (and tp!464912 (inv!22748 (tag!3319 (h!22739 rules!1846))) (inv!22751 (transformation!3053 (h!22739 rules!1846))) e!1014378))))

(declare-fun b!1579116 () Bool)

(assert (=> b!1579116 (= e!1014369 e!1014380)))

(declare-fun res!703868 () Bool)

(assert (=> b!1579116 (=> res!703868 e!1014380)))

(declare-fun lt!551860 () List!17405)

(declare-fun lt!551851 () List!17405)

(assert (=> b!1579116 (= res!703868 (or (not (= lt!551851 lt!551860)) (not (= lt!551860 lt!551857)) (not (= lt!551851 lt!551857))))))

(declare-fun printList!797 (LexerInterface!2682 List!17407) List!17405)

(assert (=> b!1579116 (= lt!551860 (printList!797 thiss!17113 (Cons!17337 (h!22738 tokens!457) Nil!17337)))))

(declare-fun lt!551866 () BalanceConc!11452)

(assert (=> b!1579116 (= lt!551851 (list!6696 lt!551866))))

(declare-fun lt!551854 () BalanceConc!11454)

(declare-fun printTailRec!735 (LexerInterface!2682 BalanceConc!11454 Int BalanceConc!11452) BalanceConc!11452)

(assert (=> b!1579116 (= lt!551866 (printTailRec!735 thiss!17113 lt!551854 0 (BalanceConc!11453 Empty!5754)))))

(assert (=> b!1579116 (= lt!551866 (print!1213 thiss!17113 lt!551854))))

(declare-fun singletonSeq!1389 (Token!5672) BalanceConc!11454)

(assert (=> b!1579116 (= lt!551854 (singletonSeq!1389 (h!22738 tokens!457)))))

(declare-datatypes ((tuple2!16806 0))(
  ( (tuple2!16807 (_1!9805 Token!5672) (_2!9805 List!17405)) )
))
(declare-datatypes ((Option!3104 0))(
  ( (None!3103) (Some!3103 (v!23934 tuple2!16806)) )
))
(declare-fun lt!551853 () Option!3104)

(declare-fun maxPrefix!1246 (LexerInterface!2682 List!17408 List!17405) Option!3104)

(assert (=> b!1579116 (= lt!551853 (maxPrefix!1246 thiss!17113 rules!1846 lt!551856))))

(declare-fun b!1579117 () Bool)

(assert (=> b!1579117 (= e!1014370 (not e!1014375))))

(declare-fun res!703876 () Bool)

(assert (=> b!1579117 (=> res!703876 e!1014375)))

(assert (=> b!1579117 (= res!703876 (not (= lt!551861 (t!143584 tokens!457))))))

(assert (=> b!1579117 (= lt!551861 (list!6695 (_1!9804 lt!551849)))))

(declare-fun lt!551847 () Unit!26953)

(declare-fun theoremInvertabilityWhenTokenListSeparable!127 (LexerInterface!2682 List!17408 List!17407) Unit!26953)

(assert (=> b!1579117 (= lt!551847 (theoremInvertabilityWhenTokenListSeparable!127 thiss!17113 rules!1846 (t!143584 tokens!457)))))

(declare-fun isPrefix!1313 (List!17405 List!17405) Bool)

(assert (=> b!1579117 (isPrefix!1313 lt!551857 lt!551865)))

(declare-fun lt!551852 () Unit!26953)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!838 (List!17405 List!17405) Unit!26953)

(assert (=> b!1579117 (= lt!551852 (lemmaConcatTwoListThenFirstIsPrefix!838 lt!551857 lt!551850))))

(assert (=> b!1579118 (= e!1014371 (and tp!464911 tp!464909))))

(declare-fun res!703873 () Bool)

(assert (=> start!147730 (=> (not res!703873) (not e!1014379))))

(assert (=> start!147730 (= res!703873 ((_ is Lexer!2680) thiss!17113))))

(assert (=> start!147730 e!1014379))

(assert (=> start!147730 true))

(assert (=> start!147730 e!1014373))

(declare-fun e!1014374 () Bool)

(assert (=> start!147730 e!1014374))

(assert (=> b!1579106 (= e!1014378 (and tp!464906 tp!464905))))

(declare-fun b!1579119 () Bool)

(declare-fun res!703867 () Bool)

(assert (=> b!1579119 (=> res!703867 e!1014369)))

(declare-fun separableTokensPredicate!624 (LexerInterface!2682 Token!5672 Token!5672 List!17408) Bool)

(assert (=> b!1579119 (= res!703867 (not (separableTokensPredicate!624 thiss!17113 (h!22738 tokens!457) (h!22738 (t!143584 tokens!457)) rules!1846)))))

(declare-fun b!1579120 () Bool)

(declare-fun tp!464904 () Bool)

(declare-fun inv!22752 (Token!5672) Bool)

(assert (=> b!1579120 (= e!1014374 (and (inv!22752 (h!22738 tokens!457)) e!1014368 tp!464904))))

(assert (= (and start!147730 res!703873) b!1579109))

(assert (= (and b!1579109 res!703871) b!1579114))

(assert (= (and b!1579114 res!703872) b!1579110))

(assert (= (and b!1579110 res!703870) b!1579113))

(assert (= (and b!1579113 res!703877) b!1579104))

(assert (= (and b!1579104 res!703874) b!1579112))

(assert (= (and b!1579112 res!703875) b!1579117))

(assert (= (and b!1579117 (not res!703876)) b!1579103))

(assert (= (and b!1579103 (not res!703869)) b!1579119))

(assert (= (and b!1579119 (not res!703867)) b!1579116))

(assert (= (and b!1579116 (not res!703868)) b!1579105))

(assert (= (and b!1579105 (not res!703878)) b!1579102))

(assert (= b!1579115 b!1579106))

(assert (= b!1579111 b!1579115))

(assert (= (and start!147730 ((_ is Cons!17338) rules!1846)) b!1579111))

(assert (= b!1579107 b!1579118))

(assert (= b!1579108 b!1579107))

(assert (= b!1579120 b!1579108))

(assert (= (and start!147730 ((_ is Cons!17337) tokens!457)) b!1579120))

(declare-fun m!1861537 () Bool)

(assert (=> b!1579119 m!1861537))

(declare-fun m!1861539 () Bool)

(assert (=> b!1579116 m!1861539))

(declare-fun m!1861541 () Bool)

(assert (=> b!1579116 m!1861541))

(declare-fun m!1861543 () Bool)

(assert (=> b!1579116 m!1861543))

(declare-fun m!1861545 () Bool)

(assert (=> b!1579116 m!1861545))

(declare-fun m!1861547 () Bool)

(assert (=> b!1579116 m!1861547))

(declare-fun m!1861549 () Bool)

(assert (=> b!1579116 m!1861549))

(declare-fun m!1861551 () Bool)

(assert (=> b!1579117 m!1861551))

(declare-fun m!1861553 () Bool)

(assert (=> b!1579117 m!1861553))

(declare-fun m!1861555 () Bool)

(assert (=> b!1579117 m!1861555))

(declare-fun m!1861557 () Bool)

(assert (=> b!1579117 m!1861557))

(declare-fun m!1861559 () Bool)

(assert (=> b!1579110 m!1861559))

(declare-fun m!1861561 () Bool)

(assert (=> b!1579103 m!1861561))

(declare-fun m!1861563 () Bool)

(assert (=> b!1579103 m!1861563))

(declare-fun m!1861565 () Bool)

(assert (=> b!1579103 m!1861565))

(declare-fun m!1861567 () Bool)

(assert (=> b!1579103 m!1861567))

(declare-fun m!1861569 () Bool)

(assert (=> b!1579103 m!1861569))

(assert (=> b!1579103 m!1861565))

(assert (=> b!1579103 m!1861567))

(declare-fun m!1861571 () Bool)

(assert (=> b!1579115 m!1861571))

(declare-fun m!1861573 () Bool)

(assert (=> b!1579115 m!1861573))

(declare-fun m!1861575 () Bool)

(assert (=> b!1579112 m!1861575))

(declare-fun m!1861577 () Bool)

(assert (=> b!1579112 m!1861577))

(declare-fun m!1861579 () Bool)

(assert (=> b!1579112 m!1861579))

(declare-fun m!1861581 () Bool)

(assert (=> b!1579112 m!1861581))

(declare-fun m!1861583 () Bool)

(assert (=> b!1579112 m!1861583))

(declare-fun m!1861585 () Bool)

(assert (=> b!1579112 m!1861585))

(declare-fun m!1861587 () Bool)

(assert (=> b!1579112 m!1861587))

(assert (=> b!1579112 m!1861577))

(declare-fun m!1861589 () Bool)

(assert (=> b!1579112 m!1861589))

(declare-fun m!1861591 () Bool)

(assert (=> b!1579112 m!1861591))

(declare-fun m!1861593 () Bool)

(assert (=> b!1579112 m!1861593))

(assert (=> b!1579112 m!1861581))

(declare-fun m!1861595 () Bool)

(assert (=> b!1579108 m!1861595))

(declare-fun m!1861597 () Bool)

(assert (=> b!1579113 m!1861597))

(declare-fun m!1861599 () Bool)

(assert (=> b!1579114 m!1861599))

(declare-fun m!1861601 () Bool)

(assert (=> b!1579105 m!1861601))

(declare-fun m!1861603 () Bool)

(assert (=> b!1579120 m!1861603))

(declare-fun m!1861605 () Bool)

(assert (=> b!1579109 m!1861605))

(declare-fun m!1861607 () Bool)

(assert (=> b!1579107 m!1861607))

(declare-fun m!1861609 () Bool)

(assert (=> b!1579107 m!1861609))

(declare-fun m!1861611 () Bool)

(assert (=> b!1579102 m!1861611))

(check-sat (not b_next!43321) (not b_next!43319) (not b!1579116) b_and!110611 b_and!110607 (not b!1579107) (not b!1579120) (not b_next!43323) (not b_next!43325) (not b!1579119) (not b!1579113) b_and!110605 b_and!110609 (not b!1579111) (not b!1579103) (not b!1579102) (not b!1579114) (not b!1579109) (not b!1579117) (not b!1579105) (not b!1579112) (not b!1579110) (not b!1579115) (not b!1579108))
(check-sat (not b_next!43321) (not b_next!43319) b_and!110611 b_and!110607 (not b_next!43323) (not b_next!43325) b_and!110605 b_and!110609)
