; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391790 () Bool)

(assert start!391790)

(declare-fun b!4128440 () Bool)

(declare-fun b_free!116979 () Bool)

(declare-fun b_next!117683 () Bool)

(assert (=> b!4128440 (= b_free!116979 (not b_next!117683))))

(declare-fun tp!1258064 () Bool)

(declare-fun b_and!319801 () Bool)

(assert (=> b!4128440 (= tp!1258064 b_and!319801)))

(declare-fun b_free!116981 () Bool)

(declare-fun b_next!117685 () Bool)

(assert (=> b!4128440 (= b_free!116981 (not b_next!117685))))

(declare-fun tp!1258059 () Bool)

(declare-fun b_and!319803 () Bool)

(assert (=> b!4128440 (= tp!1258059 b_and!319803)))

(declare-fun b!4128449 () Bool)

(declare-fun b_free!116983 () Bool)

(declare-fun b_next!117687 () Bool)

(assert (=> b!4128449 (= b_free!116983 (not b_next!117687))))

(declare-fun tp!1258062 () Bool)

(declare-fun b_and!319805 () Bool)

(assert (=> b!4128449 (= tp!1258062 b_and!319805)))

(declare-fun b_free!116985 () Bool)

(declare-fun b_next!117689 () Bool)

(assert (=> b!4128449 (= b_free!116985 (not b_next!117689))))

(declare-fun tp!1258068 () Bool)

(declare-fun b_and!319807 () Bool)

(assert (=> b!4128449 (= tp!1258068 b_and!319807)))

(declare-fun b!4128458 () Bool)

(declare-fun b_free!116987 () Bool)

(declare-fun b_next!117691 () Bool)

(assert (=> b!4128458 (= b_free!116987 (not b_next!117691))))

(declare-fun tp!1258069 () Bool)

(declare-fun b_and!319809 () Bool)

(assert (=> b!4128458 (= tp!1258069 b_and!319809)))

(declare-fun b_free!116989 () Bool)

(declare-fun b_next!117693 () Bool)

(assert (=> b!4128458 (= b_free!116989 (not b_next!117693))))

(declare-fun tp!1258063 () Bool)

(declare-fun b_and!319811 () Bool)

(assert (=> b!4128458 (= tp!1258063 b_and!319811)))

(declare-fun b!4128438 () Bool)

(declare-fun e!2561592 () Bool)

(declare-fun e!2561587 () Bool)

(assert (=> b!4128438 (= e!2561592 e!2561587)))

(declare-fun res!1687512 () Bool)

(assert (=> b!4128438 (=> (not res!1687512) (not e!2561587))))

(declare-datatypes ((List!44800 0))(
  ( (Nil!44676) (Cons!44676 (h!50096 (_ BitVec 16)) (t!341377 List!44800)) )
))
(declare-datatypes ((TokenValue!7540 0))(
  ( (FloatLiteralValue!15080 (text!53225 List!44800)) (TokenValueExt!7539 (__x!27297 Int)) (Broken!37700 (value!228863 List!44800)) (Object!7663) (End!7540) (Def!7540) (Underscore!7540) (Match!7540) (Else!7540) (Error!7540) (Case!7540) (If!7540) (Extends!7540) (Abstract!7540) (Class!7540) (Val!7540) (DelimiterValue!15080 (del!7600 List!44800)) (KeywordValue!7546 (value!228864 List!44800)) (CommentValue!15080 (value!228865 List!44800)) (WhitespaceValue!15080 (value!228866 List!44800)) (IndentationValue!7540 (value!228867 List!44800)) (String!51449) (Int32!7540) (Broken!37701 (value!228868 List!44800)) (Boolean!7541) (Unit!64012) (OperatorValue!7543 (op!7600 List!44800)) (IdentifierValue!15080 (value!228869 List!44800)) (IdentifierValue!15081 (value!228870 List!44800)) (WhitespaceValue!15081 (value!228871 List!44800)) (True!15080) (False!15080) (Broken!37702 (value!228872 List!44800)) (Broken!37703 (value!228873 List!44800)) (True!15081) (RightBrace!7540) (RightBracket!7540) (Colon!7540) (Null!7540) (Comma!7540) (LeftBracket!7540) (False!15081) (LeftBrace!7540) (ImaginaryLiteralValue!7540 (text!53226 List!44800)) (StringLiteralValue!22620 (value!228874 List!44800)) (EOFValue!7540 (value!228875 List!44800)) (IdentValue!7540 (value!228876 List!44800)) (DelimiterValue!15081 (value!228877 List!44800)) (DedentValue!7540 (value!228878 List!44800)) (NewLineValue!7540 (value!228879 List!44800)) (IntegerValue!22620 (value!228880 (_ BitVec 32)) (text!53227 List!44800)) (IntegerValue!22621 (value!228881 Int) (text!53228 List!44800)) (Times!7540) (Or!7540) (Equal!7540) (Minus!7540) (Broken!37704 (value!228882 List!44800)) (And!7540) (Div!7540) (LessEqual!7540) (Mod!7540) (Concat!19755) (Not!7540) (Plus!7540) (SpaceValue!7540 (value!228883 List!44800)) (IntegerValue!22622 (value!228884 Int) (text!53229 List!44800)) (StringLiteralValue!22621 (text!53230 List!44800)) (FloatLiteralValue!15081 (text!53231 List!44800)) (BytesLiteralValue!7540 (value!228885 List!44800)) (CommentValue!15081 (value!228886 List!44800)) (StringLiteralValue!22622 (value!228887 List!44800)) (ErrorTokenValue!7540 (msg!7601 List!44800)) )
))
(declare-datatypes ((C!24616 0))(
  ( (C!24617 (val!14418 Int)) )
))
(declare-datatypes ((List!44801 0))(
  ( (Nil!44677) (Cons!44677 (h!50097 C!24616) (t!341378 List!44801)) )
))
(declare-datatypes ((IArray!27047 0))(
  ( (IArray!27048 (innerList!13581 List!44801)) )
))
(declare-datatypes ((Conc!13521 0))(
  ( (Node!13521 (left!33458 Conc!13521) (right!33788 Conc!13521) (csize!27272 Int) (cheight!13732 Int)) (Leaf!20891 (xs!16827 IArray!27047) (csize!27273 Int)) (Empty!13521) )
))
(declare-datatypes ((BalanceConc!26636 0))(
  ( (BalanceConc!26637 (c!708528 Conc!13521)) )
))
(declare-datatypes ((Regex!12215 0))(
  ( (ElementMatch!12215 (c!708529 C!24616)) (Concat!19756 (regOne!24942 Regex!12215) (regTwo!24942 Regex!12215)) (EmptyExpr!12215) (Star!12215 (reg!12544 Regex!12215)) (EmptyLang!12215) (Union!12215 (regOne!24943 Regex!12215) (regTwo!24943 Regex!12215)) )
))
(declare-datatypes ((String!51450 0))(
  ( (String!51451 (value!228888 String)) )
))
(declare-datatypes ((TokenValueInjection!14508 0))(
  ( (TokenValueInjection!14509 (toValue!9970 Int) (toChars!9829 Int)) )
))
(declare-datatypes ((Rule!14420 0))(
  ( (Rule!14421 (regex!7310 Regex!12215) (tag!8170 String!51450) (isSeparator!7310 Bool) (transformation!7310 TokenValueInjection!14508)) )
))
(declare-datatypes ((List!44802 0))(
  ( (Nil!44678) (Cons!44678 (h!50098 Rule!14420) (t!341379 List!44802)) )
))
(declare-fun rules!3756 () List!44802)

(declare-fun input!3238 () List!44801)

(declare-fun p!2912 () List!44801)

(declare-fun lt!1472686 () BalanceConc!26636)

(declare-fun r!4008 () Rule!14420)

(declare-datatypes ((LexerInterface!6899 0))(
  ( (LexerInterfaceExt!6896 (__x!27298 Int)) (Lexer!6897) )
))
(declare-fun thiss!25645 () LexerInterface!6899)

(declare-datatypes ((Token!13550 0))(
  ( (Token!13551 (value!228889 TokenValue!7540) (rule!10400 Rule!14420) (size!33083 Int) (originalCharacters!7806 List!44801)) )
))
(declare-datatypes ((tuple2!43126 0))(
  ( (tuple2!43127 (_1!24697 Token!13550) (_2!24697 List!44801)) )
))
(declare-datatypes ((Option!9618 0))(
  ( (None!9617) (Some!9617 (v!40219 tuple2!43126)) )
))
(declare-fun maxPrefix!4091 (LexerInterface!6899 List!44802 List!44801) Option!9618)

(declare-fun apply!10383 (TokenValueInjection!14508 BalanceConc!26636) TokenValue!7540)

(declare-fun size!33084 (List!44801) Int)

(declare-fun getSuffix!2574 (List!44801 List!44801) List!44801)

(assert (=> b!4128438 (= res!1687512 (= (maxPrefix!4091 thiss!25645 rules!3756 input!3238) (Some!9617 (tuple2!43127 (Token!13551 (apply!10383 (transformation!7310 r!4008) lt!1472686) r!4008 (size!33084 p!2912) p!2912) (getSuffix!2574 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64013 0))(
  ( (Unit!64014) )
))
(declare-fun lt!1472685 () Unit!64013)

(declare-fun lemmaSemiInverse!2168 (TokenValueInjection!14508 BalanceConc!26636) Unit!64013)

(assert (=> b!4128438 (= lt!1472685 (lemmaSemiInverse!2168 (transformation!7310 r!4008) lt!1472686))))

(declare-fun seqFromList!5427 (List!44801) BalanceConc!26636)

(assert (=> b!4128438 (= lt!1472686 (seqFromList!5427 p!2912))))

(declare-fun b!4128439 () Bool)

(declare-fun res!1687510 () Bool)

(declare-fun e!2561593 () Bool)

(assert (=> b!4128439 (=> res!1687510 e!2561593)))

(declare-datatypes ((List!44803 0))(
  ( (Nil!44679) (Cons!44679 (h!50099 String!51450) (t!341380 List!44803)) )
))
(declare-fun noDuplicateTag!2947 (LexerInterface!6899 List!44802 List!44803) Bool)

(declare-fun noDuplicateTag$default$2!12 (LexerInterface!6899) List!44803)

(assert (=> b!4128439 (= res!1687510 (not (noDuplicateTag!2947 thiss!25645 rules!3756 (noDuplicateTag$default$2!12 thiss!25645))))))

(declare-fun e!2561597 () Bool)

(assert (=> b!4128440 (= e!2561597 (and tp!1258064 tp!1258059))))

(declare-fun b!4128441 () Bool)

(declare-fun res!1687514 () Bool)

(assert (=> b!4128441 (=> (not res!1687514) (not e!2561592))))

(declare-fun isEmpty!26597 (List!44802) Bool)

(assert (=> b!4128441 (= res!1687514 (not (isEmpty!26597 rules!3756)))))

(declare-fun tp!1258060 () Bool)

(declare-fun e!2561591 () Bool)

(declare-fun e!2561585 () Bool)

(declare-fun b!4128442 () Bool)

(declare-fun inv!59268 (String!51450) Bool)

(declare-fun inv!59270 (TokenValueInjection!14508) Bool)

(assert (=> b!4128442 (= e!2561591 (and tp!1258060 (inv!59268 (tag!8170 r!4008)) (inv!59270 (transformation!7310 r!4008)) e!2561585))))

(declare-fun e!2561596 () Bool)

(declare-fun tp!1258061 () Bool)

(declare-fun b!4128444 () Bool)

(assert (=> b!4128444 (= e!2561596 (and tp!1258061 (inv!59268 (tag!8170 (h!50098 rules!3756))) (inv!59270 (transformation!7310 (h!50098 rules!3756))) e!2561597))))

(declare-fun b!4128445 () Bool)

(declare-fun res!1687508 () Bool)

(declare-fun e!2561589 () Bool)

(assert (=> b!4128445 (=> res!1687508 e!2561589)))

(declare-fun contains!8986 (List!44802 Rule!14420) Bool)

(assert (=> b!4128445 (= res!1687508 (not (contains!8986 (t!341379 rules!3756) r!4008)))))

(declare-fun b!4128446 () Bool)

(declare-fun res!1687502 () Bool)

(assert (=> b!4128446 (=> (not res!1687502) (not e!2561592))))

(declare-fun rulesInvariant!6196 (LexerInterface!6899 List!44802) Bool)

(assert (=> b!4128446 (= res!1687502 (rulesInvariant!6196 thiss!25645 rules!3756))))

(declare-fun b!4128447 () Bool)

(declare-fun e!2561586 () Bool)

(declare-fun tp!1258066 () Bool)

(assert (=> b!4128447 (= e!2561586 (and e!2561596 tp!1258066))))

(declare-fun b!4128448 () Bool)

(assert (=> b!4128448 (= e!2561593 true)))

(declare-fun lt!1472682 () Int)

(declare-fun getIndex!658 (List!44802 Rule!14420) Int)

(assert (=> b!4128448 (= lt!1472682 (getIndex!658 rules!3756 (h!50098 rules!3756)))))

(assert (=> b!4128449 (= e!2561585 (and tp!1258062 tp!1258068))))

(declare-fun b!4128450 () Bool)

(declare-fun res!1687507 () Bool)

(assert (=> b!4128450 (=> res!1687507 e!2561589)))

(declare-fun rBis!149 () Rule!14420)

(assert (=> b!4128450 (= res!1687507 (not (contains!8986 (t!341379 rules!3756) rBis!149)))))

(declare-fun b!4128451 () Bool)

(declare-fun e!2561599 () Bool)

(declare-fun tp_is_empty!21353 () Bool)

(declare-fun tp!1258065 () Bool)

(assert (=> b!4128451 (= e!2561599 (and tp_is_empty!21353 tp!1258065))))

(declare-fun b!4128452 () Bool)

(declare-fun res!1687509 () Bool)

(assert (=> b!4128452 (=> (not res!1687509) (not e!2561592))))

(declare-fun isPrefix!4245 (List!44801 List!44801) Bool)

(assert (=> b!4128452 (= res!1687509 (isPrefix!4245 p!2912 input!3238))))

(declare-fun b!4128453 () Bool)

(declare-fun res!1687506 () Bool)

(assert (=> b!4128453 (=> (not res!1687506) (not e!2561587))))

(declare-fun ruleValid!3118 (LexerInterface!6899 Rule!14420) Bool)

(assert (=> b!4128453 (= res!1687506 (ruleValid!3118 thiss!25645 r!4008))))

(declare-fun b!4128454 () Bool)

(declare-fun res!1687504 () Bool)

(assert (=> b!4128454 (=> (not res!1687504) (not e!2561592))))

(declare-fun isEmpty!26598 (List!44801) Bool)

(assert (=> b!4128454 (= res!1687504 (not (isEmpty!26598 p!2912)))))

(declare-fun b!4128455 () Bool)

(assert (=> b!4128455 (= e!2561587 (not e!2561589))))

(declare-fun res!1687501 () Bool)

(assert (=> b!4128455 (=> res!1687501 e!2561589)))

(get-info :version)

(assert (=> b!4128455 (= res!1687501 (or (and ((_ is Cons!44678) rules!3756) (= (h!50098 rules!3756) rBis!149)) (not ((_ is Cons!44678) rules!3756)) (= (h!50098 rules!3756) rBis!149)))))

(declare-fun lt!1472683 () Unit!64013)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2162 (LexerInterface!6899 Rule!14420 List!44802) Unit!64013)

(assert (=> b!4128455 (= lt!1472683 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2162 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4128455 (ruleValid!3118 thiss!25645 rBis!149)))

(declare-fun lt!1472684 () Unit!64013)

(assert (=> b!4128455 (= lt!1472684 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2162 thiss!25645 rBis!149 rules!3756))))

(declare-fun tp!1258067 () Bool)

(declare-fun e!2561590 () Bool)

(declare-fun e!2561594 () Bool)

(declare-fun b!4128456 () Bool)

(assert (=> b!4128456 (= e!2561594 (and tp!1258067 (inv!59268 (tag!8170 rBis!149)) (inv!59270 (transformation!7310 rBis!149)) e!2561590))))

(declare-fun b!4128443 () Bool)

(declare-fun res!1687513 () Bool)

(assert (=> b!4128443 (=> (not res!1687513) (not e!2561592))))

(assert (=> b!4128443 (= res!1687513 (contains!8986 rules!3756 r!4008))))

(declare-fun res!1687503 () Bool)

(assert (=> start!391790 (=> (not res!1687503) (not e!2561592))))

(assert (=> start!391790 (= res!1687503 ((_ is Lexer!6897) thiss!25645))))

(assert (=> start!391790 e!2561592))

(assert (=> start!391790 e!2561586))

(declare-fun e!2561588 () Bool)

(assert (=> start!391790 e!2561588))

(assert (=> start!391790 true))

(assert (=> start!391790 e!2561591))

(assert (=> start!391790 e!2561599))

(assert (=> start!391790 e!2561594))

(declare-fun b!4128457 () Bool)

(declare-fun res!1687505 () Bool)

(assert (=> b!4128457 (=> (not res!1687505) (not e!2561587))))

(declare-fun matchR!6046 (Regex!12215 List!44801) Bool)

(assert (=> b!4128457 (= res!1687505 (matchR!6046 (regex!7310 r!4008) p!2912))))

(assert (=> b!4128458 (= e!2561590 (and tp!1258069 tp!1258063))))

(declare-fun b!4128459 () Bool)

(declare-fun tp!1258070 () Bool)

(assert (=> b!4128459 (= e!2561588 (and tp_is_empty!21353 tp!1258070))))

(declare-fun b!4128460 () Bool)

(declare-fun res!1687516 () Bool)

(assert (=> b!4128460 (=> (not res!1687516) (not e!2561587))))

(assert (=> b!4128460 (= res!1687516 (< (getIndex!658 rules!3756 rBis!149) (getIndex!658 rules!3756 r!4008)))))

(declare-fun b!4128461 () Bool)

(declare-fun res!1687515 () Bool)

(assert (=> b!4128461 (=> (not res!1687515) (not e!2561592))))

(assert (=> b!4128461 (= res!1687515 (contains!8986 rules!3756 rBis!149))))

(declare-fun b!4128462 () Bool)

(assert (=> b!4128462 (= e!2561589 e!2561593)))

(declare-fun res!1687511 () Bool)

(assert (=> b!4128462 (=> res!1687511 e!2561593)))

(assert (=> b!4128462 (= res!1687511 (not (contains!8986 rules!3756 (h!50098 rules!3756))))))

(assert (=> b!4128462 (rulesInvariant!6196 thiss!25645 (t!341379 rules!3756))))

(declare-fun lt!1472681 () Unit!64013)

(declare-fun lemmaInvariantOnRulesThenOnTail!816 (LexerInterface!6899 Rule!14420 List!44802) Unit!64013)

(assert (=> b!4128462 (= lt!1472681 (lemmaInvariantOnRulesThenOnTail!816 thiss!25645 (h!50098 rules!3756) (t!341379 rules!3756)))))

(declare-fun lt!1472680 () Option!9618)

(assert (=> b!4128462 (= lt!1472680 (maxPrefix!4091 thiss!25645 (t!341379 rules!3756) input!3238))))

(declare-fun lt!1472679 () Option!9618)

(declare-fun maxPrefixOneRule!3039 (LexerInterface!6899 Rule!14420 List!44801) Option!9618)

(assert (=> b!4128462 (= lt!1472679 (maxPrefixOneRule!3039 thiss!25645 (h!50098 rules!3756) input!3238))))

(assert (= (and start!391790 res!1687503) b!4128452))

(assert (= (and b!4128452 res!1687509) b!4128441))

(assert (= (and b!4128441 res!1687514) b!4128446))

(assert (= (and b!4128446 res!1687502) b!4128443))

(assert (= (and b!4128443 res!1687513) b!4128461))

(assert (= (and b!4128461 res!1687515) b!4128454))

(assert (= (and b!4128454 res!1687504) b!4128438))

(assert (= (and b!4128438 res!1687512) b!4128457))

(assert (= (and b!4128457 res!1687505) b!4128460))

(assert (= (and b!4128460 res!1687516) b!4128453))

(assert (= (and b!4128453 res!1687506) b!4128455))

(assert (= (and b!4128455 (not res!1687501)) b!4128445))

(assert (= (and b!4128445 (not res!1687508)) b!4128450))

(assert (= (and b!4128450 (not res!1687507)) b!4128462))

(assert (= (and b!4128462 (not res!1687511)) b!4128439))

(assert (= (and b!4128439 (not res!1687510)) b!4128448))

(assert (= b!4128444 b!4128440))

(assert (= b!4128447 b!4128444))

(assert (= (and start!391790 ((_ is Cons!44678) rules!3756)) b!4128447))

(assert (= (and start!391790 ((_ is Cons!44677) p!2912)) b!4128459))

(assert (= b!4128442 b!4128449))

(assert (= start!391790 b!4128442))

(assert (= (and start!391790 ((_ is Cons!44677) input!3238)) b!4128451))

(assert (= b!4128456 b!4128458))

(assert (= start!391790 b!4128456))

(declare-fun m!4726675 () Bool)

(assert (=> b!4128442 m!4726675))

(declare-fun m!4726677 () Bool)

(assert (=> b!4128442 m!4726677))

(declare-fun m!4726679 () Bool)

(assert (=> b!4128448 m!4726679))

(declare-fun m!4726681 () Bool)

(assert (=> b!4128460 m!4726681))

(declare-fun m!4726683 () Bool)

(assert (=> b!4128460 m!4726683))

(declare-fun m!4726685 () Bool)

(assert (=> b!4128457 m!4726685))

(declare-fun m!4726687 () Bool)

(assert (=> b!4128462 m!4726687))

(declare-fun m!4726689 () Bool)

(assert (=> b!4128462 m!4726689))

(declare-fun m!4726691 () Bool)

(assert (=> b!4128462 m!4726691))

(declare-fun m!4726693 () Bool)

(assert (=> b!4128462 m!4726693))

(declare-fun m!4726695 () Bool)

(assert (=> b!4128462 m!4726695))

(declare-fun m!4726697 () Bool)

(assert (=> b!4128452 m!4726697))

(declare-fun m!4726699 () Bool)

(assert (=> b!4128453 m!4726699))

(declare-fun m!4726701 () Bool)

(assert (=> b!4128443 m!4726701))

(declare-fun m!4726703 () Bool)

(assert (=> b!4128444 m!4726703))

(declare-fun m!4726705 () Bool)

(assert (=> b!4128444 m!4726705))

(declare-fun m!4726707 () Bool)

(assert (=> b!4128450 m!4726707))

(declare-fun m!4726709 () Bool)

(assert (=> b!4128456 m!4726709))

(declare-fun m!4726711 () Bool)

(assert (=> b!4128456 m!4726711))

(declare-fun m!4726713 () Bool)

(assert (=> b!4128446 m!4726713))

(declare-fun m!4726715 () Bool)

(assert (=> b!4128461 m!4726715))

(declare-fun m!4726717 () Bool)

(assert (=> b!4128441 m!4726717))

(declare-fun m!4726719 () Bool)

(assert (=> b!4128438 m!4726719))

(declare-fun m!4726721 () Bool)

(assert (=> b!4128438 m!4726721))

(declare-fun m!4726723 () Bool)

(assert (=> b!4128438 m!4726723))

(declare-fun m!4726725 () Bool)

(assert (=> b!4128438 m!4726725))

(declare-fun m!4726727 () Bool)

(assert (=> b!4128438 m!4726727))

(declare-fun m!4726729 () Bool)

(assert (=> b!4128438 m!4726729))

(declare-fun m!4726731 () Bool)

(assert (=> b!4128454 m!4726731))

(declare-fun m!4726733 () Bool)

(assert (=> b!4128439 m!4726733))

(assert (=> b!4128439 m!4726733))

(declare-fun m!4726735 () Bool)

(assert (=> b!4128439 m!4726735))

(declare-fun m!4726737 () Bool)

(assert (=> b!4128445 m!4726737))

(declare-fun m!4726739 () Bool)

(assert (=> b!4128455 m!4726739))

(declare-fun m!4726741 () Bool)

(assert (=> b!4128455 m!4726741))

(declare-fun m!4726743 () Bool)

(assert (=> b!4128455 m!4726743))

(check-sat (not b!4128446) (not b_next!117689) (not b_next!117693) (not b!4128448) (not b!4128452) (not b!4128443) (not b!4128444) (not b_next!117685) (not b!4128438) b_and!319807 b_and!319805 (not b_next!117687) b_and!319801 b_and!319803 (not b!4128462) (not b!4128454) (not b_next!117691) (not b_next!117683) (not b!4128457) (not b!4128441) (not b!4128439) (not b!4128447) (not b!4128451) (not b!4128453) (not b!4128460) b_and!319811 (not b!4128442) (not b!4128445) b_and!319809 (not b!4128450) (not b!4128455) tp_is_empty!21353 (not b!4128459) (not b!4128461) (not b!4128456))
(check-sat (not b_next!117689) (not b_next!117693) b_and!319811 (not b_next!117685) b_and!319807 b_and!319809 b_and!319805 (not b_next!117687) b_and!319801 b_and!319803 (not b_next!117691) (not b_next!117683))
