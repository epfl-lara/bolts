; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192260 () Bool)

(assert start!192260)

(declare-fun b!1918647 () Bool)

(declare-fun b_free!54601 () Bool)

(declare-fun b_next!55305 () Bool)

(assert (=> b!1918647 (= b_free!54601 (not b_next!55305))))

(declare-fun tp!547850 () Bool)

(declare-fun b_and!149807 () Bool)

(assert (=> b!1918647 (= tp!547850 b_and!149807)))

(declare-fun b_free!54603 () Bool)

(declare-fun b_next!55307 () Bool)

(assert (=> b!1918647 (= b_free!54603 (not b_next!55307))))

(declare-fun tp!547843 () Bool)

(declare-fun b_and!149809 () Bool)

(assert (=> b!1918647 (= tp!547843 b_and!149809)))

(declare-fun b!1918644 () Bool)

(declare-fun b_free!54605 () Bool)

(declare-fun b_next!55309 () Bool)

(assert (=> b!1918644 (= b_free!54605 (not b_next!55309))))

(declare-fun tp!547845 () Bool)

(declare-fun b_and!149811 () Bool)

(assert (=> b!1918644 (= tp!547845 b_and!149811)))

(declare-fun b_free!54607 () Bool)

(declare-fun b_next!55311 () Bool)

(assert (=> b!1918644 (= b_free!54607 (not b_next!55311))))

(declare-fun tp!547846 () Bool)

(declare-fun b_and!149813 () Bool)

(assert (=> b!1918644 (= tp!547846 b_and!149813)))

(declare-fun b!1918634 () Bool)

(declare-fun b_free!54609 () Bool)

(declare-fun b_next!55313 () Bool)

(assert (=> b!1918634 (= b_free!54609 (not b_next!55313))))

(declare-fun tp!547853 () Bool)

(declare-fun b_and!149815 () Bool)

(assert (=> b!1918634 (= tp!547853 b_and!149815)))

(declare-fun b_free!54611 () Bool)

(declare-fun b_next!55315 () Bool)

(assert (=> b!1918634 (= b_free!54611 (not b_next!55315))))

(declare-fun tp!547852 () Bool)

(declare-fun b_and!149817 () Bool)

(assert (=> b!1918634 (= tp!547852 b_and!149817)))

(declare-fun b!1918627 () Bool)

(declare-fun e!1226125 () Bool)

(assert (=> b!1918627 (= e!1226125 true)))

(declare-datatypes ((LexerInterface!3505 0))(
  ( (LexerInterfaceExt!3502 (__x!13554 Int)) (Lexer!3503) )
))
(declare-fun thiss!23328 () LexerInterface!3505)

(declare-datatypes ((List!21836 0))(
  ( (Nil!21754) (Cons!21754 (h!27155 (_ BitVec 16)) (t!178629 List!21836)) )
))
(declare-datatypes ((TokenValue!4028 0))(
  ( (FloatLiteralValue!8056 (text!28641 List!21836)) (TokenValueExt!4027 (__x!13555 Int)) (Broken!20140 (value!122487 List!21836)) (Object!4109) (End!4028) (Def!4028) (Underscore!4028) (Match!4028) (Else!4028) (Error!4028) (Case!4028) (If!4028) (Extends!4028) (Abstract!4028) (Class!4028) (Val!4028) (DelimiterValue!8056 (del!4088 List!21836)) (KeywordValue!4034 (value!122488 List!21836)) (CommentValue!8056 (value!122489 List!21836)) (WhitespaceValue!8056 (value!122490 List!21836)) (IndentationValue!4028 (value!122491 List!21836)) (String!25257) (Int32!4028) (Broken!20141 (value!122492 List!21836)) (Boolean!4029) (Unit!36135) (OperatorValue!4031 (op!4088 List!21836)) (IdentifierValue!8056 (value!122493 List!21836)) (IdentifierValue!8057 (value!122494 List!21836)) (WhitespaceValue!8057 (value!122495 List!21836)) (True!8056) (False!8056) (Broken!20142 (value!122496 List!21836)) (Broken!20143 (value!122497 List!21836)) (True!8057) (RightBrace!4028) (RightBracket!4028) (Colon!4028) (Null!4028) (Comma!4028) (LeftBracket!4028) (False!8057) (LeftBrace!4028) (ImaginaryLiteralValue!4028 (text!28642 List!21836)) (StringLiteralValue!12084 (value!122498 List!21836)) (EOFValue!4028 (value!122499 List!21836)) (IdentValue!4028 (value!122500 List!21836)) (DelimiterValue!8057 (value!122501 List!21836)) (DedentValue!4028 (value!122502 List!21836)) (NewLineValue!4028 (value!122503 List!21836)) (IntegerValue!12084 (value!122504 (_ BitVec 32)) (text!28643 List!21836)) (IntegerValue!12085 (value!122505 Int) (text!28644 List!21836)) (Times!4028) (Or!4028) (Equal!4028) (Minus!4028) (Broken!20144 (value!122506 List!21836)) (And!4028) (Div!4028) (LessEqual!4028) (Mod!4028) (Concat!9345) (Not!4028) (Plus!4028) (SpaceValue!4028 (value!122507 List!21836)) (IntegerValue!12086 (value!122508 Int) (text!28645 List!21836)) (StringLiteralValue!12085 (text!28646 List!21836)) (FloatLiteralValue!8057 (text!28647 List!21836)) (BytesLiteralValue!4028 (value!122509 List!21836)) (CommentValue!8057 (value!122510 List!21836)) (StringLiteralValue!12086 (value!122511 List!21836)) (ErrorTokenValue!4028 (msg!4089 List!21836)) )
))
(declare-datatypes ((C!10780 0))(
  ( (C!10781 (val!6342 Int)) )
))
(declare-datatypes ((List!21837 0))(
  ( (Nil!21755) (Cons!21755 (h!27156 C!10780) (t!178630 List!21837)) )
))
(declare-datatypes ((IArray!14535 0))(
  ( (IArray!14536 (innerList!7325 List!21837)) )
))
(declare-datatypes ((Conc!7265 0))(
  ( (Node!7265 (left!17345 Conc!7265) (right!17675 Conc!7265) (csize!14760 Int) (cheight!7476 Int)) (Leaf!10674 (xs!10159 IArray!14535) (csize!14761 Int)) (Empty!7265) )
))
(declare-datatypes ((BalanceConc!14346 0))(
  ( (BalanceConc!14347 (c!312101 Conc!7265)) )
))
(declare-datatypes ((TokenValueInjection!7640 0))(
  ( (TokenValueInjection!7641 (toValue!5521 Int) (toChars!5380 Int)) )
))
(declare-datatypes ((String!25258 0))(
  ( (String!25259 (value!122512 String)) )
))
(declare-datatypes ((Regex!5317 0))(
  ( (ElementMatch!5317 (c!312102 C!10780)) (Concat!9346 (regOne!11146 Regex!5317) (regTwo!11146 Regex!5317)) (EmptyExpr!5317) (Star!5317 (reg!5646 Regex!5317)) (EmptyLang!5317) (Union!5317 (regOne!11147 Regex!5317) (regTwo!11147 Regex!5317)) )
))
(declare-datatypes ((Rule!7584 0))(
  ( (Rule!7585 (regex!3892 Regex!5317) (tag!4332 String!25258) (isSeparator!3892 Bool) (transformation!3892 TokenValueInjection!7640)) )
))
(declare-datatypes ((List!21838 0))(
  ( (Nil!21756) (Cons!21756 (h!27157 Rule!7584) (t!178631 List!21838)) )
))
(declare-fun rules!3198 () List!21838)

(declare-datatypes ((Token!7336 0))(
  ( (Token!7337 (value!122513 TokenValue!4028) (rule!6095 Rule!7584) (size!17038 Int) (originalCharacters!4699 List!21837)) )
))
(declare-datatypes ((tuple2!20448 0))(
  ( (tuple2!20449 (_1!11693 Token!7336) (_2!11693 List!21837)) )
))
(declare-datatypes ((Option!4489 0))(
  ( (None!4488) (Some!4488 (v!26561 tuple2!20448)) )
))
(declare-fun lt!735836 () Option!4489)

(declare-datatypes ((List!21839 0))(
  ( (Nil!21757) (Cons!21757 (h!27158 Token!7336) (t!178632 List!21839)) )
))
(declare-fun tokens!598 () List!21839)

(declare-fun separatorToken!354 () Token!7336)

(declare-fun maxPrefix!1951 (LexerInterface!3505 List!21838 List!21837) Option!4489)

(declare-fun printWithSeparatorTokenWhenNeededList!548 (LexerInterface!3505 List!21838 List!21839 Token!7336) List!21837)

(assert (=> b!1918627 (= lt!735836 (maxPrefix!1951 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!548 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1918628 () Bool)

(declare-fun res!857886 () Bool)

(declare-fun e!1226126 () Bool)

(assert (=> b!1918628 (=> (not res!857886) (not e!1226126))))

(declare-fun rulesProduceEachTokenIndividuallyList!1236 (LexerInterface!3505 List!21838 List!21839) Bool)

(assert (=> b!1918628 (= res!857886 (rulesProduceEachTokenIndividuallyList!1236 thiss!23328 rules!3198 tokens!598))))

(declare-fun res!857873 () Bool)

(assert (=> start!192260 (=> (not res!857873) (not e!1226126))))

(get-info :version)

(assert (=> start!192260 (= res!857873 ((_ is Lexer!3503) thiss!23328))))

(assert (=> start!192260 e!1226126))

(assert (=> start!192260 true))

(declare-fun e!1226121 () Bool)

(assert (=> start!192260 e!1226121))

(declare-fun e!1226119 () Bool)

(assert (=> start!192260 e!1226119))

(declare-fun e!1226130 () Bool)

(declare-fun inv!28840 (Token!7336) Bool)

(assert (=> start!192260 (and (inv!28840 separatorToken!354) e!1226130)))

(declare-fun e!1226124 () Bool)

(declare-fun b!1918629 () Bool)

(declare-fun e!1226116 () Bool)

(declare-fun tp!547847 () Bool)

(declare-fun inv!28837 (String!25258) Bool)

(declare-fun inv!28841 (TokenValueInjection!7640) Bool)

(assert (=> b!1918629 (= e!1226124 (and tp!547847 (inv!28837 (tag!4332 (rule!6095 separatorToken!354))) (inv!28841 (transformation!3892 (rule!6095 separatorToken!354))) e!1226116))))

(declare-fun b!1918630 () Bool)

(declare-fun e!1226122 () Bool)

(declare-fun lt!735831 () Option!4489)

(declare-fun get!6842 (Option!4489) tuple2!20448)

(assert (=> b!1918630 (= e!1226122 (= (_1!11693 (get!6842 lt!735831)) (h!27158 tokens!598)))))

(declare-fun b!1918631 () Bool)

(declare-fun e!1226128 () Bool)

(declare-fun tp!547849 () Bool)

(assert (=> b!1918631 (= e!1226121 (and e!1226128 tp!547849))))

(declare-fun b!1918632 () Bool)

(declare-fun res!857879 () Bool)

(assert (=> b!1918632 (=> (not res!857879) (not e!1226126))))

(declare-fun rulesProduceIndividualToken!1677 (LexerInterface!3505 List!21838 Token!7336) Bool)

(assert (=> b!1918632 (= res!857879 (rulesProduceIndividualToken!1677 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1918633 () Bool)

(declare-fun e!1226131 () Bool)

(declare-fun e!1226129 () Bool)

(assert (=> b!1918633 (= e!1226131 e!1226129)))

(declare-fun res!857872 () Bool)

(assert (=> b!1918633 (=> (not res!857872) (not e!1226129))))

(declare-fun lt!735830 () Rule!7584)

(declare-fun lt!735828 () List!21837)

(declare-fun matchR!2603 (Regex!5317 List!21837) Bool)

(assert (=> b!1918633 (= res!857872 (matchR!2603 (regex!3892 lt!735830) lt!735828))))

(declare-datatypes ((Option!4490 0))(
  ( (None!4489) (Some!4489 (v!26562 Rule!7584)) )
))
(declare-fun lt!735838 () Option!4490)

(declare-fun get!6843 (Option!4490) Rule!7584)

(assert (=> b!1918633 (= lt!735830 (get!6843 lt!735838))))

(declare-fun e!1226120 () Bool)

(assert (=> b!1918634 (= e!1226120 (and tp!547853 tp!547852))))

(declare-fun b!1918635 () Bool)

(declare-fun res!857883 () Bool)

(assert (=> b!1918635 (=> (not res!857883) (not e!1226126))))

(declare-fun rulesInvariant!3112 (LexerInterface!3505 List!21838) Bool)

(assert (=> b!1918635 (= res!857883 (rulesInvariant!3112 thiss!23328 rules!3198))))

(declare-fun tp!547854 () Bool)

(declare-fun e!1226114 () Bool)

(declare-fun b!1918636 () Bool)

(assert (=> b!1918636 (= e!1226114 (and tp!547854 (inv!28837 (tag!4332 (rule!6095 (h!27158 tokens!598)))) (inv!28841 (transformation!3892 (rule!6095 (h!27158 tokens!598)))) e!1226120))))

(declare-fun b!1918637 () Bool)

(declare-fun res!857875 () Bool)

(assert (=> b!1918637 (=> (not res!857875) (not e!1226126))))

(assert (=> b!1918637 (= res!857875 ((_ is Cons!21757) tokens!598))))

(declare-fun b!1918638 () Bool)

(declare-fun e!1226133 () Bool)

(declare-fun tp!547844 () Bool)

(assert (=> b!1918638 (= e!1226128 (and tp!547844 (inv!28837 (tag!4332 (h!27157 rules!3198))) (inv!28841 (transformation!3892 (h!27157 rules!3198))) e!1226133))))

(declare-fun e!1226127 () Bool)

(declare-fun b!1918639 () Bool)

(declare-fun tp!547851 () Bool)

(assert (=> b!1918639 (= e!1226119 (and (inv!28840 (h!27158 tokens!598)) e!1226127 tp!547851))))

(declare-fun b!1918640 () Bool)

(declare-fun e!1226118 () Bool)

(declare-fun e!1226117 () Bool)

(assert (=> b!1918640 (= e!1226118 e!1226117)))

(declare-fun res!857876 () Bool)

(assert (=> b!1918640 (=> (not res!857876) (not e!1226117))))

(declare-fun lt!735839 () Rule!7584)

(declare-fun lt!735827 () List!21837)

(assert (=> b!1918640 (= res!857876 (matchR!2603 (regex!3892 lt!735839) lt!735827))))

(declare-fun lt!735837 () Option!4490)

(assert (=> b!1918640 (= lt!735839 (get!6843 lt!735837))))

(declare-fun b!1918641 () Bool)

(declare-fun res!857885 () Bool)

(assert (=> b!1918641 (=> (not res!857885) (not e!1226126))))

(declare-fun isEmpty!13389 (List!21838) Bool)

(assert (=> b!1918641 (= res!857885 (not (isEmpty!13389 rules!3198)))))

(declare-fun tp!547848 () Bool)

(declare-fun b!1918642 () Bool)

(declare-fun inv!21 (TokenValue!4028) Bool)

(assert (=> b!1918642 (= e!1226127 (and (inv!21 (value!122513 (h!27158 tokens!598))) e!1226114 tp!547848))))

(declare-fun b!1918643 () Bool)

(assert (=> b!1918643 (= e!1226117 (= (rule!6095 (h!27158 tokens!598)) lt!735839))))

(assert (=> b!1918644 (= e!1226133 (and tp!547845 tp!547846))))

(declare-fun b!1918645 () Bool)

(declare-fun res!857874 () Bool)

(assert (=> b!1918645 (=> (not res!857874) (not e!1226126))))

(assert (=> b!1918645 (= res!857874 (isSeparator!3892 (rule!6095 separatorToken!354)))))

(declare-fun tp!547842 () Bool)

(declare-fun b!1918646 () Bool)

(assert (=> b!1918646 (= e!1226130 (and (inv!21 (value!122513 separatorToken!354)) e!1226124 tp!547842))))

(assert (=> b!1918647 (= e!1226116 (and tp!547850 tp!547843))))

(declare-fun b!1918648 () Bool)

(declare-fun res!857881 () Bool)

(assert (=> b!1918648 (=> res!857881 e!1226125)))

(declare-fun isEmpty!13390 (List!21839) Bool)

(assert (=> b!1918648 (= res!857881 (isEmpty!13390 tokens!598))))

(declare-fun b!1918649 () Bool)

(assert (=> b!1918649 (= e!1226129 (= (rule!6095 separatorToken!354) lt!735830))))

(declare-fun b!1918650 () Bool)

(assert (=> b!1918650 (= e!1226126 (not e!1226125))))

(declare-fun res!857884 () Bool)

(assert (=> b!1918650 (=> res!857884 e!1226125)))

(declare-fun lt!735832 () Bool)

(declare-fun lt!735834 () Option!4489)

(assert (=> b!1918650 (= res!857884 (or (and (not lt!735832) (= (_1!11693 (v!26561 lt!735834)) (h!27158 tokens!598))) (and (not lt!735832) (not (= (_1!11693 (v!26561 lt!735834)) (h!27158 tokens!598)))) ((_ is None!4488) lt!735834)))))

(assert (=> b!1918650 (= lt!735832 (not ((_ is Some!4488) lt!735834)))))

(declare-fun ++!5847 (List!21837 List!21837) List!21837)

(assert (=> b!1918650 (= lt!735834 (maxPrefix!1951 thiss!23328 rules!3198 (++!5847 lt!735827 (printWithSeparatorTokenWhenNeededList!548 thiss!23328 rules!3198 (t!178632 tokens!598) separatorToken!354))))))

(assert (=> b!1918650 e!1226118))

(declare-fun res!857871 () Bool)

(assert (=> b!1918650 (=> (not res!857871) (not e!1226118))))

(declare-fun isDefined!3787 (Option!4490) Bool)

(assert (=> b!1918650 (= res!857871 (isDefined!3787 lt!735837))))

(declare-fun getRuleFromTag!735 (LexerInterface!3505 List!21838 String!25258) Option!4490)

(assert (=> b!1918650 (= lt!735837 (getRuleFromTag!735 thiss!23328 rules!3198 (tag!4332 (rule!6095 (h!27158 tokens!598)))))))

(declare-datatypes ((Unit!36136 0))(
  ( (Unit!36137) )
))
(declare-fun lt!735833 () Unit!36136)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!735 (LexerInterface!3505 List!21838 List!21837 Token!7336) Unit!36136)

(assert (=> b!1918650 (= lt!735833 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!735 thiss!23328 rules!3198 lt!735827 (h!27158 tokens!598)))))

(assert (=> b!1918650 e!1226122))

(declare-fun res!857880 () Bool)

(assert (=> b!1918650 (=> (not res!857880) (not e!1226122))))

(declare-fun isDefined!3788 (Option!4489) Bool)

(assert (=> b!1918650 (= res!857880 (isDefined!3788 lt!735831))))

(assert (=> b!1918650 (= lt!735831 (maxPrefix!1951 thiss!23328 rules!3198 lt!735827))))

(declare-fun lt!735829 () BalanceConc!14346)

(declare-fun list!8824 (BalanceConc!14346) List!21837)

(assert (=> b!1918650 (= lt!735827 (list!8824 lt!735829))))

(assert (=> b!1918650 e!1226131))

(declare-fun res!857877 () Bool)

(assert (=> b!1918650 (=> (not res!857877) (not e!1226131))))

(assert (=> b!1918650 (= res!857877 (isDefined!3787 lt!735838))))

(assert (=> b!1918650 (= lt!735838 (getRuleFromTag!735 thiss!23328 rules!3198 (tag!4332 (rule!6095 separatorToken!354))))))

(declare-fun lt!735840 () Unit!36136)

(assert (=> b!1918650 (= lt!735840 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!735 thiss!23328 rules!3198 lt!735828 separatorToken!354))))

(declare-fun charsOf!2448 (Token!7336) BalanceConc!14346)

(assert (=> b!1918650 (= lt!735828 (list!8824 (charsOf!2448 separatorToken!354)))))

(declare-fun lt!735826 () Unit!36136)

(declare-fun lemmaEqSameImage!600 (TokenValueInjection!7640 BalanceConc!14346 BalanceConc!14346) Unit!36136)

(declare-fun seqFromList!2764 (List!21837) BalanceConc!14346)

(assert (=> b!1918650 (= lt!735826 (lemmaEqSameImage!600 (transformation!3892 (rule!6095 (h!27158 tokens!598))) lt!735829 (seqFromList!2764 (originalCharacters!4699 (h!27158 tokens!598)))))))

(declare-fun lt!735835 () Unit!36136)

(declare-fun lemmaSemiInverse!871 (TokenValueInjection!7640 BalanceConc!14346) Unit!36136)

(assert (=> b!1918650 (= lt!735835 (lemmaSemiInverse!871 (transformation!3892 (rule!6095 (h!27158 tokens!598))) lt!735829))))

(assert (=> b!1918650 (= lt!735829 (charsOf!2448 (h!27158 tokens!598)))))

(declare-fun b!1918651 () Bool)

(declare-fun res!857878 () Bool)

(assert (=> b!1918651 (=> (not res!857878) (not e!1226126))))

(declare-fun sepAndNonSepRulesDisjointChars!990 (List!21838 List!21838) Bool)

(assert (=> b!1918651 (= res!857878 (sepAndNonSepRulesDisjointChars!990 rules!3198 rules!3198))))

(declare-fun b!1918652 () Bool)

(declare-fun res!857882 () Bool)

(assert (=> b!1918652 (=> (not res!857882) (not e!1226126))))

(declare-fun lambda!74879 () Int)

(declare-fun forall!4588 (List!21839 Int) Bool)

(assert (=> b!1918652 (= res!857882 (forall!4588 tokens!598 lambda!74879))))

(assert (= (and start!192260 res!857873) b!1918641))

(assert (= (and b!1918641 res!857885) b!1918635))

(assert (= (and b!1918635 res!857883) b!1918628))

(assert (= (and b!1918628 res!857886) b!1918632))

(assert (= (and b!1918632 res!857879) b!1918645))

(assert (= (and b!1918645 res!857874) b!1918652))

(assert (= (and b!1918652 res!857882) b!1918651))

(assert (= (and b!1918651 res!857878) b!1918637))

(assert (= (and b!1918637 res!857875) b!1918650))

(assert (= (and b!1918650 res!857877) b!1918633))

(assert (= (and b!1918633 res!857872) b!1918649))

(assert (= (and b!1918650 res!857880) b!1918630))

(assert (= (and b!1918650 res!857871) b!1918640))

(assert (= (and b!1918640 res!857876) b!1918643))

(assert (= (and b!1918650 (not res!857884)) b!1918648))

(assert (= (and b!1918648 (not res!857881)) b!1918627))

(assert (= b!1918638 b!1918644))

(assert (= b!1918631 b!1918638))

(assert (= (and start!192260 ((_ is Cons!21756) rules!3198)) b!1918631))

(assert (= b!1918636 b!1918634))

(assert (= b!1918642 b!1918636))

(assert (= b!1918639 b!1918642))

(assert (= (and start!192260 ((_ is Cons!21757) tokens!598)) b!1918639))

(assert (= b!1918629 b!1918647))

(assert (= b!1918646 b!1918629))

(assert (= start!192260 b!1918646))

(declare-fun m!2354039 () Bool)

(assert (=> b!1918636 m!2354039))

(declare-fun m!2354041 () Bool)

(assert (=> b!1918636 m!2354041))

(declare-fun m!2354043 () Bool)

(assert (=> b!1918641 m!2354043))

(declare-fun m!2354045 () Bool)

(assert (=> b!1918633 m!2354045))

(declare-fun m!2354047 () Bool)

(assert (=> b!1918633 m!2354047))

(declare-fun m!2354049 () Bool)

(assert (=> b!1918642 m!2354049))

(declare-fun m!2354051 () Bool)

(assert (=> b!1918640 m!2354051))

(declare-fun m!2354053 () Bool)

(assert (=> b!1918640 m!2354053))

(declare-fun m!2354055 () Bool)

(assert (=> b!1918627 m!2354055))

(assert (=> b!1918627 m!2354055))

(declare-fun m!2354057 () Bool)

(assert (=> b!1918627 m!2354057))

(declare-fun m!2354059 () Bool)

(assert (=> b!1918650 m!2354059))

(declare-fun m!2354061 () Bool)

(assert (=> b!1918650 m!2354061))

(declare-fun m!2354063 () Bool)

(assert (=> b!1918650 m!2354063))

(declare-fun m!2354065 () Bool)

(assert (=> b!1918650 m!2354065))

(declare-fun m!2354067 () Bool)

(assert (=> b!1918650 m!2354067))

(declare-fun m!2354069 () Bool)

(assert (=> b!1918650 m!2354069))

(declare-fun m!2354071 () Bool)

(assert (=> b!1918650 m!2354071))

(assert (=> b!1918650 m!2354067))

(declare-fun m!2354073 () Bool)

(assert (=> b!1918650 m!2354073))

(declare-fun m!2354075 () Bool)

(assert (=> b!1918650 m!2354075))

(declare-fun m!2354077 () Bool)

(assert (=> b!1918650 m!2354077))

(declare-fun m!2354079 () Bool)

(assert (=> b!1918650 m!2354079))

(declare-fun m!2354081 () Bool)

(assert (=> b!1918650 m!2354081))

(assert (=> b!1918650 m!2354063))

(declare-fun m!2354083 () Bool)

(assert (=> b!1918650 m!2354083))

(declare-fun m!2354085 () Bool)

(assert (=> b!1918650 m!2354085))

(declare-fun m!2354087 () Bool)

(assert (=> b!1918650 m!2354087))

(declare-fun m!2354089 () Bool)

(assert (=> b!1918650 m!2354089))

(assert (=> b!1918650 m!2354069))

(declare-fun m!2354091 () Bool)

(assert (=> b!1918650 m!2354091))

(assert (=> b!1918650 m!2354077))

(declare-fun m!2354093 () Bool)

(assert (=> b!1918650 m!2354093))

(declare-fun m!2354095 () Bool)

(assert (=> b!1918652 m!2354095))

(declare-fun m!2354097 () Bool)

(assert (=> b!1918635 m!2354097))

(declare-fun m!2354099 () Bool)

(assert (=> b!1918628 m!2354099))

(declare-fun m!2354101 () Bool)

(assert (=> start!192260 m!2354101))

(declare-fun m!2354103 () Bool)

(assert (=> b!1918629 m!2354103))

(declare-fun m!2354105 () Bool)

(assert (=> b!1918629 m!2354105))

(declare-fun m!2354107 () Bool)

(assert (=> b!1918648 m!2354107))

(declare-fun m!2354109 () Bool)

(assert (=> b!1918632 m!2354109))

(declare-fun m!2354111 () Bool)

(assert (=> b!1918651 m!2354111))

(declare-fun m!2354113 () Bool)

(assert (=> b!1918630 m!2354113))

(declare-fun m!2354115 () Bool)

(assert (=> b!1918646 m!2354115))

(declare-fun m!2354117 () Bool)

(assert (=> b!1918639 m!2354117))

(declare-fun m!2354119 () Bool)

(assert (=> b!1918638 m!2354119))

(declare-fun m!2354121 () Bool)

(assert (=> b!1918638 m!2354121))

(check-sat (not b!1918627) (not b!1918640) (not b!1918636) (not b!1918642) (not b!1918651) b_and!149807 (not b!1918648) (not b!1918631) (not b_next!55313) b_and!149815 (not b!1918638) (not b!1918628) (not b!1918646) (not b!1918652) (not b_next!55307) (not b_next!55315) (not b!1918629) (not b_next!55305) (not b!1918630) (not b!1918635) (not b!1918639) b_and!149811 b_and!149813 (not b!1918632) (not b_next!55311) (not b!1918641) b_and!149817 (not b!1918633) (not b_next!55309) b_and!149809 (not b!1918650) (not start!192260))
(check-sat (not b_next!55305) b_and!149811 b_and!149813 b_and!149807 (not b_next!55311) b_and!149817 (not b_next!55313) b_and!149815 (not b_next!55307) (not b_next!55315) (not b_next!55309) b_and!149809)
