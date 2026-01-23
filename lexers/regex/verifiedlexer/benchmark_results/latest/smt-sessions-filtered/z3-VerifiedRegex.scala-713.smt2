; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30810 () Bool)

(assert start!30810)

(declare-fun b!284689 () Bool)

(declare-fun b_free!10409 () Bool)

(declare-fun b_next!10409 () Bool)

(assert (=> b!284689 (= b_free!10409 (not b_next!10409))))

(declare-fun tp!104744 () Bool)

(declare-fun b_and!22933 () Bool)

(assert (=> b!284689 (= tp!104744 b_and!22933)))

(declare-fun b_free!10411 () Bool)

(declare-fun b_next!10411 () Bool)

(assert (=> b!284689 (= b_free!10411 (not b_next!10411))))

(declare-fun tp!104745 () Bool)

(declare-fun b_and!22935 () Bool)

(assert (=> b!284689 (= tp!104745 b_and!22935)))

(declare-fun b!284702 () Bool)

(declare-fun b_free!10413 () Bool)

(declare-fun b_next!10413 () Bool)

(assert (=> b!284702 (= b_free!10413 (not b_next!10413))))

(declare-fun tp!104755 () Bool)

(declare-fun b_and!22937 () Bool)

(assert (=> b!284702 (= tp!104755 b_and!22937)))

(declare-fun b_free!10415 () Bool)

(declare-fun b_next!10415 () Bool)

(assert (=> b!284702 (= b_free!10415 (not b_next!10415))))

(declare-fun tp!104752 () Bool)

(declare-fun b_and!22939 () Bool)

(assert (=> b!284702 (= tp!104752 b_and!22939)))

(declare-fun b!284708 () Bool)

(declare-fun b_free!10417 () Bool)

(declare-fun b_next!10417 () Bool)

(assert (=> b!284708 (= b_free!10417 (not b_next!10417))))

(declare-fun tp!104743 () Bool)

(declare-fun b_and!22941 () Bool)

(assert (=> b!284708 (= tp!104743 b_and!22941)))

(declare-fun b_free!10419 () Bool)

(declare-fun b_next!10419 () Bool)

(assert (=> b!284708 (= b_free!10419 (not b_next!10419))))

(declare-fun tp!104754 () Bool)

(declare-fun b_and!22943 () Bool)

(assert (=> b!284708 (= tp!104754 b_and!22943)))

(declare-fun bs!32128 () Bool)

(declare-fun b!284685 () Bool)

(declare-fun b!284711 () Bool)

(assert (= bs!32128 (and b!284685 b!284711)))

(declare-fun lambda!9736 () Int)

(declare-fun lambda!9735 () Int)

(assert (=> bs!32128 (not (= lambda!9736 lambda!9735))))

(declare-fun b!284738 () Bool)

(declare-fun e!177122 () Bool)

(assert (=> b!284738 (= e!177122 true)))

(declare-fun b!284737 () Bool)

(declare-fun e!177121 () Bool)

(assert (=> b!284737 (= e!177121 e!177122)))

(declare-fun b!284736 () Bool)

(declare-fun e!177120 () Bool)

(assert (=> b!284736 (= e!177120 e!177121)))

(assert (=> b!284685 e!177120))

(assert (= b!284737 b!284738))

(assert (= b!284736 b!284737))

(declare-datatypes ((List!3922 0))(
  ( (Nil!3912) (Cons!3912 (h!9309 (_ BitVec 16)) (t!39946 List!3922)) )
))
(declare-datatypes ((TokenValue!771 0))(
  ( (FloatLiteralValue!1542 (text!5842 List!3922)) (TokenValueExt!770 (__x!3029 Int)) (Broken!3855 (value!25636 List!3922)) (Object!780) (End!771) (Def!771) (Underscore!771) (Match!771) (Else!771) (Error!771) (Case!771) (If!771) (Extends!771) (Abstract!771) (Class!771) (Val!771) (DelimiterValue!1542 (del!831 List!3922)) (KeywordValue!777 (value!25637 List!3922)) (CommentValue!1542 (value!25638 List!3922)) (WhitespaceValue!1542 (value!25639 List!3922)) (IndentationValue!771 (value!25640 List!3922)) (String!4934) (Int32!771) (Broken!3856 (value!25641 List!3922)) (Boolean!772) (Unit!5247) (OperatorValue!774 (op!831 List!3922)) (IdentifierValue!1542 (value!25642 List!3922)) (IdentifierValue!1543 (value!25643 List!3922)) (WhitespaceValue!1543 (value!25644 List!3922)) (True!1542) (False!1542) (Broken!3857 (value!25645 List!3922)) (Broken!3858 (value!25646 List!3922)) (True!1543) (RightBrace!771) (RightBracket!771) (Colon!771) (Null!771) (Comma!771) (LeftBracket!771) (False!1543) (LeftBrace!771) (ImaginaryLiteralValue!771 (text!5843 List!3922)) (StringLiteralValue!2313 (value!25647 List!3922)) (EOFValue!771 (value!25648 List!3922)) (IdentValue!771 (value!25649 List!3922)) (DelimiterValue!1543 (value!25650 List!3922)) (DedentValue!771 (value!25651 List!3922)) (NewLineValue!771 (value!25652 List!3922)) (IntegerValue!2313 (value!25653 (_ BitVec 32)) (text!5844 List!3922)) (IntegerValue!2314 (value!25654 Int) (text!5845 List!3922)) (Times!771) (Or!771) (Equal!771) (Minus!771) (Broken!3859 (value!25655 List!3922)) (And!771) (Div!771) (LessEqual!771) (Mod!771) (Concat!1744) (Not!771) (Plus!771) (SpaceValue!771 (value!25656 List!3922)) (IntegerValue!2315 (value!25657 Int) (text!5846 List!3922)) (StringLiteralValue!2314 (text!5847 List!3922)) (FloatLiteralValue!1543 (text!5848 List!3922)) (BytesLiteralValue!771 (value!25658 List!3922)) (CommentValue!1543 (value!25659 List!3922)) (StringLiteralValue!2315 (value!25660 List!3922)) (ErrorTokenValue!771 (msg!832 List!3922)) )
))
(declare-datatypes ((C!2868 0))(
  ( (C!2869 (val!1320 Int)) )
))
(declare-datatypes ((List!3923 0))(
  ( (Nil!3913) (Cons!3913 (h!9310 C!2868) (t!39947 List!3923)) )
))
(declare-datatypes ((IArray!2641 0))(
  ( (IArray!2642 (innerList!1378 List!3923)) )
))
(declare-datatypes ((Conc!1320 0))(
  ( (Node!1320 (left!3233 Conc!1320) (right!3563 Conc!1320) (csize!2870 Int) (cheight!1531 Int)) (Leaf!2034 (xs!3919 IArray!2641) (csize!2871 Int)) (Empty!1320) )
))
(declare-datatypes ((BalanceConc!2648 0))(
  ( (BalanceConc!2649 (c!53932 Conc!1320)) )
))
(declare-datatypes ((TokenValueInjection!1314 0))(
  ( (TokenValueInjection!1315 (toValue!1496 Int) (toChars!1355 Int)) )
))
(declare-datatypes ((String!4935 0))(
  ( (String!4936 (value!25661 String)) )
))
(declare-datatypes ((Regex!973 0))(
  ( (ElementMatch!973 (c!53933 C!2868)) (Concat!1745 (regOne!2458 Regex!973) (regTwo!2458 Regex!973)) (EmptyExpr!973) (Star!973 (reg!1302 Regex!973)) (EmptyLang!973) (Union!973 (regOne!2459 Regex!973) (regTwo!2459 Regex!973)) )
))
(declare-datatypes ((Rule!1298 0))(
  ( (Rule!1299 (regex!749 Regex!973) (tag!963 String!4935) (isSeparator!749 Bool) (transformation!749 TokenValueInjection!1314)) )
))
(declare-datatypes ((List!3924 0))(
  ( (Nil!3914) (Cons!3914 (h!9311 Rule!1298) (t!39948 List!3924)) )
))
(declare-fun rules!1920 () List!3924)

(get-info :version)

(assert (= (and b!284685 ((_ is Cons!3914) rules!1920)) b!284736))

(declare-fun order!3077 () Int)

(declare-fun order!3079 () Int)

(declare-fun dynLambda!2059 (Int Int) Int)

(declare-fun dynLambda!2060 (Int Int) Int)

(assert (=> b!284738 (< (dynLambda!2059 order!3077 (toValue!1496 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9736))))

(declare-fun order!3081 () Int)

(declare-fun dynLambda!2061 (Int Int) Int)

(assert (=> b!284738 (< (dynLambda!2061 order!3081 (toChars!1355 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9736))))

(assert (=> b!284685 true))

(declare-fun e!177078 () Bool)

(declare-datatypes ((Token!1242 0))(
  ( (Token!1243 (value!25662 TokenValue!771) (rule!1346 Rule!1298) (size!3132 Int) (originalCharacters!792 List!3923)) )
))
(declare-datatypes ((List!3925 0))(
  ( (Nil!3915) (Cons!3915 (h!9312 Token!1242) (t!39949 List!3925)) )
))
(declare-fun tokens!465 () List!3925)

(declare-fun e!177089 () Bool)

(declare-fun tp!104750 () Bool)

(declare-fun b!284677 () Bool)

(declare-fun inv!4841 (Token!1242) Bool)

(assert (=> b!284677 (= e!177089 (and (inv!4841 (h!9312 tokens!465)) e!177078 tp!104750))))

(declare-fun b!284678 () Bool)

(declare-fun e!177084 () Bool)

(declare-fun e!177101 () Bool)

(assert (=> b!284678 (= e!177084 e!177101)))

(declare-fun res!130093 () Bool)

(assert (=> b!284678 (=> res!130093 e!177101)))

(declare-fun e!177107 () Bool)

(assert (=> b!284678 (= res!130093 e!177107)))

(declare-fun res!130110 () Bool)

(assert (=> b!284678 (=> (not res!130110) (not e!177107))))

(declare-fun lt!119780 () Bool)

(assert (=> b!284678 (= res!130110 (not lt!119780))))

(declare-fun lt!119769 () List!3923)

(declare-fun lt!119793 () List!3923)

(assert (=> b!284678 (= lt!119780 (= lt!119769 lt!119793))))

(declare-fun b!284679 () Bool)

(declare-fun e!177110 () Bool)

(declare-fun e!177106 () Bool)

(assert (=> b!284679 (= e!177110 e!177106)))

(declare-fun res!130095 () Bool)

(assert (=> b!284679 (=> (not res!130095) (not e!177106))))

(declare-fun lt!119768 () Rule!1298)

(declare-fun lt!119809 () List!3923)

(declare-fun matchR!295 (Regex!973 List!3923) Bool)

(assert (=> b!284679 (= res!130095 (matchR!295 (regex!749 lt!119768) lt!119809))))

(declare-datatypes ((Option!861 0))(
  ( (None!860) (Some!860 (v!14787 Rule!1298)) )
))
(declare-fun lt!119806 () Option!861)

(declare-fun get!1321 (Option!861) Rule!1298)

(assert (=> b!284679 (= lt!119768 (get!1321 lt!119806))))

(declare-fun b!284680 () Bool)

(declare-fun res!130099 () Bool)

(declare-fun e!177092 () Bool)

(assert (=> b!284680 (=> (not res!130099) (not e!177092))))

(assert (=> b!284680 (= res!130099 ((_ is Cons!3915) tokens!465))))

(declare-fun b!284681 () Bool)

(declare-fun separatorToken!170 () Token!1242)

(declare-fun e!177094 () Bool)

(declare-fun tp!104753 () Bool)

(declare-fun e!177079 () Bool)

(declare-fun inv!21 (TokenValue!771) Bool)

(assert (=> b!284681 (= e!177079 (and (inv!21 (value!25662 separatorToken!170)) e!177094 tp!104753))))

(declare-fun b!284682 () Bool)

(declare-fun res!130121 () Bool)

(declare-fun e!177093 () Bool)

(assert (=> b!284682 (=> (not res!130121) (not e!177093))))

(declare-datatypes ((LexerInterface!635 0))(
  ( (LexerInterfaceExt!632 (__x!3030 Int)) (Lexer!633) )
))
(declare-fun thiss!17480 () LexerInterface!635)

(declare-fun rulesInvariant!601 (LexerInterface!635 List!3924) Bool)

(assert (=> b!284682 (= res!130121 (rulesInvariant!601 thiss!17480 rules!1920))))

(declare-fun b!284683 () Bool)

(declare-datatypes ((Unit!5248 0))(
  ( (Unit!5249) )
))
(declare-fun e!177113 () Unit!5248)

(declare-fun Unit!5250 () Unit!5248)

(assert (=> b!284683 (= e!177113 Unit!5250)))

(declare-fun lt!119807 () Token!1242)

(declare-fun lt!119786 () C!2868)

(declare-fun lt!119783 () Unit!5248)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!72 (LexerInterface!635 List!3924 List!3924 Rule!1298 Rule!1298 C!2868) Unit!5248)

(assert (=> b!284683 (= lt!119783 (lemmaSepRuleNotContainsCharContainedInANonSepRule!72 thiss!17480 rules!1920 rules!1920 (rule!1346 lt!119807) (rule!1346 separatorToken!170) lt!119786))))

(assert (=> b!284683 false))

(declare-fun b!284684 () Bool)

(declare-fun res!130115 () Bool)

(declare-fun e!177082 () Bool)

(assert (=> b!284684 (=> (not res!130115) (not e!177082))))

(declare-datatypes ((IArray!2643 0))(
  ( (IArray!2644 (innerList!1379 List!3925)) )
))
(declare-datatypes ((Conc!1321 0))(
  ( (Node!1321 (left!3234 Conc!1321) (right!3564 Conc!1321) (csize!2872 Int) (cheight!1532 Int)) (Leaf!2035 (xs!3920 IArray!2643) (csize!2873 Int)) (Empty!1321) )
))
(declare-datatypes ((BalanceConc!2650 0))(
  ( (BalanceConc!2651 (c!53934 Conc!1321)) )
))
(declare-datatypes ((tuple2!4448 0))(
  ( (tuple2!4449 (_1!2440 BalanceConc!2650) (_2!2440 BalanceConc!2648)) )
))
(declare-fun lt!119797 () tuple2!4448)

(declare-fun apply!826 (BalanceConc!2650 Int) Token!1242)

(assert (=> b!284684 (= res!130115 (= (apply!826 (_1!2440 lt!119797) 0) separatorToken!170))))

(declare-fun e!177076 () Bool)

(declare-fun e!177111 () Bool)

(assert (=> b!284685 (= e!177076 e!177111)))

(declare-fun res!130124 () Bool)

(assert (=> b!284685 (=> res!130124 e!177111)))

(declare-datatypes ((tuple2!4450 0))(
  ( (tuple2!4451 (_1!2441 Token!1242) (_2!2441 BalanceConc!2648)) )
))
(declare-datatypes ((Option!862 0))(
  ( (None!861) (Some!861 (v!14788 tuple2!4450)) )
))
(declare-fun isDefined!704 (Option!862) Bool)

(declare-fun maxPrefixZipperSequence!316 (LexerInterface!635 List!3924 BalanceConc!2648) Option!862)

(declare-fun seqFromList!865 (List!3923) BalanceConc!2648)

(assert (=> b!284685 (= res!130124 (not (isDefined!704 (maxPrefixZipperSequence!316 thiss!17480 rules!1920 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))))

(declare-fun lt!119760 () Unit!5248)

(declare-fun forallContained!304 (List!3925 Int Token!1242) Unit!5248)

(assert (=> b!284685 (= lt!119760 (forallContained!304 tokens!465 lambda!9736 (h!9312 tokens!465)))))

(declare-fun lt!119810 () List!3923)

(assert (=> b!284685 (= lt!119810 (originalCharacters!792 (h!9312 tokens!465)))))

(declare-fun b!284686 () Bool)

(declare-fun res!130117 () Bool)

(declare-fun e!177098 () Bool)

(assert (=> b!284686 (=> (not res!130117) (not e!177098))))

(declare-fun lt!119794 () tuple2!4448)

(assert (=> b!284686 (= res!130117 (= (apply!826 (_1!2440 lt!119794) 0) lt!119807))))

(declare-fun b!284687 () Bool)

(declare-fun Unit!5251 () Unit!5248)

(assert (=> b!284687 (= e!177113 Unit!5251)))

(declare-fun b!284688 () Bool)

(assert (=> b!284688 (= e!177093 e!177092)))

(declare-fun res!130107 () Bool)

(assert (=> b!284688 (=> (not res!130107) (not e!177092))))

(declare-fun lt!119759 () BalanceConc!2650)

(declare-fun rulesProduceEachTokenIndividually!427 (LexerInterface!635 List!3924 BalanceConc!2650) Bool)

(assert (=> b!284688 (= res!130107 (rulesProduceEachTokenIndividually!427 thiss!17480 rules!1920 lt!119759))))

(declare-fun seqFromList!866 (List!3925) BalanceConc!2650)

(assert (=> b!284688 (= lt!119759 (seqFromList!866 tokens!465))))

(declare-fun e!177104 () Bool)

(assert (=> b!284689 (= e!177104 (and tp!104744 tp!104745))))

(declare-fun b!284690 () Bool)

(declare-fun res!130090 () Bool)

(declare-fun e!177097 () Bool)

(assert (=> b!284690 (=> res!130090 e!177097)))

(declare-fun lt!119763 () List!3923)

(declare-fun filter!91 (List!3925 Int) List!3925)

(declare-datatypes ((tuple2!4452 0))(
  ( (tuple2!4453 (_1!2442 List!3925) (_2!2442 List!3923)) )
))
(declare-fun lexList!223 (LexerInterface!635 List!3924 List!3923) tuple2!4452)

(assert (=> b!284690 (= res!130090 (not (= (filter!91 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763)) lambda!9735) (t!39949 tokens!465))))))

(declare-fun b!284691 () Bool)

(declare-fun e!177099 () Unit!5248)

(declare-fun Unit!5252 () Unit!5248)

(assert (=> b!284691 (= e!177099 Unit!5252)))

(declare-fun b!284692 () Bool)

(declare-fun res!130100 () Bool)

(declare-fun e!177087 () Bool)

(assert (=> b!284692 (=> (not res!130100) (not e!177087))))

(declare-datatypes ((tuple2!4454 0))(
  ( (tuple2!4455 (_1!2443 Token!1242) (_2!2443 List!3923)) )
))
(declare-fun lt!119765 () tuple2!4454)

(declare-fun isEmpty!2574 (List!3923) Bool)

(assert (=> b!284692 (= res!130100 (isEmpty!2574 (_2!2443 lt!119765)))))

(declare-fun b!284693 () Bool)

(declare-fun e!177085 () Bool)

(assert (=> b!284693 (= e!177085 false)))

(declare-fun b!284694 () Bool)

(declare-fun res!130112 () Bool)

(assert (=> b!284694 (=> res!130112 e!177076)))

(declare-fun rulesProduceIndividualToken!384 (LexerInterface!635 List!3924 Token!1242) Bool)

(assert (=> b!284694 (= res!130112 (not (rulesProduceIndividualToken!384 thiss!17480 rules!1920 (h!9312 tokens!465))))))

(declare-fun b!284695 () Bool)

(declare-fun e!177088 () Bool)

(declare-fun e!177102 () Bool)

(assert (=> b!284695 (= e!177088 e!177102)))

(declare-fun res!130097 () Bool)

(assert (=> b!284695 (=> (not res!130097) (not e!177102))))

(declare-fun lt!119775 () Rule!1298)

(declare-fun lt!119785 () List!3923)

(assert (=> b!284695 (= res!130097 (matchR!295 (regex!749 lt!119775) lt!119785))))

(declare-fun lt!119761 () Option!861)

(assert (=> b!284695 (= lt!119775 (get!1321 lt!119761))))

(declare-fun b!284696 () Bool)

(declare-fun ++!1042 (List!3923 List!3923) List!3923)

(assert (=> b!284696 (= e!177107 (not (= lt!119769 (++!1042 lt!119810 lt!119763))))))

(declare-fun b!284697 () Bool)

(declare-fun res!130103 () Bool)

(assert (=> b!284697 (=> res!130103 e!177097)))

(assert (=> b!284697 (= res!130103 (not (= (filter!91 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769)) lambda!9735) tokens!465)))))

(declare-fun tp!104751 () Bool)

(declare-fun e!177096 () Bool)

(declare-fun b!284698 () Bool)

(declare-fun inv!4838 (String!4935) Bool)

(declare-fun inv!4842 (TokenValueInjection!1314) Bool)

(assert (=> b!284698 (= e!177096 (and tp!104751 (inv!4838 (tag!963 (h!9311 rules!1920))) (inv!4842 (transformation!749 (h!9311 rules!1920))) e!177104))))

(declare-fun b!284699 () Bool)

(declare-fun res!130119 () Bool)

(declare-fun e!177081 () Bool)

(assert (=> b!284699 (=> (not res!130119) (not e!177081))))

(declare-fun lt!119777 () List!3923)

(declare-fun list!1628 (BalanceConc!2648) List!3923)

(assert (=> b!284699 (= res!130119 (= (list!1628 (seqFromList!865 lt!119769)) lt!119777))))

(declare-fun b!284700 () Bool)

(declare-fun e!177105 () Bool)

(assert (=> b!284700 (= e!177111 e!177105)))

(declare-fun res!130120 () Bool)

(assert (=> b!284700 (=> res!130120 e!177105)))

(assert (=> b!284700 (= res!130120 (not lt!119780))))

(assert (=> b!284700 e!177087))

(declare-fun res!130105 () Bool)

(assert (=> b!284700 (=> (not res!130105) (not e!177087))))

(assert (=> b!284700 (= res!130105 (= (_1!2443 lt!119765) (h!9312 tokens!465)))))

(declare-datatypes ((Option!863 0))(
  ( (None!862) (Some!862 (v!14789 tuple2!4454)) )
))
(declare-fun lt!119772 () Option!863)

(declare-fun get!1322 (Option!863) tuple2!4454)

(assert (=> b!284700 (= lt!119765 (get!1322 lt!119772))))

(declare-fun isDefined!705 (Option!863) Bool)

(assert (=> b!284700 (isDefined!705 lt!119772)))

(declare-fun maxPrefix!353 (LexerInterface!635 List!3924 List!3923) Option!863)

(assert (=> b!284700 (= lt!119772 (maxPrefix!353 thiss!17480 rules!1920 lt!119810))))

(declare-fun b!284701 () Bool)

(assert (=> b!284701 (= e!177105 e!177097)))

(declare-fun res!130113 () Bool)

(assert (=> b!284701 (=> res!130113 e!177097)))

(declare-fun lt!119799 () List!3925)

(assert (=> b!284701 (= res!130113 (not (= (filter!91 lt!119799 lambda!9735) (t!39949 tokens!465))))))

(assert (=> b!284701 (= (filter!91 lt!119799 lambda!9735) (t!39949 tokens!465))))

(declare-fun lt!119773 () BalanceConc!2648)

(declare-fun list!1629 (BalanceConc!2650) List!3925)

(declare-fun lex!427 (LexerInterface!635 List!3924 BalanceConc!2648) tuple2!4448)

(assert (=> b!284701 (= lt!119799 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119773))))))

(declare-fun lt!119770 () Unit!5248)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!82 (LexerInterface!635 List!3924 List!3925 Token!1242) Unit!5248)

(assert (=> b!284701 (= lt!119770 (theoremInvertabilityFromTokensSepTokenWhenNeeded!82 thiss!17480 rules!1920 (t!39949 tokens!465) separatorToken!170))))

(declare-fun lt!119789 () Option!863)

(assert (=> b!284701 (= lt!119789 (Some!862 (tuple2!4455 separatorToken!170 lt!119763)))))

(declare-fun lt!119805 () Unit!5248)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!68 (LexerInterface!635 List!3924 Token!1242 Rule!1298 List!3923 Rule!1298) Unit!5248)

(assert (=> b!284701 (= lt!119805 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!68 thiss!17480 rules!1920 separatorToken!170 (rule!1346 separatorToken!170) lt!119763 (rule!1346 lt!119807)))))

(declare-fun lt!119804 () Unit!5248)

(assert (=> b!284701 (= lt!119804 e!177113)))

(declare-fun c!53929 () Bool)

(declare-fun contains!763 (List!3923 C!2868) Bool)

(declare-fun usedCharacters!86 (Regex!973) List!3923)

(assert (=> b!284701 (= c!53929 (contains!763 (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170))) lt!119786))))

(declare-fun head!925 (List!3923) C!2868)

(assert (=> b!284701 (= lt!119786 (head!925 lt!119763))))

(declare-fun lt!119790 () Unit!5248)

(declare-fun e!177091 () Unit!5248)

(assert (=> b!284701 (= lt!119790 e!177091)))

(declare-fun c!53930 () Bool)

(declare-fun lt!119771 () C!2868)

(assert (=> b!284701 (= c!53930 (not (contains!763 (usedCharacters!86 (regex!749 (rule!1346 lt!119807))) lt!119771)))))

(assert (=> b!284701 (= lt!119771 (head!925 lt!119809))))

(assert (=> b!284701 e!177110))

(declare-fun res!130091 () Bool)

(assert (=> b!284701 (=> (not res!130091) (not e!177110))))

(declare-fun isDefined!706 (Option!861) Bool)

(assert (=> b!284701 (= res!130091 (isDefined!706 lt!119806))))

(declare-fun getRuleFromTag!136 (LexerInterface!635 List!3924 String!4935) Option!861)

(assert (=> b!284701 (= lt!119806 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 lt!119807))))))

(declare-fun lt!119782 () Unit!5248)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!136 (LexerInterface!635 List!3924 List!3923 Token!1242) Unit!5248)

(assert (=> b!284701 (= lt!119782 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!136 thiss!17480 rules!1920 lt!119809 lt!119807))))

(declare-fun charsOf!394 (Token!1242) BalanceConc!2648)

(assert (=> b!284701 (= lt!119809 (list!1628 (charsOf!394 lt!119807)))))

(declare-fun lt!119788 () Unit!5248)

(assert (=> b!284701 (= lt!119788 (forallContained!304 tokens!465 lambda!9736 lt!119807))))

(assert (=> b!284701 e!177098))

(declare-fun res!130123 () Bool)

(assert (=> b!284701 (=> (not res!130123) (not e!177098))))

(declare-fun size!3133 (BalanceConc!2650) Int)

(assert (=> b!284701 (= res!130123 (= (size!3133 (_1!2440 lt!119794)) 1))))

(declare-fun lt!119764 () BalanceConc!2648)

(assert (=> b!284701 (= lt!119794 (lex!427 thiss!17480 rules!1920 lt!119764))))

(declare-fun lt!119781 () BalanceConc!2650)

(declare-fun printTailRec!323 (LexerInterface!635 BalanceConc!2650 Int BalanceConc!2648) BalanceConc!2648)

(assert (=> b!284701 (= lt!119764 (printTailRec!323 thiss!17480 lt!119781 0 (BalanceConc!2649 Empty!1320)))))

(declare-fun print!360 (LexerInterface!635 BalanceConc!2650) BalanceConc!2648)

(assert (=> b!284701 (= lt!119764 (print!360 thiss!17480 lt!119781))))

(declare-fun singletonSeq!295 (Token!1242) BalanceConc!2650)

(assert (=> b!284701 (= lt!119781 (singletonSeq!295 lt!119807))))

(assert (=> b!284701 e!177088))

(declare-fun res!130092 () Bool)

(assert (=> b!284701 (=> (not res!130092) (not e!177088))))

(assert (=> b!284701 (= res!130092 (isDefined!706 lt!119761))))

(assert (=> b!284701 (= lt!119761 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 separatorToken!170))))))

(declare-fun lt!119792 () Unit!5248)

(assert (=> b!284701 (= lt!119792 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!136 thiss!17480 rules!1920 lt!119785 separatorToken!170))))

(assert (=> b!284701 e!177082))

(declare-fun res!130116 () Bool)

(assert (=> b!284701 (=> (not res!130116) (not e!177082))))

(assert (=> b!284701 (= res!130116 (= (size!3133 (_1!2440 lt!119797)) 1))))

(declare-fun lt!119776 () BalanceConc!2648)

(assert (=> b!284701 (= lt!119797 (lex!427 thiss!17480 rules!1920 lt!119776))))

(declare-fun lt!119801 () BalanceConc!2650)

(assert (=> b!284701 (= lt!119776 (printTailRec!323 thiss!17480 lt!119801 0 (BalanceConc!2649 Empty!1320)))))

(assert (=> b!284701 (= lt!119776 (print!360 thiss!17480 lt!119801))))

(assert (=> b!284701 (= lt!119801 (singletonSeq!295 separatorToken!170))))

(assert (=> b!284701 (rulesProduceIndividualToken!384 thiss!17480 rules!1920 lt!119807)))

(declare-fun lt!119808 () Unit!5248)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!132 (LexerInterface!635 List!3924 List!3925 Token!1242) Unit!5248)

(assert (=> b!284701 (= lt!119808 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!132 thiss!17480 rules!1920 tokens!465 lt!119807))))

(declare-fun head!926 (List!3925) Token!1242)

(assert (=> b!284701 (= lt!119807 (head!926 (t!39949 tokens!465)))))

(declare-fun lt!119796 () Unit!5248)

(assert (=> b!284701 (= lt!119796 e!177099)))

(declare-fun c!53931 () Bool)

(declare-fun isEmpty!2575 (List!3925) Bool)

(assert (=> b!284701 (= c!53931 (isEmpty!2575 (t!39949 tokens!465)))))

(declare-fun lt!119800 () List!3923)

(assert (=> b!284701 (= lt!119789 (maxPrefix!353 thiss!17480 rules!1920 lt!119800))))

(declare-fun lt!119802 () tuple2!4454)

(assert (=> b!284701 (= lt!119800 (_2!2443 lt!119802))))

(declare-fun lt!119798 () Unit!5248)

(declare-fun lemmaSamePrefixThenSameSuffix!218 (List!3923 List!3923 List!3923 List!3923 List!3923) Unit!5248)

(assert (=> b!284701 (= lt!119798 (lemmaSamePrefixThenSameSuffix!218 lt!119810 lt!119800 lt!119810 (_2!2443 lt!119802) lt!119769))))

(assert (=> b!284701 (= lt!119802 (get!1322 (maxPrefix!353 thiss!17480 rules!1920 lt!119769)))))

(declare-fun isPrefix!417 (List!3923 List!3923) Bool)

(assert (=> b!284701 (isPrefix!417 lt!119810 lt!119793)))

(declare-fun lt!119762 () Unit!5248)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!312 (List!3923 List!3923) Unit!5248)

(assert (=> b!284701 (= lt!119762 (lemmaConcatTwoListThenFirstIsPrefix!312 lt!119810 lt!119800))))

(declare-fun e!177090 () Bool)

(assert (=> b!284701 e!177090))

(declare-fun res!130108 () Bool)

(assert (=> b!284701 (=> res!130108 e!177090)))

(assert (=> b!284701 (= res!130108 (isEmpty!2575 tokens!465))))

(declare-fun lt!119784 () Unit!5248)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!174 (LexerInterface!635 List!3924 List!3925 Token!1242) Unit!5248)

(assert (=> b!284701 (= lt!119784 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!174 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!177080 () Bool)

(assert (=> b!284702 (= e!177080 (and tp!104755 tp!104752))))

(declare-fun b!284703 () Bool)

(assert (=> b!284703 (= e!177101 e!177076)))

(declare-fun res!130096 () Bool)

(assert (=> b!284703 (=> res!130096 e!177076)))

(declare-fun lt!119803 () List!3923)

(declare-fun lt!119767 () List!3923)

(assert (=> b!284703 (= res!130096 (or (not (= lt!119803 lt!119767)) (not (= lt!119767 lt!119810)) (not (= lt!119803 lt!119810))))))

(declare-fun printList!311 (LexerInterface!635 List!3925) List!3923)

(assert (=> b!284703 (= lt!119767 (printList!311 thiss!17480 (Cons!3915 (h!9312 tokens!465) Nil!3915)))))

(declare-fun lt!119774 () BalanceConc!2648)

(assert (=> b!284703 (= lt!119803 (list!1628 lt!119774))))

(declare-fun lt!119795 () BalanceConc!2650)

(assert (=> b!284703 (= lt!119774 (printTailRec!323 thiss!17480 lt!119795 0 (BalanceConc!2649 Empty!1320)))))

(assert (=> b!284703 (= lt!119774 (print!360 thiss!17480 lt!119795))))

(assert (=> b!284703 (= lt!119795 (singletonSeq!295 (h!9312 tokens!465)))))

(declare-fun b!284704 () Bool)

(declare-fun res!130114 () Bool)

(assert (=> b!284704 (=> (not res!130114) (not e!177092))))

(assert (=> b!284704 (= res!130114 (rulesProduceIndividualToken!384 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!104747 () Bool)

(declare-fun b!284705 () Bool)

(declare-fun e!177095 () Bool)

(assert (=> b!284705 (= e!177095 (and tp!104747 (inv!4838 (tag!963 (rule!1346 (h!9312 tokens!465)))) (inv!4842 (transformation!749 (rule!1346 (h!9312 tokens!465)))) e!177080))))

(declare-fun b!284706 () Bool)

(assert (=> b!284706 (= e!177087 (matchR!295 (regex!749 (rule!1346 (h!9312 tokens!465))) lt!119810))))

(declare-fun b!284707 () Bool)

(declare-fun e!177108 () Bool)

(declare-fun tp!104746 () Bool)

(assert (=> b!284707 (= e!177108 (and e!177096 tp!104746))))

(declare-fun e!177103 () Bool)

(assert (=> b!284708 (= e!177103 (and tp!104743 tp!104754))))

(declare-fun b!284709 () Bool)

(assert (=> b!284709 (= e!177092 e!177081)))

(declare-fun res!130106 () Bool)

(assert (=> b!284709 (=> (not res!130106) (not e!177081))))

(assert (=> b!284709 (= res!130106 (= lt!119769 lt!119777))))

(declare-fun lt!119778 () BalanceConc!2648)

(assert (=> b!284709 (= lt!119777 (list!1628 lt!119778))))

(declare-fun printWithSeparatorTokenWhenNeededRec!310 (LexerInterface!635 List!3924 BalanceConc!2650 Token!1242 Int) BalanceConc!2648)

(assert (=> b!284709 (= lt!119778 (printWithSeparatorTokenWhenNeededRec!310 thiss!17480 rules!1920 lt!119759 separatorToken!170 0))))

(declare-fun printWithSeparatorTokenWhenNeededList!318 (LexerInterface!635 List!3924 List!3925 Token!1242) List!3923)

(assert (=> b!284709 (= lt!119769 (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!284710 () Bool)

(declare-fun isEmpty!2576 (BalanceConc!2648) Bool)

(assert (=> b!284710 (= e!177082 (isEmpty!2576 (_2!2440 lt!119797)))))

(declare-fun res!130101 () Bool)

(assert (=> b!284711 (=> (not res!130101) (not e!177092))))

(declare-fun forall!1004 (List!3925 Int) Bool)

(assert (=> b!284711 (= res!130101 (forall!1004 tokens!465 lambda!9735))))

(declare-fun b!284712 () Bool)

(declare-fun e!177112 () Bool)

(declare-fun lt!119787 () Option!863)

(assert (=> b!284712 (= e!177112 (= (_1!2443 (get!1322 lt!119787)) (head!926 tokens!465)))))

(declare-fun b!284713 () Bool)

(declare-fun res!130104 () Bool)

(assert (=> b!284713 (=> res!130104 e!177076)))

(declare-fun isEmpty!2577 (BalanceConc!2650) Bool)

(assert (=> b!284713 (= res!130104 (isEmpty!2577 (_1!2440 (lex!427 thiss!17480 rules!1920 (seqFromList!865 lt!119810)))))))

(declare-fun b!284714 () Bool)

(declare-fun res!130102 () Bool)

(assert (=> b!284714 (=> (not res!130102) (not e!177092))))

(assert (=> b!284714 (= res!130102 (isSeparator!749 (rule!1346 separatorToken!170)))))

(declare-fun b!284715 () Bool)

(declare-fun Unit!5253 () Unit!5248)

(assert (=> b!284715 (= e!177091 Unit!5253)))

(declare-fun lt!119791 () Unit!5248)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!78 (Regex!973 List!3923 C!2868) Unit!5248)

(assert (=> b!284715 (= lt!119791 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!78 (regex!749 (rule!1346 lt!119807)) lt!119809 lt!119771))))

(declare-fun res!130094 () Bool)

(assert (=> b!284715 (= res!130094 (not (matchR!295 (regex!749 (rule!1346 lt!119807)) lt!119809)))))

(assert (=> b!284715 (=> (not res!130094) (not e!177085))))

(assert (=> b!284715 e!177085))

(declare-fun res!130111 () Bool)

(assert (=> start!30810 (=> (not res!130111) (not e!177093))))

(assert (=> start!30810 (= res!130111 ((_ is Lexer!633) thiss!17480))))

(assert (=> start!30810 e!177093))

(assert (=> start!30810 true))

(assert (=> start!30810 e!177108))

(assert (=> start!30810 (and (inv!4841 separatorToken!170) e!177079)))

(assert (=> start!30810 e!177089))

(declare-fun b!284716 () Bool)

(declare-fun tp!104748 () Bool)

(assert (=> b!284716 (= e!177078 (and (inv!21 (value!25662 (h!9312 tokens!465))) e!177095 tp!104748))))

(declare-fun b!284717 () Bool)

(assert (=> b!284717 (= e!177081 (not e!177084))))

(declare-fun res!130098 () Bool)

(assert (=> b!284717 (=> res!130098 e!177084)))

(assert (=> b!284717 (= res!130098 (not (= lt!119763 (list!1628 lt!119773))))))

(assert (=> b!284717 (= lt!119773 (printWithSeparatorTokenWhenNeededRec!310 thiss!17480 rules!1920 (seqFromList!866 (t!39949 tokens!465)) separatorToken!170 0))))

(declare-fun lt!119766 () List!3923)

(assert (=> b!284717 (= lt!119766 lt!119793)))

(assert (=> b!284717 (= lt!119793 (++!1042 lt!119810 lt!119800))))

(assert (=> b!284717 (= lt!119766 (++!1042 (++!1042 lt!119810 lt!119785) lt!119763))))

(declare-fun lt!119779 () Unit!5248)

(declare-fun lemmaConcatAssociativity!452 (List!3923 List!3923 List!3923) Unit!5248)

(assert (=> b!284717 (= lt!119779 (lemmaConcatAssociativity!452 lt!119810 lt!119785 lt!119763))))

(assert (=> b!284717 (= lt!119810 (list!1628 (charsOf!394 (h!9312 tokens!465))))))

(assert (=> b!284717 (= lt!119800 (++!1042 lt!119785 lt!119763))))

(assert (=> b!284717 (= lt!119763 (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 (t!39949 tokens!465) separatorToken!170))))

(assert (=> b!284717 (= lt!119785 (list!1628 (charsOf!394 separatorToken!170)))))

(declare-fun b!284718 () Bool)

(assert (=> b!284718 (= e!177090 e!177112)))

(declare-fun res!130118 () Bool)

(assert (=> b!284718 (=> (not res!130118) (not e!177112))))

(assert (=> b!284718 (= res!130118 (isDefined!705 lt!119787))))

(assert (=> b!284718 (= lt!119787 (maxPrefix!353 thiss!17480 rules!1920 lt!119769))))

(declare-fun b!284719 () Bool)

(assert (=> b!284719 (= e!177102 (= (rule!1346 separatorToken!170) lt!119775))))

(declare-fun b!284720 () Bool)

(assert (=> b!284720 (= e!177106 (= (rule!1346 lt!119807) lt!119768))))

(declare-fun b!284721 () Bool)

(declare-fun res!130109 () Bool)

(assert (=> b!284721 (=> (not res!130109) (not e!177092))))

(declare-fun sepAndNonSepRulesDisjointChars!338 (List!3924 List!3924) Bool)

(assert (=> b!284721 (= res!130109 (sepAndNonSepRulesDisjointChars!338 rules!1920 rules!1920))))

(declare-fun tp!104749 () Bool)

(declare-fun b!284722 () Bool)

(assert (=> b!284722 (= e!177094 (and tp!104749 (inv!4838 (tag!963 (rule!1346 separatorToken!170))) (inv!4842 (transformation!749 (rule!1346 separatorToken!170))) e!177103))))

(declare-fun b!284723 () Bool)

(declare-fun Unit!5254 () Unit!5248)

(assert (=> b!284723 (= e!177091 Unit!5254)))

(declare-fun b!284724 () Bool)

(declare-fun res!130122 () Bool)

(assert (=> b!284724 (=> (not res!130122) (not e!177093))))

(declare-fun isEmpty!2578 (List!3924) Bool)

(assert (=> b!284724 (= res!130122 (not (isEmpty!2578 rules!1920)))))

(declare-fun b!284725 () Bool)

(assert (=> b!284725 (= e!177097 (= (filter!91 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))) lambda!9735) tokens!465))))

(declare-fun b!284726 () Bool)

(declare-fun Unit!5255 () Unit!5248)

(assert (=> b!284726 (= e!177099 Unit!5255)))

(assert (=> b!284726 false))

(declare-fun b!284727 () Bool)

(assert (=> b!284727 (= e!177098 (isEmpty!2576 (_2!2440 lt!119794)))))

(assert (= (and start!30810 res!130111) b!284724))

(assert (= (and b!284724 res!130122) b!284682))

(assert (= (and b!284682 res!130121) b!284688))

(assert (= (and b!284688 res!130107) b!284704))

(assert (= (and b!284704 res!130114) b!284714))

(assert (= (and b!284714 res!130102) b!284711))

(assert (= (and b!284711 res!130101) b!284721))

(assert (= (and b!284721 res!130109) b!284680))

(assert (= (and b!284680 res!130099) b!284709))

(assert (= (and b!284709 res!130106) b!284699))

(assert (= (and b!284699 res!130119) b!284717))

(assert (= (and b!284717 (not res!130098)) b!284678))

(assert (= (and b!284678 res!130110) b!284696))

(assert (= (and b!284678 (not res!130093)) b!284703))

(assert (= (and b!284703 (not res!130096)) b!284694))

(assert (= (and b!284694 (not res!130112)) b!284713))

(assert (= (and b!284713 (not res!130104)) b!284685))

(assert (= (and b!284685 (not res!130124)) b!284700))

(assert (= (and b!284700 res!130105) b!284692))

(assert (= (and b!284692 res!130100) b!284706))

(assert (= (and b!284700 (not res!130120)) b!284701))

(assert (= (and b!284701 (not res!130108)) b!284718))

(assert (= (and b!284718 res!130118) b!284712))

(assert (= (and b!284701 c!53931) b!284726))

(assert (= (and b!284701 (not c!53931)) b!284691))

(assert (= (and b!284701 res!130116) b!284684))

(assert (= (and b!284684 res!130115) b!284710))

(assert (= (and b!284701 res!130092) b!284695))

(assert (= (and b!284695 res!130097) b!284719))

(assert (= (and b!284701 res!130123) b!284686))

(assert (= (and b!284686 res!130117) b!284727))

(assert (= (and b!284701 res!130091) b!284679))

(assert (= (and b!284679 res!130095) b!284720))

(assert (= (and b!284701 c!53930) b!284715))

(assert (= (and b!284701 (not c!53930)) b!284723))

(assert (= (and b!284715 res!130094) b!284693))

(assert (= (and b!284701 c!53929) b!284683))

(assert (= (and b!284701 (not c!53929)) b!284687))

(assert (= (and b!284701 (not res!130113)) b!284690))

(assert (= (and b!284690 (not res!130090)) b!284697))

(assert (= (and b!284697 (not res!130103)) b!284725))

(assert (= b!284698 b!284689))

(assert (= b!284707 b!284698))

(assert (= (and start!30810 ((_ is Cons!3914) rules!1920)) b!284707))

(assert (= b!284722 b!284708))

(assert (= b!284681 b!284722))

(assert (= start!30810 b!284681))

(assert (= b!284705 b!284702))

(assert (= b!284716 b!284705))

(assert (= b!284677 b!284716))

(assert (= (and start!30810 ((_ is Cons!3915) tokens!465)) b!284677))

(declare-fun m!367981 () Bool)

(assert (=> b!284722 m!367981))

(declare-fun m!367983 () Bool)

(assert (=> b!284722 m!367983))

(declare-fun m!367985 () Bool)

(assert (=> b!284690 m!367985))

(declare-fun m!367987 () Bool)

(assert (=> b!284690 m!367987))

(declare-fun m!367989 () Bool)

(assert (=> b!284716 m!367989))

(declare-fun m!367991 () Bool)

(assert (=> b!284695 m!367991))

(declare-fun m!367993 () Bool)

(assert (=> b!284695 m!367993))

(declare-fun m!367995 () Bool)

(assert (=> b!284706 m!367995))

(declare-fun m!367997 () Bool)

(assert (=> b!284679 m!367997))

(declare-fun m!367999 () Bool)

(assert (=> b!284679 m!367999))

(declare-fun m!368001 () Bool)

(assert (=> b!284724 m!368001))

(declare-fun m!368003 () Bool)

(assert (=> b!284696 m!368003))

(declare-fun m!368005 () Bool)

(assert (=> b!284703 m!368005))

(declare-fun m!368007 () Bool)

(assert (=> b!284703 m!368007))

(declare-fun m!368009 () Bool)

(assert (=> b!284703 m!368009))

(declare-fun m!368011 () Bool)

(assert (=> b!284703 m!368011))

(declare-fun m!368013 () Bool)

(assert (=> b!284703 m!368013))

(declare-fun m!368015 () Bool)

(assert (=> b!284688 m!368015))

(declare-fun m!368017 () Bool)

(assert (=> b!284688 m!368017))

(declare-fun m!368019 () Bool)

(assert (=> b!284681 m!368019))

(declare-fun m!368021 () Bool)

(assert (=> b!284692 m!368021))

(declare-fun m!368023 () Bool)

(assert (=> b!284727 m!368023))

(declare-fun m!368025 () Bool)

(assert (=> b!284725 m!368025))

(declare-fun m!368027 () Bool)

(assert (=> b!284725 m!368027))

(assert (=> b!284725 m!368027))

(declare-fun m!368029 () Bool)

(assert (=> b!284725 m!368029))

(declare-fun m!368031 () Bool)

(assert (=> b!284682 m!368031))

(declare-fun m!368033 () Bool)

(assert (=> b!284698 m!368033))

(declare-fun m!368035 () Bool)

(assert (=> b!284698 m!368035))

(declare-fun m!368037 () Bool)

(assert (=> b!284683 m!368037))

(declare-fun m!368039 () Bool)

(assert (=> b!284712 m!368039))

(declare-fun m!368041 () Bool)

(assert (=> b!284712 m!368041))

(declare-fun m!368043 () Bool)

(assert (=> b!284697 m!368043))

(declare-fun m!368045 () Bool)

(assert (=> b!284697 m!368045))

(declare-fun m!368047 () Bool)

(assert (=> b!284694 m!368047))

(declare-fun m!368049 () Bool)

(assert (=> b!284711 m!368049))

(declare-fun m!368051 () Bool)

(assert (=> start!30810 m!368051))

(declare-fun m!368053 () Bool)

(assert (=> b!284677 m!368053))

(declare-fun m!368055 () Bool)

(assert (=> b!284710 m!368055))

(declare-fun m!368057 () Bool)

(assert (=> b!284717 m!368057))

(declare-fun m!368059 () Bool)

(assert (=> b!284717 m!368059))

(declare-fun m!368061 () Bool)

(assert (=> b!284717 m!368061))

(declare-fun m!368063 () Bool)

(assert (=> b!284717 m!368063))

(declare-fun m!368065 () Bool)

(assert (=> b!284717 m!368065))

(declare-fun m!368067 () Bool)

(assert (=> b!284717 m!368067))

(declare-fun m!368069 () Bool)

(assert (=> b!284717 m!368069))

(assert (=> b!284717 m!368063))

(assert (=> b!284717 m!368069))

(declare-fun m!368071 () Bool)

(assert (=> b!284717 m!368071))

(declare-fun m!368073 () Bool)

(assert (=> b!284717 m!368073))

(declare-fun m!368075 () Bool)

(assert (=> b!284717 m!368075))

(assert (=> b!284717 m!368057))

(declare-fun m!368077 () Bool)

(assert (=> b!284717 m!368077))

(declare-fun m!368079 () Bool)

(assert (=> b!284717 m!368079))

(assert (=> b!284717 m!368073))

(declare-fun m!368081 () Bool)

(assert (=> b!284717 m!368081))

(declare-fun m!368083 () Bool)

(assert (=> b!284721 m!368083))

(declare-fun m!368085 () Bool)

(assert (=> b!284699 m!368085))

(assert (=> b!284699 m!368085))

(declare-fun m!368087 () Bool)

(assert (=> b!284699 m!368087))

(declare-fun m!368089 () Bool)

(assert (=> b!284718 m!368089))

(declare-fun m!368091 () Bool)

(assert (=> b!284718 m!368091))

(declare-fun m!368093 () Bool)

(assert (=> b!284700 m!368093))

(declare-fun m!368095 () Bool)

(assert (=> b!284700 m!368095))

(declare-fun m!368097 () Bool)

(assert (=> b!284700 m!368097))

(declare-fun m!368099 () Bool)

(assert (=> b!284685 m!368099))

(assert (=> b!284685 m!368099))

(declare-fun m!368101 () Bool)

(assert (=> b!284685 m!368101))

(assert (=> b!284685 m!368101))

(declare-fun m!368103 () Bool)

(assert (=> b!284685 m!368103))

(declare-fun m!368105 () Bool)

(assert (=> b!284685 m!368105))

(declare-fun m!368107 () Bool)

(assert (=> b!284684 m!368107))

(declare-fun m!368109 () Bool)

(assert (=> b!284686 m!368109))

(declare-fun m!368111 () Bool)

(assert (=> b!284709 m!368111))

(declare-fun m!368113 () Bool)

(assert (=> b!284709 m!368113))

(declare-fun m!368115 () Bool)

(assert (=> b!284709 m!368115))

(declare-fun m!368117 () Bool)

(assert (=> b!284715 m!368117))

(declare-fun m!368119 () Bool)

(assert (=> b!284715 m!368119))

(declare-fun m!368121 () Bool)

(assert (=> b!284704 m!368121))

(declare-fun m!368123 () Bool)

(assert (=> b!284701 m!368123))

(declare-fun m!368125 () Bool)

(assert (=> b!284701 m!368125))

(declare-fun m!368127 () Bool)

(assert (=> b!284701 m!368127))

(declare-fun m!368129 () Bool)

(assert (=> b!284701 m!368129))

(declare-fun m!368131 () Bool)

(assert (=> b!284701 m!368131))

(declare-fun m!368133 () Bool)

(assert (=> b!284701 m!368133))

(declare-fun m!368135 () Bool)

(assert (=> b!284701 m!368135))

(declare-fun m!368137 () Bool)

(assert (=> b!284701 m!368137))

(declare-fun m!368139 () Bool)

(assert (=> b!284701 m!368139))

(declare-fun m!368141 () Bool)

(assert (=> b!284701 m!368141))

(declare-fun m!368143 () Bool)

(assert (=> b!284701 m!368143))

(declare-fun m!368145 () Bool)

(assert (=> b!284701 m!368145))

(declare-fun m!368147 () Bool)

(assert (=> b!284701 m!368147))

(assert (=> b!284701 m!368139))

(declare-fun m!368149 () Bool)

(assert (=> b!284701 m!368149))

(declare-fun m!368151 () Bool)

(assert (=> b!284701 m!368151))

(declare-fun m!368153 () Bool)

(assert (=> b!284701 m!368153))

(declare-fun m!368155 () Bool)

(assert (=> b!284701 m!368155))

(declare-fun m!368157 () Bool)

(assert (=> b!284701 m!368157))

(declare-fun m!368159 () Bool)

(assert (=> b!284701 m!368159))

(declare-fun m!368161 () Bool)

(assert (=> b!284701 m!368161))

(declare-fun m!368163 () Bool)

(assert (=> b!284701 m!368163))

(assert (=> b!284701 m!368129))

(assert (=> b!284701 m!368091))

(declare-fun m!368165 () Bool)

(assert (=> b!284701 m!368165))

(declare-fun m!368167 () Bool)

(assert (=> b!284701 m!368167))

(declare-fun m!368169 () Bool)

(assert (=> b!284701 m!368169))

(declare-fun m!368171 () Bool)

(assert (=> b!284701 m!368171))

(declare-fun m!368173 () Bool)

(assert (=> b!284701 m!368173))

(declare-fun m!368175 () Bool)

(assert (=> b!284701 m!368175))

(declare-fun m!368177 () Bool)

(assert (=> b!284701 m!368177))

(assert (=> b!284701 m!368091))

(declare-fun m!368179 () Bool)

(assert (=> b!284701 m!368179))

(declare-fun m!368181 () Bool)

(assert (=> b!284701 m!368181))

(declare-fun m!368183 () Bool)

(assert (=> b!284701 m!368183))

(declare-fun m!368185 () Bool)

(assert (=> b!284701 m!368185))

(assert (=> b!284701 m!368181))

(declare-fun m!368187 () Bool)

(assert (=> b!284701 m!368187))

(declare-fun m!368189 () Bool)

(assert (=> b!284701 m!368189))

(declare-fun m!368191 () Bool)

(assert (=> b!284701 m!368191))

(declare-fun m!368193 () Bool)

(assert (=> b!284701 m!368193))

(declare-fun m!368195 () Bool)

(assert (=> b!284701 m!368195))

(declare-fun m!368197 () Bool)

(assert (=> b!284701 m!368197))

(declare-fun m!368199 () Bool)

(assert (=> b!284701 m!368199))

(declare-fun m!368201 () Bool)

(assert (=> b!284701 m!368201))

(declare-fun m!368203 () Bool)

(assert (=> b!284701 m!368203))

(assert (=> b!284701 m!368201))

(declare-fun m!368205 () Bool)

(assert (=> b!284713 m!368205))

(assert (=> b!284713 m!368205))

(declare-fun m!368207 () Bool)

(assert (=> b!284713 m!368207))

(declare-fun m!368209 () Bool)

(assert (=> b!284713 m!368209))

(declare-fun m!368211 () Bool)

(assert (=> b!284705 m!368211))

(declare-fun m!368213 () Bool)

(assert (=> b!284705 m!368213))

(check-sat (not b!284695) (not b!284696) (not b!284715) (not b!284684) (not b!284683) (not b!284704) (not b_next!10413) b_and!22939 (not b!284685) (not b!284692) b_and!22937 (not b!284736) b_and!22941 (not b!284690) (not b!284716) (not b!284713) (not b!284681) (not b!284725) (not b!284697) (not b!284718) (not b!284686) (not start!30810) (not b!284717) (not b!284710) (not b!284707) (not b!284711) (not b!284727) b_and!22933 b_and!22943 (not b!284677) (not b_next!10409) (not b_next!10417) (not b!284679) (not b!284721) (not b!284699) (not b!284703) (not b!284724) (not b!284706) (not b!284722) (not b!284712) (not b!284688) (not b!284700) (not b!284698) (not b_next!10415) (not b!284682) (not b_next!10411) (not b!284701) (not b!284705) (not b_next!10419) b_and!22935 (not b!284694) (not b!284709))
(check-sat b_and!22941 (not b_next!10409) (not b_next!10417) (not b_next!10413) (not b_next!10415) b_and!22939 (not b_next!10411) b_and!22937 b_and!22933 b_and!22943 (not b_next!10419) b_and!22935)
(get-model)

(declare-fun d!84254 () Bool)

(declare-fun res!130189 () Bool)

(declare-fun e!177166 () Bool)

(assert (=> d!84254 (=> res!130189 e!177166)))

(assert (=> d!84254 (= res!130189 (not ((_ is Cons!3914) rules!1920)))))

(assert (=> d!84254 (= (sepAndNonSepRulesDisjointChars!338 rules!1920 rules!1920) e!177166)))

(declare-fun b!284814 () Bool)

(declare-fun e!177167 () Bool)

(assert (=> b!284814 (= e!177166 e!177167)))

(declare-fun res!130190 () Bool)

(assert (=> b!284814 (=> (not res!130190) (not e!177167))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!131 (Rule!1298 List!3924) Bool)

(assert (=> b!284814 (= res!130190 (ruleDisjointCharsFromAllFromOtherType!131 (h!9311 rules!1920) rules!1920))))

(declare-fun b!284815 () Bool)

(assert (=> b!284815 (= e!177167 (sepAndNonSepRulesDisjointChars!338 rules!1920 (t!39948 rules!1920)))))

(assert (= (and d!84254 (not res!130189)) b!284814))

(assert (= (and b!284814 res!130190) b!284815))

(declare-fun m!368253 () Bool)

(assert (=> b!284814 m!368253))

(declare-fun m!368255 () Bool)

(assert (=> b!284815 m!368255))

(assert (=> b!284721 d!84254))

(declare-fun d!84256 () Bool)

(assert (=> d!84256 (= (get!1322 lt!119772) (v!14789 lt!119772))))

(assert (=> b!284700 d!84256))

(declare-fun d!84262 () Bool)

(declare-fun isEmpty!2581 (Option!863) Bool)

(assert (=> d!84262 (= (isDefined!705 lt!119772) (not (isEmpty!2581 lt!119772)))))

(declare-fun bs!32131 () Bool)

(assert (= bs!32131 d!84262))

(declare-fun m!368273 () Bool)

(assert (=> bs!32131 m!368273))

(assert (=> b!284700 d!84262))

(declare-fun b!284852 () Bool)

(declare-fun e!177185 () Option!863)

(declare-fun call!15977 () Option!863)

(assert (=> b!284852 (= e!177185 call!15977)))

(declare-fun b!284853 () Bool)

(declare-fun res!130212 () Bool)

(declare-fun e!177183 () Bool)

(assert (=> b!284853 (=> (not res!130212) (not e!177183))))

(declare-fun lt!119838 () Option!863)

(assert (=> b!284853 (= res!130212 (= (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!119838)))) (originalCharacters!792 (_1!2443 (get!1322 lt!119838)))))))

(declare-fun b!284854 () Bool)

(declare-fun e!177184 () Bool)

(assert (=> b!284854 (= e!177184 e!177183)))

(declare-fun res!130211 () Bool)

(assert (=> b!284854 (=> (not res!130211) (not e!177183))))

(assert (=> b!284854 (= res!130211 (isDefined!705 lt!119838))))

(declare-fun b!284855 () Bool)

(declare-fun lt!119839 () Option!863)

(declare-fun lt!119840 () Option!863)

(assert (=> b!284855 (= e!177185 (ite (and ((_ is None!862) lt!119839) ((_ is None!862) lt!119840)) None!862 (ite ((_ is None!862) lt!119840) lt!119839 (ite ((_ is None!862) lt!119839) lt!119840 (ite (>= (size!3132 (_1!2443 (v!14789 lt!119839))) (size!3132 (_1!2443 (v!14789 lt!119840)))) lt!119839 lt!119840)))))))

(assert (=> b!284855 (= lt!119839 call!15977)))

(assert (=> b!284855 (= lt!119840 (maxPrefix!353 thiss!17480 (t!39948 rules!1920) lt!119810))))

(declare-fun d!84268 () Bool)

(assert (=> d!84268 e!177184))

(declare-fun res!130216 () Bool)

(assert (=> d!84268 (=> res!130216 e!177184)))

(assert (=> d!84268 (= res!130216 (isEmpty!2581 lt!119838))))

(assert (=> d!84268 (= lt!119838 e!177185)))

(declare-fun c!53955 () Bool)

(assert (=> d!84268 (= c!53955 (and ((_ is Cons!3914) rules!1920) ((_ is Nil!3914) (t!39948 rules!1920))))))

(declare-fun lt!119836 () Unit!5248)

(declare-fun lt!119837 () Unit!5248)

(assert (=> d!84268 (= lt!119836 lt!119837)))

(assert (=> d!84268 (isPrefix!417 lt!119810 lt!119810)))

(declare-fun lemmaIsPrefixRefl!223 (List!3923 List!3923) Unit!5248)

(assert (=> d!84268 (= lt!119837 (lemmaIsPrefixRefl!223 lt!119810 lt!119810))))

(declare-fun rulesValidInductive!218 (LexerInterface!635 List!3924) Bool)

(assert (=> d!84268 (rulesValidInductive!218 thiss!17480 rules!1920)))

(assert (=> d!84268 (= (maxPrefix!353 thiss!17480 rules!1920 lt!119810) lt!119838)))

(declare-fun b!284856 () Bool)

(declare-fun res!130214 () Bool)

(assert (=> b!284856 (=> (not res!130214) (not e!177183))))

(declare-fun size!3137 (List!3923) Int)

(assert (=> b!284856 (= res!130214 (< (size!3137 (_2!2443 (get!1322 lt!119838))) (size!3137 lt!119810)))))

(declare-fun bm!15972 () Bool)

(declare-fun maxPrefixOneRule!157 (LexerInterface!635 Rule!1298 List!3923) Option!863)

(assert (=> bm!15972 (= call!15977 (maxPrefixOneRule!157 thiss!17480 (h!9311 rules!1920) lt!119810))))

(declare-fun b!284857 () Bool)

(declare-fun contains!765 (List!3924 Rule!1298) Bool)

(assert (=> b!284857 (= e!177183 (contains!765 rules!1920 (rule!1346 (_1!2443 (get!1322 lt!119838)))))))

(declare-fun b!284858 () Bool)

(declare-fun res!130213 () Bool)

(assert (=> b!284858 (=> (not res!130213) (not e!177183))))

(declare-fun apply!828 (TokenValueInjection!1314 BalanceConc!2648) TokenValue!771)

(assert (=> b!284858 (= res!130213 (= (value!25662 (_1!2443 (get!1322 lt!119838))) (apply!828 (transformation!749 (rule!1346 (_1!2443 (get!1322 lt!119838)))) (seqFromList!865 (originalCharacters!792 (_1!2443 (get!1322 lt!119838)))))))))

(declare-fun b!284859 () Bool)

(declare-fun res!130215 () Bool)

(assert (=> b!284859 (=> (not res!130215) (not e!177183))))

(assert (=> b!284859 (= res!130215 (= (++!1042 (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!119838)))) (_2!2443 (get!1322 lt!119838))) lt!119810))))

(declare-fun b!284860 () Bool)

(declare-fun res!130217 () Bool)

(assert (=> b!284860 (=> (not res!130217) (not e!177183))))

(assert (=> b!284860 (= res!130217 (matchR!295 (regex!749 (rule!1346 (_1!2443 (get!1322 lt!119838)))) (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!119838))))))))

(assert (= (and d!84268 c!53955) b!284852))

(assert (= (and d!84268 (not c!53955)) b!284855))

(assert (= (or b!284852 b!284855) bm!15972))

(assert (= (and d!84268 (not res!130216)) b!284854))

(assert (= (and b!284854 res!130211) b!284853))

(assert (= (and b!284853 res!130212) b!284856))

(assert (= (and b!284856 res!130214) b!284859))

(assert (= (and b!284859 res!130215) b!284858))

(assert (= (and b!284858 res!130213) b!284860))

(assert (= (and b!284860 res!130217) b!284857))

(declare-fun m!368291 () Bool)

(assert (=> b!284857 m!368291))

(declare-fun m!368293 () Bool)

(assert (=> b!284857 m!368293))

(assert (=> b!284853 m!368291))

(declare-fun m!368295 () Bool)

(assert (=> b!284853 m!368295))

(assert (=> b!284853 m!368295))

(declare-fun m!368297 () Bool)

(assert (=> b!284853 m!368297))

(assert (=> b!284860 m!368291))

(assert (=> b!284860 m!368295))

(assert (=> b!284860 m!368295))

(assert (=> b!284860 m!368297))

(assert (=> b!284860 m!368297))

(declare-fun m!368299 () Bool)

(assert (=> b!284860 m!368299))

(assert (=> b!284856 m!368291))

(declare-fun m!368301 () Bool)

(assert (=> b!284856 m!368301))

(declare-fun m!368303 () Bool)

(assert (=> b!284856 m!368303))

(declare-fun m!368305 () Bool)

(assert (=> b!284855 m!368305))

(declare-fun m!368307 () Bool)

(assert (=> bm!15972 m!368307))

(assert (=> b!284858 m!368291))

(declare-fun m!368309 () Bool)

(assert (=> b!284858 m!368309))

(assert (=> b!284858 m!368309))

(declare-fun m!368311 () Bool)

(assert (=> b!284858 m!368311))

(assert (=> b!284859 m!368291))

(assert (=> b!284859 m!368295))

(assert (=> b!284859 m!368295))

(assert (=> b!284859 m!368297))

(assert (=> b!284859 m!368297))

(declare-fun m!368313 () Bool)

(assert (=> b!284859 m!368313))

(declare-fun m!368315 () Bool)

(assert (=> d!84268 m!368315))

(declare-fun m!368317 () Bool)

(assert (=> d!84268 m!368317))

(declare-fun m!368319 () Bool)

(assert (=> d!84268 m!368319))

(declare-fun m!368321 () Bool)

(assert (=> d!84268 m!368321))

(declare-fun m!368323 () Bool)

(assert (=> b!284854 m!368323))

(assert (=> b!284700 d!84268))

(declare-fun b!284889 () Bool)

(declare-fun e!177206 () Bool)

(declare-fun nullable!180 (Regex!973) Bool)

(assert (=> b!284889 (= e!177206 (nullable!180 (regex!749 lt!119768)))))

(declare-fun b!284890 () Bool)

(declare-fun res!130239 () Bool)

(declare-fun e!177204 () Bool)

(assert (=> b!284890 (=> (not res!130239) (not e!177204))))

(declare-fun tail!506 (List!3923) List!3923)

(assert (=> b!284890 (= res!130239 (isEmpty!2574 (tail!506 lt!119809)))))

(declare-fun b!284891 () Bool)

(declare-fun derivativeStep!146 (Regex!973 C!2868) Regex!973)

(assert (=> b!284891 (= e!177206 (matchR!295 (derivativeStep!146 (regex!749 lt!119768) (head!925 lt!119809)) (tail!506 lt!119809)))))

(declare-fun b!284892 () Bool)

(declare-fun e!177201 () Bool)

(declare-fun e!177203 () Bool)

(assert (=> b!284892 (= e!177201 e!177203)))

(declare-fun res!130234 () Bool)

(assert (=> b!284892 (=> (not res!130234) (not e!177203))))

(declare-fun lt!119843 () Bool)

(assert (=> b!284892 (= res!130234 (not lt!119843))))

(declare-fun b!284894 () Bool)

(declare-fun res!130236 () Bool)

(assert (=> b!284894 (=> res!130236 e!177201)))

(assert (=> b!284894 (= res!130236 e!177204)))

(declare-fun res!130240 () Bool)

(assert (=> b!284894 (=> (not res!130240) (not e!177204))))

(assert (=> b!284894 (= res!130240 lt!119843)))

(declare-fun b!284895 () Bool)

(declare-fun res!130235 () Bool)

(declare-fun e!177202 () Bool)

(assert (=> b!284895 (=> res!130235 e!177202)))

(assert (=> b!284895 (= res!130235 (not (isEmpty!2574 (tail!506 lt!119809))))))

(declare-fun bm!15975 () Bool)

(declare-fun call!15980 () Bool)

(assert (=> bm!15975 (= call!15980 (isEmpty!2574 lt!119809))))

(declare-fun b!284896 () Bool)

(declare-fun e!177200 () Bool)

(assert (=> b!284896 (= e!177200 (not lt!119843))))

(declare-fun b!284897 () Bool)

(declare-fun e!177205 () Bool)

(assert (=> b!284897 (= e!177205 e!177200)))

(declare-fun c!53963 () Bool)

(assert (=> b!284897 (= c!53963 ((_ is EmptyLang!973) (regex!749 lt!119768)))))

(declare-fun b!284893 () Bool)

(assert (=> b!284893 (= e!177202 (not (= (head!925 lt!119809) (c!53933 (regex!749 lt!119768)))))))

(declare-fun d!84274 () Bool)

(assert (=> d!84274 e!177205))

(declare-fun c!53962 () Bool)

(assert (=> d!84274 (= c!53962 ((_ is EmptyExpr!973) (regex!749 lt!119768)))))

(assert (=> d!84274 (= lt!119843 e!177206)))

(declare-fun c!53964 () Bool)

(assert (=> d!84274 (= c!53964 (isEmpty!2574 lt!119809))))

(declare-fun validRegex!255 (Regex!973) Bool)

(assert (=> d!84274 (validRegex!255 (regex!749 lt!119768))))

(assert (=> d!84274 (= (matchR!295 (regex!749 lt!119768) lt!119809) lt!119843)))

(declare-fun b!284898 () Bool)

(assert (=> b!284898 (= e!177203 e!177202)))

(declare-fun res!130238 () Bool)

(assert (=> b!284898 (=> res!130238 e!177202)))

(assert (=> b!284898 (= res!130238 call!15980)))

(declare-fun b!284899 () Bool)

(assert (=> b!284899 (= e!177204 (= (head!925 lt!119809) (c!53933 (regex!749 lt!119768))))))

(declare-fun b!284900 () Bool)

(declare-fun res!130241 () Bool)

(assert (=> b!284900 (=> (not res!130241) (not e!177204))))

(assert (=> b!284900 (= res!130241 (not call!15980))))

(declare-fun b!284901 () Bool)

(assert (=> b!284901 (= e!177205 (= lt!119843 call!15980))))

(declare-fun b!284902 () Bool)

(declare-fun res!130237 () Bool)

(assert (=> b!284902 (=> res!130237 e!177201)))

(assert (=> b!284902 (= res!130237 (not ((_ is ElementMatch!973) (regex!749 lt!119768))))))

(assert (=> b!284902 (= e!177200 e!177201)))

(assert (= (and d!84274 c!53964) b!284889))

(assert (= (and d!84274 (not c!53964)) b!284891))

(assert (= (and d!84274 c!53962) b!284901))

(assert (= (and d!84274 (not c!53962)) b!284897))

(assert (= (and b!284897 c!53963) b!284896))

(assert (= (and b!284897 (not c!53963)) b!284902))

(assert (= (and b!284902 (not res!130237)) b!284894))

(assert (= (and b!284894 res!130240) b!284900))

(assert (= (and b!284900 res!130241) b!284890))

(assert (= (and b!284890 res!130239) b!284899))

(assert (= (and b!284894 (not res!130236)) b!284892))

(assert (= (and b!284892 res!130234) b!284898))

(assert (= (and b!284898 (not res!130238)) b!284895))

(assert (= (and b!284895 (not res!130235)) b!284893))

(assert (= (or b!284901 b!284898 b!284900) bm!15975))

(declare-fun m!368325 () Bool)

(assert (=> d!84274 m!368325))

(declare-fun m!368327 () Bool)

(assert (=> d!84274 m!368327))

(assert (=> b!284891 m!368143))

(assert (=> b!284891 m!368143))

(declare-fun m!368329 () Bool)

(assert (=> b!284891 m!368329))

(declare-fun m!368331 () Bool)

(assert (=> b!284891 m!368331))

(assert (=> b!284891 m!368329))

(assert (=> b!284891 m!368331))

(declare-fun m!368333 () Bool)

(assert (=> b!284891 m!368333))

(assert (=> b!284890 m!368331))

(assert (=> b!284890 m!368331))

(declare-fun m!368335 () Bool)

(assert (=> b!284890 m!368335))

(declare-fun m!368337 () Bool)

(assert (=> b!284889 m!368337))

(assert (=> bm!15975 m!368325))

(assert (=> b!284895 m!368331))

(assert (=> b!284895 m!368331))

(assert (=> b!284895 m!368335))

(assert (=> b!284893 m!368143))

(assert (=> b!284899 m!368143))

(assert (=> b!284679 d!84274))

(declare-fun d!84276 () Bool)

(assert (=> d!84276 (= (get!1321 lt!119806) (v!14787 lt!119806))))

(assert (=> b!284679 d!84276))

(declare-fun d!84278 () Bool)

(assert (=> d!84278 (= (inv!4838 (tag!963 (h!9311 rules!1920))) (= (mod (str.len (value!25661 (tag!963 (h!9311 rules!1920)))) 2) 0))))

(assert (=> b!284698 d!84278))

(declare-fun d!84280 () Bool)

(declare-fun res!130253 () Bool)

(declare-fun e!177218 () Bool)

(assert (=> d!84280 (=> (not res!130253) (not e!177218))))

(declare-fun semiInverseModEq!272 (Int Int) Bool)

(assert (=> d!84280 (= res!130253 (semiInverseModEq!272 (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toValue!1496 (transformation!749 (h!9311 rules!1920)))))))

(assert (=> d!84280 (= (inv!4842 (transformation!749 (h!9311 rules!1920))) e!177218)))

(declare-fun b!284920 () Bool)

(declare-fun equivClasses!255 (Int Int) Bool)

(assert (=> b!284920 (= e!177218 (equivClasses!255 (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toValue!1496 (transformation!749 (h!9311 rules!1920)))))))

(assert (= (and d!84280 res!130253) b!284920))

(declare-fun m!368339 () Bool)

(assert (=> d!84280 m!368339))

(declare-fun m!368341 () Bool)

(assert (=> b!284920 m!368341))

(assert (=> b!284698 d!84280))

(declare-fun d!84282 () Bool)

(declare-fun res!130258 () Bool)

(declare-fun e!177221 () Bool)

(assert (=> d!84282 (=> (not res!130258) (not e!177221))))

(assert (=> d!84282 (= res!130258 (not (isEmpty!2574 (originalCharacters!792 (h!9312 tokens!465)))))))

(assert (=> d!84282 (= (inv!4841 (h!9312 tokens!465)) e!177221)))

(declare-fun b!284925 () Bool)

(declare-fun res!130259 () Bool)

(assert (=> b!284925 (=> (not res!130259) (not e!177221))))

(declare-fun dynLambda!2064 (Int TokenValue!771) BalanceConc!2648)

(assert (=> b!284925 (= res!130259 (= (originalCharacters!792 (h!9312 tokens!465)) (list!1628 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (value!25662 (h!9312 tokens!465))))))))

(declare-fun b!284926 () Bool)

(assert (=> b!284926 (= e!177221 (= (size!3132 (h!9312 tokens!465)) (size!3137 (originalCharacters!792 (h!9312 tokens!465)))))))

(assert (= (and d!84282 res!130258) b!284925))

(assert (= (and b!284925 res!130259) b!284926))

(declare-fun b_lambda!9357 () Bool)

(assert (=> (not b_lambda!9357) (not b!284925)))

(declare-fun tb!16481 () Bool)

(declare-fun t!39952 () Bool)

(assert (=> (and b!284689 (= (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465))))) t!39952) tb!16481))

(declare-fun b!284931 () Bool)

(declare-fun e!177224 () Bool)

(declare-fun tp!104758 () Bool)

(declare-fun inv!4845 (Conc!1320) Bool)

(assert (=> b!284931 (= e!177224 (and (inv!4845 (c!53932 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (value!25662 (h!9312 tokens!465))))) tp!104758))))

(declare-fun result!20240 () Bool)

(declare-fun inv!4846 (BalanceConc!2648) Bool)

(assert (=> tb!16481 (= result!20240 (and (inv!4846 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (value!25662 (h!9312 tokens!465)))) e!177224))))

(assert (= tb!16481 b!284931))

(declare-fun m!368361 () Bool)

(assert (=> b!284931 m!368361))

(declare-fun m!368363 () Bool)

(assert (=> tb!16481 m!368363))

(assert (=> b!284925 t!39952))

(declare-fun b_and!22945 () Bool)

(assert (= b_and!22935 (and (=> t!39952 result!20240) b_and!22945)))

(declare-fun t!39954 () Bool)

(declare-fun tb!16483 () Bool)

(assert (=> (and b!284702 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465))))) t!39954) tb!16483))

(declare-fun result!20244 () Bool)

(assert (= result!20244 result!20240))

(assert (=> b!284925 t!39954))

(declare-fun b_and!22947 () Bool)

(assert (= b_and!22939 (and (=> t!39954 result!20244) b_and!22947)))

(declare-fun tb!16485 () Bool)

(declare-fun t!39956 () Bool)

(assert (=> (and b!284708 (= (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465))))) t!39956) tb!16485))

(declare-fun result!20246 () Bool)

(assert (= result!20246 result!20240))

(assert (=> b!284925 t!39956))

(declare-fun b_and!22949 () Bool)

(assert (= b_and!22943 (and (=> t!39956 result!20246) b_and!22949)))

(declare-fun m!368365 () Bool)

(assert (=> d!84282 m!368365))

(declare-fun m!368367 () Bool)

(assert (=> b!284925 m!368367))

(assert (=> b!284925 m!368367))

(declare-fun m!368369 () Bool)

(assert (=> b!284925 m!368369))

(declare-fun m!368371 () Bool)

(assert (=> b!284926 m!368371))

(assert (=> b!284677 d!84282))

(declare-fun d!84288 () Bool)

(declare-fun list!1632 (Conc!1320) List!3923)

(assert (=> d!84288 (= (list!1628 (seqFromList!865 lt!119769)) (list!1632 (c!53932 (seqFromList!865 lt!119769))))))

(declare-fun bs!32134 () Bool)

(assert (= bs!32134 d!84288))

(declare-fun m!368373 () Bool)

(assert (=> bs!32134 m!368373))

(assert (=> b!284699 d!84288))

(declare-fun d!84290 () Bool)

(declare-fun fromListB!348 (List!3923) BalanceConc!2648)

(assert (=> d!84290 (= (seqFromList!865 lt!119769) (fromListB!348 lt!119769))))

(declare-fun bs!32135 () Bool)

(assert (= bs!32135 d!84290))

(declare-fun m!368375 () Bool)

(assert (=> bs!32135 m!368375))

(assert (=> b!284699 d!84290))

(declare-fun d!84292 () Bool)

(assert (=> d!84292 (= (isDefined!705 lt!119787) (not (isEmpty!2581 lt!119787)))))

(declare-fun bs!32136 () Bool)

(assert (= bs!32136 d!84292))

(declare-fun m!368377 () Bool)

(assert (=> bs!32136 m!368377))

(assert (=> b!284718 d!84292))

(declare-fun b!284932 () Bool)

(declare-fun e!177227 () Option!863)

(declare-fun call!15981 () Option!863)

(assert (=> b!284932 (= e!177227 call!15981)))

(declare-fun b!284933 () Bool)

(declare-fun res!130261 () Bool)

(declare-fun e!177225 () Bool)

(assert (=> b!284933 (=> (not res!130261) (not e!177225))))

(declare-fun lt!119849 () Option!863)

(assert (=> b!284933 (= res!130261 (= (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!119849)))) (originalCharacters!792 (_1!2443 (get!1322 lt!119849)))))))

(declare-fun b!284934 () Bool)

(declare-fun e!177226 () Bool)

(assert (=> b!284934 (= e!177226 e!177225)))

(declare-fun res!130260 () Bool)

(assert (=> b!284934 (=> (not res!130260) (not e!177225))))

(assert (=> b!284934 (= res!130260 (isDefined!705 lt!119849))))

(declare-fun b!284935 () Bool)

(declare-fun lt!119850 () Option!863)

(declare-fun lt!119851 () Option!863)

(assert (=> b!284935 (= e!177227 (ite (and ((_ is None!862) lt!119850) ((_ is None!862) lt!119851)) None!862 (ite ((_ is None!862) lt!119851) lt!119850 (ite ((_ is None!862) lt!119850) lt!119851 (ite (>= (size!3132 (_1!2443 (v!14789 lt!119850))) (size!3132 (_1!2443 (v!14789 lt!119851)))) lt!119850 lt!119851)))))))

(assert (=> b!284935 (= lt!119850 call!15981)))

(assert (=> b!284935 (= lt!119851 (maxPrefix!353 thiss!17480 (t!39948 rules!1920) lt!119769))))

(declare-fun d!84294 () Bool)

(assert (=> d!84294 e!177226))

(declare-fun res!130265 () Bool)

(assert (=> d!84294 (=> res!130265 e!177226)))

(assert (=> d!84294 (= res!130265 (isEmpty!2581 lt!119849))))

(assert (=> d!84294 (= lt!119849 e!177227)))

(declare-fun c!53968 () Bool)

(assert (=> d!84294 (= c!53968 (and ((_ is Cons!3914) rules!1920) ((_ is Nil!3914) (t!39948 rules!1920))))))

(declare-fun lt!119847 () Unit!5248)

(declare-fun lt!119848 () Unit!5248)

(assert (=> d!84294 (= lt!119847 lt!119848)))

(assert (=> d!84294 (isPrefix!417 lt!119769 lt!119769)))

(assert (=> d!84294 (= lt!119848 (lemmaIsPrefixRefl!223 lt!119769 lt!119769))))

(assert (=> d!84294 (rulesValidInductive!218 thiss!17480 rules!1920)))

(assert (=> d!84294 (= (maxPrefix!353 thiss!17480 rules!1920 lt!119769) lt!119849)))

(declare-fun b!284936 () Bool)

(declare-fun res!130263 () Bool)

(assert (=> b!284936 (=> (not res!130263) (not e!177225))))

(assert (=> b!284936 (= res!130263 (< (size!3137 (_2!2443 (get!1322 lt!119849))) (size!3137 lt!119769)))))

(declare-fun bm!15976 () Bool)

(assert (=> bm!15976 (= call!15981 (maxPrefixOneRule!157 thiss!17480 (h!9311 rules!1920) lt!119769))))

(declare-fun b!284937 () Bool)

(assert (=> b!284937 (= e!177225 (contains!765 rules!1920 (rule!1346 (_1!2443 (get!1322 lt!119849)))))))

(declare-fun b!284938 () Bool)

(declare-fun res!130262 () Bool)

(assert (=> b!284938 (=> (not res!130262) (not e!177225))))

(assert (=> b!284938 (= res!130262 (= (value!25662 (_1!2443 (get!1322 lt!119849))) (apply!828 (transformation!749 (rule!1346 (_1!2443 (get!1322 lt!119849)))) (seqFromList!865 (originalCharacters!792 (_1!2443 (get!1322 lt!119849)))))))))

(declare-fun b!284939 () Bool)

(declare-fun res!130264 () Bool)

(assert (=> b!284939 (=> (not res!130264) (not e!177225))))

(assert (=> b!284939 (= res!130264 (= (++!1042 (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!119849)))) (_2!2443 (get!1322 lt!119849))) lt!119769))))

(declare-fun b!284940 () Bool)

(declare-fun res!130266 () Bool)

(assert (=> b!284940 (=> (not res!130266) (not e!177225))))

(assert (=> b!284940 (= res!130266 (matchR!295 (regex!749 (rule!1346 (_1!2443 (get!1322 lt!119849)))) (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!119849))))))))

(assert (= (and d!84294 c!53968) b!284932))

(assert (= (and d!84294 (not c!53968)) b!284935))

(assert (= (or b!284932 b!284935) bm!15976))

(assert (= (and d!84294 (not res!130265)) b!284934))

(assert (= (and b!284934 res!130260) b!284933))

(assert (= (and b!284933 res!130261) b!284936))

(assert (= (and b!284936 res!130263) b!284939))

(assert (= (and b!284939 res!130264) b!284938))

(assert (= (and b!284938 res!130262) b!284940))

(assert (= (and b!284940 res!130266) b!284937))

(declare-fun m!368379 () Bool)

(assert (=> b!284937 m!368379))

(declare-fun m!368381 () Bool)

(assert (=> b!284937 m!368381))

(assert (=> b!284933 m!368379))

(declare-fun m!368383 () Bool)

(assert (=> b!284933 m!368383))

(assert (=> b!284933 m!368383))

(declare-fun m!368385 () Bool)

(assert (=> b!284933 m!368385))

(assert (=> b!284940 m!368379))

(assert (=> b!284940 m!368383))

(assert (=> b!284940 m!368383))

(assert (=> b!284940 m!368385))

(assert (=> b!284940 m!368385))

(declare-fun m!368387 () Bool)

(assert (=> b!284940 m!368387))

(assert (=> b!284936 m!368379))

(declare-fun m!368389 () Bool)

(assert (=> b!284936 m!368389))

(declare-fun m!368391 () Bool)

(assert (=> b!284936 m!368391))

(declare-fun m!368393 () Bool)

(assert (=> b!284935 m!368393))

(declare-fun m!368395 () Bool)

(assert (=> bm!15976 m!368395))

(assert (=> b!284938 m!368379))

(declare-fun m!368397 () Bool)

(assert (=> b!284938 m!368397))

(assert (=> b!284938 m!368397))

(declare-fun m!368399 () Bool)

(assert (=> b!284938 m!368399))

(assert (=> b!284939 m!368379))

(assert (=> b!284939 m!368383))

(assert (=> b!284939 m!368383))

(assert (=> b!284939 m!368385))

(assert (=> b!284939 m!368385))

(declare-fun m!368401 () Bool)

(assert (=> b!284939 m!368401))

(declare-fun m!368403 () Bool)

(assert (=> d!84294 m!368403))

(declare-fun m!368405 () Bool)

(assert (=> d!84294 m!368405))

(declare-fun m!368407 () Bool)

(assert (=> d!84294 m!368407))

(assert (=> d!84294 m!368321))

(declare-fun m!368409 () Bool)

(assert (=> b!284934 m!368409))

(assert (=> b!284718 d!84294))

(declare-fun b!284953 () Bool)

(declare-fun e!177236 () List!3925)

(declare-fun call!15984 () List!3925)

(assert (=> b!284953 (= e!177236 call!15984)))

(declare-fun b!284954 () Bool)

(declare-fun e!177234 () List!3925)

(assert (=> b!284954 (= e!177234 e!177236)))

(declare-fun c!53974 () Bool)

(declare-fun dynLambda!2065 (Int Token!1242) Bool)

(assert (=> b!284954 (= c!53974 (dynLambda!2065 lambda!9735 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769)))))))

(declare-fun b!284955 () Bool)

(assert (=> b!284955 (= e!177236 (Cons!3915 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769))) call!15984))))

(declare-fun b!284956 () Bool)

(declare-fun e!177235 () Bool)

(declare-fun lt!119854 () List!3925)

(assert (=> b!284956 (= e!177235 (forall!1004 lt!119854 lambda!9735))))

(declare-fun b!284957 () Bool)

(declare-fun res!130272 () Bool)

(assert (=> b!284957 (=> (not res!130272) (not e!177235))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!574 (List!3925) (InoxSet Token!1242))

(assert (=> b!284957 (= res!130272 (= ((_ map implies) (content!574 lt!119854) (content!574 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769)))) ((as const (InoxSet Token!1242)) true)))))

(declare-fun d!84296 () Bool)

(assert (=> d!84296 e!177235))

(declare-fun res!130271 () Bool)

(assert (=> d!84296 (=> (not res!130271) (not e!177235))))

(declare-fun size!3138 (List!3925) Int)

(assert (=> d!84296 (= res!130271 (<= (size!3138 lt!119854) (size!3138 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769)))))))

(assert (=> d!84296 (= lt!119854 e!177234)))

(declare-fun c!53973 () Bool)

(assert (=> d!84296 (= c!53973 ((_ is Nil!3915) (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769))))))

(assert (=> d!84296 (= (filter!91 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769)) lambda!9735) lt!119854)))

(declare-fun bm!15979 () Bool)

(assert (=> bm!15979 (= call!15984 (filter!91 (t!39949 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769))) lambda!9735))))

(declare-fun b!284958 () Bool)

(assert (=> b!284958 (= e!177234 Nil!3915)))

(assert (= (and d!84296 c!53973) b!284958))

(assert (= (and d!84296 (not c!53973)) b!284954))

(assert (= (and b!284954 c!53974) b!284955))

(assert (= (and b!284954 (not c!53974)) b!284953))

(assert (= (or b!284955 b!284953) bm!15979))

(assert (= (and d!84296 res!130271) b!284957))

(assert (= (and b!284957 res!130272) b!284956))

(declare-fun b_lambda!9359 () Bool)

(assert (=> (not b_lambda!9359) (not b!284954)))

(declare-fun m!368411 () Bool)

(assert (=> d!84296 m!368411))

(declare-fun m!368413 () Bool)

(assert (=> d!84296 m!368413))

(declare-fun m!368415 () Bool)

(assert (=> b!284957 m!368415))

(declare-fun m!368417 () Bool)

(assert (=> b!284957 m!368417))

(declare-fun m!368419 () Bool)

(assert (=> b!284956 m!368419))

(declare-fun m!368421 () Bool)

(assert (=> b!284954 m!368421))

(declare-fun m!368423 () Bool)

(assert (=> bm!15979 m!368423))

(assert (=> b!284697 d!84296))

(declare-fun b!284996 () Bool)

(declare-fun e!177253 () Bool)

(declare-fun lt!119876 () tuple2!4452)

(assert (=> b!284996 (= e!177253 (not (isEmpty!2575 (_1!2442 lt!119876))))))

(declare-fun d!84298 () Bool)

(declare-fun e!177252 () Bool)

(assert (=> d!84298 e!177252))

(declare-fun c!53983 () Bool)

(assert (=> d!84298 (= c!53983 (> (size!3138 (_1!2442 lt!119876)) 0))))

(declare-fun e!177254 () tuple2!4452)

(assert (=> d!84298 (= lt!119876 e!177254)))

(declare-fun c!53982 () Bool)

(declare-fun lt!119878 () Option!863)

(assert (=> d!84298 (= c!53982 ((_ is Some!862) lt!119878))))

(assert (=> d!84298 (= lt!119878 (maxPrefix!353 thiss!17480 rules!1920 lt!119769))))

(assert (=> d!84298 (= (lexList!223 thiss!17480 rules!1920 lt!119769) lt!119876)))

(declare-fun b!284997 () Bool)

(declare-fun lt!119877 () tuple2!4452)

(assert (=> b!284997 (= e!177254 (tuple2!4453 (Cons!3915 (_1!2443 (v!14789 lt!119878)) (_1!2442 lt!119877)) (_2!2442 lt!119877)))))

(assert (=> b!284997 (= lt!119877 (lexList!223 thiss!17480 rules!1920 (_2!2443 (v!14789 lt!119878))))))

(declare-fun b!284998 () Bool)

(assert (=> b!284998 (= e!177252 e!177253)))

(declare-fun res!130296 () Bool)

(assert (=> b!284998 (= res!130296 (< (size!3137 (_2!2442 lt!119876)) (size!3137 lt!119769)))))

(assert (=> b!284998 (=> (not res!130296) (not e!177253))))

(declare-fun b!284999 () Bool)

(assert (=> b!284999 (= e!177252 (= (_2!2442 lt!119876) lt!119769))))

(declare-fun b!285000 () Bool)

(assert (=> b!285000 (= e!177254 (tuple2!4453 Nil!3915 lt!119769))))

(assert (= (and d!84298 c!53982) b!284997))

(assert (= (and d!84298 (not c!53982)) b!285000))

(assert (= (and d!84298 c!53983) b!284998))

(assert (= (and d!84298 (not c!53983)) b!284999))

(assert (= (and b!284998 res!130296) b!284996))

(declare-fun m!368459 () Bool)

(assert (=> b!284996 m!368459))

(declare-fun m!368461 () Bool)

(assert (=> d!84298 m!368461))

(assert (=> d!84298 m!368091))

(declare-fun m!368463 () Bool)

(assert (=> b!284997 m!368463))

(declare-fun m!368465 () Bool)

(assert (=> b!284998 m!368465))

(assert (=> b!284998 m!368391))

(assert (=> b!284697 d!84298))

(declare-fun d!84302 () Bool)

(declare-fun fromListB!349 (List!3925) BalanceConc!2650)

(assert (=> d!84302 (= (seqFromList!866 (t!39949 tokens!465)) (fromListB!349 (t!39949 tokens!465)))))

(declare-fun bs!32138 () Bool)

(assert (= bs!32138 d!84302))

(declare-fun m!368473 () Bool)

(assert (=> bs!32138 m!368473))

(assert (=> b!284717 d!84302))

(declare-fun d!84306 () Bool)

(assert (=> d!84306 (= (list!1628 (charsOf!394 separatorToken!170)) (list!1632 (c!53932 (charsOf!394 separatorToken!170))))))

(declare-fun bs!32139 () Bool)

(assert (= bs!32139 d!84306))

(declare-fun m!368475 () Bool)

(assert (=> bs!32139 m!368475))

(assert (=> b!284717 d!84306))

(declare-fun bs!32144 () Bool)

(declare-fun b!285072 () Bool)

(assert (= bs!32144 (and b!285072 b!284711)))

(declare-fun lambda!9739 () Int)

(assert (=> bs!32144 (not (= lambda!9739 lambda!9735))))

(declare-fun bs!32145 () Bool)

(assert (= bs!32145 (and b!285072 b!284685)))

(assert (=> bs!32145 (= lambda!9739 lambda!9736)))

(declare-fun b!285078 () Bool)

(declare-fun e!177298 () Bool)

(assert (=> b!285078 (= e!177298 true)))

(declare-fun b!285077 () Bool)

(declare-fun e!177297 () Bool)

(assert (=> b!285077 (= e!177297 e!177298)))

(declare-fun b!285076 () Bool)

(declare-fun e!177296 () Bool)

(assert (=> b!285076 (= e!177296 e!177297)))

(assert (=> b!285072 e!177296))

(assert (= b!285077 b!285078))

(assert (= b!285076 b!285077))

(assert (= (and b!285072 ((_ is Cons!3914) rules!1920)) b!285076))

(assert (=> b!285078 (< (dynLambda!2059 order!3077 (toValue!1496 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9739))))

(assert (=> b!285078 (< (dynLambda!2061 order!3081 (toChars!1355 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9739))))

(assert (=> b!285072 true))

(declare-fun b!285068 () Bool)

(declare-fun c!54002 () Bool)

(declare-fun lt!119915 () Option!863)

(assert (=> b!285068 (= c!54002 (and ((_ is Some!862) lt!119915) (not (= (_1!2443 (v!14789 lt!119915)) (h!9312 (t!39949 tokens!465))))))))

(declare-fun e!177292 () List!3923)

(declare-fun e!177293 () List!3923)

(assert (=> b!285068 (= e!177292 e!177293)))

(declare-fun b!285069 () Bool)

(assert (=> b!285069 (= e!177293 Nil!3913)))

(assert (=> b!285069 (= (print!360 thiss!17480 (singletonSeq!295 (h!9312 (t!39949 tokens!465)))) (printTailRec!323 thiss!17480 (singletonSeq!295 (h!9312 (t!39949 tokens!465))) 0 (BalanceConc!2649 Empty!1320)))))

(declare-fun lt!119913 () Unit!5248)

(declare-fun Unit!5258 () Unit!5248)

(assert (=> b!285069 (= lt!119913 Unit!5258)))

(declare-fun call!16002 () List!3923)

(declare-fun lt!119914 () List!3923)

(declare-fun lt!119918 () Unit!5248)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!126 (LexerInterface!635 List!3924 List!3923 List!3923) Unit!5248)

(assert (=> b!285069 (= lt!119918 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!126 thiss!17480 rules!1920 call!16002 lt!119914))))

(assert (=> b!285069 false))

(declare-fun lt!119916 () Unit!5248)

(declare-fun Unit!5259 () Unit!5248)

(assert (=> b!285069 (= lt!119916 Unit!5259)))

(declare-fun bm!15995 () Bool)

(declare-fun call!16001 () BalanceConc!2648)

(assert (=> bm!15995 (= call!16001 (charsOf!394 (h!9312 (t!39949 tokens!465))))))

(declare-fun b!285070 () Bool)

(declare-fun call!16003 () List!3923)

(assert (=> b!285070 (= e!177293 (++!1042 call!16003 lt!119914))))

(declare-fun b!285071 () Bool)

(assert (=> b!285071 (= e!177292 call!16003)))

(declare-fun bm!15996 () Bool)

(declare-fun e!177295 () BalanceConc!2648)

(assert (=> bm!15996 (= call!16002 (list!1628 e!177295))))

(declare-fun c!54005 () Bool)

(assert (=> bm!15996 (= c!54005 c!54002)))

(declare-fun e!177294 () List!3923)

(assert (=> b!285072 (= e!177294 e!177292)))

(declare-fun lt!119917 () Unit!5248)

(assert (=> b!285072 (= lt!119917 (forallContained!304 (t!39949 tokens!465) lambda!9739 (h!9312 (t!39949 tokens!465))))))

(assert (=> b!285072 (= lt!119914 (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 (t!39949 (t!39949 tokens!465)) separatorToken!170))))

(assert (=> b!285072 (= lt!119915 (maxPrefix!353 thiss!17480 rules!1920 (++!1042 (list!1628 (charsOf!394 (h!9312 (t!39949 tokens!465)))) lt!119914)))))

(declare-fun c!54003 () Bool)

(assert (=> b!285072 (= c!54003 (and ((_ is Some!862) lt!119915) (= (_1!2443 (v!14789 lt!119915)) (h!9312 (t!39949 tokens!465)))))))

(declare-fun bm!15997 () Bool)

(declare-fun call!16000 () BalanceConc!2648)

(assert (=> bm!15997 (= call!16000 call!16001)))

(declare-fun d!84308 () Bool)

(declare-fun c!54004 () Bool)

(assert (=> d!84308 (= c!54004 ((_ is Cons!3915) (t!39949 tokens!465)))))

(assert (=> d!84308 (= (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 (t!39949 tokens!465) separatorToken!170) e!177294)))

(declare-fun b!285073 () Bool)

(assert (=> b!285073 (= e!177295 call!16000)))

(declare-fun bm!15998 () Bool)

(declare-fun call!16004 () List!3923)

(assert (=> bm!15998 (= call!16003 (++!1042 call!16004 (ite c!54003 lt!119914 call!16002)))))

(declare-fun b!285074 () Bool)

(assert (=> b!285074 (= e!177294 Nil!3913)))

(declare-fun b!285075 () Bool)

(assert (=> b!285075 (= e!177295 (charsOf!394 separatorToken!170))))

(declare-fun bm!15999 () Bool)

(assert (=> bm!15999 (= call!16004 (list!1628 (ite c!54003 call!16001 call!16000)))))

(assert (= (and d!84308 c!54004) b!285072))

(assert (= (and d!84308 (not c!54004)) b!285074))

(assert (= (and b!285072 c!54003) b!285071))

(assert (= (and b!285072 (not c!54003)) b!285068))

(assert (= (and b!285068 c!54002) b!285070))

(assert (= (and b!285068 (not c!54002)) b!285069))

(assert (= (or b!285070 b!285069) bm!15997))

(assert (= (or b!285070 b!285069) bm!15996))

(assert (= (and bm!15996 c!54005) b!285075))

(assert (= (and bm!15996 (not c!54005)) b!285073))

(assert (= (or b!285071 bm!15997) bm!15995))

(assert (= (or b!285071 b!285070) bm!15999))

(assert (= (or b!285071 b!285070) bm!15998))

(declare-fun m!368569 () Bool)

(assert (=> b!285072 m!368569))

(declare-fun m!368571 () Bool)

(assert (=> b!285072 m!368571))

(declare-fun m!368573 () Bool)

(assert (=> b!285072 m!368573))

(assert (=> b!285072 m!368573))

(assert (=> b!285072 m!368569))

(assert (=> b!285072 m!368571))

(declare-fun m!368575 () Bool)

(assert (=> b!285072 m!368575))

(declare-fun m!368577 () Bool)

(assert (=> b!285072 m!368577))

(declare-fun m!368579 () Bool)

(assert (=> b!285072 m!368579))

(declare-fun m!368581 () Bool)

(assert (=> bm!15996 m!368581))

(assert (=> bm!15995 m!368573))

(declare-fun m!368583 () Bool)

(assert (=> b!285070 m!368583))

(declare-fun m!368585 () Bool)

(assert (=> bm!15999 m!368585))

(declare-fun m!368587 () Bool)

(assert (=> b!285069 m!368587))

(assert (=> b!285069 m!368587))

(declare-fun m!368589 () Bool)

(assert (=> b!285069 m!368589))

(assert (=> b!285069 m!368587))

(declare-fun m!368591 () Bool)

(assert (=> b!285069 m!368591))

(declare-fun m!368593 () Bool)

(assert (=> b!285069 m!368593))

(assert (=> b!285075 m!368063))

(declare-fun m!368595 () Bool)

(assert (=> bm!15998 m!368595))

(assert (=> b!284717 d!84308))

(declare-fun bs!32150 () Bool)

(declare-fun d!84334 () Bool)

(assert (= bs!32150 (and d!84334 b!284711)))

(declare-fun lambda!9747 () Int)

(assert (=> bs!32150 (= lambda!9747 lambda!9735)))

(declare-fun bs!32151 () Bool)

(assert (= bs!32151 (and d!84334 b!284685)))

(assert (=> bs!32151 (not (= lambda!9747 lambda!9736))))

(declare-fun bs!32152 () Bool)

(assert (= bs!32152 (and d!84334 b!285072)))

(assert (=> bs!32152 (not (= lambda!9747 lambda!9739))))

(declare-fun bs!32153 () Bool)

(declare-fun b!285139 () Bool)

(assert (= bs!32153 (and b!285139 b!284711)))

(declare-fun lambda!9748 () Int)

(assert (=> bs!32153 (not (= lambda!9748 lambda!9735))))

(declare-fun bs!32154 () Bool)

(assert (= bs!32154 (and b!285139 b!284685)))

(assert (=> bs!32154 (= lambda!9748 lambda!9736)))

(declare-fun bs!32155 () Bool)

(assert (= bs!32155 (and b!285139 b!285072)))

(assert (=> bs!32155 (= lambda!9748 lambda!9739)))

(declare-fun bs!32156 () Bool)

(assert (= bs!32156 (and b!285139 d!84334)))

(assert (=> bs!32156 (not (= lambda!9748 lambda!9747))))

(declare-fun b!285150 () Bool)

(declare-fun e!177342 () Bool)

(assert (=> b!285150 (= e!177342 true)))

(declare-fun b!285149 () Bool)

(declare-fun e!177341 () Bool)

(assert (=> b!285149 (= e!177341 e!177342)))

(declare-fun b!285148 () Bool)

(declare-fun e!177340 () Bool)

(assert (=> b!285148 (= e!177340 e!177341)))

(assert (=> b!285139 e!177340))

(assert (= b!285149 b!285150))

(assert (= b!285148 b!285149))

(assert (= (and b!285139 ((_ is Cons!3914) rules!1920)) b!285148))

(assert (=> b!285150 (< (dynLambda!2059 order!3077 (toValue!1496 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9748))))

(assert (=> b!285150 (< (dynLambda!2061 order!3081 (toChars!1355 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9748))))

(assert (=> b!285139 true))

(declare-fun bm!16025 () Bool)

(declare-fun call!16031 () Token!1242)

(assert (=> bm!16025 (= call!16031 (apply!826 (seqFromList!866 (t!39949 tokens!465)) 0))))

(declare-fun b!285137 () Bool)

(declare-fun c!54031 () Bool)

(declare-fun e!177337 () Bool)

(assert (=> b!285137 (= c!54031 e!177337)))

(declare-fun res!130333 () Bool)

(assert (=> b!285137 (=> (not res!130333) (not e!177337))))

(declare-fun lt!119977 () Option!862)

(assert (=> b!285137 (= res!130333 ((_ is Some!861) lt!119977))))

(declare-fun e!177335 () BalanceConc!2648)

(declare-fun e!177336 () BalanceConc!2648)

(assert (=> b!285137 (= e!177335 e!177336)))

(declare-fun b!285138 () Bool)

(declare-fun e!177338 () BalanceConc!2648)

(declare-fun call!16034 () BalanceConc!2648)

(assert (=> b!285138 (= e!177338 call!16034)))

(declare-fun lt!119985 () BalanceConc!2648)

(declare-fun dropList!178 (BalanceConc!2650 Int) List!3925)

(assert (=> d!84334 (= (list!1628 lt!119985) (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 (dropList!178 (seqFromList!866 (t!39949 tokens!465)) 0) separatorToken!170))))

(declare-fun e!177334 () BalanceConc!2648)

(assert (=> d!84334 (= lt!119985 e!177334)))

(declare-fun c!54028 () Bool)

(assert (=> d!84334 (= c!54028 (>= 0 (size!3133 (seqFromList!866 (t!39949 tokens!465)))))))

(declare-fun lt!119976 () Unit!5248)

(declare-fun lemmaContentSubsetPreservesForall!122 (List!3925 List!3925 Int) Unit!5248)

(assert (=> d!84334 (= lt!119976 (lemmaContentSubsetPreservesForall!122 (list!1629 (seqFromList!866 (t!39949 tokens!465))) (dropList!178 (seqFromList!866 (t!39949 tokens!465)) 0) lambda!9747))))

(declare-fun e!177339 () Bool)

(assert (=> d!84334 e!177339))

(declare-fun res!130334 () Bool)

(assert (=> d!84334 (=> (not res!130334) (not e!177339))))

(assert (=> d!84334 (= res!130334 (>= 0 0))))

(assert (=> d!84334 (= (printWithSeparatorTokenWhenNeededRec!310 thiss!17480 rules!1920 (seqFromList!866 (t!39949 tokens!465)) separatorToken!170 0) lt!119985)))

(assert (=> b!285139 (= e!177334 e!177335)))

(declare-fun lt!119987 () List!3925)

(assert (=> b!285139 (= lt!119987 (list!1629 (seqFromList!866 (t!39949 tokens!465))))))

(declare-fun lt!119979 () Unit!5248)

(declare-fun lemmaDropApply!218 (List!3925 Int) Unit!5248)

(assert (=> b!285139 (= lt!119979 (lemmaDropApply!218 lt!119987 0))))

(declare-fun drop!231 (List!3925 Int) List!3925)

(declare-fun apply!831 (List!3925 Int) Token!1242)

(assert (=> b!285139 (= (head!926 (drop!231 lt!119987 0)) (apply!831 lt!119987 0))))

(declare-fun lt!119978 () Unit!5248)

(assert (=> b!285139 (= lt!119978 lt!119979)))

(declare-fun lt!119981 () List!3925)

(assert (=> b!285139 (= lt!119981 (list!1629 (seqFromList!866 (t!39949 tokens!465))))))

(declare-fun lt!119980 () Unit!5248)

(declare-fun lemmaDropTail!210 (List!3925 Int) Unit!5248)

(assert (=> b!285139 (= lt!119980 (lemmaDropTail!210 lt!119981 0))))

(declare-fun tail!508 (List!3925) List!3925)

(assert (=> b!285139 (= (tail!508 (drop!231 lt!119981 0)) (drop!231 lt!119981 (+ 0 1)))))

(declare-fun lt!119986 () Unit!5248)

(assert (=> b!285139 (= lt!119986 lt!119980)))

(declare-fun lt!119984 () Unit!5248)

(assert (=> b!285139 (= lt!119984 (forallContained!304 (list!1629 (seqFromList!866 (t!39949 tokens!465))) lambda!9748 (apply!826 (seqFromList!866 (t!39949 tokens!465)) 0)))))

(declare-fun lt!119975 () BalanceConc!2648)

(assert (=> b!285139 (= lt!119975 (printWithSeparatorTokenWhenNeededRec!310 thiss!17480 rules!1920 (seqFromList!866 (t!39949 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun ++!1044 (BalanceConc!2648 BalanceConc!2648) BalanceConc!2648)

(assert (=> b!285139 (= lt!119977 (maxPrefixZipperSequence!316 thiss!17480 rules!1920 (++!1044 (charsOf!394 (apply!826 (seqFromList!866 (t!39949 tokens!465)) 0)) lt!119975)))))

(declare-fun res!130335 () Bool)

(assert (=> b!285139 (= res!130335 ((_ is Some!861) lt!119977))))

(declare-fun e!177333 () Bool)

(assert (=> b!285139 (=> (not res!130335) (not e!177333))))

(declare-fun c!54030 () Bool)

(assert (=> b!285139 (= c!54030 e!177333)))

(declare-fun bm!16026 () Bool)

(declare-fun c!54029 () Bool)

(assert (=> bm!16026 (= c!54029 c!54030)))

(declare-fun call!16032 () BalanceConc!2648)

(declare-fun call!16033 () BalanceConc!2648)

(assert (=> bm!16026 (= call!16032 (++!1044 e!177338 (ite c!54030 lt!119975 call!16033)))))

(declare-fun b!285140 () Bool)

(declare-fun call!16030 () Token!1242)

(assert (=> b!285140 (= e!177338 (charsOf!394 call!16030))))

(declare-fun b!285141 () Bool)

(assert (=> b!285141 (= e!177335 call!16032)))

(declare-fun bm!16027 () Bool)

(assert (=> bm!16027 (= call!16033 call!16034)))

(declare-fun b!285142 () Bool)

(assert (=> b!285142 (= e!177334 (BalanceConc!2649 Empty!1320))))

(declare-fun b!285143 () Bool)

(assert (=> b!285143 (= e!177336 (++!1044 call!16032 lt!119975))))

(declare-fun bm!16028 () Bool)

(assert (=> bm!16028 (= call!16030 call!16031)))

(declare-fun bm!16029 () Bool)

(assert (=> bm!16029 (= call!16034 (charsOf!394 (ite c!54030 call!16031 (ite c!54031 separatorToken!170 call!16030))))))

(declare-fun b!285144 () Bool)

(assert (=> b!285144 (= e!177333 (= (_1!2441 (v!14788 lt!119977)) (apply!826 (seqFromList!866 (t!39949 tokens!465)) 0)))))

(declare-fun b!285145 () Bool)

(assert (=> b!285145 (= e!177337 (not (= (_1!2441 (v!14788 lt!119977)) call!16031)))))

(declare-fun b!285146 () Bool)

(assert (=> b!285146 (= e!177336 (BalanceConc!2649 Empty!1320))))

(assert (=> b!285146 (= (print!360 thiss!17480 (singletonSeq!295 call!16030)) (printTailRec!323 thiss!17480 (singletonSeq!295 call!16030) 0 (BalanceConc!2649 Empty!1320)))))

(declare-fun lt!119983 () Unit!5248)

(declare-fun Unit!5262 () Unit!5248)

(assert (=> b!285146 (= lt!119983 Unit!5262)))

(declare-fun lt!119974 () Unit!5248)

(assert (=> b!285146 (= lt!119974 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!126 thiss!17480 rules!1920 (list!1628 call!16033) (list!1628 lt!119975)))))

(assert (=> b!285146 false))

(declare-fun lt!119982 () Unit!5248)

(declare-fun Unit!5263 () Unit!5248)

(assert (=> b!285146 (= lt!119982 Unit!5263)))

(declare-fun b!285147 () Bool)

(assert (=> b!285147 (= e!177339 (<= 0 (size!3133 (seqFromList!866 (t!39949 tokens!465)))))))

(assert (= (and d!84334 res!130334) b!285147))

(assert (= (and d!84334 c!54028) b!285142))

(assert (= (and d!84334 (not c!54028)) b!285139))

(assert (= (and b!285139 res!130335) b!285144))

(assert (= (and b!285139 c!54030) b!285141))

(assert (= (and b!285139 (not c!54030)) b!285137))

(assert (= (and b!285137 res!130333) b!285145))

(assert (= (and b!285137 c!54031) b!285143))

(assert (= (and b!285137 (not c!54031)) b!285146))

(assert (= (or b!285143 b!285146) bm!16028))

(assert (= (or b!285143 b!285146) bm!16027))

(assert (= (or b!285141 bm!16028 b!285145) bm!16025))

(assert (= (or b!285141 bm!16027) bm!16029))

(assert (= (or b!285141 b!285143) bm!16026))

(assert (= (and bm!16026 c!54029) b!285138))

(assert (= (and bm!16026 (not c!54029)) b!285140))

(declare-fun m!368661 () Bool)

(assert (=> b!285146 m!368661))

(declare-fun m!368663 () Bool)

(assert (=> b!285146 m!368663))

(declare-fun m!368665 () Bool)

(assert (=> b!285146 m!368665))

(declare-fun m!368667 () Bool)

(assert (=> b!285146 m!368667))

(declare-fun m!368669 () Bool)

(assert (=> b!285146 m!368669))

(assert (=> b!285146 m!368667))

(declare-fun m!368671 () Bool)

(assert (=> b!285146 m!368671))

(assert (=> b!285146 m!368667))

(assert (=> b!285146 m!368661))

(assert (=> b!285146 m!368663))

(declare-fun m!368673 () Bool)

(assert (=> b!285140 m!368673))

(declare-fun m!368675 () Bool)

(assert (=> bm!16029 m!368675))

(assert (=> b!285144 m!368057))

(declare-fun m!368677 () Bool)

(assert (=> b!285144 m!368677))

(assert (=> bm!16025 m!368057))

(assert (=> bm!16025 m!368677))

(declare-fun m!368679 () Bool)

(assert (=> d!84334 m!368679))

(declare-fun m!368681 () Bool)

(assert (=> d!84334 m!368681))

(declare-fun m!368683 () Bool)

(assert (=> d!84334 m!368683))

(assert (=> d!84334 m!368679))

(declare-fun m!368685 () Bool)

(assert (=> d!84334 m!368685))

(assert (=> d!84334 m!368057))

(declare-fun m!368687 () Bool)

(assert (=> d!84334 m!368687))

(assert (=> d!84334 m!368057))

(assert (=> d!84334 m!368683))

(assert (=> d!84334 m!368057))

(assert (=> d!84334 m!368679))

(declare-fun m!368689 () Bool)

(assert (=> d!84334 m!368689))

(declare-fun m!368691 () Bool)

(assert (=> b!285143 m!368691))

(assert (=> b!285147 m!368057))

(assert (=> b!285147 m!368687))

(declare-fun m!368693 () Bool)

(assert (=> b!285139 m!368693))

(assert (=> b!285139 m!368677))

(declare-fun m!368695 () Bool)

(assert (=> b!285139 m!368695))

(declare-fun m!368697 () Bool)

(assert (=> b!285139 m!368697))

(declare-fun m!368699 () Bool)

(assert (=> b!285139 m!368699))

(assert (=> b!285139 m!368057))

(assert (=> b!285139 m!368677))

(declare-fun m!368701 () Bool)

(assert (=> b!285139 m!368701))

(declare-fun m!368703 () Bool)

(assert (=> b!285139 m!368703))

(declare-fun m!368705 () Bool)

(assert (=> b!285139 m!368705))

(assert (=> b!285139 m!368057))

(declare-fun m!368707 () Bool)

(assert (=> b!285139 m!368707))

(declare-fun m!368709 () Bool)

(assert (=> b!285139 m!368709))

(declare-fun m!368711 () Bool)

(assert (=> b!285139 m!368711))

(assert (=> b!285139 m!368695))

(assert (=> b!285139 m!368703))

(declare-fun m!368713 () Bool)

(assert (=> b!285139 m!368713))

(assert (=> b!285139 m!368683))

(assert (=> b!285139 m!368677))

(declare-fun m!368715 () Bool)

(assert (=> b!285139 m!368715))

(assert (=> b!285139 m!368057))

(assert (=> b!285139 m!368683))

(assert (=> b!285139 m!368713))

(declare-fun m!368717 () Bool)

(assert (=> b!285139 m!368717))

(assert (=> b!285139 m!368697))

(declare-fun m!368719 () Bool)

(assert (=> bm!16026 m!368719))

(assert (=> b!284717 d!84334))

(declare-fun d!84350 () Bool)

(declare-fun lt!119990 () BalanceConc!2648)

(assert (=> d!84350 (= (list!1628 lt!119990) (originalCharacters!792 separatorToken!170))))

(assert (=> d!84350 (= lt!119990 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (value!25662 separatorToken!170)))))

(assert (=> d!84350 (= (charsOf!394 separatorToken!170) lt!119990)))

(declare-fun b_lambda!9369 () Bool)

(assert (=> (not b_lambda!9369) (not d!84350)))

(declare-fun t!39978 () Bool)

(declare-fun tb!16499 () Bool)

(assert (=> (and b!284689 (= (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170)))) t!39978) tb!16499))

(declare-fun b!285151 () Bool)

(declare-fun e!177343 () Bool)

(declare-fun tp!104763 () Bool)

(assert (=> b!285151 (= e!177343 (and (inv!4845 (c!53932 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (value!25662 separatorToken!170)))) tp!104763))))

(declare-fun result!20262 () Bool)

(assert (=> tb!16499 (= result!20262 (and (inv!4846 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (value!25662 separatorToken!170))) e!177343))))

(assert (= tb!16499 b!285151))

(declare-fun m!368721 () Bool)

(assert (=> b!285151 m!368721))

(declare-fun m!368723 () Bool)

(assert (=> tb!16499 m!368723))

(assert (=> d!84350 t!39978))

(declare-fun b_and!22969 () Bool)

(assert (= b_and!22945 (and (=> t!39978 result!20262) b_and!22969)))

(declare-fun t!39980 () Bool)

(declare-fun tb!16501 () Bool)

(assert (=> (and b!284702 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170)))) t!39980) tb!16501))

(declare-fun result!20264 () Bool)

(assert (= result!20264 result!20262))

(assert (=> d!84350 t!39980))

(declare-fun b_and!22971 () Bool)

(assert (= b_and!22947 (and (=> t!39980 result!20264) b_and!22971)))

(declare-fun t!39982 () Bool)

(declare-fun tb!16503 () Bool)

(assert (=> (and b!284708 (= (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170)))) t!39982) tb!16503))

(declare-fun result!20266 () Bool)

(assert (= result!20266 result!20262))

(assert (=> d!84350 t!39982))

(declare-fun b_and!22973 () Bool)

(assert (= b_and!22949 (and (=> t!39982 result!20266) b_and!22973)))

(declare-fun m!368725 () Bool)

(assert (=> d!84350 m!368725))

(declare-fun m!368727 () Bool)

(assert (=> d!84350 m!368727))

(assert (=> b!284717 d!84350))

(declare-fun d!84352 () Bool)

(declare-fun e!177349 () Bool)

(assert (=> d!84352 e!177349))

(declare-fun res!130340 () Bool)

(assert (=> d!84352 (=> (not res!130340) (not e!177349))))

(declare-fun lt!119993 () List!3923)

(declare-fun content!575 (List!3923) (InoxSet C!2868))

(assert (=> d!84352 (= res!130340 (= (content!575 lt!119993) ((_ map or) (content!575 lt!119810) (content!575 lt!119785))))))

(declare-fun e!177348 () List!3923)

(assert (=> d!84352 (= lt!119993 e!177348)))

(declare-fun c!54034 () Bool)

(assert (=> d!84352 (= c!54034 ((_ is Nil!3913) lt!119810))))

(assert (=> d!84352 (= (++!1042 lt!119810 lt!119785) lt!119993)))

(declare-fun b!285160 () Bool)

(assert (=> b!285160 (= e!177348 lt!119785)))

(declare-fun b!285161 () Bool)

(assert (=> b!285161 (= e!177348 (Cons!3913 (h!9310 lt!119810) (++!1042 (t!39947 lt!119810) lt!119785)))))

(declare-fun b!285162 () Bool)

(declare-fun res!130341 () Bool)

(assert (=> b!285162 (=> (not res!130341) (not e!177349))))

(assert (=> b!285162 (= res!130341 (= (size!3137 lt!119993) (+ (size!3137 lt!119810) (size!3137 lt!119785))))))

(declare-fun b!285163 () Bool)

(assert (=> b!285163 (= e!177349 (or (not (= lt!119785 Nil!3913)) (= lt!119993 lt!119810)))))

(assert (= (and d!84352 c!54034) b!285160))

(assert (= (and d!84352 (not c!54034)) b!285161))

(assert (= (and d!84352 res!130340) b!285162))

(assert (= (and b!285162 res!130341) b!285163))

(declare-fun m!368729 () Bool)

(assert (=> d!84352 m!368729))

(declare-fun m!368731 () Bool)

(assert (=> d!84352 m!368731))

(declare-fun m!368733 () Bool)

(assert (=> d!84352 m!368733))

(declare-fun m!368735 () Bool)

(assert (=> b!285161 m!368735))

(declare-fun m!368737 () Bool)

(assert (=> b!285162 m!368737))

(assert (=> b!285162 m!368303))

(declare-fun m!368739 () Bool)

(assert (=> b!285162 m!368739))

(assert (=> b!284717 d!84352))

(declare-fun d!84354 () Bool)

(declare-fun e!177351 () Bool)

(assert (=> d!84354 e!177351))

(declare-fun res!130342 () Bool)

(assert (=> d!84354 (=> (not res!130342) (not e!177351))))

(declare-fun lt!119994 () List!3923)

(assert (=> d!84354 (= res!130342 (= (content!575 lt!119994) ((_ map or) (content!575 lt!119810) (content!575 lt!119800))))))

(declare-fun e!177350 () List!3923)

(assert (=> d!84354 (= lt!119994 e!177350)))

(declare-fun c!54035 () Bool)

(assert (=> d!84354 (= c!54035 ((_ is Nil!3913) lt!119810))))

(assert (=> d!84354 (= (++!1042 lt!119810 lt!119800) lt!119994)))

(declare-fun b!285164 () Bool)

(assert (=> b!285164 (= e!177350 lt!119800)))

(declare-fun b!285165 () Bool)

(assert (=> b!285165 (= e!177350 (Cons!3913 (h!9310 lt!119810) (++!1042 (t!39947 lt!119810) lt!119800)))))

(declare-fun b!285166 () Bool)

(declare-fun res!130343 () Bool)

(assert (=> b!285166 (=> (not res!130343) (not e!177351))))

(assert (=> b!285166 (= res!130343 (= (size!3137 lt!119994) (+ (size!3137 lt!119810) (size!3137 lt!119800))))))

(declare-fun b!285167 () Bool)

(assert (=> b!285167 (= e!177351 (or (not (= lt!119800 Nil!3913)) (= lt!119994 lt!119810)))))

(assert (= (and d!84354 c!54035) b!285164))

(assert (= (and d!84354 (not c!54035)) b!285165))

(assert (= (and d!84354 res!130342) b!285166))

(assert (= (and b!285166 res!130343) b!285167))

(declare-fun m!368741 () Bool)

(assert (=> d!84354 m!368741))

(assert (=> d!84354 m!368731))

(declare-fun m!368743 () Bool)

(assert (=> d!84354 m!368743))

(declare-fun m!368745 () Bool)

(assert (=> b!285165 m!368745))

(declare-fun m!368747 () Bool)

(assert (=> b!285166 m!368747))

(assert (=> b!285166 m!368303))

(declare-fun m!368749 () Bool)

(assert (=> b!285166 m!368749))

(assert (=> b!284717 d!84354))

(declare-fun d!84356 () Bool)

(declare-fun e!177353 () Bool)

(assert (=> d!84356 e!177353))

(declare-fun res!130344 () Bool)

(assert (=> d!84356 (=> (not res!130344) (not e!177353))))

(declare-fun lt!119995 () List!3923)

(assert (=> d!84356 (= res!130344 (= (content!575 lt!119995) ((_ map or) (content!575 (++!1042 lt!119810 lt!119785)) (content!575 lt!119763))))))

(declare-fun e!177352 () List!3923)

(assert (=> d!84356 (= lt!119995 e!177352)))

(declare-fun c!54036 () Bool)

(assert (=> d!84356 (= c!54036 ((_ is Nil!3913) (++!1042 lt!119810 lt!119785)))))

(assert (=> d!84356 (= (++!1042 (++!1042 lt!119810 lt!119785) lt!119763) lt!119995)))

(declare-fun b!285168 () Bool)

(assert (=> b!285168 (= e!177352 lt!119763)))

(declare-fun b!285169 () Bool)

(assert (=> b!285169 (= e!177352 (Cons!3913 (h!9310 (++!1042 lt!119810 lt!119785)) (++!1042 (t!39947 (++!1042 lt!119810 lt!119785)) lt!119763)))))

(declare-fun b!285170 () Bool)

(declare-fun res!130345 () Bool)

(assert (=> b!285170 (=> (not res!130345) (not e!177353))))

(assert (=> b!285170 (= res!130345 (= (size!3137 lt!119995) (+ (size!3137 (++!1042 lt!119810 lt!119785)) (size!3137 lt!119763))))))

(declare-fun b!285171 () Bool)

(assert (=> b!285171 (= e!177353 (or (not (= lt!119763 Nil!3913)) (= lt!119995 (++!1042 lt!119810 lt!119785))))))

(assert (= (and d!84356 c!54036) b!285168))

(assert (= (and d!84356 (not c!54036)) b!285169))

(assert (= (and d!84356 res!130344) b!285170))

(assert (= (and b!285170 res!130345) b!285171))

(declare-fun m!368751 () Bool)

(assert (=> d!84356 m!368751))

(assert (=> d!84356 m!368069))

(declare-fun m!368753 () Bool)

(assert (=> d!84356 m!368753))

(declare-fun m!368755 () Bool)

(assert (=> d!84356 m!368755))

(declare-fun m!368757 () Bool)

(assert (=> b!285169 m!368757))

(declare-fun m!368759 () Bool)

(assert (=> b!285170 m!368759))

(assert (=> b!285170 m!368069))

(declare-fun m!368761 () Bool)

(assert (=> b!285170 m!368761))

(declare-fun m!368763 () Bool)

(assert (=> b!285170 m!368763))

(assert (=> b!284717 d!84356))

(declare-fun d!84358 () Bool)

(declare-fun e!177355 () Bool)

(assert (=> d!84358 e!177355))

(declare-fun res!130346 () Bool)

(assert (=> d!84358 (=> (not res!130346) (not e!177355))))

(declare-fun lt!119996 () List!3923)

(assert (=> d!84358 (= res!130346 (= (content!575 lt!119996) ((_ map or) (content!575 lt!119785) (content!575 lt!119763))))))

(declare-fun e!177354 () List!3923)

(assert (=> d!84358 (= lt!119996 e!177354)))

(declare-fun c!54037 () Bool)

(assert (=> d!84358 (= c!54037 ((_ is Nil!3913) lt!119785))))

(assert (=> d!84358 (= (++!1042 lt!119785 lt!119763) lt!119996)))

(declare-fun b!285172 () Bool)

(assert (=> b!285172 (= e!177354 lt!119763)))

(declare-fun b!285173 () Bool)

(assert (=> b!285173 (= e!177354 (Cons!3913 (h!9310 lt!119785) (++!1042 (t!39947 lt!119785) lt!119763)))))

(declare-fun b!285174 () Bool)

(declare-fun res!130347 () Bool)

(assert (=> b!285174 (=> (not res!130347) (not e!177355))))

(assert (=> b!285174 (= res!130347 (= (size!3137 lt!119996) (+ (size!3137 lt!119785) (size!3137 lt!119763))))))

(declare-fun b!285175 () Bool)

(assert (=> b!285175 (= e!177355 (or (not (= lt!119763 Nil!3913)) (= lt!119996 lt!119785)))))

(assert (= (and d!84358 c!54037) b!285172))

(assert (= (and d!84358 (not c!54037)) b!285173))

(assert (= (and d!84358 res!130346) b!285174))

(assert (= (and b!285174 res!130347) b!285175))

(declare-fun m!368765 () Bool)

(assert (=> d!84358 m!368765))

(assert (=> d!84358 m!368733))

(assert (=> d!84358 m!368755))

(declare-fun m!368767 () Bool)

(assert (=> b!285173 m!368767))

(declare-fun m!368769 () Bool)

(assert (=> b!285174 m!368769))

(assert (=> b!285174 m!368739))

(assert (=> b!285174 m!368763))

(assert (=> b!284717 d!84358))

(declare-fun d!84360 () Bool)

(assert (=> d!84360 (= (list!1628 (charsOf!394 (h!9312 tokens!465))) (list!1632 (c!53932 (charsOf!394 (h!9312 tokens!465)))))))

(declare-fun bs!32157 () Bool)

(assert (= bs!32157 d!84360))

(declare-fun m!368771 () Bool)

(assert (=> bs!32157 m!368771))

(assert (=> b!284717 d!84360))

(declare-fun d!84362 () Bool)

(declare-fun lt!119997 () BalanceConc!2648)

(assert (=> d!84362 (= (list!1628 lt!119997) (originalCharacters!792 (h!9312 tokens!465)))))

(assert (=> d!84362 (= lt!119997 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (value!25662 (h!9312 tokens!465))))))

(assert (=> d!84362 (= (charsOf!394 (h!9312 tokens!465)) lt!119997)))

(declare-fun b_lambda!9371 () Bool)

(assert (=> (not b_lambda!9371) (not d!84362)))

(assert (=> d!84362 t!39952))

(declare-fun b_and!22975 () Bool)

(assert (= b_and!22969 (and (=> t!39952 result!20240) b_and!22975)))

(assert (=> d!84362 t!39954))

(declare-fun b_and!22977 () Bool)

(assert (= b_and!22971 (and (=> t!39954 result!20244) b_and!22977)))

(assert (=> d!84362 t!39956))

(declare-fun b_and!22979 () Bool)

(assert (= b_and!22973 (and (=> t!39956 result!20246) b_and!22979)))

(declare-fun m!368773 () Bool)

(assert (=> d!84362 m!368773))

(assert (=> d!84362 m!368367))

(assert (=> b!284717 d!84362))

(declare-fun d!84364 () Bool)

(assert (=> d!84364 (= (list!1628 lt!119773) (list!1632 (c!53932 lt!119773)))))

(declare-fun bs!32158 () Bool)

(assert (= bs!32158 d!84364))

(declare-fun m!368775 () Bool)

(assert (=> bs!32158 m!368775))

(assert (=> b!284717 d!84364))

(declare-fun d!84366 () Bool)

(assert (=> d!84366 (= (++!1042 (++!1042 lt!119810 lt!119785) lt!119763) (++!1042 lt!119810 (++!1042 lt!119785 lt!119763)))))

(declare-fun lt!120000 () Unit!5248)

(declare-fun choose!2569 (List!3923 List!3923 List!3923) Unit!5248)

(assert (=> d!84366 (= lt!120000 (choose!2569 lt!119810 lt!119785 lt!119763))))

(assert (=> d!84366 (= (lemmaConcatAssociativity!452 lt!119810 lt!119785 lt!119763) lt!120000)))

(declare-fun bs!32159 () Bool)

(assert (= bs!32159 d!84366))

(assert (=> bs!32159 m!368069))

(declare-fun m!368777 () Bool)

(assert (=> bs!32159 m!368777))

(assert (=> bs!32159 m!368069))

(assert (=> bs!32159 m!368071))

(assert (=> bs!32159 m!368079))

(declare-fun m!368779 () Bool)

(assert (=> bs!32159 m!368779))

(assert (=> bs!32159 m!368079))

(assert (=> b!284717 d!84366))

(declare-fun d!84368 () Bool)

(declare-fun e!177357 () Bool)

(assert (=> d!84368 e!177357))

(declare-fun res!130348 () Bool)

(assert (=> d!84368 (=> (not res!130348) (not e!177357))))

(declare-fun lt!120001 () List!3923)

(assert (=> d!84368 (= res!130348 (= (content!575 lt!120001) ((_ map or) (content!575 lt!119810) (content!575 lt!119763))))))

(declare-fun e!177356 () List!3923)

(assert (=> d!84368 (= lt!120001 e!177356)))

(declare-fun c!54038 () Bool)

(assert (=> d!84368 (= c!54038 ((_ is Nil!3913) lt!119810))))

(assert (=> d!84368 (= (++!1042 lt!119810 lt!119763) lt!120001)))

(declare-fun b!285176 () Bool)

(assert (=> b!285176 (= e!177356 lt!119763)))

(declare-fun b!285177 () Bool)

(assert (=> b!285177 (= e!177356 (Cons!3913 (h!9310 lt!119810) (++!1042 (t!39947 lt!119810) lt!119763)))))

(declare-fun b!285178 () Bool)

(declare-fun res!130349 () Bool)

(assert (=> b!285178 (=> (not res!130349) (not e!177357))))

(assert (=> b!285178 (= res!130349 (= (size!3137 lt!120001) (+ (size!3137 lt!119810) (size!3137 lt!119763))))))

(declare-fun b!285179 () Bool)

(assert (=> b!285179 (= e!177357 (or (not (= lt!119763 Nil!3913)) (= lt!120001 lt!119810)))))

(assert (= (and d!84368 c!54038) b!285176))

(assert (= (and d!84368 (not c!54038)) b!285177))

(assert (= (and d!84368 res!130348) b!285178))

(assert (= (and b!285178 res!130349) b!285179))

(declare-fun m!368781 () Bool)

(assert (=> d!84368 m!368781))

(assert (=> d!84368 m!368731))

(assert (=> d!84368 m!368755))

(declare-fun m!368783 () Bool)

(assert (=> b!285177 m!368783))

(declare-fun m!368785 () Bool)

(assert (=> b!285178 m!368785))

(assert (=> b!285178 m!368303))

(assert (=> b!285178 m!368763))

(assert (=> b!284696 d!84368))

(declare-fun d!84370 () Bool)

(declare-fun lt!120094 () Bool)

(declare-fun e!177432 () Bool)

(assert (=> d!84370 (= lt!120094 e!177432)))

(declare-fun res!130389 () Bool)

(assert (=> d!84370 (=> (not res!130389) (not e!177432))))

(assert (=> d!84370 (= res!130389 (= (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 (h!9312 tokens!465)))))) (list!1629 (singletonSeq!295 (h!9312 tokens!465)))))))

(declare-fun e!177431 () Bool)

(assert (=> d!84370 (= lt!120094 e!177431)))

(declare-fun res!130390 () Bool)

(assert (=> d!84370 (=> (not res!130390) (not e!177431))))

(declare-fun lt!120093 () tuple2!4448)

(assert (=> d!84370 (= res!130390 (= (size!3133 (_1!2440 lt!120093)) 1))))

(assert (=> d!84370 (= lt!120093 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 (h!9312 tokens!465)))))))

(assert (=> d!84370 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84370 (= (rulesProduceIndividualToken!384 thiss!17480 rules!1920 (h!9312 tokens!465)) lt!120094)))

(declare-fun b!285287 () Bool)

(declare-fun res!130388 () Bool)

(assert (=> b!285287 (=> (not res!130388) (not e!177431))))

(assert (=> b!285287 (= res!130388 (= (apply!826 (_1!2440 lt!120093) 0) (h!9312 tokens!465)))))

(declare-fun b!285288 () Bool)

(assert (=> b!285288 (= e!177431 (isEmpty!2576 (_2!2440 lt!120093)))))

(declare-fun b!285289 () Bool)

(assert (=> b!285289 (= e!177432 (isEmpty!2576 (_2!2440 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 (h!9312 tokens!465)))))))))

(assert (= (and d!84370 res!130390) b!285287))

(assert (= (and b!285287 res!130388) b!285288))

(assert (= (and d!84370 res!130389) b!285289))

(declare-fun m!369007 () Bool)

(assert (=> d!84370 m!369007))

(declare-fun m!369009 () Bool)

(assert (=> d!84370 m!369009))

(assert (=> d!84370 m!368001))

(declare-fun m!369011 () Bool)

(assert (=> d!84370 m!369011))

(declare-fun m!369013 () Bool)

(assert (=> d!84370 m!369013))

(assert (=> d!84370 m!368013))

(assert (=> d!84370 m!369007))

(assert (=> d!84370 m!368013))

(assert (=> d!84370 m!368013))

(declare-fun m!369015 () Bool)

(assert (=> d!84370 m!369015))

(declare-fun m!369017 () Bool)

(assert (=> b!285287 m!369017))

(declare-fun m!369019 () Bool)

(assert (=> b!285288 m!369019))

(assert (=> b!285289 m!368013))

(assert (=> b!285289 m!368013))

(assert (=> b!285289 m!369007))

(assert (=> b!285289 m!369007))

(assert (=> b!285289 m!369009))

(declare-fun m!369021 () Bool)

(assert (=> b!285289 m!369021))

(assert (=> b!284694 d!84370))

(declare-fun b!285300 () Bool)

(declare-fun e!177440 () Bool)

(declare-fun inv!17 (TokenValue!771) Bool)

(assert (=> b!285300 (= e!177440 (inv!17 (value!25662 (h!9312 tokens!465))))))

(declare-fun b!285301 () Bool)

(declare-fun e!177441 () Bool)

(assert (=> b!285301 (= e!177441 e!177440)))

(declare-fun c!54074 () Bool)

(assert (=> b!285301 (= c!54074 ((_ is IntegerValue!2314) (value!25662 (h!9312 tokens!465))))))

(declare-fun b!285302 () Bool)

(declare-fun inv!16 (TokenValue!771) Bool)

(assert (=> b!285302 (= e!177441 (inv!16 (value!25662 (h!9312 tokens!465))))))

(declare-fun b!285304 () Bool)

(declare-fun res!130393 () Bool)

(declare-fun e!177439 () Bool)

(assert (=> b!285304 (=> res!130393 e!177439)))

(assert (=> b!285304 (= res!130393 (not ((_ is IntegerValue!2315) (value!25662 (h!9312 tokens!465)))))))

(assert (=> b!285304 (= e!177440 e!177439)))

(declare-fun b!285303 () Bool)

(declare-fun inv!15 (TokenValue!771) Bool)

(assert (=> b!285303 (= e!177439 (inv!15 (value!25662 (h!9312 tokens!465))))))

(declare-fun d!84400 () Bool)

(declare-fun c!54073 () Bool)

(assert (=> d!84400 (= c!54073 ((_ is IntegerValue!2313) (value!25662 (h!9312 tokens!465))))))

(assert (=> d!84400 (= (inv!21 (value!25662 (h!9312 tokens!465))) e!177441)))

(assert (= (and d!84400 c!54073) b!285302))

(assert (= (and d!84400 (not c!54073)) b!285301))

(assert (= (and b!285301 c!54074) b!285300))

(assert (= (and b!285301 (not c!54074)) b!285304))

(assert (= (and b!285304 (not res!130393)) b!285303))

(declare-fun m!369027 () Bool)

(assert (=> b!285300 m!369027))

(declare-fun m!369029 () Bool)

(assert (=> b!285302 m!369029))

(declare-fun m!369031 () Bool)

(assert (=> b!285303 m!369031))

(assert (=> b!284716 d!84400))

(declare-fun b!285307 () Bool)

(declare-fun e!177450 () Bool)

(assert (=> b!285307 (= e!177450 (nullable!180 (regex!749 lt!119775)))))

(declare-fun b!285308 () Bool)

(declare-fun res!130401 () Bool)

(declare-fun e!177448 () Bool)

(assert (=> b!285308 (=> (not res!130401) (not e!177448))))

(assert (=> b!285308 (= res!130401 (isEmpty!2574 (tail!506 lt!119785)))))

(declare-fun b!285309 () Bool)

(assert (=> b!285309 (= e!177450 (matchR!295 (derivativeStep!146 (regex!749 lt!119775) (head!925 lt!119785)) (tail!506 lt!119785)))))

(declare-fun b!285310 () Bool)

(declare-fun e!177443 () Bool)

(declare-fun e!177447 () Bool)

(assert (=> b!285310 (= e!177443 e!177447)))

(declare-fun res!130394 () Bool)

(assert (=> b!285310 (=> (not res!130394) (not e!177447))))

(declare-fun lt!120100 () Bool)

(assert (=> b!285310 (= res!130394 (not lt!120100))))

(declare-fun b!285312 () Bool)

(declare-fun res!130396 () Bool)

(assert (=> b!285312 (=> res!130396 e!177443)))

(assert (=> b!285312 (= res!130396 e!177448)))

(declare-fun res!130402 () Bool)

(assert (=> b!285312 (=> (not res!130402) (not e!177448))))

(assert (=> b!285312 (= res!130402 lt!120100)))

(declare-fun b!285313 () Bool)

(declare-fun res!130395 () Bool)

(declare-fun e!177444 () Bool)

(assert (=> b!285313 (=> res!130395 e!177444)))

(assert (=> b!285313 (= res!130395 (not (isEmpty!2574 (tail!506 lt!119785))))))

(declare-fun bm!16055 () Bool)

(declare-fun call!16060 () Bool)

(assert (=> bm!16055 (= call!16060 (isEmpty!2574 lt!119785))))

(declare-fun b!285314 () Bool)

(declare-fun e!177442 () Bool)

(assert (=> b!285314 (= e!177442 (not lt!120100))))

(declare-fun b!285315 () Bool)

(declare-fun e!177449 () Bool)

(assert (=> b!285315 (= e!177449 e!177442)))

(declare-fun c!54076 () Bool)

(assert (=> b!285315 (= c!54076 ((_ is EmptyLang!973) (regex!749 lt!119775)))))

(declare-fun b!285311 () Bool)

(assert (=> b!285311 (= e!177444 (not (= (head!925 lt!119785) (c!53933 (regex!749 lt!119775)))))))

(declare-fun d!84404 () Bool)

(assert (=> d!84404 e!177449))

(declare-fun c!54075 () Bool)

(assert (=> d!84404 (= c!54075 ((_ is EmptyExpr!973) (regex!749 lt!119775)))))

(assert (=> d!84404 (= lt!120100 e!177450)))

(declare-fun c!54077 () Bool)

(assert (=> d!84404 (= c!54077 (isEmpty!2574 lt!119785))))

(assert (=> d!84404 (validRegex!255 (regex!749 lt!119775))))

(assert (=> d!84404 (= (matchR!295 (regex!749 lt!119775) lt!119785) lt!120100)))

(declare-fun b!285316 () Bool)

(assert (=> b!285316 (= e!177447 e!177444)))

(declare-fun res!130400 () Bool)

(assert (=> b!285316 (=> res!130400 e!177444)))

(assert (=> b!285316 (= res!130400 call!16060)))

(declare-fun b!285317 () Bool)

(assert (=> b!285317 (= e!177448 (= (head!925 lt!119785) (c!53933 (regex!749 lt!119775))))))

(declare-fun b!285318 () Bool)

(declare-fun res!130403 () Bool)

(assert (=> b!285318 (=> (not res!130403) (not e!177448))))

(assert (=> b!285318 (= res!130403 (not call!16060))))

(declare-fun b!285319 () Bool)

(assert (=> b!285319 (= e!177449 (= lt!120100 call!16060))))

(declare-fun b!285320 () Bool)

(declare-fun res!130398 () Bool)

(assert (=> b!285320 (=> res!130398 e!177443)))

(assert (=> b!285320 (= res!130398 (not ((_ is ElementMatch!973) (regex!749 lt!119775))))))

(assert (=> b!285320 (= e!177442 e!177443)))

(assert (= (and d!84404 c!54077) b!285307))

(assert (= (and d!84404 (not c!54077)) b!285309))

(assert (= (and d!84404 c!54075) b!285319))

(assert (= (and d!84404 (not c!54075)) b!285315))

(assert (= (and b!285315 c!54076) b!285314))

(assert (= (and b!285315 (not c!54076)) b!285320))

(assert (= (and b!285320 (not res!130398)) b!285312))

(assert (= (and b!285312 res!130402) b!285318))

(assert (= (and b!285318 res!130403) b!285308))

(assert (= (and b!285308 res!130401) b!285317))

(assert (= (and b!285312 (not res!130396)) b!285310))

(assert (= (and b!285310 res!130394) b!285316))

(assert (= (and b!285316 (not res!130400)) b!285313))

(assert (= (and b!285313 (not res!130395)) b!285311))

(assert (= (or b!285319 b!285316 b!285318) bm!16055))

(declare-fun m!369033 () Bool)

(assert (=> d!84404 m!369033))

(declare-fun m!369035 () Bool)

(assert (=> d!84404 m!369035))

(declare-fun m!369037 () Bool)

(assert (=> b!285309 m!369037))

(assert (=> b!285309 m!369037))

(declare-fun m!369039 () Bool)

(assert (=> b!285309 m!369039))

(declare-fun m!369041 () Bool)

(assert (=> b!285309 m!369041))

(assert (=> b!285309 m!369039))

(assert (=> b!285309 m!369041))

(declare-fun m!369045 () Bool)

(assert (=> b!285309 m!369045))

(assert (=> b!285308 m!369041))

(assert (=> b!285308 m!369041))

(declare-fun m!369049 () Bool)

(assert (=> b!285308 m!369049))

(declare-fun m!369051 () Bool)

(assert (=> b!285307 m!369051))

(assert (=> bm!16055 m!369033))

(assert (=> b!285313 m!369041))

(assert (=> b!285313 m!369041))

(assert (=> b!285313 m!369049))

(assert (=> b!285311 m!369037))

(assert (=> b!285317 m!369037))

(assert (=> b!284695 d!84404))

(declare-fun d!84408 () Bool)

(assert (=> d!84408 (= (get!1321 lt!119761) (v!14787 lt!119761))))

(assert (=> b!284695 d!84408))

(declare-fun d!84410 () Bool)

(assert (=> d!84410 (not (matchR!295 (regex!749 (rule!1346 lt!119807)) lt!119809))))

(declare-fun lt!120104 () Unit!5248)

(declare-fun choose!2570 (Regex!973 List!3923 C!2868) Unit!5248)

(assert (=> d!84410 (= lt!120104 (choose!2570 (regex!749 (rule!1346 lt!119807)) lt!119809 lt!119771))))

(assert (=> d!84410 (validRegex!255 (regex!749 (rule!1346 lt!119807)))))

(assert (=> d!84410 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!78 (regex!749 (rule!1346 lt!119807)) lt!119809 lt!119771) lt!120104)))

(declare-fun bs!32189 () Bool)

(assert (= bs!32189 d!84410))

(assert (=> bs!32189 m!368119))

(declare-fun m!369063 () Bool)

(assert (=> bs!32189 m!369063))

(declare-fun m!369065 () Bool)

(assert (=> bs!32189 m!369065))

(assert (=> b!284715 d!84410))

(declare-fun b!285328 () Bool)

(declare-fun e!177461 () Bool)

(assert (=> b!285328 (= e!177461 (nullable!180 (regex!749 (rule!1346 lt!119807))))))

(declare-fun b!285329 () Bool)

(declare-fun res!130410 () Bool)

(declare-fun e!177459 () Bool)

(assert (=> b!285329 (=> (not res!130410) (not e!177459))))

(assert (=> b!285329 (= res!130410 (isEmpty!2574 (tail!506 lt!119809)))))

(declare-fun b!285330 () Bool)

(assert (=> b!285330 (= e!177461 (matchR!295 (derivativeStep!146 (regex!749 (rule!1346 lt!119807)) (head!925 lt!119809)) (tail!506 lt!119809)))))

(declare-fun b!285331 () Bool)

(declare-fun e!177456 () Bool)

(declare-fun e!177458 () Bool)

(assert (=> b!285331 (= e!177456 e!177458)))

(declare-fun res!130405 () Bool)

(assert (=> b!285331 (=> (not res!130405) (not e!177458))))

(declare-fun lt!120105 () Bool)

(assert (=> b!285331 (= res!130405 (not lt!120105))))

(declare-fun b!285333 () Bool)

(declare-fun res!130407 () Bool)

(assert (=> b!285333 (=> res!130407 e!177456)))

(assert (=> b!285333 (= res!130407 e!177459)))

(declare-fun res!130411 () Bool)

(assert (=> b!285333 (=> (not res!130411) (not e!177459))))

(assert (=> b!285333 (= res!130411 lt!120105)))

(declare-fun b!285334 () Bool)

(declare-fun res!130406 () Bool)

(declare-fun e!177457 () Bool)

(assert (=> b!285334 (=> res!130406 e!177457)))

(assert (=> b!285334 (= res!130406 (not (isEmpty!2574 (tail!506 lt!119809))))))

(declare-fun bm!16056 () Bool)

(declare-fun call!16061 () Bool)

(assert (=> bm!16056 (= call!16061 (isEmpty!2574 lt!119809))))

(declare-fun b!285335 () Bool)

(declare-fun e!177455 () Bool)

(assert (=> b!285335 (= e!177455 (not lt!120105))))

(declare-fun b!285336 () Bool)

(declare-fun e!177460 () Bool)

(assert (=> b!285336 (= e!177460 e!177455)))

(declare-fun c!54083 () Bool)

(assert (=> b!285336 (= c!54083 ((_ is EmptyLang!973) (regex!749 (rule!1346 lt!119807))))))

(declare-fun b!285332 () Bool)

(assert (=> b!285332 (= e!177457 (not (= (head!925 lt!119809) (c!53933 (regex!749 (rule!1346 lt!119807))))))))

(declare-fun d!84414 () Bool)

(assert (=> d!84414 e!177460))

(declare-fun c!54082 () Bool)

(assert (=> d!84414 (= c!54082 ((_ is EmptyExpr!973) (regex!749 (rule!1346 lt!119807))))))

(assert (=> d!84414 (= lt!120105 e!177461)))

(declare-fun c!54084 () Bool)

(assert (=> d!84414 (= c!54084 (isEmpty!2574 lt!119809))))

(assert (=> d!84414 (validRegex!255 (regex!749 (rule!1346 lt!119807)))))

(assert (=> d!84414 (= (matchR!295 (regex!749 (rule!1346 lt!119807)) lt!119809) lt!120105)))

(declare-fun b!285337 () Bool)

(assert (=> b!285337 (= e!177458 e!177457)))

(declare-fun res!130409 () Bool)

(assert (=> b!285337 (=> res!130409 e!177457)))

(assert (=> b!285337 (= res!130409 call!16061)))

(declare-fun b!285338 () Bool)

(assert (=> b!285338 (= e!177459 (= (head!925 lt!119809) (c!53933 (regex!749 (rule!1346 lt!119807)))))))

(declare-fun b!285339 () Bool)

(declare-fun res!130412 () Bool)

(assert (=> b!285339 (=> (not res!130412) (not e!177459))))

(assert (=> b!285339 (= res!130412 (not call!16061))))

(declare-fun b!285340 () Bool)

(assert (=> b!285340 (= e!177460 (= lt!120105 call!16061))))

(declare-fun b!285341 () Bool)

(declare-fun res!130408 () Bool)

(assert (=> b!285341 (=> res!130408 e!177456)))

(assert (=> b!285341 (= res!130408 (not ((_ is ElementMatch!973) (regex!749 (rule!1346 lt!119807)))))))

(assert (=> b!285341 (= e!177455 e!177456)))

(assert (= (and d!84414 c!54084) b!285328))

(assert (= (and d!84414 (not c!54084)) b!285330))

(assert (= (and d!84414 c!54082) b!285340))

(assert (= (and d!84414 (not c!54082)) b!285336))

(assert (= (and b!285336 c!54083) b!285335))

(assert (= (and b!285336 (not c!54083)) b!285341))

(assert (= (and b!285341 (not res!130408)) b!285333))

(assert (= (and b!285333 res!130411) b!285339))

(assert (= (and b!285339 res!130412) b!285329))

(assert (= (and b!285329 res!130410) b!285338))

(assert (= (and b!285333 (not res!130407)) b!285331))

(assert (= (and b!285331 res!130405) b!285337))

(assert (= (and b!285337 (not res!130409)) b!285334))

(assert (= (and b!285334 (not res!130406)) b!285332))

(assert (= (or b!285340 b!285337 b!285339) bm!16056))

(assert (=> d!84414 m!368325))

(assert (=> d!84414 m!369065))

(assert (=> b!285330 m!368143))

(assert (=> b!285330 m!368143))

(declare-fun m!369069 () Bool)

(assert (=> b!285330 m!369069))

(assert (=> b!285330 m!368331))

(assert (=> b!285330 m!369069))

(assert (=> b!285330 m!368331))

(declare-fun m!369071 () Bool)

(assert (=> b!285330 m!369071))

(assert (=> b!285329 m!368331))

(assert (=> b!285329 m!368331))

(assert (=> b!285329 m!368335))

(declare-fun m!369073 () Bool)

(assert (=> b!285328 m!369073))

(assert (=> bm!16056 m!368325))

(assert (=> b!285334 m!368331))

(assert (=> b!285334 m!368331))

(assert (=> b!285334 m!368335))

(assert (=> b!285332 m!368143))

(assert (=> b!285338 m!368143))

(assert (=> b!284715 d!84414))

(declare-fun d!84418 () Bool)

(declare-fun lt!120108 () Bool)

(assert (=> d!84418 (= lt!120108 (isEmpty!2575 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 (seqFromList!865 lt!119810))))))))

(declare-fun isEmpty!2583 (Conc!1321) Bool)

(assert (=> d!84418 (= lt!120108 (isEmpty!2583 (c!53934 (_1!2440 (lex!427 thiss!17480 rules!1920 (seqFromList!865 lt!119810))))))))

(assert (=> d!84418 (= (isEmpty!2577 (_1!2440 (lex!427 thiss!17480 rules!1920 (seqFromList!865 lt!119810)))) lt!120108)))

(declare-fun bs!32191 () Bool)

(assert (= bs!32191 d!84418))

(declare-fun m!369075 () Bool)

(assert (=> bs!32191 m!369075))

(assert (=> bs!32191 m!369075))

(declare-fun m!369077 () Bool)

(assert (=> bs!32191 m!369077))

(declare-fun m!369079 () Bool)

(assert (=> bs!32191 m!369079))

(assert (=> b!284713 d!84418))

(declare-fun b!285405 () Bool)

(declare-fun res!130454 () Bool)

(declare-fun e!177504 () Bool)

(assert (=> b!285405 (=> (not res!130454) (not e!177504))))

(declare-fun lt!120144 () tuple2!4448)

(assert (=> b!285405 (= res!130454 (= (list!1629 (_1!2440 lt!120144)) (_1!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 (seqFromList!865 lt!119810))))))))

(declare-fun d!84420 () Bool)

(assert (=> d!84420 e!177504))

(declare-fun res!130453 () Bool)

(assert (=> d!84420 (=> (not res!130453) (not e!177504))))

(declare-fun e!177505 () Bool)

(assert (=> d!84420 (= res!130453 e!177505)))

(declare-fun c!54098 () Bool)

(assert (=> d!84420 (= c!54098 (> (size!3133 (_1!2440 lt!120144)) 0))))

(declare-fun lexTailRecV2!190 (LexerInterface!635 List!3924 BalanceConc!2648 BalanceConc!2648 BalanceConc!2648 BalanceConc!2650) tuple2!4448)

(assert (=> d!84420 (= lt!120144 (lexTailRecV2!190 thiss!17480 rules!1920 (seqFromList!865 lt!119810) (BalanceConc!2649 Empty!1320) (seqFromList!865 lt!119810) (BalanceConc!2651 Empty!1321)))))

(assert (=> d!84420 (= (lex!427 thiss!17480 rules!1920 (seqFromList!865 lt!119810)) lt!120144)))

(declare-fun b!285406 () Bool)

(assert (=> b!285406 (= e!177504 (= (list!1628 (_2!2440 lt!120144)) (_2!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 (seqFromList!865 lt!119810))))))))

(declare-fun b!285407 () Bool)

(declare-fun e!177503 () Bool)

(assert (=> b!285407 (= e!177505 e!177503)))

(declare-fun res!130452 () Bool)

(declare-fun size!3139 (BalanceConc!2648) Int)

(assert (=> b!285407 (= res!130452 (< (size!3139 (_2!2440 lt!120144)) (size!3139 (seqFromList!865 lt!119810))))))

(assert (=> b!285407 (=> (not res!130452) (not e!177503))))

(declare-fun b!285408 () Bool)

(assert (=> b!285408 (= e!177503 (not (isEmpty!2577 (_1!2440 lt!120144))))))

(declare-fun b!285409 () Bool)

(assert (=> b!285409 (= e!177505 (= (_2!2440 lt!120144) (seqFromList!865 lt!119810)))))

(assert (= (and d!84420 c!54098) b!285407))

(assert (= (and d!84420 (not c!54098)) b!285409))

(assert (= (and b!285407 res!130452) b!285408))

(assert (= (and d!84420 res!130453) b!285405))

(assert (= (and b!285405 res!130454) b!285406))

(declare-fun m!369151 () Bool)

(assert (=> d!84420 m!369151))

(assert (=> d!84420 m!368205))

(assert (=> d!84420 m!368205))

(declare-fun m!369159 () Bool)

(assert (=> d!84420 m!369159))

(declare-fun m!369161 () Bool)

(assert (=> b!285407 m!369161))

(assert (=> b!285407 m!368205))

(declare-fun m!369165 () Bool)

(assert (=> b!285407 m!369165))

(declare-fun m!369167 () Bool)

(assert (=> b!285408 m!369167))

(declare-fun m!369169 () Bool)

(assert (=> b!285406 m!369169))

(assert (=> b!285406 m!368205))

(declare-fun m!369171 () Bool)

(assert (=> b!285406 m!369171))

(assert (=> b!285406 m!369171))

(declare-fun m!369175 () Bool)

(assert (=> b!285406 m!369175))

(declare-fun m!369177 () Bool)

(assert (=> b!285405 m!369177))

(assert (=> b!285405 m!368205))

(assert (=> b!285405 m!369171))

(assert (=> b!285405 m!369171))

(assert (=> b!285405 m!369175))

(assert (=> b!284713 d!84420))

(declare-fun d!84438 () Bool)

(assert (=> d!84438 (= (seqFromList!865 lt!119810) (fromListB!348 lt!119810))))

(declare-fun bs!32194 () Bool)

(assert (= bs!32194 d!84438))

(declare-fun m!369181 () Bool)

(assert (=> bs!32194 m!369181))

(assert (=> b!284713 d!84438))

(declare-fun d!84442 () Bool)

(assert (=> d!84442 (= (isEmpty!2574 (_2!2443 lt!119765)) ((_ is Nil!3913) (_2!2443 lt!119765)))))

(assert (=> b!284692 d!84442))

(declare-fun b!285411 () Bool)

(declare-fun e!177509 () List!3925)

(declare-fun call!16067 () List!3925)

(assert (=> b!285411 (= e!177509 call!16067)))

(declare-fun b!285412 () Bool)

(declare-fun e!177507 () List!3925)

(assert (=> b!285412 (= e!177507 e!177509)))

(declare-fun c!54100 () Bool)

(assert (=> b!285412 (= c!54100 (dynLambda!2065 lambda!9735 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763)))))))

(declare-fun b!285413 () Bool)

(assert (=> b!285413 (= e!177509 (Cons!3915 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763))) call!16067))))

(declare-fun b!285414 () Bool)

(declare-fun e!177508 () Bool)

(declare-fun lt!120145 () List!3925)

(assert (=> b!285414 (= e!177508 (forall!1004 lt!120145 lambda!9735))))

(declare-fun b!285415 () Bool)

(declare-fun res!130457 () Bool)

(assert (=> b!285415 (=> (not res!130457) (not e!177508))))

(assert (=> b!285415 (= res!130457 (= ((_ map implies) (content!574 lt!120145) (content!574 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763)))) ((as const (InoxSet Token!1242)) true)))))

(declare-fun d!84446 () Bool)

(assert (=> d!84446 e!177508))

(declare-fun res!130456 () Bool)

(assert (=> d!84446 (=> (not res!130456) (not e!177508))))

(assert (=> d!84446 (= res!130456 (<= (size!3138 lt!120145) (size!3138 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763)))))))

(assert (=> d!84446 (= lt!120145 e!177507)))

(declare-fun c!54099 () Bool)

(assert (=> d!84446 (= c!54099 ((_ is Nil!3915) (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763))))))

(assert (=> d!84446 (= (filter!91 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763)) lambda!9735) lt!120145)))

(declare-fun bm!16062 () Bool)

(assert (=> bm!16062 (= call!16067 (filter!91 (t!39949 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763))) lambda!9735))))

(declare-fun b!285416 () Bool)

(assert (=> b!285416 (= e!177507 Nil!3915)))

(assert (= (and d!84446 c!54099) b!285416))

(assert (= (and d!84446 (not c!54099)) b!285412))

(assert (= (and b!285412 c!54100) b!285413))

(assert (= (and b!285412 (not c!54100)) b!285411))

(assert (= (or b!285413 b!285411) bm!16062))

(assert (= (and d!84446 res!130456) b!285415))

(assert (= (and b!285415 res!130457) b!285414))

(declare-fun b_lambda!9379 () Bool)

(assert (=> (not b_lambda!9379) (not b!285412)))

(declare-fun m!369187 () Bool)

(assert (=> d!84446 m!369187))

(declare-fun m!369189 () Bool)

(assert (=> d!84446 m!369189))

(declare-fun m!369191 () Bool)

(assert (=> b!285415 m!369191))

(declare-fun m!369193 () Bool)

(assert (=> b!285415 m!369193))

(declare-fun m!369195 () Bool)

(assert (=> b!285414 m!369195))

(declare-fun m!369197 () Bool)

(assert (=> b!285412 m!369197))

(declare-fun m!369199 () Bool)

(assert (=> bm!16062 m!369199))

(assert (=> b!284690 d!84446))

(declare-fun b!285417 () Bool)

(declare-fun e!177511 () Bool)

(declare-fun lt!120146 () tuple2!4452)

(assert (=> b!285417 (= e!177511 (not (isEmpty!2575 (_1!2442 lt!120146))))))

(declare-fun d!84448 () Bool)

(declare-fun e!177510 () Bool)

(assert (=> d!84448 e!177510))

(declare-fun c!54102 () Bool)

(assert (=> d!84448 (= c!54102 (> (size!3138 (_1!2442 lt!120146)) 0))))

(declare-fun e!177512 () tuple2!4452)

(assert (=> d!84448 (= lt!120146 e!177512)))

(declare-fun c!54101 () Bool)

(declare-fun lt!120148 () Option!863)

(assert (=> d!84448 (= c!54101 ((_ is Some!862) lt!120148))))

(assert (=> d!84448 (= lt!120148 (maxPrefix!353 thiss!17480 rules!1920 lt!119763))))

(assert (=> d!84448 (= (lexList!223 thiss!17480 rules!1920 lt!119763) lt!120146)))

(declare-fun b!285418 () Bool)

(declare-fun lt!120147 () tuple2!4452)

(assert (=> b!285418 (= e!177512 (tuple2!4453 (Cons!3915 (_1!2443 (v!14789 lt!120148)) (_1!2442 lt!120147)) (_2!2442 lt!120147)))))

(assert (=> b!285418 (= lt!120147 (lexList!223 thiss!17480 rules!1920 (_2!2443 (v!14789 lt!120148))))))

(declare-fun b!285419 () Bool)

(assert (=> b!285419 (= e!177510 e!177511)))

(declare-fun res!130458 () Bool)

(assert (=> b!285419 (= res!130458 (< (size!3137 (_2!2442 lt!120146)) (size!3137 lt!119763)))))

(assert (=> b!285419 (=> (not res!130458) (not e!177511))))

(declare-fun b!285420 () Bool)

(assert (=> b!285420 (= e!177510 (= (_2!2442 lt!120146) lt!119763))))

(declare-fun b!285421 () Bool)

(assert (=> b!285421 (= e!177512 (tuple2!4453 Nil!3915 lt!119763))))

(assert (= (and d!84448 c!54101) b!285418))

(assert (= (and d!84448 (not c!54101)) b!285421))

(assert (= (and d!84448 c!54102) b!285419))

(assert (= (and d!84448 (not c!54102)) b!285420))

(assert (= (and b!285419 res!130458) b!285417))

(declare-fun m!369201 () Bool)

(assert (=> b!285417 m!369201))

(declare-fun m!369203 () Bool)

(assert (=> d!84448 m!369203))

(declare-fun m!369205 () Bool)

(assert (=> d!84448 m!369205))

(declare-fun m!369207 () Bool)

(assert (=> b!285418 m!369207))

(declare-fun m!369209 () Bool)

(assert (=> b!285419 m!369209))

(assert (=> b!285419 m!368763))

(assert (=> b!284690 d!84448))

(declare-fun d!84450 () Bool)

(assert (=> d!84450 (= (get!1322 lt!119787) (v!14789 lt!119787))))

(assert (=> b!284712 d!84450))

(declare-fun d!84452 () Bool)

(assert (=> d!84452 (= (head!926 tokens!465) (h!9312 tokens!465))))

(assert (=> b!284712 d!84452))

(declare-fun d!84454 () Bool)

(declare-fun lt!120154 () Bool)

(assert (=> d!84454 (= lt!120154 (isEmpty!2574 (list!1628 (_2!2440 lt!119797))))))

(declare-fun isEmpty!2584 (Conc!1320) Bool)

(assert (=> d!84454 (= lt!120154 (isEmpty!2584 (c!53932 (_2!2440 lt!119797))))))

(assert (=> d!84454 (= (isEmpty!2576 (_2!2440 lt!119797)) lt!120154)))

(declare-fun bs!32196 () Bool)

(assert (= bs!32196 d!84454))

(declare-fun m!369211 () Bool)

(assert (=> bs!32196 m!369211))

(assert (=> bs!32196 m!369211))

(declare-fun m!369213 () Bool)

(assert (=> bs!32196 m!369213))

(declare-fun m!369215 () Bool)

(assert (=> bs!32196 m!369215))

(assert (=> b!284710 d!84454))

(declare-fun d!84456 () Bool)

(declare-fun res!130463 () Bool)

(declare-fun e!177517 () Bool)

(assert (=> d!84456 (=> res!130463 e!177517)))

(assert (=> d!84456 (= res!130463 ((_ is Nil!3915) tokens!465))))

(assert (=> d!84456 (= (forall!1004 tokens!465 lambda!9735) e!177517)))

(declare-fun b!285426 () Bool)

(declare-fun e!177518 () Bool)

(assert (=> b!285426 (= e!177517 e!177518)))

(declare-fun res!130464 () Bool)

(assert (=> b!285426 (=> (not res!130464) (not e!177518))))

(assert (=> b!285426 (= res!130464 (dynLambda!2065 lambda!9735 (h!9312 tokens!465)))))

(declare-fun b!285427 () Bool)

(assert (=> b!285427 (= e!177518 (forall!1004 (t!39949 tokens!465) lambda!9735))))

(assert (= (and d!84456 (not res!130463)) b!285426))

(assert (= (and b!285426 res!130464) b!285427))

(declare-fun b_lambda!9381 () Bool)

(assert (=> (not b_lambda!9381) (not b!285426)))

(declare-fun m!369219 () Bool)

(assert (=> b!285426 m!369219))

(declare-fun m!369221 () Bool)

(assert (=> b!285427 m!369221))

(assert (=> b!284711 d!84456))

(declare-fun d!84460 () Bool)

(assert (=> d!84460 (= (list!1628 lt!119778) (list!1632 (c!53932 lt!119778)))))

(declare-fun bs!32197 () Bool)

(assert (= bs!32197 d!84460))

(declare-fun m!369223 () Bool)

(assert (=> bs!32197 m!369223))

(assert (=> b!284709 d!84460))

(declare-fun bs!32198 () Bool)

(declare-fun d!84462 () Bool)

(assert (= bs!32198 (and d!84462 b!284711)))

(declare-fun lambda!9758 () Int)

(assert (=> bs!32198 (= lambda!9758 lambda!9735)))

(declare-fun bs!32199 () Bool)

(assert (= bs!32199 (and d!84462 d!84334)))

(assert (=> bs!32199 (= lambda!9758 lambda!9747)))

(declare-fun bs!32200 () Bool)

(assert (= bs!32200 (and d!84462 b!285139)))

(assert (=> bs!32200 (not (= lambda!9758 lambda!9748))))

(declare-fun bs!32201 () Bool)

(assert (= bs!32201 (and d!84462 b!285072)))

(assert (=> bs!32201 (not (= lambda!9758 lambda!9739))))

(declare-fun bs!32202 () Bool)

(assert (= bs!32202 (and d!84462 b!284685)))

(assert (=> bs!32202 (not (= lambda!9758 lambda!9736))))

(declare-fun bs!32203 () Bool)

(declare-fun b!285430 () Bool)

(assert (= bs!32203 (and b!285430 b!284711)))

(declare-fun lambda!9759 () Int)

(assert (=> bs!32203 (not (= lambda!9759 lambda!9735))))

(declare-fun bs!32204 () Bool)

(assert (= bs!32204 (and b!285430 d!84334)))

(assert (=> bs!32204 (not (= lambda!9759 lambda!9747))))

(declare-fun bs!32205 () Bool)

(assert (= bs!32205 (and b!285430 d!84462)))

(assert (=> bs!32205 (not (= lambda!9759 lambda!9758))))

(declare-fun bs!32206 () Bool)

(assert (= bs!32206 (and b!285430 b!285139)))

(assert (=> bs!32206 (= lambda!9759 lambda!9748)))

(declare-fun bs!32207 () Bool)

(assert (= bs!32207 (and b!285430 b!285072)))

(assert (=> bs!32207 (= lambda!9759 lambda!9739)))

(declare-fun bs!32208 () Bool)

(assert (= bs!32208 (and b!285430 b!284685)))

(assert (=> bs!32208 (= lambda!9759 lambda!9736)))

(declare-fun b!285441 () Bool)

(declare-fun e!177528 () Bool)

(assert (=> b!285441 (= e!177528 true)))

(declare-fun b!285440 () Bool)

(declare-fun e!177527 () Bool)

(assert (=> b!285440 (= e!177527 e!177528)))

(declare-fun b!285439 () Bool)

(declare-fun e!177526 () Bool)

(assert (=> b!285439 (= e!177526 e!177527)))

(assert (=> b!285430 e!177526))

(assert (= b!285440 b!285441))

(assert (= b!285439 b!285440))

(assert (= (and b!285430 ((_ is Cons!3914) rules!1920)) b!285439))

(assert (=> b!285441 (< (dynLambda!2059 order!3077 (toValue!1496 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9759))))

(assert (=> b!285441 (< (dynLambda!2061 order!3081 (toChars!1355 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9759))))

(assert (=> b!285430 true))

(declare-fun bm!16063 () Bool)

(declare-fun call!16069 () Token!1242)

(assert (=> bm!16063 (= call!16069 (apply!826 lt!119759 0))))

(declare-fun b!285428 () Bool)

(declare-fun c!54107 () Bool)

(declare-fun e!177523 () Bool)

(assert (=> b!285428 (= c!54107 e!177523)))

(declare-fun res!130465 () Bool)

(assert (=> b!285428 (=> (not res!130465) (not e!177523))))

(declare-fun lt!120158 () Option!862)

(assert (=> b!285428 (= res!130465 ((_ is Some!861) lt!120158))))

(declare-fun e!177521 () BalanceConc!2648)

(declare-fun e!177522 () BalanceConc!2648)

(assert (=> b!285428 (= e!177521 e!177522)))

(declare-fun b!285429 () Bool)

(declare-fun e!177524 () BalanceConc!2648)

(declare-fun call!16072 () BalanceConc!2648)

(assert (=> b!285429 (= e!177524 call!16072)))

(declare-fun lt!120166 () BalanceConc!2648)

(assert (=> d!84462 (= (list!1628 lt!120166) (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 (dropList!178 lt!119759 0) separatorToken!170))))

(declare-fun e!177520 () BalanceConc!2648)

(assert (=> d!84462 (= lt!120166 e!177520)))

(declare-fun c!54104 () Bool)

(assert (=> d!84462 (= c!54104 (>= 0 (size!3133 lt!119759)))))

(declare-fun lt!120157 () Unit!5248)

(assert (=> d!84462 (= lt!120157 (lemmaContentSubsetPreservesForall!122 (list!1629 lt!119759) (dropList!178 lt!119759 0) lambda!9758))))

(declare-fun e!177525 () Bool)

(assert (=> d!84462 e!177525))

(declare-fun res!130466 () Bool)

(assert (=> d!84462 (=> (not res!130466) (not e!177525))))

(assert (=> d!84462 (= res!130466 (>= 0 0))))

(assert (=> d!84462 (= (printWithSeparatorTokenWhenNeededRec!310 thiss!17480 rules!1920 lt!119759 separatorToken!170 0) lt!120166)))

(assert (=> b!285430 (= e!177520 e!177521)))

(declare-fun lt!120168 () List!3925)

(assert (=> b!285430 (= lt!120168 (list!1629 lt!119759))))

(declare-fun lt!120160 () Unit!5248)

(assert (=> b!285430 (= lt!120160 (lemmaDropApply!218 lt!120168 0))))

(assert (=> b!285430 (= (head!926 (drop!231 lt!120168 0)) (apply!831 lt!120168 0))))

(declare-fun lt!120159 () Unit!5248)

(assert (=> b!285430 (= lt!120159 lt!120160)))

(declare-fun lt!120162 () List!3925)

(assert (=> b!285430 (= lt!120162 (list!1629 lt!119759))))

(declare-fun lt!120161 () Unit!5248)

(assert (=> b!285430 (= lt!120161 (lemmaDropTail!210 lt!120162 0))))

(assert (=> b!285430 (= (tail!508 (drop!231 lt!120162 0)) (drop!231 lt!120162 (+ 0 1)))))

(declare-fun lt!120167 () Unit!5248)

(assert (=> b!285430 (= lt!120167 lt!120161)))

(declare-fun lt!120165 () Unit!5248)

(assert (=> b!285430 (= lt!120165 (forallContained!304 (list!1629 lt!119759) lambda!9759 (apply!826 lt!119759 0)))))

(declare-fun lt!120156 () BalanceConc!2648)

(assert (=> b!285430 (= lt!120156 (printWithSeparatorTokenWhenNeededRec!310 thiss!17480 rules!1920 lt!119759 separatorToken!170 (+ 0 1)))))

(assert (=> b!285430 (= lt!120158 (maxPrefixZipperSequence!316 thiss!17480 rules!1920 (++!1044 (charsOf!394 (apply!826 lt!119759 0)) lt!120156)))))

(declare-fun res!130467 () Bool)

(assert (=> b!285430 (= res!130467 ((_ is Some!861) lt!120158))))

(declare-fun e!177519 () Bool)

(assert (=> b!285430 (=> (not res!130467) (not e!177519))))

(declare-fun c!54106 () Bool)

(assert (=> b!285430 (= c!54106 e!177519)))

(declare-fun bm!16064 () Bool)

(declare-fun c!54105 () Bool)

(assert (=> bm!16064 (= c!54105 c!54106)))

(declare-fun call!16071 () BalanceConc!2648)

(declare-fun call!16070 () BalanceConc!2648)

(assert (=> bm!16064 (= call!16070 (++!1044 e!177524 (ite c!54106 lt!120156 call!16071)))))

(declare-fun b!285431 () Bool)

(declare-fun call!16068 () Token!1242)

(assert (=> b!285431 (= e!177524 (charsOf!394 call!16068))))

(declare-fun b!285432 () Bool)

(assert (=> b!285432 (= e!177521 call!16070)))

(declare-fun bm!16065 () Bool)

(assert (=> bm!16065 (= call!16071 call!16072)))

(declare-fun b!285433 () Bool)

(assert (=> b!285433 (= e!177520 (BalanceConc!2649 Empty!1320))))

(declare-fun b!285434 () Bool)

(assert (=> b!285434 (= e!177522 (++!1044 call!16070 lt!120156))))

(declare-fun bm!16066 () Bool)

(assert (=> bm!16066 (= call!16068 call!16069)))

(declare-fun bm!16067 () Bool)

(assert (=> bm!16067 (= call!16072 (charsOf!394 (ite c!54106 call!16069 (ite c!54107 separatorToken!170 call!16068))))))

(declare-fun b!285435 () Bool)

(assert (=> b!285435 (= e!177519 (= (_1!2441 (v!14788 lt!120158)) (apply!826 lt!119759 0)))))

(declare-fun b!285436 () Bool)

(assert (=> b!285436 (= e!177523 (not (= (_1!2441 (v!14788 lt!120158)) call!16069)))))

(declare-fun b!285437 () Bool)

(assert (=> b!285437 (= e!177522 (BalanceConc!2649 Empty!1320))))

(assert (=> b!285437 (= (print!360 thiss!17480 (singletonSeq!295 call!16068)) (printTailRec!323 thiss!17480 (singletonSeq!295 call!16068) 0 (BalanceConc!2649 Empty!1320)))))

(declare-fun lt!120164 () Unit!5248)

(declare-fun Unit!5268 () Unit!5248)

(assert (=> b!285437 (= lt!120164 Unit!5268)))

(declare-fun lt!120155 () Unit!5248)

(assert (=> b!285437 (= lt!120155 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!126 thiss!17480 rules!1920 (list!1628 call!16071) (list!1628 lt!120156)))))

(assert (=> b!285437 false))

(declare-fun lt!120163 () Unit!5248)

(declare-fun Unit!5269 () Unit!5248)

(assert (=> b!285437 (= lt!120163 Unit!5269)))

(declare-fun b!285438 () Bool)

(assert (=> b!285438 (= e!177525 (<= 0 (size!3133 lt!119759)))))

(assert (= (and d!84462 res!130466) b!285438))

(assert (= (and d!84462 c!54104) b!285433))

(assert (= (and d!84462 (not c!54104)) b!285430))

(assert (= (and b!285430 res!130467) b!285435))

(assert (= (and b!285430 c!54106) b!285432))

(assert (= (and b!285430 (not c!54106)) b!285428))

(assert (= (and b!285428 res!130465) b!285436))

(assert (= (and b!285428 c!54107) b!285434))

(assert (= (and b!285428 (not c!54107)) b!285437))

(assert (= (or b!285434 b!285437) bm!16066))

(assert (= (or b!285434 b!285437) bm!16065))

(assert (= (or b!285432 bm!16066 b!285436) bm!16063))

(assert (= (or b!285432 bm!16065) bm!16067))

(assert (= (or b!285432 b!285434) bm!16064))

(assert (= (and bm!16064 c!54105) b!285429))

(assert (= (and bm!16064 (not c!54105)) b!285431))

(declare-fun m!369225 () Bool)

(assert (=> b!285437 m!369225))

(declare-fun m!369227 () Bool)

(assert (=> b!285437 m!369227))

(declare-fun m!369229 () Bool)

(assert (=> b!285437 m!369229))

(declare-fun m!369231 () Bool)

(assert (=> b!285437 m!369231))

(declare-fun m!369233 () Bool)

(assert (=> b!285437 m!369233))

(assert (=> b!285437 m!369231))

(declare-fun m!369235 () Bool)

(assert (=> b!285437 m!369235))

(assert (=> b!285437 m!369231))

(assert (=> b!285437 m!369225))

(assert (=> b!285437 m!369227))

(declare-fun m!369237 () Bool)

(assert (=> b!285431 m!369237))

(declare-fun m!369239 () Bool)

(assert (=> bm!16067 m!369239))

(declare-fun m!369241 () Bool)

(assert (=> b!285435 m!369241))

(assert (=> bm!16063 m!369241))

(declare-fun m!369243 () Bool)

(assert (=> d!84462 m!369243))

(declare-fun m!369245 () Bool)

(assert (=> d!84462 m!369245))

(declare-fun m!369247 () Bool)

(assert (=> d!84462 m!369247))

(assert (=> d!84462 m!369243))

(declare-fun m!369249 () Bool)

(assert (=> d!84462 m!369249))

(declare-fun m!369251 () Bool)

(assert (=> d!84462 m!369251))

(assert (=> d!84462 m!369247))

(assert (=> d!84462 m!369243))

(declare-fun m!369253 () Bool)

(assert (=> d!84462 m!369253))

(declare-fun m!369255 () Bool)

(assert (=> b!285434 m!369255))

(assert (=> b!285438 m!369251))

(declare-fun m!369257 () Bool)

(assert (=> b!285430 m!369257))

(assert (=> b!285430 m!369241))

(declare-fun m!369259 () Bool)

(assert (=> b!285430 m!369259))

(declare-fun m!369261 () Bool)

(assert (=> b!285430 m!369261))

(declare-fun m!369263 () Bool)

(assert (=> b!285430 m!369263))

(assert (=> b!285430 m!369241))

(declare-fun m!369265 () Bool)

(assert (=> b!285430 m!369265))

(declare-fun m!369267 () Bool)

(assert (=> b!285430 m!369267))

(declare-fun m!369269 () Bool)

(assert (=> b!285430 m!369269))

(declare-fun m!369271 () Bool)

(assert (=> b!285430 m!369271))

(declare-fun m!369273 () Bool)

(assert (=> b!285430 m!369273))

(declare-fun m!369275 () Bool)

(assert (=> b!285430 m!369275))

(assert (=> b!285430 m!369259))

(assert (=> b!285430 m!369267))

(declare-fun m!369277 () Bool)

(assert (=> b!285430 m!369277))

(assert (=> b!285430 m!369247))

(assert (=> b!285430 m!369241))

(declare-fun m!369279 () Bool)

(assert (=> b!285430 m!369279))

(assert (=> b!285430 m!369247))

(assert (=> b!285430 m!369277))

(declare-fun m!369281 () Bool)

(assert (=> b!285430 m!369281))

(assert (=> b!285430 m!369261))

(declare-fun m!369283 () Bool)

(assert (=> bm!16064 m!369283))

(assert (=> b!284709 d!84462))

(declare-fun bs!32209 () Bool)

(declare-fun b!285446 () Bool)

(assert (= bs!32209 (and b!285446 b!284711)))

(declare-fun lambda!9760 () Int)

(assert (=> bs!32209 (not (= lambda!9760 lambda!9735))))

(declare-fun bs!32210 () Bool)

(assert (= bs!32210 (and b!285446 b!285430)))

(assert (=> bs!32210 (= lambda!9760 lambda!9759)))

(declare-fun bs!32211 () Bool)

(assert (= bs!32211 (and b!285446 d!84334)))

(assert (=> bs!32211 (not (= lambda!9760 lambda!9747))))

(declare-fun bs!32212 () Bool)

(assert (= bs!32212 (and b!285446 d!84462)))

(assert (=> bs!32212 (not (= lambda!9760 lambda!9758))))

(declare-fun bs!32213 () Bool)

(assert (= bs!32213 (and b!285446 b!285139)))

(assert (=> bs!32213 (= lambda!9760 lambda!9748)))

(declare-fun bs!32214 () Bool)

(assert (= bs!32214 (and b!285446 b!285072)))

(assert (=> bs!32214 (= lambda!9760 lambda!9739)))

(declare-fun bs!32215 () Bool)

(assert (= bs!32215 (and b!285446 b!284685)))

(assert (=> bs!32215 (= lambda!9760 lambda!9736)))

(declare-fun b!285452 () Bool)

(declare-fun e!177535 () Bool)

(assert (=> b!285452 (= e!177535 true)))

(declare-fun b!285451 () Bool)

(declare-fun e!177534 () Bool)

(assert (=> b!285451 (= e!177534 e!177535)))

(declare-fun b!285450 () Bool)

(declare-fun e!177533 () Bool)

(assert (=> b!285450 (= e!177533 e!177534)))

(assert (=> b!285446 e!177533))

(assert (= b!285451 b!285452))

(assert (= b!285450 b!285451))

(assert (= (and b!285446 ((_ is Cons!3914) rules!1920)) b!285450))

(assert (=> b!285452 (< (dynLambda!2059 order!3077 (toValue!1496 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9760))))

(assert (=> b!285452 (< (dynLambda!2061 order!3081 (toChars!1355 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9760))))

(assert (=> b!285446 true))

(declare-fun b!285442 () Bool)

(declare-fun c!54108 () Bool)

(declare-fun lt!120171 () Option!863)

(assert (=> b!285442 (= c!54108 (and ((_ is Some!862) lt!120171) (not (= (_1!2443 (v!14789 lt!120171)) (h!9312 tokens!465)))))))

(declare-fun e!177529 () List!3923)

(declare-fun e!177530 () List!3923)

(assert (=> b!285442 (= e!177529 e!177530)))

(declare-fun b!285443 () Bool)

(assert (=> b!285443 (= e!177530 Nil!3913)))

(assert (=> b!285443 (= (print!360 thiss!17480 (singletonSeq!295 (h!9312 tokens!465))) (printTailRec!323 thiss!17480 (singletonSeq!295 (h!9312 tokens!465)) 0 (BalanceConc!2649 Empty!1320)))))

(declare-fun lt!120169 () Unit!5248)

(declare-fun Unit!5270 () Unit!5248)

(assert (=> b!285443 (= lt!120169 Unit!5270)))

(declare-fun call!16075 () List!3923)

(declare-fun lt!120170 () List!3923)

(declare-fun lt!120174 () Unit!5248)

(assert (=> b!285443 (= lt!120174 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!126 thiss!17480 rules!1920 call!16075 lt!120170))))

(assert (=> b!285443 false))

(declare-fun lt!120172 () Unit!5248)

(declare-fun Unit!5271 () Unit!5248)

(assert (=> b!285443 (= lt!120172 Unit!5271)))

(declare-fun bm!16068 () Bool)

(declare-fun call!16074 () BalanceConc!2648)

(assert (=> bm!16068 (= call!16074 (charsOf!394 (h!9312 tokens!465)))))

(declare-fun b!285444 () Bool)

(declare-fun call!16076 () List!3923)

(assert (=> b!285444 (= e!177530 (++!1042 call!16076 lt!120170))))

(declare-fun b!285445 () Bool)

(assert (=> b!285445 (= e!177529 call!16076)))

(declare-fun bm!16069 () Bool)

(declare-fun e!177532 () BalanceConc!2648)

(assert (=> bm!16069 (= call!16075 (list!1628 e!177532))))

(declare-fun c!54111 () Bool)

(assert (=> bm!16069 (= c!54111 c!54108)))

(declare-fun e!177531 () List!3923)

(assert (=> b!285446 (= e!177531 e!177529)))

(declare-fun lt!120173 () Unit!5248)

(assert (=> b!285446 (= lt!120173 (forallContained!304 tokens!465 lambda!9760 (h!9312 tokens!465)))))

(assert (=> b!285446 (= lt!120170 (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 (t!39949 tokens!465) separatorToken!170))))

(assert (=> b!285446 (= lt!120171 (maxPrefix!353 thiss!17480 rules!1920 (++!1042 (list!1628 (charsOf!394 (h!9312 tokens!465))) lt!120170)))))

(declare-fun c!54109 () Bool)

(assert (=> b!285446 (= c!54109 (and ((_ is Some!862) lt!120171) (= (_1!2443 (v!14789 lt!120171)) (h!9312 tokens!465))))))

(declare-fun bm!16070 () Bool)

(declare-fun call!16073 () BalanceConc!2648)

(assert (=> bm!16070 (= call!16073 call!16074)))

(declare-fun d!84464 () Bool)

(declare-fun c!54110 () Bool)

(assert (=> d!84464 (= c!54110 ((_ is Cons!3915) tokens!465))))

(assert (=> d!84464 (= (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!177531)))

(declare-fun b!285447 () Bool)

(assert (=> b!285447 (= e!177532 call!16073)))

(declare-fun call!16077 () List!3923)

(declare-fun bm!16071 () Bool)

(assert (=> bm!16071 (= call!16076 (++!1042 call!16077 (ite c!54109 lt!120170 call!16075)))))

(declare-fun b!285448 () Bool)

(assert (=> b!285448 (= e!177531 Nil!3913)))

(declare-fun b!285449 () Bool)

(assert (=> b!285449 (= e!177532 (charsOf!394 separatorToken!170))))

(declare-fun bm!16072 () Bool)

(assert (=> bm!16072 (= call!16077 (list!1628 (ite c!54109 call!16074 call!16073)))))

(assert (= (and d!84464 c!54110) b!285446))

(assert (= (and d!84464 (not c!54110)) b!285448))

(assert (= (and b!285446 c!54109) b!285445))

(assert (= (and b!285446 (not c!54109)) b!285442))

(assert (= (and b!285442 c!54108) b!285444))

(assert (= (and b!285442 (not c!54108)) b!285443))

(assert (= (or b!285444 b!285443) bm!16070))

(assert (= (or b!285444 b!285443) bm!16069))

(assert (= (and bm!16069 c!54111) b!285449))

(assert (= (and bm!16069 (not c!54111)) b!285447))

(assert (= (or b!285445 bm!16070) bm!16068))

(assert (= (or b!285445 b!285444) bm!16072))

(assert (= (or b!285445 b!285444) bm!16071))

(assert (=> b!285446 m!368075))

(declare-fun m!369285 () Bool)

(assert (=> b!285446 m!369285))

(assert (=> b!285446 m!368073))

(assert (=> b!285446 m!368073))

(assert (=> b!285446 m!368075))

(assert (=> b!285446 m!369285))

(declare-fun m!369287 () Bool)

(assert (=> b!285446 m!369287))

(declare-fun m!369289 () Bool)

(assert (=> b!285446 m!369289))

(assert (=> b!285446 m!368061))

(declare-fun m!369291 () Bool)

(assert (=> bm!16069 m!369291))

(assert (=> bm!16068 m!368073))

(declare-fun m!369293 () Bool)

(assert (=> b!285444 m!369293))

(declare-fun m!369295 () Bool)

(assert (=> bm!16072 m!369295))

(assert (=> b!285443 m!368013))

(assert (=> b!285443 m!368013))

(assert (=> b!285443 m!369007))

(assert (=> b!285443 m!368013))

(declare-fun m!369297 () Bool)

(assert (=> b!285443 m!369297))

(declare-fun m!369299 () Bool)

(assert (=> b!285443 m!369299))

(assert (=> b!285449 m!368063))

(declare-fun m!369301 () Bool)

(assert (=> bm!16071 m!369301))

(assert (=> b!284709 d!84464))

(declare-fun bs!32227 () Bool)

(declare-fun d!84466 () Bool)

(assert (= bs!32227 (and d!84466 b!284711)))

(declare-fun lambda!9770 () Int)

(assert (=> bs!32227 (not (= lambda!9770 lambda!9735))))

(declare-fun bs!32228 () Bool)

(assert (= bs!32228 (and d!84466 b!285430)))

(assert (=> bs!32228 (= lambda!9770 lambda!9759)))

(declare-fun bs!32229 () Bool)

(assert (= bs!32229 (and d!84466 d!84334)))

(assert (=> bs!32229 (not (= lambda!9770 lambda!9747))))

(declare-fun bs!32230 () Bool)

(assert (= bs!32230 (and d!84466 d!84462)))

(assert (=> bs!32230 (not (= lambda!9770 lambda!9758))))

(declare-fun bs!32231 () Bool)

(assert (= bs!32231 (and d!84466 b!285139)))

(assert (=> bs!32231 (= lambda!9770 lambda!9748)))

(declare-fun bs!32232 () Bool)

(assert (= bs!32232 (and d!84466 b!285072)))

(assert (=> bs!32232 (= lambda!9770 lambda!9739)))

(declare-fun bs!32233 () Bool)

(assert (= bs!32233 (and d!84466 b!284685)))

(assert (=> bs!32233 (= lambda!9770 lambda!9736)))

(declare-fun bs!32234 () Bool)

(assert (= bs!32234 (and d!84466 b!285446)))

(assert (=> bs!32234 (= lambda!9770 lambda!9760)))

(declare-fun b!285505 () Bool)

(declare-fun e!177569 () Bool)

(assert (=> b!285505 (= e!177569 true)))

(declare-fun b!285504 () Bool)

(declare-fun e!177568 () Bool)

(assert (=> b!285504 (= e!177568 e!177569)))

(declare-fun b!285503 () Bool)

(declare-fun e!177567 () Bool)

(assert (=> b!285503 (= e!177567 e!177568)))

(assert (=> d!84466 e!177567))

(assert (= b!285504 b!285505))

(assert (= b!285503 b!285504))

(assert (= (and d!84466 ((_ is Cons!3914) rules!1920)) b!285503))

(assert (=> b!285505 (< (dynLambda!2059 order!3077 (toValue!1496 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9770))))

(assert (=> b!285505 (< (dynLambda!2061 order!3081 (toChars!1355 (transformation!749 (h!9311 rules!1920)))) (dynLambda!2060 order!3079 lambda!9770))))

(assert (=> d!84466 true))

(declare-fun e!177559 () Bool)

(assert (=> d!84466 e!177559))

(declare-fun res!130488 () Bool)

(assert (=> d!84466 (=> (not res!130488) (not e!177559))))

(declare-fun lt!120185 () Bool)

(assert (=> d!84466 (= res!130488 (= lt!120185 (forall!1004 (list!1629 lt!119759) lambda!9770)))))

(declare-fun forall!1006 (BalanceConc!2650 Int) Bool)

(assert (=> d!84466 (= lt!120185 (forall!1006 lt!119759 lambda!9770))))

(assert (=> d!84466 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84466 (= (rulesProduceEachTokenIndividually!427 thiss!17480 rules!1920 lt!119759) lt!120185)))

(declare-fun b!285488 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!243 (LexerInterface!635 List!3924 List!3925) Bool)

(assert (=> b!285488 (= e!177559 (= lt!120185 (rulesProduceEachTokenIndividuallyList!243 thiss!17480 rules!1920 (list!1629 lt!119759))))))

(assert (= (and d!84466 res!130488) b!285488))

(assert (=> d!84466 m!369247))

(assert (=> d!84466 m!369247))

(declare-fun m!369391 () Bool)

(assert (=> d!84466 m!369391))

(declare-fun m!369397 () Bool)

(assert (=> d!84466 m!369397))

(assert (=> d!84466 m!368001))

(assert (=> b!285488 m!369247))

(assert (=> b!285488 m!369247))

(declare-fun m!369399 () Bool)

(assert (=> b!285488 m!369399))

(assert (=> b!284688 d!84466))

(declare-fun d!84496 () Bool)

(assert (=> d!84496 (= (seqFromList!866 tokens!465) (fromListB!349 tokens!465))))

(declare-fun bs!32236 () Bool)

(assert (= bs!32236 d!84496))

(declare-fun m!369403 () Bool)

(assert (=> bs!32236 m!369403))

(assert (=> b!284688 d!84496))

(declare-fun d!84498 () Bool)

(declare-fun lt!120194 () Token!1242)

(assert (=> d!84498 (= lt!120194 (apply!831 (list!1629 (_1!2440 lt!119794)) 0))))

(declare-fun apply!832 (Conc!1321 Int) Token!1242)

(assert (=> d!84498 (= lt!120194 (apply!832 (c!53934 (_1!2440 lt!119794)) 0))))

(declare-fun e!177584 () Bool)

(assert (=> d!84498 e!177584))

(declare-fun res!130514 () Bool)

(assert (=> d!84498 (=> (not res!130514) (not e!177584))))

(assert (=> d!84498 (= res!130514 (<= 0 0))))

(assert (=> d!84498 (= (apply!826 (_1!2440 lt!119794) 0) lt!120194)))

(declare-fun b!285525 () Bool)

(assert (=> b!285525 (= e!177584 (< 0 (size!3133 (_1!2440 lt!119794))))))

(assert (= (and d!84498 res!130514) b!285525))

(declare-fun m!369417 () Bool)

(assert (=> d!84498 m!369417))

(assert (=> d!84498 m!369417))

(declare-fun m!369419 () Bool)

(assert (=> d!84498 m!369419))

(declare-fun m!369421 () Bool)

(assert (=> d!84498 m!369421))

(assert (=> b!285525 m!368149))

(assert (=> b!284686 d!84498))

(declare-fun b!285529 () Bool)

(declare-fun e!177593 () Bool)

(assert (=> b!285529 (= e!177593 (nullable!180 (regex!749 (rule!1346 (h!9312 tokens!465)))))))

(declare-fun b!285530 () Bool)

(declare-fun res!130523 () Bool)

(declare-fun e!177591 () Bool)

(assert (=> b!285530 (=> (not res!130523) (not e!177591))))

(assert (=> b!285530 (= res!130523 (isEmpty!2574 (tail!506 lt!119810)))))

(declare-fun b!285531 () Bool)

(assert (=> b!285531 (= e!177593 (matchR!295 (derivativeStep!146 (regex!749 (rule!1346 (h!9312 tokens!465))) (head!925 lt!119810)) (tail!506 lt!119810)))))

(declare-fun b!285532 () Bool)

(declare-fun e!177588 () Bool)

(declare-fun e!177590 () Bool)

(assert (=> b!285532 (= e!177588 e!177590)))

(declare-fun res!130518 () Bool)

(assert (=> b!285532 (=> (not res!130518) (not e!177590))))

(declare-fun lt!120197 () Bool)

(assert (=> b!285532 (= res!130518 (not lt!120197))))

(declare-fun b!285534 () Bool)

(declare-fun res!130520 () Bool)

(assert (=> b!285534 (=> res!130520 e!177588)))

(assert (=> b!285534 (= res!130520 e!177591)))

(declare-fun res!130524 () Bool)

(assert (=> b!285534 (=> (not res!130524) (not e!177591))))

(assert (=> b!285534 (= res!130524 lt!120197)))

(declare-fun b!285535 () Bool)

(declare-fun res!130519 () Bool)

(declare-fun e!177589 () Bool)

(assert (=> b!285535 (=> res!130519 e!177589)))

(assert (=> b!285535 (= res!130519 (not (isEmpty!2574 (tail!506 lt!119810))))))

(declare-fun bm!16075 () Bool)

(declare-fun call!16080 () Bool)

(assert (=> bm!16075 (= call!16080 (isEmpty!2574 lt!119810))))

(declare-fun b!285536 () Bool)

(declare-fun e!177587 () Bool)

(assert (=> b!285536 (= e!177587 (not lt!120197))))

(declare-fun b!285537 () Bool)

(declare-fun e!177592 () Bool)

(assert (=> b!285537 (= e!177592 e!177587)))

(declare-fun c!54123 () Bool)

(assert (=> b!285537 (= c!54123 ((_ is EmptyLang!973) (regex!749 (rule!1346 (h!9312 tokens!465)))))))

(declare-fun b!285533 () Bool)

(assert (=> b!285533 (= e!177589 (not (= (head!925 lt!119810) (c!53933 (regex!749 (rule!1346 (h!9312 tokens!465)))))))))

(declare-fun d!84504 () Bool)

(assert (=> d!84504 e!177592))

(declare-fun c!54122 () Bool)

(assert (=> d!84504 (= c!54122 ((_ is EmptyExpr!973) (regex!749 (rule!1346 (h!9312 tokens!465)))))))

(assert (=> d!84504 (= lt!120197 e!177593)))

(declare-fun c!54124 () Bool)

(assert (=> d!84504 (= c!54124 (isEmpty!2574 lt!119810))))

(assert (=> d!84504 (validRegex!255 (regex!749 (rule!1346 (h!9312 tokens!465))))))

(assert (=> d!84504 (= (matchR!295 (regex!749 (rule!1346 (h!9312 tokens!465))) lt!119810) lt!120197)))

(declare-fun b!285538 () Bool)

(assert (=> b!285538 (= e!177590 e!177589)))

(declare-fun res!130522 () Bool)

(assert (=> b!285538 (=> res!130522 e!177589)))

(assert (=> b!285538 (= res!130522 call!16080)))

(declare-fun b!285539 () Bool)

(assert (=> b!285539 (= e!177591 (= (head!925 lt!119810) (c!53933 (regex!749 (rule!1346 (h!9312 tokens!465))))))))

(declare-fun b!285540 () Bool)

(declare-fun res!130525 () Bool)

(assert (=> b!285540 (=> (not res!130525) (not e!177591))))

(assert (=> b!285540 (= res!130525 (not call!16080))))

(declare-fun b!285541 () Bool)

(assert (=> b!285541 (= e!177592 (= lt!120197 call!16080))))

(declare-fun b!285542 () Bool)

(declare-fun res!130521 () Bool)

(assert (=> b!285542 (=> res!130521 e!177588)))

(assert (=> b!285542 (= res!130521 (not ((_ is ElementMatch!973) (regex!749 (rule!1346 (h!9312 tokens!465))))))))

(assert (=> b!285542 (= e!177587 e!177588)))

(assert (= (and d!84504 c!54124) b!285529))

(assert (= (and d!84504 (not c!54124)) b!285531))

(assert (= (and d!84504 c!54122) b!285541))

(assert (= (and d!84504 (not c!54122)) b!285537))

(assert (= (and b!285537 c!54123) b!285536))

(assert (= (and b!285537 (not c!54123)) b!285542))

(assert (= (and b!285542 (not res!130521)) b!285534))

(assert (= (and b!285534 res!130524) b!285540))

(assert (= (and b!285540 res!130525) b!285530))

(assert (= (and b!285530 res!130523) b!285539))

(assert (= (and b!285534 (not res!130520)) b!285532))

(assert (= (and b!285532 res!130518) b!285538))

(assert (= (and b!285538 (not res!130522)) b!285535))

(assert (= (and b!285535 (not res!130519)) b!285533))

(assert (= (or b!285541 b!285538 b!285540) bm!16075))

(declare-fun m!369439 () Bool)

(assert (=> d!84504 m!369439))

(declare-fun m!369441 () Bool)

(assert (=> d!84504 m!369441))

(declare-fun m!369443 () Bool)

(assert (=> b!285531 m!369443))

(assert (=> b!285531 m!369443))

(declare-fun m!369445 () Bool)

(assert (=> b!285531 m!369445))

(declare-fun m!369447 () Bool)

(assert (=> b!285531 m!369447))

(assert (=> b!285531 m!369445))

(assert (=> b!285531 m!369447))

(declare-fun m!369449 () Bool)

(assert (=> b!285531 m!369449))

(assert (=> b!285530 m!369447))

(assert (=> b!285530 m!369447))

(declare-fun m!369451 () Bool)

(assert (=> b!285530 m!369451))

(declare-fun m!369453 () Bool)

(assert (=> b!285529 m!369453))

(assert (=> bm!16075 m!369439))

(assert (=> b!285535 m!369447))

(assert (=> b!285535 m!369447))

(assert (=> b!285535 m!369451))

(assert (=> b!285533 m!369443))

(assert (=> b!285539 m!369443))

(assert (=> b!284706 d!84504))

(declare-fun d!84508 () Bool)

(declare-fun isEmpty!2586 (Option!862) Bool)

(assert (=> d!84508 (= (isDefined!704 (maxPrefixZipperSequence!316 thiss!17480 rules!1920 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465))))) (not (isEmpty!2586 (maxPrefixZipperSequence!316 thiss!17480 rules!1920 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))))

(declare-fun bs!32237 () Bool)

(assert (= bs!32237 d!84508))

(assert (=> bs!32237 m!368101))

(declare-fun m!369455 () Bool)

(assert (=> bs!32237 m!369455))

(assert (=> b!284685 d!84508))

(declare-fun e!177607 () Bool)

(declare-fun b!285559 () Bool)

(declare-fun lt!120219 () Option!862)

(declare-fun get!1324 (Option!862) tuple2!4450)

(assert (=> b!285559 (= e!177607 (= (list!1628 (_2!2441 (get!1324 lt!120219))) (_2!2443 (get!1322 (maxPrefix!353 thiss!17480 rules!1920 (list!1628 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))))))

(declare-fun b!285560 () Bool)

(declare-fun e!177610 () Bool)

(declare-fun maxPrefixZipper!127 (LexerInterface!635 List!3924 List!3923) Option!863)

(assert (=> b!285560 (= e!177610 (= (list!1628 (_2!2441 (get!1324 lt!120219))) (_2!2443 (get!1322 (maxPrefixZipper!127 thiss!17480 rules!1920 (list!1628 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))))))

(declare-fun b!285561 () Bool)

(declare-fun e!177608 () Option!862)

(declare-fun call!16083 () Option!862)

(assert (=> b!285561 (= e!177608 call!16083)))

(declare-fun b!285562 () Bool)

(declare-fun lt!120221 () Option!862)

(declare-fun lt!120216 () Option!862)

(assert (=> b!285562 (= e!177608 (ite (and ((_ is None!861) lt!120221) ((_ is None!861) lt!120216)) None!861 (ite ((_ is None!861) lt!120216) lt!120221 (ite ((_ is None!861) lt!120221) lt!120216 (ite (>= (size!3132 (_1!2441 (v!14788 lt!120221))) (size!3132 (_1!2441 (v!14788 lt!120216)))) lt!120221 lt!120216)))))))

(assert (=> b!285562 (= lt!120221 call!16083)))

(assert (=> b!285562 (= lt!120216 (maxPrefixZipperSequence!316 thiss!17480 (t!39948 rules!1920) (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))

(declare-fun b!285563 () Bool)

(declare-fun e!177611 () Bool)

(declare-fun e!177609 () Bool)

(assert (=> b!285563 (= e!177611 e!177609)))

(declare-fun res!130542 () Bool)

(assert (=> b!285563 (=> res!130542 e!177609)))

(assert (=> b!285563 (= res!130542 (not (isDefined!704 lt!120219)))))

(declare-fun b!285564 () Bool)

(assert (=> b!285564 (= e!177609 e!177607)))

(declare-fun res!130540 () Bool)

(assert (=> b!285564 (=> (not res!130540) (not e!177607))))

(assert (=> b!285564 (= res!130540 (= (_1!2441 (get!1324 lt!120219)) (_1!2443 (get!1322 (maxPrefix!353 thiss!17480 rules!1920 (list!1628 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))))))

(declare-fun b!285565 () Bool)

(declare-fun e!177606 () Bool)

(assert (=> b!285565 (= e!177606 e!177610)))

(declare-fun res!130538 () Bool)

(assert (=> b!285565 (=> (not res!130538) (not e!177610))))

(assert (=> b!285565 (= res!130538 (= (_1!2441 (get!1324 lt!120219)) (_1!2443 (get!1322 (maxPrefixZipper!127 thiss!17480 rules!1920 (list!1628 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))))))

(declare-fun b!285566 () Bool)

(declare-fun res!130539 () Bool)

(assert (=> b!285566 (=> (not res!130539) (not e!177611))))

(assert (=> b!285566 (= res!130539 e!177606)))

(declare-fun res!130541 () Bool)

(assert (=> b!285566 (=> res!130541 e!177606)))

(assert (=> b!285566 (= res!130541 (not (isDefined!704 lt!120219)))))

(declare-fun bm!16078 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!128 (LexerInterface!635 Rule!1298 BalanceConc!2648) Option!862)

(assert (=> bm!16078 (= call!16083 (maxPrefixOneRuleZipperSequence!128 thiss!17480 (h!9311 rules!1920) (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))

(declare-fun d!84512 () Bool)

(assert (=> d!84512 e!177611))

(declare-fun res!130543 () Bool)

(assert (=> d!84512 (=> (not res!130543) (not e!177611))))

(assert (=> d!84512 (= res!130543 (= (isDefined!704 lt!120219) (isDefined!705 (maxPrefixZipper!127 thiss!17480 rules!1920 (list!1628 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465))))))))))

(assert (=> d!84512 (= lt!120219 e!177608)))

(declare-fun c!54127 () Bool)

(assert (=> d!84512 (= c!54127 (and ((_ is Cons!3914) rules!1920) ((_ is Nil!3914) (t!39948 rules!1920))))))

(declare-fun lt!120220 () Unit!5248)

(declare-fun lt!120217 () Unit!5248)

(assert (=> d!84512 (= lt!120220 lt!120217)))

(declare-fun lt!120215 () List!3923)

(declare-fun lt!120218 () List!3923)

(assert (=> d!84512 (isPrefix!417 lt!120215 lt!120218)))

(assert (=> d!84512 (= lt!120217 (lemmaIsPrefixRefl!223 lt!120215 lt!120218))))

(assert (=> d!84512 (= lt!120218 (list!1628 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))

(assert (=> d!84512 (= lt!120215 (list!1628 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))))))

(assert (=> d!84512 (rulesValidInductive!218 thiss!17480 rules!1920)))

(assert (=> d!84512 (= (maxPrefixZipperSequence!316 thiss!17480 rules!1920 (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465)))) lt!120219)))

(assert (= (and d!84512 c!54127) b!285561))

(assert (= (and d!84512 (not c!54127)) b!285562))

(assert (= (or b!285561 b!285562) bm!16078))

(assert (= (and d!84512 res!130543) b!285566))

(assert (= (and b!285566 (not res!130541)) b!285565))

(assert (= (and b!285565 res!130538) b!285560))

(assert (= (and b!285566 res!130539) b!285563))

(assert (= (and b!285563 (not res!130542)) b!285564))

(assert (= (and b!285564 res!130540) b!285559))

(declare-fun m!369465 () Bool)

(assert (=> b!285559 m!369465))

(declare-fun m!369467 () Bool)

(assert (=> b!285559 m!369467))

(declare-fun m!369469 () Bool)

(assert (=> b!285559 m!369469))

(assert (=> b!285559 m!368099))

(assert (=> b!285559 m!369465))

(assert (=> b!285559 m!369467))

(declare-fun m!369471 () Bool)

(assert (=> b!285559 m!369471))

(declare-fun m!369473 () Bool)

(assert (=> b!285559 m!369473))

(assert (=> b!285564 m!369469))

(assert (=> b!285564 m!368099))

(assert (=> b!285564 m!369465))

(assert (=> b!285564 m!369465))

(assert (=> b!285564 m!369467))

(assert (=> b!285564 m!369467))

(assert (=> b!285564 m!369471))

(assert (=> bm!16078 m!368099))

(declare-fun m!369475 () Bool)

(assert (=> bm!16078 m!369475))

(assert (=> b!285565 m!369469))

(assert (=> b!285565 m!368099))

(assert (=> b!285565 m!369465))

(assert (=> b!285565 m!369465))

(declare-fun m!369477 () Bool)

(assert (=> b!285565 m!369477))

(assert (=> b!285565 m!369477))

(declare-fun m!369479 () Bool)

(assert (=> b!285565 m!369479))

(declare-fun m!369481 () Bool)

(assert (=> d!84512 m!369481))

(assert (=> d!84512 m!369465))

(assert (=> d!84512 m!369477))

(assert (=> d!84512 m!368099))

(assert (=> d!84512 m!369465))

(assert (=> d!84512 m!368321))

(declare-fun m!369483 () Bool)

(assert (=> d!84512 m!369483))

(declare-fun m!369485 () Bool)

(assert (=> d!84512 m!369485))

(assert (=> d!84512 m!369477))

(declare-fun m!369487 () Bool)

(assert (=> d!84512 m!369487))

(assert (=> b!285562 m!368099))

(declare-fun m!369489 () Bool)

(assert (=> b!285562 m!369489))

(assert (=> b!285560 m!369477))

(assert (=> b!285560 m!369479))

(assert (=> b!285560 m!369465))

(assert (=> b!285560 m!369477))

(assert (=> b!285560 m!369469))

(assert (=> b!285560 m!368099))

(assert (=> b!285560 m!369465))

(assert (=> b!285560 m!369473))

(assert (=> b!285563 m!369485))

(assert (=> b!285566 m!369485))

(assert (=> b!284685 d!84512))

(declare-fun d!84520 () Bool)

(assert (=> d!84520 (= (seqFromList!865 (originalCharacters!792 (h!9312 tokens!465))) (fromListB!348 (originalCharacters!792 (h!9312 tokens!465))))))

(declare-fun bs!32241 () Bool)

(assert (= bs!32241 d!84520))

(declare-fun m!369491 () Bool)

(assert (=> bs!32241 m!369491))

(assert (=> b!284685 d!84520))

(declare-fun d!84522 () Bool)

(assert (=> d!84522 (dynLambda!2065 lambda!9736 (h!9312 tokens!465))))

(declare-fun lt!120224 () Unit!5248)

(declare-fun choose!2574 (List!3925 Int Token!1242) Unit!5248)

(assert (=> d!84522 (= lt!120224 (choose!2574 tokens!465 lambda!9736 (h!9312 tokens!465)))))

(declare-fun e!177614 () Bool)

(assert (=> d!84522 e!177614))

(declare-fun res!130546 () Bool)

(assert (=> d!84522 (=> (not res!130546) (not e!177614))))

(assert (=> d!84522 (= res!130546 (forall!1004 tokens!465 lambda!9736))))

(assert (=> d!84522 (= (forallContained!304 tokens!465 lambda!9736 (h!9312 tokens!465)) lt!120224)))

(declare-fun b!285569 () Bool)

(declare-fun contains!767 (List!3925 Token!1242) Bool)

(assert (=> b!285569 (= e!177614 (contains!767 tokens!465 (h!9312 tokens!465)))))

(assert (= (and d!84522 res!130546) b!285569))

(declare-fun b_lambda!9385 () Bool)

(assert (=> (not b_lambda!9385) (not d!84522)))

(declare-fun m!369493 () Bool)

(assert (=> d!84522 m!369493))

(declare-fun m!369495 () Bool)

(assert (=> d!84522 m!369495))

(declare-fun m!369497 () Bool)

(assert (=> d!84522 m!369497))

(declare-fun m!369499 () Bool)

(assert (=> b!285569 m!369499))

(assert (=> b!284685 d!84522))

(declare-fun d!84524 () Bool)

(assert (=> d!84524 (= (inv!4838 (tag!963 (rule!1346 (h!9312 tokens!465)))) (= (mod (str.len (value!25661 (tag!963 (rule!1346 (h!9312 tokens!465))))) 2) 0))))

(assert (=> b!284705 d!84524))

(declare-fun d!84526 () Bool)

(declare-fun res!130547 () Bool)

(declare-fun e!177615 () Bool)

(assert (=> d!84526 (=> (not res!130547) (not e!177615))))

(assert (=> d!84526 (= res!130547 (semiInverseModEq!272 (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (toValue!1496 (transformation!749 (rule!1346 (h!9312 tokens!465))))))))

(assert (=> d!84526 (= (inv!4842 (transformation!749 (rule!1346 (h!9312 tokens!465)))) e!177615)))

(declare-fun b!285570 () Bool)

(assert (=> b!285570 (= e!177615 (equivClasses!255 (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (toValue!1496 (transformation!749 (rule!1346 (h!9312 tokens!465))))))))

(assert (= (and d!84526 res!130547) b!285570))

(declare-fun m!369501 () Bool)

(assert (=> d!84526 m!369501))

(declare-fun m!369503 () Bool)

(assert (=> b!285570 m!369503))

(assert (=> b!284705 d!84526))

(declare-fun d!84528 () Bool)

(declare-fun lt!120225 () Token!1242)

(assert (=> d!84528 (= lt!120225 (apply!831 (list!1629 (_1!2440 lt!119797)) 0))))

(assert (=> d!84528 (= lt!120225 (apply!832 (c!53934 (_1!2440 lt!119797)) 0))))

(declare-fun e!177616 () Bool)

(assert (=> d!84528 e!177616))

(declare-fun res!130548 () Bool)

(assert (=> d!84528 (=> (not res!130548) (not e!177616))))

(assert (=> d!84528 (= res!130548 (<= 0 0))))

(assert (=> d!84528 (= (apply!826 (_1!2440 lt!119797) 0) lt!120225)))

(declare-fun b!285571 () Bool)

(assert (=> b!285571 (= e!177616 (< 0 (size!3133 (_1!2440 lt!119797))))))

(assert (= (and d!84528 res!130548) b!285571))

(declare-fun m!369505 () Bool)

(assert (=> d!84528 m!369505))

(assert (=> d!84528 m!369505))

(declare-fun m!369507 () Bool)

(assert (=> d!84528 m!369507))

(declare-fun m!369509 () Bool)

(assert (=> d!84528 m!369509))

(assert (=> b!285571 m!368135))

(assert (=> b!284684 d!84528))

(declare-fun d!84530 () Bool)

(declare-fun lt!120226 () Bool)

(assert (=> d!84530 (= lt!120226 (isEmpty!2574 (list!1628 (_2!2440 lt!119794))))))

(assert (=> d!84530 (= lt!120226 (isEmpty!2584 (c!53932 (_2!2440 lt!119794))))))

(assert (=> d!84530 (= (isEmpty!2576 (_2!2440 lt!119794)) lt!120226)))

(declare-fun bs!32242 () Bool)

(assert (= bs!32242 d!84530))

(declare-fun m!369511 () Bool)

(assert (=> bs!32242 m!369511))

(assert (=> bs!32242 m!369511))

(declare-fun m!369513 () Bool)

(assert (=> bs!32242 m!369513))

(declare-fun m!369515 () Bool)

(assert (=> bs!32242 m!369515))

(assert (=> b!284727 d!84530))

(declare-fun d!84532 () Bool)

(declare-fun res!130551 () Bool)

(declare-fun e!177619 () Bool)

(assert (=> d!84532 (=> (not res!130551) (not e!177619))))

(declare-fun rulesValid!238 (LexerInterface!635 List!3924) Bool)

(assert (=> d!84532 (= res!130551 (rulesValid!238 thiss!17480 rules!1920))))

(assert (=> d!84532 (= (rulesInvariant!601 thiss!17480 rules!1920) e!177619)))

(declare-fun b!285574 () Bool)

(declare-datatypes ((List!3927 0))(
  ( (Nil!3917) (Cons!3917 (h!9314 String!4935) (t!40037 List!3927)) )
))
(declare-fun noDuplicateTag!238 (LexerInterface!635 List!3924 List!3927) Bool)

(assert (=> b!285574 (= e!177619 (noDuplicateTag!238 thiss!17480 rules!1920 Nil!3917))))

(assert (= (and d!84532 res!130551) b!285574))

(declare-fun m!369517 () Bool)

(assert (=> d!84532 m!369517))

(declare-fun m!369519 () Bool)

(assert (=> b!285574 m!369519))

(assert (=> b!284682 d!84532))

(declare-fun b!285575 () Bool)

(declare-fun e!177622 () List!3925)

(declare-fun call!16084 () List!3925)

(assert (=> b!285575 (= e!177622 call!16084)))

(declare-fun b!285576 () Bool)

(declare-fun e!177620 () List!3925)

(assert (=> b!285576 (= e!177620 e!177622)))

(declare-fun c!54129 () Bool)

(assert (=> b!285576 (= c!54129 (dynLambda!2065 lambda!9735 (h!9312 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))))))))

(declare-fun b!285577 () Bool)

(assert (=> b!285577 (= e!177622 (Cons!3915 (h!9312 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778)))) call!16084))))

(declare-fun b!285578 () Bool)

(declare-fun e!177621 () Bool)

(declare-fun lt!120227 () List!3925)

(assert (=> b!285578 (= e!177621 (forall!1004 lt!120227 lambda!9735))))

(declare-fun b!285579 () Bool)

(declare-fun res!130553 () Bool)

(assert (=> b!285579 (=> (not res!130553) (not e!177621))))

(assert (=> b!285579 (= res!130553 (= ((_ map implies) (content!574 lt!120227) (content!574 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))))) ((as const (InoxSet Token!1242)) true)))))

(declare-fun d!84534 () Bool)

(assert (=> d!84534 e!177621))

(declare-fun res!130552 () Bool)

(assert (=> d!84534 (=> (not res!130552) (not e!177621))))

(assert (=> d!84534 (= res!130552 (<= (size!3138 lt!120227) (size!3138 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))))))))

(assert (=> d!84534 (= lt!120227 e!177620)))

(declare-fun c!54128 () Bool)

(assert (=> d!84534 (= c!54128 ((_ is Nil!3915) (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778)))))))

(assert (=> d!84534 (= (filter!91 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))) lambda!9735) lt!120227)))

(declare-fun bm!16079 () Bool)

(assert (=> bm!16079 (= call!16084 (filter!91 (t!39949 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778)))) lambda!9735))))

(declare-fun b!285580 () Bool)

(assert (=> b!285580 (= e!177620 Nil!3915)))

(assert (= (and d!84534 c!54128) b!285580))

(assert (= (and d!84534 (not c!54128)) b!285576))

(assert (= (and b!285576 c!54129) b!285577))

(assert (= (and b!285576 (not c!54129)) b!285575))

(assert (= (or b!285577 b!285575) bm!16079))

(assert (= (and d!84534 res!130552) b!285579))

(assert (= (and b!285579 res!130553) b!285578))

(declare-fun b_lambda!9387 () Bool)

(assert (=> (not b_lambda!9387) (not b!285576)))

(declare-fun m!369521 () Bool)

(assert (=> d!84534 m!369521))

(assert (=> d!84534 m!368027))

(declare-fun m!369523 () Bool)

(assert (=> d!84534 m!369523))

(declare-fun m!369525 () Bool)

(assert (=> b!285579 m!369525))

(assert (=> b!285579 m!368027))

(declare-fun m!369527 () Bool)

(assert (=> b!285579 m!369527))

(declare-fun m!369529 () Bool)

(assert (=> b!285578 m!369529))

(declare-fun m!369531 () Bool)

(assert (=> b!285576 m!369531))

(declare-fun m!369533 () Bool)

(assert (=> bm!16079 m!369533))

(assert (=> b!284725 d!84534))

(declare-fun d!84536 () Bool)

(declare-fun list!1633 (Conc!1321) List!3925)

(assert (=> d!84536 (= (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))) (list!1633 (c!53934 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778)))))))

(declare-fun bs!32243 () Bool)

(assert (= bs!32243 d!84536))

(declare-fun m!369535 () Bool)

(assert (=> bs!32243 m!369535))

(assert (=> b!284725 d!84536))

(declare-fun b!285581 () Bool)

(declare-fun res!130556 () Bool)

(declare-fun e!177624 () Bool)

(assert (=> b!285581 (=> (not res!130556) (not e!177624))))

(declare-fun lt!120228 () tuple2!4448)

(assert (=> b!285581 (= res!130556 (= (list!1629 (_1!2440 lt!120228)) (_1!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119778)))))))

(declare-fun d!84538 () Bool)

(assert (=> d!84538 e!177624))

(declare-fun res!130555 () Bool)

(assert (=> d!84538 (=> (not res!130555) (not e!177624))))

(declare-fun e!177625 () Bool)

(assert (=> d!84538 (= res!130555 e!177625)))

(declare-fun c!54130 () Bool)

(assert (=> d!84538 (= c!54130 (> (size!3133 (_1!2440 lt!120228)) 0))))

(assert (=> d!84538 (= lt!120228 (lexTailRecV2!190 thiss!17480 rules!1920 lt!119778 (BalanceConc!2649 Empty!1320) lt!119778 (BalanceConc!2651 Empty!1321)))))

(assert (=> d!84538 (= (lex!427 thiss!17480 rules!1920 lt!119778) lt!120228)))

(declare-fun b!285582 () Bool)

(assert (=> b!285582 (= e!177624 (= (list!1628 (_2!2440 lt!120228)) (_2!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119778)))))))

(declare-fun b!285583 () Bool)

(declare-fun e!177623 () Bool)

(assert (=> b!285583 (= e!177625 e!177623)))

(declare-fun res!130554 () Bool)

(assert (=> b!285583 (= res!130554 (< (size!3139 (_2!2440 lt!120228)) (size!3139 lt!119778)))))

(assert (=> b!285583 (=> (not res!130554) (not e!177623))))

(declare-fun b!285584 () Bool)

(assert (=> b!285584 (= e!177623 (not (isEmpty!2577 (_1!2440 lt!120228))))))

(declare-fun b!285585 () Bool)

(assert (=> b!285585 (= e!177625 (= (_2!2440 lt!120228) lt!119778))))

(assert (= (and d!84538 c!54130) b!285583))

(assert (= (and d!84538 (not c!54130)) b!285585))

(assert (= (and b!285583 res!130554) b!285584))

(assert (= (and d!84538 res!130555) b!285581))

(assert (= (and b!285581 res!130556) b!285582))

(declare-fun m!369537 () Bool)

(assert (=> d!84538 m!369537))

(declare-fun m!369539 () Bool)

(assert (=> d!84538 m!369539))

(declare-fun m!369541 () Bool)

(assert (=> b!285583 m!369541))

(declare-fun m!369543 () Bool)

(assert (=> b!285583 m!369543))

(declare-fun m!369545 () Bool)

(assert (=> b!285584 m!369545))

(declare-fun m!369547 () Bool)

(assert (=> b!285582 m!369547))

(assert (=> b!285582 m!368111))

(assert (=> b!285582 m!368111))

(declare-fun m!369549 () Bool)

(assert (=> b!285582 m!369549))

(declare-fun m!369551 () Bool)

(assert (=> b!285581 m!369551))

(assert (=> b!285581 m!368111))

(assert (=> b!285581 m!368111))

(assert (=> b!285581 m!369549))

(assert (=> b!284725 d!84538))

(declare-fun d!84540 () Bool)

(declare-fun lt!120230 () Bool)

(declare-fun e!177627 () Bool)

(assert (=> d!84540 (= lt!120230 e!177627)))

(declare-fun res!130558 () Bool)

(assert (=> d!84540 (=> (not res!130558) (not e!177627))))

(assert (=> d!84540 (= res!130558 (= (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 separatorToken!170))))) (list!1629 (singletonSeq!295 separatorToken!170))))))

(declare-fun e!177626 () Bool)

(assert (=> d!84540 (= lt!120230 e!177626)))

(declare-fun res!130559 () Bool)

(assert (=> d!84540 (=> (not res!130559) (not e!177626))))

(declare-fun lt!120229 () tuple2!4448)

(assert (=> d!84540 (= res!130559 (= (size!3133 (_1!2440 lt!120229)) 1))))

(assert (=> d!84540 (= lt!120229 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 separatorToken!170))))))

(assert (=> d!84540 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84540 (= (rulesProduceIndividualToken!384 thiss!17480 rules!1920 separatorToken!170) lt!120230)))

(declare-fun b!285586 () Bool)

(declare-fun res!130557 () Bool)

(assert (=> b!285586 (=> (not res!130557) (not e!177626))))

(assert (=> b!285586 (= res!130557 (= (apply!826 (_1!2440 lt!120229) 0) separatorToken!170))))

(declare-fun b!285587 () Bool)

(assert (=> b!285587 (= e!177626 (isEmpty!2576 (_2!2440 lt!120229)))))

(declare-fun b!285588 () Bool)

(assert (=> b!285588 (= e!177627 (isEmpty!2576 (_2!2440 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 separatorToken!170))))))))

(assert (= (and d!84540 res!130559) b!285586))

(assert (= (and b!285586 res!130557) b!285587))

(assert (= (and d!84540 res!130558) b!285588))

(declare-fun m!369553 () Bool)

(assert (=> d!84540 m!369553))

(declare-fun m!369555 () Bool)

(assert (=> d!84540 m!369555))

(assert (=> d!84540 m!368001))

(declare-fun m!369557 () Bool)

(assert (=> d!84540 m!369557))

(declare-fun m!369559 () Bool)

(assert (=> d!84540 m!369559))

(assert (=> d!84540 m!368175))

(assert (=> d!84540 m!369553))

(assert (=> d!84540 m!368175))

(assert (=> d!84540 m!368175))

(declare-fun m!369561 () Bool)

(assert (=> d!84540 m!369561))

(declare-fun m!369563 () Bool)

(assert (=> b!285586 m!369563))

(declare-fun m!369565 () Bool)

(assert (=> b!285587 m!369565))

(assert (=> b!285588 m!368175))

(assert (=> b!285588 m!368175))

(assert (=> b!285588 m!369553))

(assert (=> b!285588 m!369553))

(assert (=> b!285588 m!369555))

(declare-fun m!369567 () Bool)

(assert (=> b!285588 m!369567))

(assert (=> b!284704 d!84540))

(declare-fun d!84542 () Bool)

(assert (=> d!84542 (not (contains!763 (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170))) lt!119786))))

(declare-fun lt!120233 () Unit!5248)

(declare-fun choose!2576 (LexerInterface!635 List!3924 List!3924 Rule!1298 Rule!1298 C!2868) Unit!5248)

(assert (=> d!84542 (= lt!120233 (choose!2576 thiss!17480 rules!1920 rules!1920 (rule!1346 lt!119807) (rule!1346 separatorToken!170) lt!119786))))

(assert (=> d!84542 (rulesInvariant!601 thiss!17480 rules!1920)))

(assert (=> d!84542 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!72 thiss!17480 rules!1920 rules!1920 (rule!1346 lt!119807) (rule!1346 separatorToken!170) lt!119786) lt!120233)))

(declare-fun bs!32244 () Bool)

(assert (= bs!32244 d!84542))

(assert (=> bs!32244 m!368181))

(assert (=> bs!32244 m!368181))

(assert (=> bs!32244 m!368183))

(declare-fun m!369569 () Bool)

(assert (=> bs!32244 m!369569))

(assert (=> bs!32244 m!368031))

(assert (=> b!284683 d!84542))

(declare-fun b!285589 () Bool)

(declare-fun e!177629 () Bool)

(assert (=> b!285589 (= e!177629 (inv!17 (value!25662 separatorToken!170)))))

(declare-fun b!285590 () Bool)

(declare-fun e!177630 () Bool)

(assert (=> b!285590 (= e!177630 e!177629)))

(declare-fun c!54133 () Bool)

(assert (=> b!285590 (= c!54133 ((_ is IntegerValue!2314) (value!25662 separatorToken!170)))))

(declare-fun b!285591 () Bool)

(assert (=> b!285591 (= e!177630 (inv!16 (value!25662 separatorToken!170)))))

(declare-fun b!285593 () Bool)

(declare-fun res!130560 () Bool)

(declare-fun e!177628 () Bool)

(assert (=> b!285593 (=> res!130560 e!177628)))

(assert (=> b!285593 (= res!130560 (not ((_ is IntegerValue!2315) (value!25662 separatorToken!170))))))

(assert (=> b!285593 (= e!177629 e!177628)))

(declare-fun b!285592 () Bool)

(assert (=> b!285592 (= e!177628 (inv!15 (value!25662 separatorToken!170)))))

(declare-fun d!84544 () Bool)

(declare-fun c!54132 () Bool)

(assert (=> d!84544 (= c!54132 ((_ is IntegerValue!2313) (value!25662 separatorToken!170)))))

(assert (=> d!84544 (= (inv!21 (value!25662 separatorToken!170)) e!177630)))

(assert (= (and d!84544 c!54132) b!285591))

(assert (= (and d!84544 (not c!54132)) b!285590))

(assert (= (and b!285590 c!54133) b!285589))

(assert (= (and b!285590 (not c!54133)) b!285593))

(assert (= (and b!285593 (not res!130560)) b!285592))

(declare-fun m!369571 () Bool)

(assert (=> b!285589 m!369571))

(declare-fun m!369573 () Bool)

(assert (=> b!285591 m!369573))

(declare-fun m!369575 () Bool)

(assert (=> b!285592 m!369575))

(assert (=> b!284681 d!84544))

(declare-fun d!84546 () Bool)

(assert (=> d!84546 (= (isEmpty!2578 rules!1920) ((_ is Nil!3914) rules!1920))))

(assert (=> b!284724 d!84546))

(declare-fun d!84548 () Bool)

(declare-fun lt!120238 () BalanceConc!2648)

(assert (=> d!84548 (= (list!1628 lt!120238) (printList!311 thiss!17480 (list!1629 lt!119795)))))

(assert (=> d!84548 (= lt!120238 (printTailRec!323 thiss!17480 lt!119795 0 (BalanceConc!2649 Empty!1320)))))

(assert (=> d!84548 (= (print!360 thiss!17480 lt!119795) lt!120238)))

(declare-fun bs!32245 () Bool)

(assert (= bs!32245 d!84548))

(declare-fun m!369577 () Bool)

(assert (=> bs!32245 m!369577))

(declare-fun m!369579 () Bool)

(assert (=> bs!32245 m!369579))

(assert (=> bs!32245 m!369579))

(declare-fun m!369581 () Bool)

(assert (=> bs!32245 m!369581))

(assert (=> bs!32245 m!368011))

(assert (=> b!284703 d!84548))

(declare-fun d!84550 () Bool)

(declare-fun lt!120260 () BalanceConc!2648)

(declare-fun printListTailRec!144 (LexerInterface!635 List!3925 List!3923) List!3923)

(assert (=> d!84550 (= (list!1628 lt!120260) (printListTailRec!144 thiss!17480 (dropList!178 lt!119795 0) (list!1628 (BalanceConc!2649 Empty!1320))))))

(declare-fun e!177640 () BalanceConc!2648)

(assert (=> d!84550 (= lt!120260 e!177640)))

(declare-fun c!54137 () Bool)

(assert (=> d!84550 (= c!54137 (>= 0 (size!3133 lt!119795)))))

(declare-fun e!177639 () Bool)

(assert (=> d!84550 e!177639))

(declare-fun res!130567 () Bool)

(assert (=> d!84550 (=> (not res!130567) (not e!177639))))

(assert (=> d!84550 (= res!130567 (>= 0 0))))

(assert (=> d!84550 (= (printTailRec!323 thiss!17480 lt!119795 0 (BalanceConc!2649 Empty!1320)) lt!120260)))

(declare-fun b!285606 () Bool)

(assert (=> b!285606 (= e!177639 (<= 0 (size!3133 lt!119795)))))

(declare-fun b!285607 () Bool)

(assert (=> b!285607 (= e!177640 (BalanceConc!2649 Empty!1320))))

(declare-fun b!285608 () Bool)

(assert (=> b!285608 (= e!177640 (printTailRec!323 thiss!17480 lt!119795 (+ 0 1) (++!1044 (BalanceConc!2649 Empty!1320) (charsOf!394 (apply!826 lt!119795 0)))))))

(declare-fun lt!120262 () List!3925)

(assert (=> b!285608 (= lt!120262 (list!1629 lt!119795))))

(declare-fun lt!120259 () Unit!5248)

(assert (=> b!285608 (= lt!120259 (lemmaDropApply!218 lt!120262 0))))

(assert (=> b!285608 (= (head!926 (drop!231 lt!120262 0)) (apply!831 lt!120262 0))))

(declare-fun lt!120258 () Unit!5248)

(assert (=> b!285608 (= lt!120258 lt!120259)))

(declare-fun lt!120261 () List!3925)

(assert (=> b!285608 (= lt!120261 (list!1629 lt!119795))))

(declare-fun lt!120256 () Unit!5248)

(assert (=> b!285608 (= lt!120256 (lemmaDropTail!210 lt!120261 0))))

(assert (=> b!285608 (= (tail!508 (drop!231 lt!120261 0)) (drop!231 lt!120261 (+ 0 1)))))

(declare-fun lt!120257 () Unit!5248)

(assert (=> b!285608 (= lt!120257 lt!120256)))

(assert (= (and d!84550 res!130567) b!285606))

(assert (= (and d!84550 c!54137) b!285607))

(assert (= (and d!84550 (not c!54137)) b!285608))

(declare-fun m!369615 () Bool)

(assert (=> d!84550 m!369615))

(declare-fun m!369617 () Bool)

(assert (=> d!84550 m!369617))

(declare-fun m!369619 () Bool)

(assert (=> d!84550 m!369619))

(declare-fun m!369621 () Bool)

(assert (=> d!84550 m!369621))

(declare-fun m!369623 () Bool)

(assert (=> d!84550 m!369623))

(assert (=> d!84550 m!369619))

(assert (=> d!84550 m!369617))

(assert (=> b!285606 m!369615))

(declare-fun m!369625 () Bool)

(assert (=> b!285608 m!369625))

(declare-fun m!369627 () Bool)

(assert (=> b!285608 m!369627))

(declare-fun m!369629 () Bool)

(assert (=> b!285608 m!369629))

(declare-fun m!369631 () Bool)

(assert (=> b!285608 m!369631))

(declare-fun m!369633 () Bool)

(assert (=> b!285608 m!369633))

(declare-fun m!369635 () Bool)

(assert (=> b!285608 m!369635))

(declare-fun m!369637 () Bool)

(assert (=> b!285608 m!369637))

(assert (=> b!285608 m!369631))

(declare-fun m!369639 () Bool)

(assert (=> b!285608 m!369639))

(declare-fun m!369641 () Bool)

(assert (=> b!285608 m!369641))

(declare-fun m!369643 () Bool)

(assert (=> b!285608 m!369643))

(declare-fun m!369645 () Bool)

(assert (=> b!285608 m!369645))

(declare-fun m!369647 () Bool)

(assert (=> b!285608 m!369647))

(assert (=> b!285608 m!369645))

(assert (=> b!285608 m!369635))

(assert (=> b!285608 m!369625))

(assert (=> b!285608 m!369629))

(assert (=> b!285608 m!369579))

(assert (=> b!284703 d!84550))

(declare-fun d!84558 () Bool)

(assert (=> d!84558 (= (list!1628 lt!119774) (list!1632 (c!53932 lt!119774)))))

(declare-fun bs!32256 () Bool)

(assert (= bs!32256 d!84558))

(declare-fun m!369649 () Bool)

(assert (=> bs!32256 m!369649))

(assert (=> b!284703 d!84558))

(declare-fun d!84560 () Bool)

(declare-fun e!177643 () Bool)

(assert (=> d!84560 e!177643))

(declare-fun res!130570 () Bool)

(assert (=> d!84560 (=> (not res!130570) (not e!177643))))

(declare-fun lt!120268 () BalanceConc!2650)

(assert (=> d!84560 (= res!130570 (= (list!1629 lt!120268) (Cons!3915 (h!9312 tokens!465) Nil!3915)))))

(declare-fun singleton!128 (Token!1242) BalanceConc!2650)

(assert (=> d!84560 (= lt!120268 (singleton!128 (h!9312 tokens!465)))))

(assert (=> d!84560 (= (singletonSeq!295 (h!9312 tokens!465)) lt!120268)))

(declare-fun b!285611 () Bool)

(declare-fun isBalanced!371 (Conc!1321) Bool)

(assert (=> b!285611 (= e!177643 (isBalanced!371 (c!53934 lt!120268)))))

(assert (= (and d!84560 res!130570) b!285611))

(declare-fun m!369657 () Bool)

(assert (=> d!84560 m!369657))

(declare-fun m!369659 () Bool)

(assert (=> d!84560 m!369659))

(declare-fun m!369661 () Bool)

(assert (=> b!285611 m!369661))

(assert (=> b!284703 d!84560))

(declare-fun d!84564 () Bool)

(declare-fun c!54140 () Bool)

(assert (=> d!84564 (= c!54140 ((_ is Cons!3915) (Cons!3915 (h!9312 tokens!465) Nil!3915)))))

(declare-fun e!177646 () List!3923)

(assert (=> d!84564 (= (printList!311 thiss!17480 (Cons!3915 (h!9312 tokens!465) Nil!3915)) e!177646)))

(declare-fun b!285616 () Bool)

(assert (=> b!285616 (= e!177646 (++!1042 (list!1628 (charsOf!394 (h!9312 (Cons!3915 (h!9312 tokens!465) Nil!3915)))) (printList!311 thiss!17480 (t!39949 (Cons!3915 (h!9312 tokens!465) Nil!3915)))))))

(declare-fun b!285617 () Bool)

(assert (=> b!285617 (= e!177646 Nil!3913)))

(assert (= (and d!84564 c!54140) b!285616))

(assert (= (and d!84564 (not c!54140)) b!285617))

(declare-fun m!369663 () Bool)

(assert (=> b!285616 m!369663))

(assert (=> b!285616 m!369663))

(declare-fun m!369665 () Bool)

(assert (=> b!285616 m!369665))

(declare-fun m!369667 () Bool)

(assert (=> b!285616 m!369667))

(assert (=> b!285616 m!369665))

(assert (=> b!285616 m!369667))

(declare-fun m!369669 () Bool)

(assert (=> b!285616 m!369669))

(assert (=> b!284703 d!84564))

(declare-fun d!84566 () Bool)

(assert (=> d!84566 (= (inv!4838 (tag!963 (rule!1346 separatorToken!170))) (= (mod (str.len (value!25661 (tag!963 (rule!1346 separatorToken!170)))) 2) 0))))

(assert (=> b!284722 d!84566))

(declare-fun d!84568 () Bool)

(declare-fun res!130571 () Bool)

(declare-fun e!177647 () Bool)

(assert (=> d!84568 (=> (not res!130571) (not e!177647))))

(assert (=> d!84568 (= res!130571 (semiInverseModEq!272 (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (toValue!1496 (transformation!749 (rule!1346 separatorToken!170)))))))

(assert (=> d!84568 (= (inv!4842 (transformation!749 (rule!1346 separatorToken!170))) e!177647)))

(declare-fun b!285618 () Bool)

(assert (=> b!285618 (= e!177647 (equivClasses!255 (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (toValue!1496 (transformation!749 (rule!1346 separatorToken!170)))))))

(assert (= (and d!84568 res!130571) b!285618))

(declare-fun m!369671 () Bool)

(assert (=> d!84568 m!369671))

(declare-fun m!369673 () Bool)

(assert (=> b!285618 m!369673))

(assert (=> b!284722 d!84568))

(declare-fun d!84570 () Bool)

(assert (=> d!84570 (= (isEmpty!2575 (t!39949 tokens!465)) ((_ is Nil!3915) (t!39949 tokens!465)))))

(assert (=> b!284701 d!84570))

(declare-fun b!285623 () Bool)

(declare-fun e!177652 () Option!863)

(declare-fun call!16085 () Option!863)

(assert (=> b!285623 (= e!177652 call!16085)))

(declare-fun b!285624 () Bool)

(declare-fun res!130577 () Bool)

(declare-fun e!177650 () Bool)

(assert (=> b!285624 (=> (not res!130577) (not e!177650))))

(declare-fun lt!120273 () Option!863)

(assert (=> b!285624 (= res!130577 (= (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!120273)))) (originalCharacters!792 (_1!2443 (get!1322 lt!120273)))))))

(declare-fun b!285625 () Bool)

(declare-fun e!177651 () Bool)

(assert (=> b!285625 (= e!177651 e!177650)))

(declare-fun res!130574 () Bool)

(assert (=> b!285625 (=> (not res!130574) (not e!177650))))

(assert (=> b!285625 (= res!130574 (isDefined!705 lt!120273))))

(declare-fun b!285626 () Bool)

(declare-fun lt!120274 () Option!863)

(declare-fun lt!120275 () Option!863)

(assert (=> b!285626 (= e!177652 (ite (and ((_ is None!862) lt!120274) ((_ is None!862) lt!120275)) None!862 (ite ((_ is None!862) lt!120275) lt!120274 (ite ((_ is None!862) lt!120274) lt!120275 (ite (>= (size!3132 (_1!2443 (v!14789 lt!120274))) (size!3132 (_1!2443 (v!14789 lt!120275)))) lt!120274 lt!120275)))))))

(assert (=> b!285626 (= lt!120274 call!16085)))

(assert (=> b!285626 (= lt!120275 (maxPrefix!353 thiss!17480 (t!39948 rules!1920) lt!119800))))

(declare-fun d!84572 () Bool)

(assert (=> d!84572 e!177651))

(declare-fun res!130581 () Bool)

(assert (=> d!84572 (=> res!130581 e!177651)))

(assert (=> d!84572 (= res!130581 (isEmpty!2581 lt!120273))))

(assert (=> d!84572 (= lt!120273 e!177652)))

(declare-fun c!54141 () Bool)

(assert (=> d!84572 (= c!54141 (and ((_ is Cons!3914) rules!1920) ((_ is Nil!3914) (t!39948 rules!1920))))))

(declare-fun lt!120271 () Unit!5248)

(declare-fun lt!120272 () Unit!5248)

(assert (=> d!84572 (= lt!120271 lt!120272)))

(assert (=> d!84572 (isPrefix!417 lt!119800 lt!119800)))

(assert (=> d!84572 (= lt!120272 (lemmaIsPrefixRefl!223 lt!119800 lt!119800))))

(assert (=> d!84572 (rulesValidInductive!218 thiss!17480 rules!1920)))

(assert (=> d!84572 (= (maxPrefix!353 thiss!17480 rules!1920 lt!119800) lt!120273)))

(declare-fun b!285627 () Bool)

(declare-fun res!130579 () Bool)

(assert (=> b!285627 (=> (not res!130579) (not e!177650))))

(assert (=> b!285627 (= res!130579 (< (size!3137 (_2!2443 (get!1322 lt!120273))) (size!3137 lt!119800)))))

(declare-fun bm!16080 () Bool)

(assert (=> bm!16080 (= call!16085 (maxPrefixOneRule!157 thiss!17480 (h!9311 rules!1920) lt!119800))))

(declare-fun b!285628 () Bool)

(assert (=> b!285628 (= e!177650 (contains!765 rules!1920 (rule!1346 (_1!2443 (get!1322 lt!120273)))))))

(declare-fun b!285629 () Bool)

(declare-fun res!130578 () Bool)

(assert (=> b!285629 (=> (not res!130578) (not e!177650))))

(assert (=> b!285629 (= res!130578 (= (value!25662 (_1!2443 (get!1322 lt!120273))) (apply!828 (transformation!749 (rule!1346 (_1!2443 (get!1322 lt!120273)))) (seqFromList!865 (originalCharacters!792 (_1!2443 (get!1322 lt!120273)))))))))

(declare-fun b!285630 () Bool)

(declare-fun res!130580 () Bool)

(assert (=> b!285630 (=> (not res!130580) (not e!177650))))

(assert (=> b!285630 (= res!130580 (= (++!1042 (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!120273)))) (_2!2443 (get!1322 lt!120273))) lt!119800))))

(declare-fun b!285631 () Bool)

(declare-fun res!130582 () Bool)

(assert (=> b!285631 (=> (not res!130582) (not e!177650))))

(assert (=> b!285631 (= res!130582 (matchR!295 (regex!749 (rule!1346 (_1!2443 (get!1322 lt!120273)))) (list!1628 (charsOf!394 (_1!2443 (get!1322 lt!120273))))))))

(assert (= (and d!84572 c!54141) b!285623))

(assert (= (and d!84572 (not c!54141)) b!285626))

(assert (= (or b!285623 b!285626) bm!16080))

(assert (= (and d!84572 (not res!130581)) b!285625))

(assert (= (and b!285625 res!130574) b!285624))

(assert (= (and b!285624 res!130577) b!285627))

(assert (= (and b!285627 res!130579) b!285630))

(assert (= (and b!285630 res!130580) b!285629))

(assert (= (and b!285629 res!130578) b!285631))

(assert (= (and b!285631 res!130582) b!285628))

(declare-fun m!369675 () Bool)

(assert (=> b!285628 m!369675))

(declare-fun m!369677 () Bool)

(assert (=> b!285628 m!369677))

(assert (=> b!285624 m!369675))

(declare-fun m!369679 () Bool)

(assert (=> b!285624 m!369679))

(assert (=> b!285624 m!369679))

(declare-fun m!369681 () Bool)

(assert (=> b!285624 m!369681))

(assert (=> b!285631 m!369675))

(assert (=> b!285631 m!369679))

(assert (=> b!285631 m!369679))

(assert (=> b!285631 m!369681))

(assert (=> b!285631 m!369681))

(declare-fun m!369683 () Bool)

(assert (=> b!285631 m!369683))

(assert (=> b!285627 m!369675))

(declare-fun m!369685 () Bool)

(assert (=> b!285627 m!369685))

(assert (=> b!285627 m!368749))

(declare-fun m!369687 () Bool)

(assert (=> b!285626 m!369687))

(declare-fun m!369689 () Bool)

(assert (=> bm!16080 m!369689))

(assert (=> b!285629 m!369675))

(declare-fun m!369691 () Bool)

(assert (=> b!285629 m!369691))

(assert (=> b!285629 m!369691))

(declare-fun m!369693 () Bool)

(assert (=> b!285629 m!369693))

(assert (=> b!285630 m!369675))

(assert (=> b!285630 m!369679))

(assert (=> b!285630 m!369679))

(assert (=> b!285630 m!369681))

(assert (=> b!285630 m!369681))

(declare-fun m!369695 () Bool)

(assert (=> b!285630 m!369695))

(declare-fun m!369697 () Bool)

(assert (=> d!84572 m!369697))

(declare-fun m!369699 () Bool)

(assert (=> d!84572 m!369699))

(declare-fun m!369701 () Bool)

(assert (=> d!84572 m!369701))

(assert (=> d!84572 m!368321))

(declare-fun m!369703 () Bool)

(assert (=> b!285625 m!369703))

(assert (=> b!284701 d!84572))

(declare-fun d!84574 () Bool)

(assert (=> d!84574 (= (isEmpty!2575 tokens!465) ((_ is Nil!3915) tokens!465))))

(assert (=> b!284701 d!84574))

(declare-fun d!84576 () Bool)

(declare-fun e!177664 () Bool)

(assert (=> d!84576 e!177664))

(declare-fun res!130589 () Bool)

(assert (=> d!84576 (=> (not res!130589) (not e!177664))))

(assert (=> d!84576 (= res!130589 (isDefined!706 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 separatorToken!170)))))))

(declare-fun lt!120279 () Unit!5248)

(declare-fun choose!2580 (LexerInterface!635 List!3924 List!3923 Token!1242) Unit!5248)

(assert (=> d!84576 (= lt!120279 (choose!2580 thiss!17480 rules!1920 lt!119785 separatorToken!170))))

(assert (=> d!84576 (rulesInvariant!601 thiss!17480 rules!1920)))

(assert (=> d!84576 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!136 thiss!17480 rules!1920 lt!119785 separatorToken!170) lt!120279)))

(declare-fun b!285654 () Bool)

(declare-fun res!130590 () Bool)

(assert (=> b!285654 (=> (not res!130590) (not e!177664))))

(assert (=> b!285654 (= res!130590 (matchR!295 (regex!749 (get!1321 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 separatorToken!170))))) (list!1628 (charsOf!394 separatorToken!170))))))

(declare-fun b!285655 () Bool)

(assert (=> b!285655 (= e!177664 (= (rule!1346 separatorToken!170) (get!1321 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 separatorToken!170))))))))

(assert (= (and d!84576 res!130589) b!285654))

(assert (= (and b!285654 res!130590) b!285655))

(assert (=> d!84576 m!368195))

(assert (=> d!84576 m!368195))

(declare-fun m!369713 () Bool)

(assert (=> d!84576 m!369713))

(declare-fun m!369715 () Bool)

(assert (=> d!84576 m!369715))

(assert (=> d!84576 m!368031))

(assert (=> b!285654 m!368063))

(assert (=> b!285654 m!368065))

(assert (=> b!285654 m!368065))

(declare-fun m!369717 () Bool)

(assert (=> b!285654 m!369717))

(assert (=> b!285654 m!368195))

(declare-fun m!369719 () Bool)

(assert (=> b!285654 m!369719))

(assert (=> b!285654 m!368195))

(assert (=> b!285654 m!368063))

(assert (=> b!285655 m!368195))

(assert (=> b!285655 m!368195))

(assert (=> b!285655 m!369719))

(assert (=> b!284701 d!84576))

(declare-fun b!285673 () Bool)

(declare-fun res!130602 () Bool)

(declare-fun e!177675 () Bool)

(assert (=> b!285673 (=> (not res!130602) (not e!177675))))

(assert (=> b!285673 (= res!130602 (= (head!925 lt!119810) (head!925 lt!119793)))))

(declare-fun b!285675 () Bool)

(declare-fun e!177676 () Bool)

(assert (=> b!285675 (= e!177676 (>= (size!3137 lt!119793) (size!3137 lt!119810)))))

(declare-fun b!285672 () Bool)

(declare-fun e!177677 () Bool)

(assert (=> b!285672 (= e!177677 e!177675)))

(declare-fun res!130600 () Bool)

(assert (=> b!285672 (=> (not res!130600) (not e!177675))))

(assert (=> b!285672 (= res!130600 (not ((_ is Nil!3913) lt!119793)))))

(declare-fun b!285674 () Bool)

(assert (=> b!285674 (= e!177675 (isPrefix!417 (tail!506 lt!119810) (tail!506 lt!119793)))))

(declare-fun d!84580 () Bool)

(assert (=> d!84580 e!177676))

(declare-fun res!130599 () Bool)

(assert (=> d!84580 (=> res!130599 e!177676)))

(declare-fun lt!120282 () Bool)

(assert (=> d!84580 (= res!130599 (not lt!120282))))

(assert (=> d!84580 (= lt!120282 e!177677)))

(declare-fun res!130601 () Bool)

(assert (=> d!84580 (=> res!130601 e!177677)))

(assert (=> d!84580 (= res!130601 ((_ is Nil!3913) lt!119810))))

(assert (=> d!84580 (= (isPrefix!417 lt!119810 lt!119793) lt!120282)))

(assert (= (and d!84580 (not res!130601)) b!285672))

(assert (= (and b!285672 res!130600) b!285673))

(assert (= (and b!285673 res!130602) b!285674))

(assert (= (and d!84580 (not res!130599)) b!285675))

(assert (=> b!285673 m!369443))

(declare-fun m!369729 () Bool)

(assert (=> b!285673 m!369729))

(declare-fun m!369731 () Bool)

(assert (=> b!285675 m!369731))

(assert (=> b!285675 m!368303))

(assert (=> b!285674 m!369447))

(declare-fun m!369733 () Bool)

(assert (=> b!285674 m!369733))

(assert (=> b!285674 m!369447))

(assert (=> b!285674 m!369733))

(declare-fun m!369735 () Bool)

(assert (=> b!285674 m!369735))

(assert (=> b!284701 d!84580))

(declare-fun call!16107 () List!3923)

(declare-fun bm!16101 () Bool)

(declare-fun c!54169 () Bool)

(declare-fun c!54167 () Bool)

(assert (=> bm!16101 (= call!16107 (usedCharacters!86 (ite c!54167 (reg!1302 (regex!749 (rule!1346 separatorToken!170))) (ite c!54169 (regOne!2459 (regex!749 (rule!1346 separatorToken!170))) (regOne!2458 (regex!749 (rule!1346 separatorToken!170)))))))))

(declare-fun bm!16102 () Bool)

(declare-fun call!16108 () List!3923)

(assert (=> bm!16102 (= call!16108 (usedCharacters!86 (ite c!54169 (regTwo!2459 (regex!749 (rule!1346 separatorToken!170))) (regTwo!2458 (regex!749 (rule!1346 separatorToken!170))))))))

(declare-fun b!285704 () Bool)

(declare-fun e!177696 () List!3923)

(assert (=> b!285704 (= e!177696 call!16107)))

(declare-fun b!285705 () Bool)

(declare-fun e!177694 () List!3923)

(assert (=> b!285705 (= e!177694 Nil!3913)))

(declare-fun d!84588 () Bool)

(declare-fun c!54166 () Bool)

(assert (=> d!84588 (= c!54166 (or ((_ is EmptyExpr!973) (regex!749 (rule!1346 separatorToken!170))) ((_ is EmptyLang!973) (regex!749 (rule!1346 separatorToken!170)))))))

(assert (=> d!84588 (= (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170))) e!177694)))

(declare-fun b!285706 () Bool)

(declare-fun e!177697 () List!3923)

(assert (=> b!285706 (= e!177697 (Cons!3913 (c!53933 (regex!749 (rule!1346 separatorToken!170))) Nil!3913))))

(declare-fun b!285707 () Bool)

(assert (=> b!285707 (= e!177694 e!177697)))

(declare-fun c!54168 () Bool)

(assert (=> b!285707 (= c!54168 ((_ is ElementMatch!973) (regex!749 (rule!1346 separatorToken!170))))))

(declare-fun bm!16103 () Bool)

(declare-fun call!16106 () List!3923)

(declare-fun call!16109 () List!3923)

(assert (=> bm!16103 (= call!16106 (++!1042 call!16109 call!16108))))

(declare-fun b!285708 () Bool)

(declare-fun e!177695 () List!3923)

(assert (=> b!285708 (= e!177696 e!177695)))

(assert (=> b!285708 (= c!54169 ((_ is Union!973) (regex!749 (rule!1346 separatorToken!170))))))

(declare-fun bm!16104 () Bool)

(assert (=> bm!16104 (= call!16109 call!16107)))

(declare-fun b!285709 () Bool)

(assert (=> b!285709 (= e!177695 call!16106)))

(declare-fun b!285710 () Bool)

(assert (=> b!285710 (= c!54167 ((_ is Star!973) (regex!749 (rule!1346 separatorToken!170))))))

(assert (=> b!285710 (= e!177697 e!177696)))

(declare-fun b!285711 () Bool)

(assert (=> b!285711 (= e!177695 call!16106)))

(assert (= (and d!84588 c!54166) b!285705))

(assert (= (and d!84588 (not c!54166)) b!285707))

(assert (= (and b!285707 c!54168) b!285706))

(assert (= (and b!285707 (not c!54168)) b!285710))

(assert (= (and b!285710 c!54167) b!285704))

(assert (= (and b!285710 (not c!54167)) b!285708))

(assert (= (and b!285708 c!54169) b!285711))

(assert (= (and b!285708 (not c!54169)) b!285709))

(assert (= (or b!285711 b!285709) bm!16104))

(assert (= (or b!285711 b!285709) bm!16102))

(assert (= (or b!285711 b!285709) bm!16103))

(assert (= (or b!285704 bm!16104) bm!16101))

(declare-fun m!369737 () Bool)

(assert (=> bm!16101 m!369737))

(declare-fun m!369739 () Bool)

(assert (=> bm!16102 m!369739))

(declare-fun m!369741 () Bool)

(assert (=> bm!16103 m!369741))

(assert (=> b!284701 d!84588))

(declare-fun d!84590 () Bool)

(assert (=> d!84590 (rulesProduceIndividualToken!384 thiss!17480 rules!1920 lt!119807)))

(declare-fun lt!120296 () Unit!5248)

(declare-fun choose!2582 (LexerInterface!635 List!3924 List!3925 Token!1242) Unit!5248)

(assert (=> d!84590 (= lt!120296 (choose!2582 thiss!17480 rules!1920 tokens!465 lt!119807))))

(assert (=> d!84590 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84590 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!132 thiss!17480 rules!1920 tokens!465 lt!119807) lt!120296)))

(declare-fun bs!32259 () Bool)

(assert (= bs!32259 d!84590))

(assert (=> bs!32259 m!368185))

(declare-fun m!369767 () Bool)

(assert (=> bs!32259 m!369767))

(assert (=> bs!32259 m!368001))

(assert (=> b!284701 d!84590))

(declare-fun d!84598 () Bool)

(assert (=> d!84598 (= (maxPrefix!353 thiss!17480 rules!1920 (++!1042 (list!1628 (charsOf!394 separatorToken!170)) lt!119763)) (Some!862 (tuple2!4455 separatorToken!170 lt!119763)))))

(declare-fun lt!120311 () Unit!5248)

(declare-fun choose!2583 (LexerInterface!635 List!3924 Token!1242 Rule!1298 List!3923 Rule!1298) Unit!5248)

(assert (=> d!84598 (= lt!120311 (choose!2583 thiss!17480 rules!1920 separatorToken!170 (rule!1346 separatorToken!170) lt!119763 (rule!1346 lt!119807)))))

(assert (=> d!84598 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84598 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!68 thiss!17480 rules!1920 separatorToken!170 (rule!1346 separatorToken!170) lt!119763 (rule!1346 lt!119807)) lt!120311)))

(declare-fun bs!32262 () Bool)

(assert (= bs!32262 d!84598))

(assert (=> bs!32262 m!368063))

(assert (=> bs!32262 m!368065))

(assert (=> bs!32262 m!368063))

(assert (=> bs!32262 m!368001))

(declare-fun m!369815 () Bool)

(assert (=> bs!32262 m!369815))

(declare-fun m!369817 () Bool)

(assert (=> bs!32262 m!369817))

(declare-fun m!369819 () Bool)

(assert (=> bs!32262 m!369819))

(assert (=> bs!32262 m!368065))

(assert (=> bs!32262 m!369815))

(assert (=> b!284701 d!84598))

(declare-fun d!84614 () Bool)

(declare-fun lt!120314 () Int)

(assert (=> d!84614 (= lt!120314 (size!3138 (list!1629 (_1!2440 lt!119794))))))

(declare-fun size!3140 (Conc!1321) Int)

(assert (=> d!84614 (= lt!120314 (size!3140 (c!53934 (_1!2440 lt!119794))))))

(assert (=> d!84614 (= (size!3133 (_1!2440 lt!119794)) lt!120314)))

(declare-fun bs!32263 () Bool)

(assert (= bs!32263 d!84614))

(assert (=> bs!32263 m!369417))

(assert (=> bs!32263 m!369417))

(declare-fun m!369821 () Bool)

(assert (=> bs!32263 m!369821))

(declare-fun m!369823 () Bool)

(assert (=> bs!32263 m!369823))

(assert (=> b!284701 d!84614))

(declare-fun d!84616 () Bool)

(assert (=> d!84616 (= (head!925 lt!119809) (h!9310 lt!119809))))

(assert (=> b!284701 d!84616))

(declare-fun bs!32265 () Bool)

(declare-fun d!84618 () Bool)

(assert (= bs!32265 (and d!84618 b!284711)))

(declare-fun lambda!9776 () Int)

(assert (=> bs!32265 (= lambda!9776 lambda!9735)))

(declare-fun bs!32266 () Bool)

(assert (= bs!32266 (and d!84618 b!285430)))

(assert (=> bs!32266 (not (= lambda!9776 lambda!9759))))

(declare-fun bs!32267 () Bool)

(assert (= bs!32267 (and d!84618 d!84334)))

(assert (=> bs!32267 (= lambda!9776 lambda!9747)))

(declare-fun bs!32268 () Bool)

(assert (= bs!32268 (and d!84618 d!84462)))

(assert (=> bs!32268 (= lambda!9776 lambda!9758)))

(declare-fun bs!32269 () Bool)

(assert (= bs!32269 (and d!84618 d!84466)))

(assert (=> bs!32269 (not (= lambda!9776 lambda!9770))))

(declare-fun bs!32270 () Bool)

(assert (= bs!32270 (and d!84618 b!285139)))

(assert (=> bs!32270 (not (= lambda!9776 lambda!9748))))

(declare-fun bs!32271 () Bool)

(assert (= bs!32271 (and d!84618 b!285072)))

(assert (=> bs!32271 (not (= lambda!9776 lambda!9739))))

(declare-fun bs!32272 () Bool)

(assert (= bs!32272 (and d!84618 b!284685)))

(assert (=> bs!32272 (not (= lambda!9776 lambda!9736))))

(declare-fun bs!32273 () Bool)

(assert (= bs!32273 (and d!84618 b!285446)))

(assert (=> bs!32273 (not (= lambda!9776 lambda!9760))))

(assert (=> d!84618 (= (filter!91 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!310 thiss!17480 rules!1920 (seqFromList!866 (t!39949 tokens!465)) separatorToken!170 0)))) lambda!9776) (t!39949 tokens!465))))

(declare-fun lt!120324 () Unit!5248)

(declare-fun choose!2584 (LexerInterface!635 List!3924 List!3925 Token!1242) Unit!5248)

(assert (=> d!84618 (= lt!120324 (choose!2584 thiss!17480 rules!1920 (t!39949 tokens!465) separatorToken!170))))

(assert (=> d!84618 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84618 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!82 thiss!17480 rules!1920 (t!39949 tokens!465) separatorToken!170) lt!120324)))

(declare-fun bs!32274 () Bool)

(assert (= bs!32274 d!84618))

(assert (=> bs!32274 m!368001))

(declare-fun m!369849 () Bool)

(assert (=> bs!32274 m!369849))

(declare-fun m!369851 () Bool)

(assert (=> bs!32274 m!369851))

(declare-fun m!369853 () Bool)

(assert (=> bs!32274 m!369853))

(assert (=> bs!32274 m!369851))

(assert (=> bs!32274 m!368057))

(assert (=> bs!32274 m!368077))

(assert (=> bs!32274 m!368077))

(declare-fun m!369855 () Bool)

(assert (=> bs!32274 m!369855))

(assert (=> bs!32274 m!368057))

(assert (=> b!284701 d!84618))

(declare-fun d!84630 () Bool)

(declare-fun e!177730 () Bool)

(assert (=> d!84630 e!177730))

(declare-fun res!130630 () Bool)

(assert (=> d!84630 (=> (not res!130630) (not e!177730))))

(declare-fun lt!120325 () BalanceConc!2650)

(assert (=> d!84630 (= res!130630 (= (list!1629 lt!120325) (Cons!3915 separatorToken!170 Nil!3915)))))

(assert (=> d!84630 (= lt!120325 (singleton!128 separatorToken!170))))

(assert (=> d!84630 (= (singletonSeq!295 separatorToken!170) lt!120325)))

(declare-fun b!285754 () Bool)

(assert (=> b!285754 (= e!177730 (isBalanced!371 (c!53934 lt!120325)))))

(assert (= (and d!84630 res!130630) b!285754))

(declare-fun m!369857 () Bool)

(assert (=> d!84630 m!369857))

(declare-fun m!369859 () Bool)

(assert (=> d!84630 m!369859))

(declare-fun m!369861 () Bool)

(assert (=> b!285754 m!369861))

(assert (=> b!284701 d!84630))

(declare-fun d!84632 () Bool)

(declare-fun lt!120336 () Bool)

(assert (=> d!84632 (= lt!120336 (select (content!575 (usedCharacters!86 (regex!749 (rule!1346 lt!119807)))) lt!119771))))

(declare-fun e!177738 () Bool)

(assert (=> d!84632 (= lt!120336 e!177738)))

(declare-fun res!130643 () Bool)

(assert (=> d!84632 (=> (not res!130643) (not e!177738))))

(assert (=> d!84632 (= res!130643 ((_ is Cons!3913) (usedCharacters!86 (regex!749 (rule!1346 lt!119807)))))))

(assert (=> d!84632 (= (contains!763 (usedCharacters!86 (regex!749 (rule!1346 lt!119807))) lt!119771) lt!120336)))

(declare-fun b!285768 () Bool)

(declare-fun e!177739 () Bool)

(assert (=> b!285768 (= e!177738 e!177739)))

(declare-fun res!130642 () Bool)

(assert (=> b!285768 (=> res!130642 e!177739)))

(assert (=> b!285768 (= res!130642 (= (h!9310 (usedCharacters!86 (regex!749 (rule!1346 lt!119807)))) lt!119771))))

(declare-fun b!285769 () Bool)

(assert (=> b!285769 (= e!177739 (contains!763 (t!39947 (usedCharacters!86 (regex!749 (rule!1346 lt!119807)))) lt!119771))))

(assert (= (and d!84632 res!130643) b!285768))

(assert (= (and b!285768 (not res!130642)) b!285769))

(assert (=> d!84632 m!368201))

(declare-fun m!369875 () Bool)

(assert (=> d!84632 m!369875))

(declare-fun m!369877 () Bool)

(assert (=> d!84632 m!369877))

(declare-fun m!369881 () Bool)

(assert (=> b!285769 m!369881))

(assert (=> b!284701 d!84632))

(declare-fun d!84636 () Bool)

(assert (=> d!84636 (= (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119773))) (list!1633 (c!53934 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119773)))))))

(declare-fun bs!32276 () Bool)

(assert (= bs!32276 d!84636))

(declare-fun m!369889 () Bool)

(assert (=> bs!32276 m!369889))

(assert (=> b!284701 d!84636))

(declare-fun d!84638 () Bool)

(declare-fun lt!120341 () BalanceConc!2648)

(assert (=> d!84638 (= (list!1628 lt!120341) (printListTailRec!144 thiss!17480 (dropList!178 lt!119801 0) (list!1628 (BalanceConc!2649 Empty!1320))))))

(declare-fun e!177741 () BalanceConc!2648)

(assert (=> d!84638 (= lt!120341 e!177741)))

(declare-fun c!54180 () Bool)

(assert (=> d!84638 (= c!54180 (>= 0 (size!3133 lt!119801)))))

(declare-fun e!177740 () Bool)

(assert (=> d!84638 e!177740))

(declare-fun res!130644 () Bool)

(assert (=> d!84638 (=> (not res!130644) (not e!177740))))

(assert (=> d!84638 (= res!130644 (>= 0 0))))

(assert (=> d!84638 (= (printTailRec!323 thiss!17480 lt!119801 0 (BalanceConc!2649 Empty!1320)) lt!120341)))

(declare-fun b!285770 () Bool)

(assert (=> b!285770 (= e!177740 (<= 0 (size!3133 lt!119801)))))

(declare-fun b!285771 () Bool)

(assert (=> b!285771 (= e!177741 (BalanceConc!2649 Empty!1320))))

(declare-fun b!285772 () Bool)

(assert (=> b!285772 (= e!177741 (printTailRec!323 thiss!17480 lt!119801 (+ 0 1) (++!1044 (BalanceConc!2649 Empty!1320) (charsOf!394 (apply!826 lt!119801 0)))))))

(declare-fun lt!120343 () List!3925)

(assert (=> b!285772 (= lt!120343 (list!1629 lt!119801))))

(declare-fun lt!120340 () Unit!5248)

(assert (=> b!285772 (= lt!120340 (lemmaDropApply!218 lt!120343 0))))

(assert (=> b!285772 (= (head!926 (drop!231 lt!120343 0)) (apply!831 lt!120343 0))))

(declare-fun lt!120339 () Unit!5248)

(assert (=> b!285772 (= lt!120339 lt!120340)))

(declare-fun lt!120342 () List!3925)

(assert (=> b!285772 (= lt!120342 (list!1629 lt!119801))))

(declare-fun lt!120337 () Unit!5248)

(assert (=> b!285772 (= lt!120337 (lemmaDropTail!210 lt!120342 0))))

(assert (=> b!285772 (= (tail!508 (drop!231 lt!120342 0)) (drop!231 lt!120342 (+ 0 1)))))

(declare-fun lt!120338 () Unit!5248)

(assert (=> b!285772 (= lt!120338 lt!120337)))

(assert (= (and d!84638 res!130644) b!285770))

(assert (= (and d!84638 c!54180) b!285771))

(assert (= (and d!84638 (not c!54180)) b!285772))

(declare-fun m!369905 () Bool)

(assert (=> d!84638 m!369905))

(declare-fun m!369909 () Bool)

(assert (=> d!84638 m!369909))

(assert (=> d!84638 m!369619))

(declare-fun m!369913 () Bool)

(assert (=> d!84638 m!369913))

(declare-fun m!369915 () Bool)

(assert (=> d!84638 m!369915))

(assert (=> d!84638 m!369619))

(assert (=> d!84638 m!369909))

(assert (=> b!285770 m!369905))

(declare-fun m!369917 () Bool)

(assert (=> b!285772 m!369917))

(declare-fun m!369919 () Bool)

(assert (=> b!285772 m!369919))

(declare-fun m!369923 () Bool)

(assert (=> b!285772 m!369923))

(declare-fun m!369925 () Bool)

(assert (=> b!285772 m!369925))

(declare-fun m!369927 () Bool)

(assert (=> b!285772 m!369927))

(declare-fun m!369931 () Bool)

(assert (=> b!285772 m!369931))

(declare-fun m!369933 () Bool)

(assert (=> b!285772 m!369933))

(assert (=> b!285772 m!369925))

(declare-fun m!369935 () Bool)

(assert (=> b!285772 m!369935))

(declare-fun m!369937 () Bool)

(assert (=> b!285772 m!369937))

(declare-fun m!369939 () Bool)

(assert (=> b!285772 m!369939))

(declare-fun m!369941 () Bool)

(assert (=> b!285772 m!369941))

(declare-fun m!369943 () Bool)

(assert (=> b!285772 m!369943))

(assert (=> b!285772 m!369941))

(assert (=> b!285772 m!369931))

(assert (=> b!285772 m!369917))

(assert (=> b!285772 m!369923))

(declare-fun m!369945 () Bool)

(assert (=> b!285772 m!369945))

(assert (=> b!284701 d!84638))

(declare-fun d!84644 () Bool)

(declare-fun lt!120346 () Bool)

(declare-fun e!177744 () Bool)

(assert (=> d!84644 (= lt!120346 e!177744)))

(declare-fun res!130648 () Bool)

(assert (=> d!84644 (=> (not res!130648) (not e!177744))))

(assert (=> d!84644 (= res!130648 (= (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 lt!119807))))) (list!1629 (singletonSeq!295 lt!119807))))))

(declare-fun e!177743 () Bool)

(assert (=> d!84644 (= lt!120346 e!177743)))

(declare-fun res!130649 () Bool)

(assert (=> d!84644 (=> (not res!130649) (not e!177743))))

(declare-fun lt!120345 () tuple2!4448)

(assert (=> d!84644 (= res!130649 (= (size!3133 (_1!2440 lt!120345)) 1))))

(assert (=> d!84644 (= lt!120345 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 lt!119807))))))

(assert (=> d!84644 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84644 (= (rulesProduceIndividualToken!384 thiss!17480 rules!1920 lt!119807) lt!120346)))

(declare-fun b!285775 () Bool)

(declare-fun res!130647 () Bool)

(assert (=> b!285775 (=> (not res!130647) (not e!177743))))

(assert (=> b!285775 (= res!130647 (= (apply!826 (_1!2440 lt!120345) 0) lt!119807))))

(declare-fun b!285776 () Bool)

(assert (=> b!285776 (= e!177743 (isEmpty!2576 (_2!2440 lt!120345)))))

(declare-fun b!285777 () Bool)

(assert (=> b!285777 (= e!177744 (isEmpty!2576 (_2!2440 (lex!427 thiss!17480 rules!1920 (print!360 thiss!17480 (singletonSeq!295 lt!119807))))))))

(assert (= (and d!84644 res!130649) b!285775))

(assert (= (and b!285775 res!130647) b!285776))

(assert (= (and d!84644 res!130648) b!285777))

(declare-fun m!369947 () Bool)

(assert (=> d!84644 m!369947))

(declare-fun m!369949 () Bool)

(assert (=> d!84644 m!369949))

(assert (=> d!84644 m!368001))

(declare-fun m!369951 () Bool)

(assert (=> d!84644 m!369951))

(declare-fun m!369953 () Bool)

(assert (=> d!84644 m!369953))

(assert (=> d!84644 m!368131))

(assert (=> d!84644 m!369947))

(assert (=> d!84644 m!368131))

(assert (=> d!84644 m!368131))

(declare-fun m!369955 () Bool)

(assert (=> d!84644 m!369955))

(declare-fun m!369957 () Bool)

(assert (=> b!285775 m!369957))

(declare-fun m!369959 () Bool)

(assert (=> b!285776 m!369959))

(assert (=> b!285777 m!368131))

(assert (=> b!285777 m!368131))

(assert (=> b!285777 m!369947))

(assert (=> b!285777 m!369947))

(assert (=> b!285777 m!369949))

(declare-fun m!369967 () Bool)

(assert (=> b!285777 m!369967))

(assert (=> b!284701 d!84644))

(declare-fun d!84646 () Bool)

(declare-fun isEmpty!2588 (Option!861) Bool)

(assert (=> d!84646 (= (isDefined!706 lt!119761) (not (isEmpty!2588 lt!119761)))))

(declare-fun bs!32277 () Bool)

(assert (= bs!32277 d!84646))

(declare-fun m!369995 () Bool)

(assert (=> bs!32277 m!369995))

(assert (=> b!284701 d!84646))

(declare-fun d!84650 () Bool)

(declare-fun e!177750 () Bool)

(assert (=> d!84650 e!177750))

(declare-fun res!130653 () Bool)

(assert (=> d!84650 (=> (not res!130653) (not e!177750))))

(declare-fun lt!120355 () BalanceConc!2650)

(assert (=> d!84650 (= res!130653 (= (list!1629 lt!120355) (Cons!3915 lt!119807 Nil!3915)))))

(assert (=> d!84650 (= lt!120355 (singleton!128 lt!119807))))

(assert (=> d!84650 (= (singletonSeq!295 lt!119807) lt!120355)))

(declare-fun b!285787 () Bool)

(assert (=> b!285787 (= e!177750 (isBalanced!371 (c!53934 lt!120355)))))

(assert (= (and d!84650 res!130653) b!285787))

(declare-fun m!369997 () Bool)

(assert (=> d!84650 m!369997))

(declare-fun m!369999 () Bool)

(assert (=> d!84650 m!369999))

(declare-fun m!370001 () Bool)

(assert (=> b!285787 m!370001))

(assert (=> b!284701 d!84650))

(declare-fun d!84652 () Bool)

(assert (=> d!84652 (= lt!119800 (_2!2443 lt!119802))))

(declare-fun lt!120366 () Unit!5248)

(declare-fun choose!2587 (List!3923 List!3923 List!3923 List!3923 List!3923) Unit!5248)

(assert (=> d!84652 (= lt!120366 (choose!2587 lt!119810 lt!119800 lt!119810 (_2!2443 lt!119802) lt!119769))))

(assert (=> d!84652 (isPrefix!417 lt!119810 lt!119769)))

(assert (=> d!84652 (= (lemmaSamePrefixThenSameSuffix!218 lt!119810 lt!119800 lt!119810 (_2!2443 lt!119802) lt!119769) lt!120366)))

(declare-fun bs!32279 () Bool)

(assert (= bs!32279 d!84652))

(declare-fun m!370039 () Bool)

(assert (=> bs!32279 m!370039))

(declare-fun m!370041 () Bool)

(assert (=> bs!32279 m!370041))

(assert (=> b!284701 d!84652))

(declare-fun d!84662 () Bool)

(declare-fun lt!120367 () Int)

(assert (=> d!84662 (= lt!120367 (size!3138 (list!1629 (_1!2440 lt!119797))))))

(assert (=> d!84662 (= lt!120367 (size!3140 (c!53934 (_1!2440 lt!119797))))))

(assert (=> d!84662 (= (size!3133 (_1!2440 lt!119797)) lt!120367)))

(declare-fun bs!32280 () Bool)

(assert (= bs!32280 d!84662))

(assert (=> bs!32280 m!369505))

(assert (=> bs!32280 m!369505))

(declare-fun m!370055 () Bool)

(assert (=> bs!32280 m!370055))

(declare-fun m!370059 () Bool)

(assert (=> bs!32280 m!370059))

(assert (=> b!284701 d!84662))

(declare-fun d!84666 () Bool)

(declare-fun lt!120368 () BalanceConc!2648)

(assert (=> d!84666 (= (list!1628 lt!120368) (printList!311 thiss!17480 (list!1629 lt!119801)))))

(assert (=> d!84666 (= lt!120368 (printTailRec!323 thiss!17480 lt!119801 0 (BalanceConc!2649 Empty!1320)))))

(assert (=> d!84666 (= (print!360 thiss!17480 lt!119801) lt!120368)))

(declare-fun bs!32282 () Bool)

(assert (= bs!32282 d!84666))

(declare-fun m!370063 () Bool)

(assert (=> bs!32282 m!370063))

(assert (=> bs!32282 m!369945))

(assert (=> bs!32282 m!369945))

(declare-fun m!370065 () Bool)

(assert (=> bs!32282 m!370065))

(assert (=> bs!32282 m!368161))

(assert (=> b!284701 d!84666))

(declare-fun b!285791 () Bool)

(declare-fun res!130657 () Bool)

(declare-fun e!177754 () Bool)

(assert (=> b!285791 (=> (not res!130657) (not e!177754))))

(declare-fun lt!120369 () tuple2!4448)

(assert (=> b!285791 (= res!130657 (= (list!1629 (_1!2440 lt!120369)) (_1!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119764)))))))

(declare-fun d!84668 () Bool)

(assert (=> d!84668 e!177754))

(declare-fun res!130656 () Bool)

(assert (=> d!84668 (=> (not res!130656) (not e!177754))))

(declare-fun e!177755 () Bool)

(assert (=> d!84668 (= res!130656 e!177755)))

(declare-fun c!54185 () Bool)

(assert (=> d!84668 (= c!54185 (> (size!3133 (_1!2440 lt!120369)) 0))))

(assert (=> d!84668 (= lt!120369 (lexTailRecV2!190 thiss!17480 rules!1920 lt!119764 (BalanceConc!2649 Empty!1320) lt!119764 (BalanceConc!2651 Empty!1321)))))

(assert (=> d!84668 (= (lex!427 thiss!17480 rules!1920 lt!119764) lt!120369)))

(declare-fun b!285792 () Bool)

(assert (=> b!285792 (= e!177754 (= (list!1628 (_2!2440 lt!120369)) (_2!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119764)))))))

(declare-fun b!285793 () Bool)

(declare-fun e!177753 () Bool)

(assert (=> b!285793 (= e!177755 e!177753)))

(declare-fun res!130655 () Bool)

(assert (=> b!285793 (= res!130655 (< (size!3139 (_2!2440 lt!120369)) (size!3139 lt!119764)))))

(assert (=> b!285793 (=> (not res!130655) (not e!177753))))

(declare-fun b!285794 () Bool)

(assert (=> b!285794 (= e!177753 (not (isEmpty!2577 (_1!2440 lt!120369))))))

(declare-fun b!285795 () Bool)

(assert (=> b!285795 (= e!177755 (= (_2!2440 lt!120369) lt!119764))))

(assert (= (and d!84668 c!54185) b!285793))

(assert (= (and d!84668 (not c!54185)) b!285795))

(assert (= (and b!285793 res!130655) b!285794))

(assert (= (and d!84668 res!130656) b!285791))

(assert (= (and b!285791 res!130657) b!285792))

(declare-fun m!370067 () Bool)

(assert (=> d!84668 m!370067))

(declare-fun m!370069 () Bool)

(assert (=> d!84668 m!370069))

(declare-fun m!370071 () Bool)

(assert (=> b!285793 m!370071))

(declare-fun m!370073 () Bool)

(assert (=> b!285793 m!370073))

(declare-fun m!370075 () Bool)

(assert (=> b!285794 m!370075))

(declare-fun m!370077 () Bool)

(assert (=> b!285792 m!370077))

(declare-fun m!370079 () Bool)

(assert (=> b!285792 m!370079))

(assert (=> b!285792 m!370079))

(declare-fun m!370081 () Bool)

(assert (=> b!285792 m!370081))

(declare-fun m!370083 () Bool)

(assert (=> b!285791 m!370083))

(assert (=> b!285791 m!370079))

(assert (=> b!285791 m!370079))

(assert (=> b!285791 m!370081))

(assert (=> b!284701 d!84668))

(declare-fun d!84670 () Bool)

(declare-fun lt!120374 () BalanceConc!2648)

(assert (=> d!84670 (= (list!1628 lt!120374) (printListTailRec!144 thiss!17480 (dropList!178 lt!119781 0) (list!1628 (BalanceConc!2649 Empty!1320))))))

(declare-fun e!177759 () BalanceConc!2648)

(assert (=> d!84670 (= lt!120374 e!177759)))

(declare-fun c!54186 () Bool)

(assert (=> d!84670 (= c!54186 (>= 0 (size!3133 lt!119781)))))

(declare-fun e!177758 () Bool)

(assert (=> d!84670 e!177758))

(declare-fun res!130658 () Bool)

(assert (=> d!84670 (=> (not res!130658) (not e!177758))))

(assert (=> d!84670 (= res!130658 (>= 0 0))))

(assert (=> d!84670 (= (printTailRec!323 thiss!17480 lt!119781 0 (BalanceConc!2649 Empty!1320)) lt!120374)))

(declare-fun b!285806 () Bool)

(assert (=> b!285806 (= e!177758 (<= 0 (size!3133 lt!119781)))))

(declare-fun b!285807 () Bool)

(assert (=> b!285807 (= e!177759 (BalanceConc!2649 Empty!1320))))

(declare-fun b!285808 () Bool)

(assert (=> b!285808 (= e!177759 (printTailRec!323 thiss!17480 lt!119781 (+ 0 1) (++!1044 (BalanceConc!2649 Empty!1320) (charsOf!394 (apply!826 lt!119781 0)))))))

(declare-fun lt!120376 () List!3925)

(assert (=> b!285808 (= lt!120376 (list!1629 lt!119781))))

(declare-fun lt!120373 () Unit!5248)

(assert (=> b!285808 (= lt!120373 (lemmaDropApply!218 lt!120376 0))))

(assert (=> b!285808 (= (head!926 (drop!231 lt!120376 0)) (apply!831 lt!120376 0))))

(declare-fun lt!120372 () Unit!5248)

(assert (=> b!285808 (= lt!120372 lt!120373)))

(declare-fun lt!120375 () List!3925)

(assert (=> b!285808 (= lt!120375 (list!1629 lt!119781))))

(declare-fun lt!120370 () Unit!5248)

(assert (=> b!285808 (= lt!120370 (lemmaDropTail!210 lt!120375 0))))

(assert (=> b!285808 (= (tail!508 (drop!231 lt!120375 0)) (drop!231 lt!120375 (+ 0 1)))))

(declare-fun lt!120371 () Unit!5248)

(assert (=> b!285808 (= lt!120371 lt!120370)))

(assert (= (and d!84670 res!130658) b!285806))

(assert (= (and d!84670 c!54186) b!285807))

(assert (= (and d!84670 (not c!54186)) b!285808))

(declare-fun m!370085 () Bool)

(assert (=> d!84670 m!370085))

(declare-fun m!370087 () Bool)

(assert (=> d!84670 m!370087))

(assert (=> d!84670 m!369619))

(declare-fun m!370089 () Bool)

(assert (=> d!84670 m!370089))

(declare-fun m!370091 () Bool)

(assert (=> d!84670 m!370091))

(assert (=> d!84670 m!369619))

(assert (=> d!84670 m!370087))

(assert (=> b!285806 m!370085))

(declare-fun m!370093 () Bool)

(assert (=> b!285808 m!370093))

(declare-fun m!370095 () Bool)

(assert (=> b!285808 m!370095))

(declare-fun m!370097 () Bool)

(assert (=> b!285808 m!370097))

(declare-fun m!370099 () Bool)

(assert (=> b!285808 m!370099))

(declare-fun m!370101 () Bool)

(assert (=> b!285808 m!370101))

(declare-fun m!370103 () Bool)

(assert (=> b!285808 m!370103))

(declare-fun m!370105 () Bool)

(assert (=> b!285808 m!370105))

(assert (=> b!285808 m!370099))

(declare-fun m!370107 () Bool)

(assert (=> b!285808 m!370107))

(declare-fun m!370109 () Bool)

(assert (=> b!285808 m!370109))

(declare-fun m!370111 () Bool)

(assert (=> b!285808 m!370111))

(declare-fun m!370113 () Bool)

(assert (=> b!285808 m!370113))

(declare-fun m!370115 () Bool)

(assert (=> b!285808 m!370115))

(assert (=> b!285808 m!370113))

(assert (=> b!285808 m!370103))

(assert (=> b!285808 m!370093))

(assert (=> b!285808 m!370097))

(declare-fun m!370117 () Bool)

(assert (=> b!285808 m!370117))

(assert (=> b!284701 d!84670))

(declare-fun b!285867 () Bool)

(declare-fun e!177809 () Option!861)

(assert (=> b!285867 (= e!177809 (Some!860 (h!9311 rules!1920)))))

(declare-fun b!285868 () Bool)

(declare-fun lt!120383 () Unit!5248)

(declare-fun lt!120384 () Unit!5248)

(assert (=> b!285868 (= lt!120383 lt!120384)))

(assert (=> b!285868 (rulesInvariant!601 thiss!17480 (t!39948 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!38 (LexerInterface!635 Rule!1298 List!3924) Unit!5248)

(assert (=> b!285868 (= lt!120384 (lemmaInvariantOnRulesThenOnTail!38 thiss!17480 (h!9311 rules!1920) (t!39948 rules!1920)))))

(declare-fun e!177811 () Option!861)

(assert (=> b!285868 (= e!177811 (getRuleFromTag!136 thiss!17480 (t!39948 rules!1920) (tag!963 (rule!1346 separatorToken!170))))))

(declare-fun b!285869 () Bool)

(declare-fun e!177808 () Bool)

(declare-fun e!177810 () Bool)

(assert (=> b!285869 (= e!177808 e!177810)))

(declare-fun res!130664 () Bool)

(assert (=> b!285869 (=> (not res!130664) (not e!177810))))

(declare-fun lt!120385 () Option!861)

(assert (=> b!285869 (= res!130664 (contains!765 rules!1920 (get!1321 lt!120385)))))

(declare-fun b!285870 () Bool)

(assert (=> b!285870 (= e!177809 e!177811)))

(declare-fun c!54192 () Bool)

(assert (=> b!285870 (= c!54192 (and ((_ is Cons!3914) rules!1920) (not (= (tag!963 (h!9311 rules!1920)) (tag!963 (rule!1346 separatorToken!170))))))))

(declare-fun b!285871 () Bool)

(assert (=> b!285871 (= e!177810 (= (tag!963 (get!1321 lt!120385)) (tag!963 (rule!1346 separatorToken!170))))))

(declare-fun b!285872 () Bool)

(assert (=> b!285872 (= e!177811 None!860)))

(declare-fun d!84672 () Bool)

(assert (=> d!84672 e!177808))

(declare-fun res!130663 () Bool)

(assert (=> d!84672 (=> res!130663 e!177808)))

(assert (=> d!84672 (= res!130663 (isEmpty!2588 lt!120385))))

(assert (=> d!84672 (= lt!120385 e!177809)))

(declare-fun c!54191 () Bool)

(assert (=> d!84672 (= c!54191 (and ((_ is Cons!3914) rules!1920) (= (tag!963 (h!9311 rules!1920)) (tag!963 (rule!1346 separatorToken!170)))))))

(assert (=> d!84672 (rulesInvariant!601 thiss!17480 rules!1920)))

(assert (=> d!84672 (= (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 separatorToken!170))) lt!120385)))

(assert (= (and d!84672 c!54191) b!285867))

(assert (= (and d!84672 (not c!54191)) b!285870))

(assert (= (and b!285870 c!54192) b!285868))

(assert (= (and b!285870 (not c!54192)) b!285872))

(assert (= (and d!84672 (not res!130663)) b!285869))

(assert (= (and b!285869 res!130664) b!285871))

(declare-fun m!370131 () Bool)

(assert (=> b!285868 m!370131))

(declare-fun m!370133 () Bool)

(assert (=> b!285868 m!370133))

(declare-fun m!370135 () Bool)

(assert (=> b!285868 m!370135))

(declare-fun m!370137 () Bool)

(assert (=> b!285869 m!370137))

(assert (=> b!285869 m!370137))

(declare-fun m!370139 () Bool)

(assert (=> b!285869 m!370139))

(assert (=> b!285871 m!370137))

(declare-fun m!370141 () Bool)

(assert (=> d!84672 m!370141))

(assert (=> d!84672 m!368031))

(assert (=> b!284701 d!84672))

(declare-fun d!84688 () Bool)

(assert (=> d!84688 (isPrefix!417 lt!119810 (++!1042 lt!119810 lt!119800))))

(declare-fun lt!120388 () Unit!5248)

(declare-fun choose!2588 (List!3923 List!3923) Unit!5248)

(assert (=> d!84688 (= lt!120388 (choose!2588 lt!119810 lt!119800))))

(assert (=> d!84688 (= (lemmaConcatTwoListThenFirstIsPrefix!312 lt!119810 lt!119800) lt!120388)))

(declare-fun bs!32290 () Bool)

(assert (= bs!32290 d!84688))

(assert (=> bs!32290 m!368081))

(assert (=> bs!32290 m!368081))

(declare-fun m!370143 () Bool)

(assert (=> bs!32290 m!370143))

(declare-fun m!370145 () Bool)

(assert (=> bs!32290 m!370145))

(assert (=> b!284701 d!84688))

(assert (=> b!284701 d!84294))

(declare-fun b!285873 () Bool)

(declare-fun e!177814 () List!3925)

(declare-fun call!16116 () List!3925)

(assert (=> b!285873 (= e!177814 call!16116)))

(declare-fun b!285874 () Bool)

(declare-fun e!177812 () List!3925)

(assert (=> b!285874 (= e!177812 e!177814)))

(declare-fun c!54194 () Bool)

(assert (=> b!285874 (= c!54194 (dynLambda!2065 lambda!9735 (h!9312 lt!119799)))))

(declare-fun b!285875 () Bool)

(assert (=> b!285875 (= e!177814 (Cons!3915 (h!9312 lt!119799) call!16116))))

(declare-fun b!285876 () Bool)

(declare-fun e!177813 () Bool)

(declare-fun lt!120389 () List!3925)

(assert (=> b!285876 (= e!177813 (forall!1004 lt!120389 lambda!9735))))

(declare-fun b!285877 () Bool)

(declare-fun res!130666 () Bool)

(assert (=> b!285877 (=> (not res!130666) (not e!177813))))

(assert (=> b!285877 (= res!130666 (= ((_ map implies) (content!574 lt!120389) (content!574 lt!119799)) ((as const (InoxSet Token!1242)) true)))))

(declare-fun d!84690 () Bool)

(assert (=> d!84690 e!177813))

(declare-fun res!130665 () Bool)

(assert (=> d!84690 (=> (not res!130665) (not e!177813))))

(assert (=> d!84690 (= res!130665 (<= (size!3138 lt!120389) (size!3138 lt!119799)))))

(assert (=> d!84690 (= lt!120389 e!177812)))

(declare-fun c!54193 () Bool)

(assert (=> d!84690 (= c!54193 ((_ is Nil!3915) lt!119799))))

(assert (=> d!84690 (= (filter!91 lt!119799 lambda!9735) lt!120389)))

(declare-fun bm!16111 () Bool)

(assert (=> bm!16111 (= call!16116 (filter!91 (t!39949 lt!119799) lambda!9735))))

(declare-fun b!285878 () Bool)

(assert (=> b!285878 (= e!177812 Nil!3915)))

(assert (= (and d!84690 c!54193) b!285878))

(assert (= (and d!84690 (not c!54193)) b!285874))

(assert (= (and b!285874 c!54194) b!285875))

(assert (= (and b!285874 (not c!54194)) b!285873))

(assert (= (or b!285875 b!285873) bm!16111))

(assert (= (and d!84690 res!130665) b!285877))

(assert (= (and b!285877 res!130666) b!285876))

(declare-fun b_lambda!9417 () Bool)

(assert (=> (not b_lambda!9417) (not b!285874)))

(declare-fun m!370147 () Bool)

(assert (=> d!84690 m!370147))

(declare-fun m!370149 () Bool)

(assert (=> d!84690 m!370149))

(declare-fun m!370151 () Bool)

(assert (=> b!285877 m!370151))

(declare-fun m!370153 () Bool)

(assert (=> b!285877 m!370153))

(declare-fun m!370155 () Bool)

(assert (=> b!285876 m!370155))

(declare-fun m!370157 () Bool)

(assert (=> b!285874 m!370157))

(declare-fun m!370159 () Bool)

(assert (=> bm!16111 m!370159))

(assert (=> b!284701 d!84690))

(declare-fun d!84692 () Bool)

(assert (=> d!84692 (dynLambda!2065 lambda!9736 lt!119807)))

(declare-fun lt!120390 () Unit!5248)

(assert (=> d!84692 (= lt!120390 (choose!2574 tokens!465 lambda!9736 lt!119807))))

(declare-fun e!177815 () Bool)

(assert (=> d!84692 e!177815))

(declare-fun res!130667 () Bool)

(assert (=> d!84692 (=> (not res!130667) (not e!177815))))

(assert (=> d!84692 (= res!130667 (forall!1004 tokens!465 lambda!9736))))

(assert (=> d!84692 (= (forallContained!304 tokens!465 lambda!9736 lt!119807) lt!120390)))

(declare-fun b!285879 () Bool)

(assert (=> b!285879 (= e!177815 (contains!767 tokens!465 lt!119807))))

(assert (= (and d!84692 res!130667) b!285879))

(declare-fun b_lambda!9419 () Bool)

(assert (=> (not b_lambda!9419) (not d!84692)))

(declare-fun m!370161 () Bool)

(assert (=> d!84692 m!370161))

(declare-fun m!370163 () Bool)

(assert (=> d!84692 m!370163))

(assert (=> d!84692 m!369497))

(declare-fun m!370165 () Bool)

(assert (=> b!285879 m!370165))

(assert (=> b!284701 d!84692))

(declare-fun b!285880 () Bool)

(declare-fun res!130670 () Bool)

(declare-fun e!177817 () Bool)

(assert (=> b!285880 (=> (not res!130670) (not e!177817))))

(declare-fun lt!120391 () tuple2!4448)

(assert (=> b!285880 (= res!130670 (= (list!1629 (_1!2440 lt!120391)) (_1!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119773)))))))

(declare-fun d!84694 () Bool)

(assert (=> d!84694 e!177817))

(declare-fun res!130669 () Bool)

(assert (=> d!84694 (=> (not res!130669) (not e!177817))))

(declare-fun e!177818 () Bool)

(assert (=> d!84694 (= res!130669 e!177818)))

(declare-fun c!54195 () Bool)

(assert (=> d!84694 (= c!54195 (> (size!3133 (_1!2440 lt!120391)) 0))))

(assert (=> d!84694 (= lt!120391 (lexTailRecV2!190 thiss!17480 rules!1920 lt!119773 (BalanceConc!2649 Empty!1320) lt!119773 (BalanceConc!2651 Empty!1321)))))

(assert (=> d!84694 (= (lex!427 thiss!17480 rules!1920 lt!119773) lt!120391)))

(declare-fun b!285881 () Bool)

(assert (=> b!285881 (= e!177817 (= (list!1628 (_2!2440 lt!120391)) (_2!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119773)))))))

(declare-fun b!285882 () Bool)

(declare-fun e!177816 () Bool)

(assert (=> b!285882 (= e!177818 e!177816)))

(declare-fun res!130668 () Bool)

(assert (=> b!285882 (= res!130668 (< (size!3139 (_2!2440 lt!120391)) (size!3139 lt!119773)))))

(assert (=> b!285882 (=> (not res!130668) (not e!177816))))

(declare-fun b!285883 () Bool)

(assert (=> b!285883 (= e!177816 (not (isEmpty!2577 (_1!2440 lt!120391))))))

(declare-fun b!285884 () Bool)

(assert (=> b!285884 (= e!177818 (= (_2!2440 lt!120391) lt!119773))))

(assert (= (and d!84694 c!54195) b!285882))

(assert (= (and d!84694 (not c!54195)) b!285884))

(assert (= (and b!285882 res!130668) b!285883))

(assert (= (and d!84694 res!130669) b!285880))

(assert (= (and b!285880 res!130670) b!285881))

(declare-fun m!370167 () Bool)

(assert (=> d!84694 m!370167))

(declare-fun m!370169 () Bool)

(assert (=> d!84694 m!370169))

(declare-fun m!370171 () Bool)

(assert (=> b!285882 m!370171))

(declare-fun m!370173 () Bool)

(assert (=> b!285882 m!370173))

(declare-fun m!370175 () Bool)

(assert (=> b!285883 m!370175))

(declare-fun m!370177 () Bool)

(assert (=> b!285881 m!370177))

(assert (=> b!285881 m!368067))

(assert (=> b!285881 m!368067))

(declare-fun m!370179 () Bool)

(assert (=> b!285881 m!370179))

(declare-fun m!370181 () Bool)

(assert (=> b!285880 m!370181))

(assert (=> b!285880 m!368067))

(assert (=> b!285880 m!368067))

(assert (=> b!285880 m!370179))

(assert (=> b!284701 d!84694))

(declare-fun d!84696 () Bool)

(assert (=> d!84696 (= (get!1322 (maxPrefix!353 thiss!17480 rules!1920 lt!119769)) (v!14789 (maxPrefix!353 thiss!17480 rules!1920 lt!119769)))))

(assert (=> b!284701 d!84696))

(declare-fun d!84698 () Bool)

(assert (=> d!84698 (= (list!1628 (charsOf!394 lt!119807)) (list!1632 (c!53932 (charsOf!394 lt!119807))))))

(declare-fun bs!32291 () Bool)

(assert (= bs!32291 d!84698))

(declare-fun m!370183 () Bool)

(assert (=> bs!32291 m!370183))

(assert (=> b!284701 d!84698))

(declare-fun d!84700 () Bool)

(assert (=> d!84700 (= (head!926 (t!39949 tokens!465)) (h!9312 (t!39949 tokens!465)))))

(assert (=> b!284701 d!84700))

(declare-fun d!84702 () Bool)

(declare-fun e!177823 () Bool)

(assert (=> d!84702 e!177823))

(declare-fun res!130676 () Bool)

(assert (=> d!84702 (=> res!130676 e!177823)))

(assert (=> d!84702 (= res!130676 (isEmpty!2575 tokens!465))))

(declare-fun lt!120394 () Unit!5248)

(declare-fun choose!2589 (LexerInterface!635 List!3924 List!3925 Token!1242) Unit!5248)

(assert (=> d!84702 (= lt!120394 (choose!2589 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!84702 (not (isEmpty!2578 rules!1920))))

(assert (=> d!84702 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!174 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!120394)))

(declare-fun b!285889 () Bool)

(declare-fun e!177824 () Bool)

(assert (=> b!285889 (= e!177823 e!177824)))

(declare-fun res!130675 () Bool)

(assert (=> b!285889 (=> (not res!130675) (not e!177824))))

(assert (=> b!285889 (= res!130675 (isDefined!705 (maxPrefix!353 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!285890 () Bool)

(assert (=> b!285890 (= e!177824 (= (_1!2443 (get!1322 (maxPrefix!353 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!318 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!926 tokens!465)))))

(assert (= (and d!84702 (not res!130676)) b!285889))

(assert (= (and b!285889 res!130675) b!285890))

(assert (=> d!84702 m!368151))

(declare-fun m!370185 () Bool)

(assert (=> d!84702 m!370185))

(assert (=> d!84702 m!368001))

(assert (=> b!285889 m!368115))

(assert (=> b!285889 m!368115))

(declare-fun m!370187 () Bool)

(assert (=> b!285889 m!370187))

(assert (=> b!285889 m!370187))

(declare-fun m!370189 () Bool)

(assert (=> b!285889 m!370189))

(assert (=> b!285890 m!368115))

(assert (=> b!285890 m!368115))

(assert (=> b!285890 m!370187))

(assert (=> b!285890 m!370187))

(declare-fun m!370191 () Bool)

(assert (=> b!285890 m!370191))

(assert (=> b!285890 m!368041))

(assert (=> b!284701 d!84702))

(declare-fun bm!16112 () Bool)

(declare-fun c!54197 () Bool)

(declare-fun call!16118 () List!3923)

(declare-fun c!54199 () Bool)

(assert (=> bm!16112 (= call!16118 (usedCharacters!86 (ite c!54197 (reg!1302 (regex!749 (rule!1346 lt!119807))) (ite c!54199 (regOne!2459 (regex!749 (rule!1346 lt!119807))) (regOne!2458 (regex!749 (rule!1346 lt!119807)))))))))

(declare-fun bm!16113 () Bool)

(declare-fun call!16119 () List!3923)

(assert (=> bm!16113 (= call!16119 (usedCharacters!86 (ite c!54199 (regTwo!2459 (regex!749 (rule!1346 lt!119807))) (regTwo!2458 (regex!749 (rule!1346 lt!119807))))))))

(declare-fun b!285891 () Bool)

(declare-fun e!177827 () List!3923)

(assert (=> b!285891 (= e!177827 call!16118)))

(declare-fun b!285892 () Bool)

(declare-fun e!177825 () List!3923)

(assert (=> b!285892 (= e!177825 Nil!3913)))

(declare-fun d!84704 () Bool)

(declare-fun c!54196 () Bool)

(assert (=> d!84704 (= c!54196 (or ((_ is EmptyExpr!973) (regex!749 (rule!1346 lt!119807))) ((_ is EmptyLang!973) (regex!749 (rule!1346 lt!119807)))))))

(assert (=> d!84704 (= (usedCharacters!86 (regex!749 (rule!1346 lt!119807))) e!177825)))

(declare-fun b!285893 () Bool)

(declare-fun e!177828 () List!3923)

(assert (=> b!285893 (= e!177828 (Cons!3913 (c!53933 (regex!749 (rule!1346 lt!119807))) Nil!3913))))

(declare-fun b!285894 () Bool)

(assert (=> b!285894 (= e!177825 e!177828)))

(declare-fun c!54198 () Bool)

(assert (=> b!285894 (= c!54198 ((_ is ElementMatch!973) (regex!749 (rule!1346 lt!119807))))))

(declare-fun bm!16114 () Bool)

(declare-fun call!16117 () List!3923)

(declare-fun call!16120 () List!3923)

(assert (=> bm!16114 (= call!16117 (++!1042 call!16120 call!16119))))

(declare-fun b!285895 () Bool)

(declare-fun e!177826 () List!3923)

(assert (=> b!285895 (= e!177827 e!177826)))

(assert (=> b!285895 (= c!54199 ((_ is Union!973) (regex!749 (rule!1346 lt!119807))))))

(declare-fun bm!16115 () Bool)

(assert (=> bm!16115 (= call!16120 call!16118)))

(declare-fun b!285896 () Bool)

(assert (=> b!285896 (= e!177826 call!16117)))

(declare-fun b!285897 () Bool)

(assert (=> b!285897 (= c!54197 ((_ is Star!973) (regex!749 (rule!1346 lt!119807))))))

(assert (=> b!285897 (= e!177828 e!177827)))

(declare-fun b!285898 () Bool)

(assert (=> b!285898 (= e!177826 call!16117)))

(assert (= (and d!84704 c!54196) b!285892))

(assert (= (and d!84704 (not c!54196)) b!285894))

(assert (= (and b!285894 c!54198) b!285893))

(assert (= (and b!285894 (not c!54198)) b!285897))

(assert (= (and b!285897 c!54197) b!285891))

(assert (= (and b!285897 (not c!54197)) b!285895))

(assert (= (and b!285895 c!54199) b!285898))

(assert (= (and b!285895 (not c!54199)) b!285896))

(assert (= (or b!285898 b!285896) bm!16115))

(assert (= (or b!285898 b!285896) bm!16113))

(assert (= (or b!285898 b!285896) bm!16114))

(assert (= (or b!285891 bm!16115) bm!16112))

(declare-fun m!370193 () Bool)

(assert (=> bm!16112 m!370193))

(declare-fun m!370195 () Bool)

(assert (=> bm!16113 m!370195))

(declare-fun m!370197 () Bool)

(assert (=> bm!16114 m!370197))

(assert (=> b!284701 d!84704))

(declare-fun d!84706 () Bool)

(declare-fun lt!120395 () BalanceConc!2648)

(assert (=> d!84706 (= (list!1628 lt!120395) (printList!311 thiss!17480 (list!1629 lt!119781)))))

(assert (=> d!84706 (= lt!120395 (printTailRec!323 thiss!17480 lt!119781 0 (BalanceConc!2649 Empty!1320)))))

(assert (=> d!84706 (= (print!360 thiss!17480 lt!119781) lt!120395)))

(declare-fun bs!32292 () Bool)

(assert (= bs!32292 d!84706))

(declare-fun m!370199 () Bool)

(assert (=> bs!32292 m!370199))

(assert (=> bs!32292 m!370117))

(assert (=> bs!32292 m!370117))

(declare-fun m!370201 () Bool)

(assert (=> bs!32292 m!370201))

(assert (=> bs!32292 m!368163))

(assert (=> b!284701 d!84706))

(declare-fun d!84708 () Bool)

(declare-fun lt!120396 () BalanceConc!2648)

(assert (=> d!84708 (= (list!1628 lt!120396) (originalCharacters!792 lt!119807))))

(assert (=> d!84708 (= lt!120396 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 lt!119807))) (value!25662 lt!119807)))))

(assert (=> d!84708 (= (charsOf!394 lt!119807) lt!120396)))

(declare-fun b_lambda!9421 () Bool)

(assert (=> (not b_lambda!9421) (not d!84708)))

(declare-fun tb!16523 () Bool)

(declare-fun t!40020 () Bool)

(assert (=> (and b!284689 (= (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toChars!1355 (transformation!749 (rule!1346 lt!119807)))) t!40020) tb!16523))

(declare-fun b!285899 () Bool)

(declare-fun e!177829 () Bool)

(declare-fun tp!104821 () Bool)

(assert (=> b!285899 (= e!177829 (and (inv!4845 (c!53932 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 lt!119807))) (value!25662 lt!119807)))) tp!104821))))

(declare-fun result!20294 () Bool)

(assert (=> tb!16523 (= result!20294 (and (inv!4846 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 lt!119807))) (value!25662 lt!119807))) e!177829))))

(assert (= tb!16523 b!285899))

(declare-fun m!370203 () Bool)

(assert (=> b!285899 m!370203))

(declare-fun m!370205 () Bool)

(assert (=> tb!16523 m!370205))

(assert (=> d!84708 t!40020))

(declare-fun b_and!23001 () Bool)

(assert (= b_and!22975 (and (=> t!40020 result!20294) b_and!23001)))

(declare-fun t!40022 () Bool)

(declare-fun tb!16525 () Bool)

(assert (=> (and b!284702 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (toChars!1355 (transformation!749 (rule!1346 lt!119807)))) t!40022) tb!16525))

(declare-fun result!20296 () Bool)

(assert (= result!20296 result!20294))

(assert (=> d!84708 t!40022))

(declare-fun b_and!23003 () Bool)

(assert (= b_and!22977 (and (=> t!40022 result!20296) b_and!23003)))

(declare-fun t!40024 () Bool)

(declare-fun tb!16527 () Bool)

(assert (=> (and b!284708 (= (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (toChars!1355 (transformation!749 (rule!1346 lt!119807)))) t!40024) tb!16527))

(declare-fun result!20298 () Bool)

(assert (= result!20298 result!20294))

(assert (=> d!84708 t!40024))

(declare-fun b_and!23005 () Bool)

(assert (= b_and!22979 (and (=> t!40024 result!20298) b_and!23005)))

(declare-fun m!370207 () Bool)

(assert (=> d!84708 m!370207))

(declare-fun m!370209 () Bool)

(assert (=> d!84708 m!370209))

(assert (=> b!284701 d!84708))

(declare-fun d!84710 () Bool)

(assert (=> d!84710 (= (head!925 lt!119763) (h!9310 lt!119763))))

(assert (=> b!284701 d!84710))

(declare-fun d!84712 () Bool)

(assert (=> d!84712 (= (isDefined!706 lt!119806) (not (isEmpty!2588 lt!119806)))))

(declare-fun bs!32293 () Bool)

(assert (= bs!32293 d!84712))

(declare-fun m!370211 () Bool)

(assert (=> bs!32293 m!370211))

(assert (=> b!284701 d!84712))

(declare-fun d!84714 () Bool)

(declare-fun e!177830 () Bool)

(assert (=> d!84714 e!177830))

(declare-fun res!130677 () Bool)

(assert (=> d!84714 (=> (not res!130677) (not e!177830))))

(assert (=> d!84714 (= res!130677 (isDefined!706 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 lt!119807)))))))

(declare-fun lt!120397 () Unit!5248)

(assert (=> d!84714 (= lt!120397 (choose!2580 thiss!17480 rules!1920 lt!119809 lt!119807))))

(assert (=> d!84714 (rulesInvariant!601 thiss!17480 rules!1920)))

(assert (=> d!84714 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!136 thiss!17480 rules!1920 lt!119809 lt!119807) lt!120397)))

(declare-fun b!285900 () Bool)

(declare-fun res!130678 () Bool)

(assert (=> b!285900 (=> (not res!130678) (not e!177830))))

(assert (=> b!285900 (= res!130678 (matchR!295 (regex!749 (get!1321 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 lt!119807))))) (list!1628 (charsOf!394 lt!119807))))))

(declare-fun b!285901 () Bool)

(assert (=> b!285901 (= e!177830 (= (rule!1346 lt!119807) (get!1321 (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 lt!119807))))))))

(assert (= (and d!84714 res!130677) b!285900))

(assert (= (and b!285900 res!130678) b!285901))

(assert (=> d!84714 m!368191))

(assert (=> d!84714 m!368191))

(declare-fun m!370213 () Bool)

(assert (=> d!84714 m!370213))

(declare-fun m!370215 () Bool)

(assert (=> d!84714 m!370215))

(assert (=> d!84714 m!368031))

(assert (=> b!285900 m!368139))

(assert (=> b!285900 m!368141))

(assert (=> b!285900 m!368141))

(declare-fun m!370217 () Bool)

(assert (=> b!285900 m!370217))

(assert (=> b!285900 m!368191))

(declare-fun m!370219 () Bool)

(assert (=> b!285900 m!370219))

(assert (=> b!285900 m!368191))

(assert (=> b!285900 m!368139))

(assert (=> b!285901 m!368191))

(assert (=> b!285901 m!368191))

(assert (=> b!285901 m!370219))

(assert (=> b!284701 d!84714))

(declare-fun b!285902 () Bool)

(declare-fun e!177832 () Option!861)

(assert (=> b!285902 (= e!177832 (Some!860 (h!9311 rules!1920)))))

(declare-fun b!285903 () Bool)

(declare-fun lt!120398 () Unit!5248)

(declare-fun lt!120399 () Unit!5248)

(assert (=> b!285903 (= lt!120398 lt!120399)))

(assert (=> b!285903 (rulesInvariant!601 thiss!17480 (t!39948 rules!1920))))

(assert (=> b!285903 (= lt!120399 (lemmaInvariantOnRulesThenOnTail!38 thiss!17480 (h!9311 rules!1920) (t!39948 rules!1920)))))

(declare-fun e!177834 () Option!861)

(assert (=> b!285903 (= e!177834 (getRuleFromTag!136 thiss!17480 (t!39948 rules!1920) (tag!963 (rule!1346 lt!119807))))))

(declare-fun b!285904 () Bool)

(declare-fun e!177831 () Bool)

(declare-fun e!177833 () Bool)

(assert (=> b!285904 (= e!177831 e!177833)))

(declare-fun res!130680 () Bool)

(assert (=> b!285904 (=> (not res!130680) (not e!177833))))

(declare-fun lt!120400 () Option!861)

(assert (=> b!285904 (= res!130680 (contains!765 rules!1920 (get!1321 lt!120400)))))

(declare-fun b!285905 () Bool)

(assert (=> b!285905 (= e!177832 e!177834)))

(declare-fun c!54201 () Bool)

(assert (=> b!285905 (= c!54201 (and ((_ is Cons!3914) rules!1920) (not (= (tag!963 (h!9311 rules!1920)) (tag!963 (rule!1346 lt!119807))))))))

(declare-fun b!285906 () Bool)

(assert (=> b!285906 (= e!177833 (= (tag!963 (get!1321 lt!120400)) (tag!963 (rule!1346 lt!119807))))))

(declare-fun b!285907 () Bool)

(assert (=> b!285907 (= e!177834 None!860)))

(declare-fun d!84716 () Bool)

(assert (=> d!84716 e!177831))

(declare-fun res!130679 () Bool)

(assert (=> d!84716 (=> res!130679 e!177831)))

(assert (=> d!84716 (= res!130679 (isEmpty!2588 lt!120400))))

(assert (=> d!84716 (= lt!120400 e!177832)))

(declare-fun c!54200 () Bool)

(assert (=> d!84716 (= c!54200 (and ((_ is Cons!3914) rules!1920) (= (tag!963 (h!9311 rules!1920)) (tag!963 (rule!1346 lt!119807)))))))

(assert (=> d!84716 (rulesInvariant!601 thiss!17480 rules!1920)))

(assert (=> d!84716 (= (getRuleFromTag!136 thiss!17480 rules!1920 (tag!963 (rule!1346 lt!119807))) lt!120400)))

(assert (= (and d!84716 c!54200) b!285902))

(assert (= (and d!84716 (not c!54200)) b!285905))

(assert (= (and b!285905 c!54201) b!285903))

(assert (= (and b!285905 (not c!54201)) b!285907))

(assert (= (and d!84716 (not res!130679)) b!285904))

(assert (= (and b!285904 res!130680) b!285906))

(assert (=> b!285903 m!370131))

(assert (=> b!285903 m!370133))

(declare-fun m!370221 () Bool)

(assert (=> b!285903 m!370221))

(declare-fun m!370223 () Bool)

(assert (=> b!285904 m!370223))

(assert (=> b!285904 m!370223))

(declare-fun m!370225 () Bool)

(assert (=> b!285904 m!370225))

(assert (=> b!285906 m!370223))

(declare-fun m!370227 () Bool)

(assert (=> d!84716 m!370227))

(assert (=> d!84716 m!368031))

(assert (=> b!284701 d!84716))

(declare-fun d!84718 () Bool)

(declare-fun lt!120401 () Bool)

(assert (=> d!84718 (= lt!120401 (select (content!575 (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170)))) lt!119786))))

(declare-fun e!177835 () Bool)

(assert (=> d!84718 (= lt!120401 e!177835)))

(declare-fun res!130682 () Bool)

(assert (=> d!84718 (=> (not res!130682) (not e!177835))))

(assert (=> d!84718 (= res!130682 ((_ is Cons!3913) (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170)))))))

(assert (=> d!84718 (= (contains!763 (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170))) lt!119786) lt!120401)))

(declare-fun b!285908 () Bool)

(declare-fun e!177836 () Bool)

(assert (=> b!285908 (= e!177835 e!177836)))

(declare-fun res!130681 () Bool)

(assert (=> b!285908 (=> res!130681 e!177836)))

(assert (=> b!285908 (= res!130681 (= (h!9310 (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170)))) lt!119786))))

(declare-fun b!285909 () Bool)

(assert (=> b!285909 (= e!177836 (contains!763 (t!39947 (usedCharacters!86 (regex!749 (rule!1346 separatorToken!170)))) lt!119786))))

(assert (= (and d!84718 res!130682) b!285908))

(assert (= (and b!285908 (not res!130681)) b!285909))

(assert (=> d!84718 m!368181))

(declare-fun m!370229 () Bool)

(assert (=> d!84718 m!370229))

(declare-fun m!370231 () Bool)

(assert (=> d!84718 m!370231))

(declare-fun m!370233 () Bool)

(assert (=> b!285909 m!370233))

(assert (=> b!284701 d!84718))

(declare-fun b!285910 () Bool)

(declare-fun res!130685 () Bool)

(declare-fun e!177838 () Bool)

(assert (=> b!285910 (=> (not res!130685) (not e!177838))))

(declare-fun lt!120402 () tuple2!4448)

(assert (=> b!285910 (= res!130685 (= (list!1629 (_1!2440 lt!120402)) (_1!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119776)))))))

(declare-fun d!84720 () Bool)

(assert (=> d!84720 e!177838))

(declare-fun res!130684 () Bool)

(assert (=> d!84720 (=> (not res!130684) (not e!177838))))

(declare-fun e!177839 () Bool)

(assert (=> d!84720 (= res!130684 e!177839)))

(declare-fun c!54202 () Bool)

(assert (=> d!84720 (= c!54202 (> (size!3133 (_1!2440 lt!120402)) 0))))

(assert (=> d!84720 (= lt!120402 (lexTailRecV2!190 thiss!17480 rules!1920 lt!119776 (BalanceConc!2649 Empty!1320) lt!119776 (BalanceConc!2651 Empty!1321)))))

(assert (=> d!84720 (= (lex!427 thiss!17480 rules!1920 lt!119776) lt!120402)))

(declare-fun b!285911 () Bool)

(assert (=> b!285911 (= e!177838 (= (list!1628 (_2!2440 lt!120402)) (_2!2442 (lexList!223 thiss!17480 rules!1920 (list!1628 lt!119776)))))))

(declare-fun b!285912 () Bool)

(declare-fun e!177837 () Bool)

(assert (=> b!285912 (= e!177839 e!177837)))

(declare-fun res!130683 () Bool)

(assert (=> b!285912 (= res!130683 (< (size!3139 (_2!2440 lt!120402)) (size!3139 lt!119776)))))

(assert (=> b!285912 (=> (not res!130683) (not e!177837))))

(declare-fun b!285913 () Bool)

(assert (=> b!285913 (= e!177837 (not (isEmpty!2577 (_1!2440 lt!120402))))))

(declare-fun b!285914 () Bool)

(assert (=> b!285914 (= e!177839 (= (_2!2440 lt!120402) lt!119776))))

(assert (= (and d!84720 c!54202) b!285912))

(assert (= (and d!84720 (not c!54202)) b!285914))

(assert (= (and b!285912 res!130683) b!285913))

(assert (= (and d!84720 res!130684) b!285910))

(assert (= (and b!285910 res!130685) b!285911))

(declare-fun m!370235 () Bool)

(assert (=> d!84720 m!370235))

(declare-fun m!370237 () Bool)

(assert (=> d!84720 m!370237))

(declare-fun m!370239 () Bool)

(assert (=> b!285912 m!370239))

(declare-fun m!370241 () Bool)

(assert (=> b!285912 m!370241))

(declare-fun m!370243 () Bool)

(assert (=> b!285913 m!370243))

(declare-fun m!370245 () Bool)

(assert (=> b!285911 m!370245))

(declare-fun m!370247 () Bool)

(assert (=> b!285911 m!370247))

(assert (=> b!285911 m!370247))

(declare-fun m!370249 () Bool)

(assert (=> b!285911 m!370249))

(declare-fun m!370251 () Bool)

(assert (=> b!285910 m!370251))

(assert (=> b!285910 m!370247))

(assert (=> b!285910 m!370247))

(assert (=> b!285910 m!370249))

(assert (=> b!284701 d!84720))

(declare-fun d!84722 () Bool)

(declare-fun res!130686 () Bool)

(declare-fun e!177840 () Bool)

(assert (=> d!84722 (=> (not res!130686) (not e!177840))))

(assert (=> d!84722 (= res!130686 (not (isEmpty!2574 (originalCharacters!792 separatorToken!170))))))

(assert (=> d!84722 (= (inv!4841 separatorToken!170) e!177840)))

(declare-fun b!285915 () Bool)

(declare-fun res!130687 () Bool)

(assert (=> b!285915 (=> (not res!130687) (not e!177840))))

(assert (=> b!285915 (= res!130687 (= (originalCharacters!792 separatorToken!170) (list!1628 (dynLambda!2064 (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (value!25662 separatorToken!170)))))))

(declare-fun b!285916 () Bool)

(assert (=> b!285916 (= e!177840 (= (size!3132 separatorToken!170) (size!3137 (originalCharacters!792 separatorToken!170))))))

(assert (= (and d!84722 res!130686) b!285915))

(assert (= (and b!285915 res!130687) b!285916))

(declare-fun b_lambda!9423 () Bool)

(assert (=> (not b_lambda!9423) (not b!285915)))

(assert (=> b!285915 t!39978))

(declare-fun b_and!23007 () Bool)

(assert (= b_and!23001 (and (=> t!39978 result!20262) b_and!23007)))

(assert (=> b!285915 t!39980))

(declare-fun b_and!23009 () Bool)

(assert (= b_and!23003 (and (=> t!39980 result!20264) b_and!23009)))

(assert (=> b!285915 t!39982))

(declare-fun b_and!23011 () Bool)

(assert (= b_and!23005 (and (=> t!39982 result!20266) b_and!23011)))

(declare-fun m!370253 () Bool)

(assert (=> d!84722 m!370253))

(assert (=> b!285915 m!368727))

(assert (=> b!285915 m!368727))

(declare-fun m!370255 () Bool)

(assert (=> b!285915 m!370255))

(declare-fun m!370257 () Bool)

(assert (=> b!285916 m!370257))

(assert (=> start!30810 d!84722))

(declare-fun e!177843 () Bool)

(assert (=> b!284698 (= tp!104751 e!177843)))

(declare-fun b!285928 () Bool)

(declare-fun tp!104836 () Bool)

(declare-fun tp!104832 () Bool)

(assert (=> b!285928 (= e!177843 (and tp!104836 tp!104832))))

(declare-fun b!285929 () Bool)

(declare-fun tp!104834 () Bool)

(assert (=> b!285929 (= e!177843 tp!104834)))

(declare-fun b!285930 () Bool)

(declare-fun tp!104833 () Bool)

(declare-fun tp!104835 () Bool)

(assert (=> b!285930 (= e!177843 (and tp!104833 tp!104835))))

(declare-fun b!285927 () Bool)

(declare-fun tp_is_empty!1843 () Bool)

(assert (=> b!285927 (= e!177843 tp_is_empty!1843)))

(assert (= (and b!284698 ((_ is ElementMatch!973) (regex!749 (h!9311 rules!1920)))) b!285927))

(assert (= (and b!284698 ((_ is Concat!1745) (regex!749 (h!9311 rules!1920)))) b!285928))

(assert (= (and b!284698 ((_ is Star!973) (regex!749 (h!9311 rules!1920)))) b!285929))

(assert (= (and b!284698 ((_ is Union!973) (regex!749 (h!9311 rules!1920)))) b!285930))

(declare-fun b!285944 () Bool)

(declare-fun b_free!10429 () Bool)

(declare-fun b_next!10429 () Bool)

(assert (=> b!285944 (= b_free!10429 (not b_next!10429))))

(declare-fun tp!104847 () Bool)

(declare-fun b_and!23013 () Bool)

(assert (=> b!285944 (= tp!104847 b_and!23013)))

(declare-fun b_free!10431 () Bool)

(declare-fun b_next!10431 () Bool)

(assert (=> b!285944 (= b_free!10431 (not b_next!10431))))

(declare-fun t!40026 () Bool)

(declare-fun tb!16529 () Bool)

(assert (=> (and b!285944 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170)))) t!40026) tb!16529))

(declare-fun result!20304 () Bool)

(assert (= result!20304 result!20262))

(assert (=> b!285915 t!40026))

(declare-fun t!40028 () Bool)

(declare-fun tb!16531 () Bool)

(assert (=> (and b!285944 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465))))) t!40028) tb!16531))

(declare-fun result!20306 () Bool)

(assert (= result!20306 result!20240))

(assert (=> b!284925 t!40028))

(assert (=> d!84362 t!40028))

(declare-fun t!40030 () Bool)

(declare-fun tb!16533 () Bool)

(assert (=> (and b!285944 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) (toChars!1355 (transformation!749 (rule!1346 lt!119807)))) t!40030) tb!16533))

(declare-fun result!20308 () Bool)

(assert (= result!20308 result!20294))

(assert (=> d!84708 t!40030))

(assert (=> d!84350 t!40026))

(declare-fun b_and!23015 () Bool)

(declare-fun tp!104849 () Bool)

(assert (=> b!285944 (= tp!104849 (and (=> t!40026 result!20304) (=> t!40028 result!20306) (=> t!40030 result!20308) b_and!23015))))

(declare-fun e!177861 () Bool)

(assert (=> b!284677 (= tp!104750 e!177861)))

(declare-fun e!177857 () Bool)

(declare-fun tp!104850 () Bool)

(declare-fun e!177860 () Bool)

(declare-fun b!285942 () Bool)

(assert (=> b!285942 (= e!177860 (and (inv!21 (value!25662 (h!9312 (t!39949 tokens!465)))) e!177857 tp!104850))))

(declare-fun e!177858 () Bool)

(assert (=> b!285944 (= e!177858 (and tp!104847 tp!104849))))

(declare-fun b!285941 () Bool)

(declare-fun tp!104851 () Bool)

(assert (=> b!285941 (= e!177861 (and (inv!4841 (h!9312 (t!39949 tokens!465))) e!177860 tp!104851))))

(declare-fun tp!104848 () Bool)

(declare-fun b!285943 () Bool)

(assert (=> b!285943 (= e!177857 (and tp!104848 (inv!4838 (tag!963 (rule!1346 (h!9312 (t!39949 tokens!465))))) (inv!4842 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) e!177858))))

(assert (= b!285943 b!285944))

(assert (= b!285942 b!285943))

(assert (= b!285941 b!285942))

(assert (= (and b!284677 ((_ is Cons!3915) (t!39949 tokens!465))) b!285941))

(declare-fun m!370259 () Bool)

(assert (=> b!285942 m!370259))

(declare-fun m!370261 () Bool)

(assert (=> b!285941 m!370261))

(declare-fun m!370263 () Bool)

(assert (=> b!285943 m!370263))

(declare-fun m!370265 () Bool)

(assert (=> b!285943 m!370265))

(declare-fun b!285947 () Bool)

(declare-fun e!177864 () Bool)

(assert (=> b!285947 (= e!177864 true)))

(declare-fun b!285946 () Bool)

(declare-fun e!177863 () Bool)

(assert (=> b!285946 (= e!177863 e!177864)))

(declare-fun b!285945 () Bool)

(declare-fun e!177862 () Bool)

(assert (=> b!285945 (= e!177862 e!177863)))

(assert (=> b!284736 e!177862))

(assert (= b!285946 b!285947))

(assert (= b!285945 b!285946))

(assert (= (and b!284736 ((_ is Cons!3914) (t!39948 rules!1920))) b!285945))

(assert (=> b!285947 (< (dynLambda!2059 order!3077 (toValue!1496 (transformation!749 (h!9311 (t!39948 rules!1920))))) (dynLambda!2060 order!3079 lambda!9736))))

(assert (=> b!285947 (< (dynLambda!2061 order!3081 (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920))))) (dynLambda!2060 order!3079 lambda!9736))))

(declare-fun b!285958 () Bool)

(declare-fun b_free!10433 () Bool)

(declare-fun b_next!10433 () Bool)

(assert (=> b!285958 (= b_free!10433 (not b_next!10433))))

(declare-fun tp!104860 () Bool)

(declare-fun b_and!23017 () Bool)

(assert (=> b!285958 (= tp!104860 b_and!23017)))

(declare-fun b_free!10435 () Bool)

(declare-fun b_next!10435 () Bool)

(assert (=> b!285958 (= b_free!10435 (not b_next!10435))))

(declare-fun tb!16535 () Bool)

(declare-fun t!40032 () Bool)

(assert (=> (and b!285958 (= (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920)))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170)))) t!40032) tb!16535))

(declare-fun result!20312 () Bool)

(assert (= result!20312 result!20262))

(assert (=> b!285915 t!40032))

(declare-fun t!40034 () Bool)

(declare-fun tb!16537 () Bool)

(assert (=> (and b!285958 (= (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920)))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465))))) t!40034) tb!16537))

(declare-fun result!20314 () Bool)

(assert (= result!20314 result!20240))

(assert (=> b!284925 t!40034))

(assert (=> d!84362 t!40034))

(declare-fun tb!16539 () Bool)

(declare-fun t!40036 () Bool)

(assert (=> (and b!285958 (= (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920)))) (toChars!1355 (transformation!749 (rule!1346 lt!119807)))) t!40036) tb!16539))

(declare-fun result!20316 () Bool)

(assert (= result!20316 result!20294))

(assert (=> d!84708 t!40036))

(assert (=> d!84350 t!40032))

(declare-fun b_and!23019 () Bool)

(declare-fun tp!104863 () Bool)

(assert (=> b!285958 (= tp!104863 (and (=> t!40036 result!20316) (=> t!40032 result!20312) (=> t!40034 result!20314) b_and!23019))))

(declare-fun e!177874 () Bool)

(assert (=> b!285958 (= e!177874 (and tp!104860 tp!104863))))

(declare-fun b!285957 () Bool)

(declare-fun e!177873 () Bool)

(declare-fun tp!104862 () Bool)

(assert (=> b!285957 (= e!177873 (and tp!104862 (inv!4838 (tag!963 (h!9311 (t!39948 rules!1920)))) (inv!4842 (transformation!749 (h!9311 (t!39948 rules!1920)))) e!177874))))

(declare-fun b!285956 () Bool)

(declare-fun e!177876 () Bool)

(declare-fun tp!104861 () Bool)

(assert (=> b!285956 (= e!177876 (and e!177873 tp!104861))))

(assert (=> b!284707 (= tp!104746 e!177876)))

(assert (= b!285957 b!285958))

(assert (= b!285956 b!285957))

(assert (= (and b!284707 ((_ is Cons!3914) (t!39948 rules!1920))) b!285956))

(declare-fun m!370267 () Bool)

(assert (=> b!285957 m!370267))

(declare-fun m!370269 () Bool)

(assert (=> b!285957 m!370269))

(declare-fun e!177877 () Bool)

(assert (=> b!284705 (= tp!104747 e!177877)))

(declare-fun b!285960 () Bool)

(declare-fun tp!104868 () Bool)

(declare-fun tp!104864 () Bool)

(assert (=> b!285960 (= e!177877 (and tp!104868 tp!104864))))

(declare-fun b!285961 () Bool)

(declare-fun tp!104866 () Bool)

(assert (=> b!285961 (= e!177877 tp!104866)))

(declare-fun b!285962 () Bool)

(declare-fun tp!104865 () Bool)

(declare-fun tp!104867 () Bool)

(assert (=> b!285962 (= e!177877 (and tp!104865 tp!104867))))

(declare-fun b!285959 () Bool)

(assert (=> b!285959 (= e!177877 tp_is_empty!1843)))

(assert (= (and b!284705 ((_ is ElementMatch!973) (regex!749 (rule!1346 (h!9312 tokens!465))))) b!285959))

(assert (= (and b!284705 ((_ is Concat!1745) (regex!749 (rule!1346 (h!9312 tokens!465))))) b!285960))

(assert (= (and b!284705 ((_ is Star!973) (regex!749 (rule!1346 (h!9312 tokens!465))))) b!285961))

(assert (= (and b!284705 ((_ is Union!973) (regex!749 (rule!1346 (h!9312 tokens!465))))) b!285962))

(declare-fun b!285967 () Bool)

(declare-fun e!177880 () Bool)

(declare-fun tp!104871 () Bool)

(assert (=> b!285967 (= e!177880 (and tp_is_empty!1843 tp!104871))))

(assert (=> b!284716 (= tp!104748 e!177880)))

(assert (= (and b!284716 ((_ is Cons!3913) (originalCharacters!792 (h!9312 tokens!465)))) b!285967))

(declare-fun b!285968 () Bool)

(declare-fun e!177881 () Bool)

(declare-fun tp!104872 () Bool)

(assert (=> b!285968 (= e!177881 (and tp_is_empty!1843 tp!104872))))

(assert (=> b!284681 (= tp!104753 e!177881)))

(assert (= (and b!284681 ((_ is Cons!3913) (originalCharacters!792 separatorToken!170))) b!285968))

(declare-fun e!177882 () Bool)

(assert (=> b!284722 (= tp!104749 e!177882)))

(declare-fun b!285970 () Bool)

(declare-fun tp!104877 () Bool)

(declare-fun tp!104873 () Bool)

(assert (=> b!285970 (= e!177882 (and tp!104877 tp!104873))))

(declare-fun b!285971 () Bool)

(declare-fun tp!104875 () Bool)

(assert (=> b!285971 (= e!177882 tp!104875)))

(declare-fun b!285972 () Bool)

(declare-fun tp!104874 () Bool)

(declare-fun tp!104876 () Bool)

(assert (=> b!285972 (= e!177882 (and tp!104874 tp!104876))))

(declare-fun b!285969 () Bool)

(assert (=> b!285969 (= e!177882 tp_is_empty!1843)))

(assert (= (and b!284722 ((_ is ElementMatch!973) (regex!749 (rule!1346 separatorToken!170)))) b!285969))

(assert (= (and b!284722 ((_ is Concat!1745) (regex!749 (rule!1346 separatorToken!170)))) b!285970))

(assert (= (and b!284722 ((_ is Star!973) (regex!749 (rule!1346 separatorToken!170)))) b!285971))

(assert (= (and b!284722 ((_ is Union!973) (regex!749 (rule!1346 separatorToken!170)))) b!285972))

(declare-fun b_lambda!9425 () Bool)

(assert (= b_lambda!9417 (or b!284711 b_lambda!9425)))

(declare-fun bs!32294 () Bool)

(declare-fun d!84724 () Bool)

(assert (= bs!32294 (and d!84724 b!284711)))

(assert (=> bs!32294 (= (dynLambda!2065 lambda!9735 (h!9312 lt!119799)) (not (isSeparator!749 (rule!1346 (h!9312 lt!119799)))))))

(assert (=> b!285874 d!84724))

(declare-fun b_lambda!9427 () Bool)

(assert (= b_lambda!9357 (or (and b!284689 b_free!10411 (= (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) (and b!285958 b_free!10435 (= (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920)))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) (and b!284708 b_free!10419 (= (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) (and b!284702 b_free!10415) (and b!285944 b_free!10431 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) b_lambda!9427)))

(declare-fun b_lambda!9429 () Bool)

(assert (= b_lambda!9379 (or b!284711 b_lambda!9429)))

(declare-fun bs!32295 () Bool)

(declare-fun d!84726 () Bool)

(assert (= bs!32295 (and d!84726 b!284711)))

(assert (=> bs!32295 (= (dynLambda!2065 lambda!9735 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763)))) (not (isSeparator!749 (rule!1346 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119763)))))))))

(assert (=> b!285412 d!84726))

(declare-fun b_lambda!9431 () Bool)

(assert (= b_lambda!9359 (or b!284711 b_lambda!9431)))

(declare-fun bs!32296 () Bool)

(declare-fun d!84728 () Bool)

(assert (= bs!32296 (and d!84728 b!284711)))

(assert (=> bs!32296 (= (dynLambda!2065 lambda!9735 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769)))) (not (isSeparator!749 (rule!1346 (h!9312 (_1!2442 (lexList!223 thiss!17480 rules!1920 lt!119769)))))))))

(assert (=> b!284954 d!84728))

(declare-fun b_lambda!9433 () Bool)

(assert (= b_lambda!9387 (or b!284711 b_lambda!9433)))

(declare-fun bs!32297 () Bool)

(declare-fun d!84730 () Bool)

(assert (= bs!32297 (and d!84730 b!284711)))

(assert (=> bs!32297 (= (dynLambda!2065 lambda!9735 (h!9312 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))))) (not (isSeparator!749 (rule!1346 (h!9312 (list!1629 (_1!2440 (lex!427 thiss!17480 rules!1920 lt!119778))))))))))

(assert (=> b!285576 d!84730))

(declare-fun b_lambda!9435 () Bool)

(assert (= b_lambda!9419 (or b!284685 b_lambda!9435)))

(declare-fun bs!32298 () Bool)

(declare-fun d!84732 () Bool)

(assert (= bs!32298 (and d!84732 b!284685)))

(assert (=> bs!32298 (= (dynLambda!2065 lambda!9736 lt!119807) (rulesProduceIndividualToken!384 thiss!17480 rules!1920 lt!119807))))

(assert (=> bs!32298 m!368185))

(assert (=> d!84692 d!84732))

(declare-fun b_lambda!9437 () Bool)

(assert (= b_lambda!9423 (or (and b!284702 b_free!10415 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) (and b!284708 b_free!10419) (and b!285958 b_free!10435 (= (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920)))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) (and b!284689 b_free!10411 (= (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) (and b!285944 b_free!10431 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) b_lambda!9437)))

(declare-fun b_lambda!9439 () Bool)

(assert (= b_lambda!9369 (or (and b!284702 b_free!10415 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) (and b!284708 b_free!10419) (and b!285958 b_free!10435 (= (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920)))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) (and b!284689 b_free!10411 (= (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) (and b!285944 b_free!10431 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))))) b_lambda!9439)))

(declare-fun b_lambda!9441 () Bool)

(assert (= b_lambda!9381 (or b!284711 b_lambda!9441)))

(declare-fun bs!32299 () Bool)

(declare-fun d!84734 () Bool)

(assert (= bs!32299 (and d!84734 b!284711)))

(assert (=> bs!32299 (= (dynLambda!2065 lambda!9735 (h!9312 tokens!465)) (not (isSeparator!749 (rule!1346 (h!9312 tokens!465)))))))

(assert (=> b!285426 d!84734))

(declare-fun b_lambda!9443 () Bool)

(assert (= b_lambda!9385 (or b!284685 b_lambda!9443)))

(declare-fun bs!32300 () Bool)

(declare-fun d!84736 () Bool)

(assert (= bs!32300 (and d!84736 b!284685)))

(assert (=> bs!32300 (= (dynLambda!2065 lambda!9736 (h!9312 tokens!465)) (rulesProduceIndividualToken!384 thiss!17480 rules!1920 (h!9312 tokens!465)))))

(assert (=> bs!32300 m!368047))

(assert (=> d!84522 d!84736))

(declare-fun b_lambda!9445 () Bool)

(assert (= b_lambda!9371 (or (and b!284689 b_free!10411 (= (toChars!1355 (transformation!749 (h!9311 rules!1920))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) (and b!285958 b_free!10435 (= (toChars!1355 (transformation!749 (h!9311 (t!39948 rules!1920)))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) (and b!284708 b_free!10419 (= (toChars!1355 (transformation!749 (rule!1346 separatorToken!170))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) (and b!284702 b_free!10415) (and b!285944 b_free!10431 (= (toChars!1355 (transformation!749 (rule!1346 (h!9312 (t!39949 tokens!465))))) (toChars!1355 (transformation!749 (rule!1346 (h!9312 tokens!465)))))) b_lambda!9445)))

(check-sat (not d!84366) (not d!84632) (not b!285889) (not b!285929) (not b!285332) (not d!84550) (not b!285582) (not b!285449) (not d!84672) (not b!285592) (not d!84636) (not b!284933) (not b!285302) (not b!285930) (not b!285903) (not d!84598) (not b!285531) (not d!84404) (not b!284956) (not b!285791) (not d!84558) (not bm!16112) (not b!284926) (not d!84528) (not d!84274) (not bm!16075) (not d!84370) (not b!285578) b_and!22941 (not d!84694) (not b!285438) (not d!84262) (not b!285563) (not d!84540) (not d!84698) (not bm!16029) (not b!284895) (not bm!15976) (not b!285564) (not d!84538) (not b!285793) (not b!285415) (not b!285915) (not b!285588) (not b!284998) (not b!285177) (not d!84692) (not b!284860) (not b!285900) (not b!285169) (not b!285611) (not b!285569) (not b!285559) (not d!84462) (not d!84496) (not d!84722) (not b!284957) (not b!285941) (not bm!15975) (not b!285148) (not d!84420) (not b!285591) (not b!285629) (not bm!16102) (not b!285794) (not b!285562) (not b!285330) (not b!285971) (not b!285583) (not b!285957) (not bm!16069) (not d!84296) (not b!284938) (not b!285503) (not b!285430) (not b!285882) (not b!285488) (not b!285311) (not d!84298) (not d!84290) (not b!285418) (not b!285328) (not b!285654) (not d!84572) (not b!285143) tp_is_empty!1843 (not d!84350) (not d!84706) (not d!84644) (not b!285943) (not b!285883) (not b!284815) (not b!285913) (not d!84522) (not d!84716) (not b!285307) (not b!284925) (not b!285165) (not b!285329) (not b!284891) (not d!84280) (not d!84548) (not bm!15972) (not b_lambda!9427) (not b!285899) (not b!284814) (not b!285876) (not b!285945) (not bm!16055) (not b_lambda!9437) (not b!285566) (not b!285289) (not b!285427) (not d!84364) (not b!285968) (not b!285624) (not b!285408) (not b!285437) (not d!84702) (not b_next!10429) (not b!285434) (not d!84536) (not tb!16481) (not b!285450) (not d!84542) (not b!285587) (not b!285942) (not b!285075) (not bm!16063) (not b!285560) (not b!285144) (not b!284889) (not bm!15979) (not d!84526) (not d!84288) (not b!284920) (not b!285928) (not b_lambda!9425) (not b_lambda!9433) b_and!22933 (not b!285618) (not d!84358) (not bm!16062) (not b!285419) (not b!285584) (not d!84614) (not d!84530) (not b!285869) (not d!84532) (not d!84282) (not d!84520) (not b!284859) (not b!285628) (not b!285890) (not b!285309) (not b!285443) (not d!84714) (not b_lambda!9431) (not b_lambda!9445) (not b_next!10409) (not b!284853) (not b!285912) (not b_next!10431) (not b!285806) (not b!285972) (not d!84712) (not b!285627) (not d!84670) (not b!285877) (not b!284936) (not d!84334) (not b!284937) (not b!285675) (not b_next!10417) (not b!285962) (not d!84268) (not d!84646) (not b!285407) (not b!285173) (not b!284856) (not b!285626) (not b!285303) (not b!285777) (not b!285308) (not b!285570) (not bm!16068) (not b!285967) (not b!285287) b_and!23011 (not bm!15996) b_and!23007 (not bm!15998) (not bs!32298) (not bm!16056) (not b!285909) b_and!23015 (not b!285776) (not d!84356) (not b!284854) (not b!285529) (not b_next!10413) (not b!285530) (not b!285901) (not b!285961) (not b!285414) (not d!84448) (not b!284855) (not b!285775) (not d!84630) (not b!285565) (not b!284996) (not d!84410) (not b!285772) (not b!285539) (not d!84354) (not d!84590) (not b!285910) (not b!285631) (not b!285906) (not b!285313) b_and!23013 (not b!285808) (not d!84662) (not b!285787) (not b!285956) (not d!84720) (not b_next!10415) (not b!285334) (not b_lambda!9441) (not b!285625) (not d!84666) (not bm!16079) (not b!285769) (not d!84576) (not b!285139) (not bm!16103) (not bm!16072) (not tb!16523) (not b!285317) (not d!84292) (not b!284935) (not b!285170) (not b!285754) (not b!285070) (not b!284997) (not b!285960) (not b!285880) (not d!84306) (not b!285162) (not b_next!10411) (not d!84414) (not d!84302) (not b!285586) (not d!84498) (not b!285076) (not bm!16026) (not b_next!10435) (not bm!16101) (not b_lambda!9439) (not d!84688) (not b!285405) (not tb!16499) (not b!285288) (not d!84508) (not d!84618) (not b!285439) (not b!285970) (not d!84438) (not b!285916) (not b!284890) (not bm!16113) (not b_next!10419) (not d!84360) (not b!285574) (not d!84568) (not b_lambda!9429) (not d!84534) (not d!84560) (not b!285881) (not b!285166) (not b_lambda!9421) (not b!285146) (not b!285072) (not b!285417) (not d!84690) b_and!23017 (not b!285911) (not d!84454) (not d!84368) (not b!285069) (not b!285581) (not b!285435) (not bm!16078) (not b!284857) (not d!84718) b_and!23009 (not b!284939) (not b!285589) (not bm!16080) (not d!84652) (not bm!15999) (not d!84446) (not d!84708) (not b!285630) (not b!284893) (not d!84512) (not b!285446) (not b!285579) (not d!84650) (not b!285178) (not d!84362) (not b!285151) (not bm!16111) (not bs!32300) (not b!285174) (not b!285606) (not b!285431) (not b!285535) (not b!285406) (not b!285338) (not bm!16025) (not b!284934) (not d!84504) (not d!84668) (not bm!16067) (not b_lambda!9435) (not b!285792) (not b!285571) (not b!285533) (not b_next!10433) (not b!285140) b_and!22937 (not b!285608) (not b!285444) (not b!285868) (not bm!15995) (not bm!16071) (not b!285147) (not b!285770) (not b!285616) (not bm!16064) (not b!285655) (not d!84638) (not b!284940) b_and!23019 (not d!84460) (not b!284899) (not b!285525) (not b!285904) (not bm!16114) (not d!84294) (not b!285879) (not d!84418) (not b!285871) (not b!285161) (not d!84466) (not b!284858) (not b!285674) (not d!84352) (not b!285673) (not b!285300) (not b!284931) (not b_lambda!9443))
(check-sat b_and!22941 (not b_next!10429) b_and!22933 (not b_next!10417) b_and!23015 (not b_next!10413) (not b_next!10411) (not b_next!10435) (not b_next!10419) b_and!23017 b_and!23009 (not b_next!10433) b_and!22937 b_and!23019 (not b_next!10409) (not b_next!10431) b_and!23011 b_and!23007 b_and!23013 (not b_next!10415))
