; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192218 () Bool)

(assert start!192218)

(declare-fun b!1916992 () Bool)

(declare-fun b_free!54349 () Bool)

(declare-fun b_next!55053 () Bool)

(assert (=> b!1916992 (= b_free!54349 (not b_next!55053))))

(declare-fun tp!547025 () Bool)

(declare-fun b_and!149555 () Bool)

(assert (=> b!1916992 (= tp!547025 b_and!149555)))

(declare-fun b_free!54351 () Bool)

(declare-fun b_next!55055 () Bool)

(assert (=> b!1916992 (= b_free!54351 (not b_next!55055))))

(declare-fun tp!547024 () Bool)

(declare-fun b_and!149557 () Bool)

(assert (=> b!1916992 (= tp!547024 b_and!149557)))

(declare-fun b!1917002 () Bool)

(declare-fun b_free!54353 () Bool)

(declare-fun b_next!55057 () Bool)

(assert (=> b!1917002 (= b_free!54353 (not b_next!55057))))

(declare-fun tp!547028 () Bool)

(declare-fun b_and!149559 () Bool)

(assert (=> b!1917002 (= tp!547028 b_and!149559)))

(declare-fun b_free!54355 () Bool)

(declare-fun b_next!55059 () Bool)

(assert (=> b!1917002 (= b_free!54355 (not b_next!55059))))

(declare-fun tp!547031 () Bool)

(declare-fun b_and!149561 () Bool)

(assert (=> b!1917002 (= tp!547031 b_and!149561)))

(declare-fun b!1917009 () Bool)

(declare-fun b_free!54357 () Bool)

(declare-fun b_next!55061 () Bool)

(assert (=> b!1917009 (= b_free!54357 (not b_next!55061))))

(declare-fun tp!547029 () Bool)

(declare-fun b_and!149563 () Bool)

(assert (=> b!1917009 (= tp!547029 b_and!149563)))

(declare-fun b_free!54359 () Bool)

(declare-fun b_next!55063 () Bool)

(assert (=> b!1917009 (= b_free!54359 (not b_next!55063))))

(declare-fun tp!547034 () Bool)

(declare-fun b_and!149565 () Bool)

(assert (=> b!1917009 (= tp!547034 b_and!149565)))

(declare-fun e!1224726 () Bool)

(declare-fun b!1916987 () Bool)

(declare-fun tp!547035 () Bool)

(declare-fun e!1224732 () Bool)

(declare-datatypes ((C!10738 0))(
  ( (C!10739 (val!6321 Int)) )
))
(declare-datatypes ((List!21752 0))(
  ( (Nil!21670) (Cons!21670 (h!27071 C!10738) (t!178545 List!21752)) )
))
(declare-datatypes ((List!21753 0))(
  ( (Nil!21671) (Cons!21671 (h!27072 (_ BitVec 16)) (t!178546 List!21753)) )
))
(declare-datatypes ((TokenValue!4007 0))(
  ( (FloatLiteralValue!8014 (text!28494 List!21753)) (TokenValueExt!4006 (__x!13512 Int)) (Broken!20035 (value!121890 List!21753)) (Object!4088) (End!4007) (Def!4007) (Underscore!4007) (Match!4007) (Else!4007) (Error!4007) (Case!4007) (If!4007) (Extends!4007) (Abstract!4007) (Class!4007) (Val!4007) (DelimiterValue!8014 (del!4067 List!21753)) (KeywordValue!4013 (value!121891 List!21753)) (CommentValue!8014 (value!121892 List!21753)) (WhitespaceValue!8014 (value!121893 List!21753)) (IndentationValue!4007 (value!121894 List!21753)) (String!25154) (Int32!4007) (Broken!20036 (value!121895 List!21753)) (Boolean!4008) (Unit!36072) (OperatorValue!4010 (op!4067 List!21753)) (IdentifierValue!8014 (value!121896 List!21753)) (IdentifierValue!8015 (value!121897 List!21753)) (WhitespaceValue!8015 (value!121898 List!21753)) (True!8014) (False!8014) (Broken!20037 (value!121899 List!21753)) (Broken!20038 (value!121900 List!21753)) (True!8015) (RightBrace!4007) (RightBracket!4007) (Colon!4007) (Null!4007) (Comma!4007) (LeftBracket!4007) (False!8015) (LeftBrace!4007) (ImaginaryLiteralValue!4007 (text!28495 List!21753)) (StringLiteralValue!12021 (value!121901 List!21753)) (EOFValue!4007 (value!121902 List!21753)) (IdentValue!4007 (value!121903 List!21753)) (DelimiterValue!8015 (value!121904 List!21753)) (DedentValue!4007 (value!121905 List!21753)) (NewLineValue!4007 (value!121906 List!21753)) (IntegerValue!12021 (value!121907 (_ BitVec 32)) (text!28496 List!21753)) (IntegerValue!12022 (value!121908 Int) (text!28497 List!21753)) (Times!4007) (Or!4007) (Equal!4007) (Minus!4007) (Broken!20039 (value!121909 List!21753)) (And!4007) (Div!4007) (LessEqual!4007) (Mod!4007) (Concat!9303) (Not!4007) (Plus!4007) (SpaceValue!4007 (value!121910 List!21753)) (IntegerValue!12023 (value!121911 Int) (text!28498 List!21753)) (StringLiteralValue!12022 (text!28499 List!21753)) (FloatLiteralValue!8015 (text!28500 List!21753)) (BytesLiteralValue!4007 (value!121912 List!21753)) (CommentValue!8015 (value!121913 List!21753)) (StringLiteralValue!12023 (value!121914 List!21753)) (ErrorTokenValue!4007 (msg!4068 List!21753)) )
))
(declare-datatypes ((Regex!5296 0))(
  ( (ElementMatch!5296 (c!312028 C!10738)) (Concat!9304 (regOne!11104 Regex!5296) (regTwo!11104 Regex!5296)) (EmptyExpr!5296) (Star!5296 (reg!5625 Regex!5296)) (EmptyLang!5296) (Union!5296 (regOne!11105 Regex!5296) (regTwo!11105 Regex!5296)) )
))
(declare-datatypes ((String!25155 0))(
  ( (String!25156 (value!121915 String)) )
))
(declare-datatypes ((IArray!14473 0))(
  ( (IArray!14474 (innerList!7294 List!21752)) )
))
(declare-datatypes ((Conc!7234 0))(
  ( (Node!7234 (left!17304 Conc!7234) (right!17634 Conc!7234) (csize!14698 Int) (cheight!7445 Int)) (Leaf!10633 (xs!10128 IArray!14473) (csize!14699 Int)) (Empty!7234) )
))
(declare-datatypes ((BalanceConc!14284 0))(
  ( (BalanceConc!14285 (c!312029 Conc!7234)) )
))
(declare-datatypes ((TokenValueInjection!7598 0))(
  ( (TokenValueInjection!7599 (toValue!5500 Int) (toChars!5359 Int)) )
))
(declare-datatypes ((Rule!7542 0))(
  ( (Rule!7543 (regex!3871 Regex!5296) (tag!4311 String!25155) (isSeparator!3871 Bool) (transformation!3871 TokenValueInjection!7598)) )
))
(declare-datatypes ((Token!7294 0))(
  ( (Token!7295 (value!121916 TokenValue!4007) (rule!6074 Rule!7542) (size!17017 Int) (originalCharacters!4678 List!21752)) )
))
(declare-datatypes ((List!21754 0))(
  ( (Nil!21672) (Cons!21672 (h!27073 Token!7294) (t!178547 List!21754)) )
))
(declare-fun tokens!598 () List!21754)

(declare-fun inv!28768 (Token!7294) Bool)

(assert (=> b!1916987 (= e!1224726 (and (inv!28768 (h!27073 tokens!598)) e!1224732 tp!547035))))

(declare-fun b!1916988 () Bool)

(declare-fun e!1224727 () Bool)

(declare-fun e!1224731 () Bool)

(assert (=> b!1916988 (= e!1224727 e!1224731)))

(declare-fun res!856863 () Bool)

(assert (=> b!1916988 (=> (not res!856863) (not e!1224731))))

(declare-fun lt!734807 () Rule!7542)

(declare-fun lt!734810 () List!21752)

(declare-fun matchR!2582 (Regex!5296 List!21752) Bool)

(assert (=> b!1916988 (= res!856863 (matchR!2582 (regex!3871 lt!734807) lt!734810))))

(declare-datatypes ((Option!4447 0))(
  ( (None!4446) (Some!4446 (v!26519 Rule!7542)) )
))
(declare-fun lt!734799 () Option!4447)

(declare-fun get!6790 (Option!4447) Rule!7542)

(assert (=> b!1916988 (= lt!734807 (get!6790 lt!734799))))

(declare-fun b!1916989 () Bool)

(declare-fun e!1224720 () Bool)

(declare-fun e!1224724 () Bool)

(declare-fun tp!547030 () Bool)

(assert (=> b!1916989 (= e!1224720 (and e!1224724 tp!547030))))

(declare-fun b!1916990 () Bool)

(declare-fun e!1224723 () Bool)

(assert (=> b!1916990 (= e!1224723 true)))

(declare-datatypes ((LexerInterface!3484 0))(
  ( (LexerInterfaceExt!3481 (__x!13513 Int)) (Lexer!3482) )
))
(declare-fun thiss!23328 () LexerInterface!3484)

(declare-datatypes ((IArray!14475 0))(
  ( (IArray!14476 (innerList!7295 List!21754)) )
))
(declare-datatypes ((Conc!7235 0))(
  ( (Node!7235 (left!17305 Conc!7235) (right!17635 Conc!7235) (csize!14700 Int) (cheight!7446 Int)) (Leaf!10634 (xs!10129 IArray!14475) (csize!14701 Int)) (Empty!7235) )
))
(declare-datatypes ((BalanceConc!14286 0))(
  ( (BalanceConc!14287 (c!312030 Conc!7235)) )
))
(declare-fun lt!734806 () BalanceConc!14286)

(declare-fun print!1492 (LexerInterface!3484 BalanceConc!14286) BalanceConc!14284)

(declare-fun printTailRec!999 (LexerInterface!3484 BalanceConc!14286 Int BalanceConc!14284) BalanceConc!14284)

(assert (=> b!1916990 (= (print!1492 thiss!23328 lt!734806) (printTailRec!999 thiss!23328 lt!734806 0 (BalanceConc!14285 Empty!7234)))))

(declare-fun singletonSeq!1894 (Token!7294) BalanceConc!14286)

(assert (=> b!1916990 (= lt!734806 (singletonSeq!1894 (h!27073 tokens!598)))))

(declare-fun b!1916991 () Bool)

(declare-fun e!1224717 () Bool)

(declare-fun tp!547027 () Bool)

(declare-fun inv!21 (TokenValue!4007) Bool)

(assert (=> b!1916991 (= e!1224732 (and (inv!21 (value!121916 (h!27073 tokens!598))) e!1224717 tp!547027))))

(declare-fun e!1224730 () Bool)

(assert (=> b!1916992 (= e!1224730 (and tp!547025 tp!547024))))

(declare-fun b!1916993 () Bool)

(declare-fun res!856868 () Bool)

(declare-fun e!1224721 () Bool)

(assert (=> b!1916993 (=> (not res!856868) (not e!1224721))))

(declare-fun lambda!74812 () Int)

(declare-fun forall!4567 (List!21754 Int) Bool)

(assert (=> b!1916993 (= res!856868 (forall!4567 tokens!598 lambda!74812))))

(declare-fun b!1916994 () Bool)

(declare-fun res!856871 () Bool)

(assert (=> b!1916994 (=> (not res!856871) (not e!1224721))))

(declare-fun separatorToken!354 () Token!7294)

(declare-datatypes ((List!21755 0))(
  ( (Nil!21673) (Cons!21673 (h!27074 Rule!7542) (t!178548 List!21755)) )
))
(declare-fun rules!3198 () List!21755)

(declare-fun rulesProduceIndividualToken!1656 (LexerInterface!3484 List!21755 Token!7294) Bool)

(assert (=> b!1916994 (= res!856871 (rulesProduceIndividualToken!1656 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1916995 () Bool)

(declare-fun res!856873 () Bool)

(assert (=> b!1916995 (=> (not res!856873) (not e!1224721))))

(declare-fun rulesInvariant!3091 (LexerInterface!3484 List!21755) Bool)

(assert (=> b!1916995 (= res!856873 (rulesInvariant!3091 thiss!23328 rules!3198))))

(declare-fun b!1916997 () Bool)

(declare-fun e!1224735 () Bool)

(declare-datatypes ((tuple2!20398 0))(
  ( (tuple2!20399 (_1!11668 Token!7294) (_2!11668 List!21752)) )
))
(declare-datatypes ((Option!4448 0))(
  ( (None!4447) (Some!4447 (v!26520 tuple2!20398)) )
))
(declare-fun lt!734802 () Option!4448)

(declare-fun get!6791 (Option!4448) tuple2!20398)

(assert (=> b!1916997 (= e!1224735 (= (_1!11668 (get!6791 lt!734802)) (h!27073 tokens!598)))))

(declare-fun tp!547026 () Bool)

(declare-fun b!1916998 () Bool)

(declare-fun e!1224715 () Bool)

(declare-fun inv!28765 (String!25155) Bool)

(declare-fun inv!28769 (TokenValueInjection!7598) Bool)

(assert (=> b!1916998 (= e!1224724 (and tp!547026 (inv!28765 (tag!4311 (h!27074 rules!3198))) (inv!28769 (transformation!3871 (h!27074 rules!3198))) e!1224715))))

(declare-fun b!1916999 () Bool)

(declare-fun tp!547033 () Bool)

(assert (=> b!1916999 (= e!1224717 (and tp!547033 (inv!28765 (tag!4311 (rule!6074 (h!27073 tokens!598)))) (inv!28769 (transformation!3871 (rule!6074 (h!27073 tokens!598)))) e!1224730))))

(declare-fun b!1917000 () Bool)

(declare-fun res!856874 () Bool)

(assert (=> b!1917000 (=> (not res!856874) (not e!1224721))))

(declare-fun rulesProduceEachTokenIndividuallyList!1215 (LexerInterface!3484 List!21755 List!21754) Bool)

(assert (=> b!1917000 (= res!856874 (rulesProduceEachTokenIndividuallyList!1215 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1917001 () Bool)

(declare-fun res!856867 () Bool)

(assert (=> b!1917001 (=> (not res!856867) (not e!1224721))))

(assert (=> b!1917001 (= res!856867 (isSeparator!3871 (rule!6074 separatorToken!354)))))

(assert (=> b!1917002 (= e!1224715 (and tp!547028 tp!547031))))

(declare-fun e!1224718 () Bool)

(declare-fun tp!547032 () Bool)

(declare-fun b!1917003 () Bool)

(declare-fun e!1224725 () Bool)

(assert (=> b!1917003 (= e!1224718 (and tp!547032 (inv!28765 (tag!4311 (rule!6074 separatorToken!354))) (inv!28769 (transformation!3871 (rule!6074 separatorToken!354))) e!1224725))))

(declare-fun b!1917004 () Bool)

(declare-fun e!1224734 () Bool)

(declare-fun lt!734809 () Rule!7542)

(assert (=> b!1917004 (= e!1224734 (= (rule!6074 (h!27073 tokens!598)) lt!734809))))

(declare-fun b!1917005 () Bool)

(declare-fun res!856870 () Bool)

(assert (=> b!1917005 (=> (not res!856870) (not e!1224721))))

(declare-fun isEmpty!13355 (List!21755) Bool)

(assert (=> b!1917005 (= res!856870 (not (isEmpty!13355 rules!3198)))))

(declare-fun b!1917006 () Bool)

(declare-fun e!1224719 () Bool)

(assert (=> b!1917006 (= e!1224719 e!1224734)))

(declare-fun res!856866 () Bool)

(assert (=> b!1917006 (=> (not res!856866) (not e!1224734))))

(declare-fun lt!734801 () List!21752)

(assert (=> b!1917006 (= res!856866 (matchR!2582 (regex!3871 lt!734809) lt!734801))))

(declare-fun lt!734798 () Option!4447)

(assert (=> b!1917006 (= lt!734809 (get!6790 lt!734798))))

(declare-fun b!1917007 () Bool)

(assert (=> b!1917007 (= e!1224721 (not e!1224723))))

(declare-fun res!856875 () Bool)

(assert (=> b!1917007 (=> res!856875 e!1224723)))

(declare-fun lt!734808 () Option!4448)

(declare-fun lt!734800 () Bool)

(assert (=> b!1917007 (= res!856875 (or (and (not lt!734800) (= (_1!11668 (v!26520 lt!734808)) (h!27073 tokens!598))) (and (not lt!734800) (not (= (_1!11668 (v!26520 lt!734808)) (h!27073 tokens!598)))) (not (is-None!4447 lt!734808))))))

(assert (=> b!1917007 (= lt!734800 (not (is-Some!4447 lt!734808)))))

(declare-fun maxPrefix!1930 (LexerInterface!3484 List!21755 List!21752) Option!4448)

(declare-fun ++!5826 (List!21752 List!21752) List!21752)

(declare-fun printWithSeparatorTokenWhenNeededList!527 (LexerInterface!3484 List!21755 List!21754 Token!7294) List!21752)

(assert (=> b!1917007 (= lt!734808 (maxPrefix!1930 thiss!23328 rules!3198 (++!5826 lt!734801 (printWithSeparatorTokenWhenNeededList!527 thiss!23328 rules!3198 (t!178547 tokens!598) separatorToken!354))))))

(assert (=> b!1917007 e!1224719))

(declare-fun res!856865 () Bool)

(assert (=> b!1917007 (=> (not res!856865) (not e!1224719))))

(declare-fun isDefined!3745 (Option!4447) Bool)

(assert (=> b!1917007 (= res!856865 (isDefined!3745 lt!734798))))

(declare-fun getRuleFromTag!714 (LexerInterface!3484 List!21755 String!25155) Option!4447)

(assert (=> b!1917007 (= lt!734798 (getRuleFromTag!714 thiss!23328 rules!3198 (tag!4311 (rule!6074 (h!27073 tokens!598)))))))

(declare-datatypes ((Unit!36073 0))(
  ( (Unit!36074) )
))
(declare-fun lt!734803 () Unit!36073)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!714 (LexerInterface!3484 List!21755 List!21752 Token!7294) Unit!36073)

(assert (=> b!1917007 (= lt!734803 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!714 thiss!23328 rules!3198 lt!734801 (h!27073 tokens!598)))))

(assert (=> b!1917007 e!1224735))

(declare-fun res!856864 () Bool)

(assert (=> b!1917007 (=> (not res!856864) (not e!1224735))))

(declare-fun isDefined!3746 (Option!4448) Bool)

(assert (=> b!1917007 (= res!856864 (isDefined!3746 lt!734802))))

(assert (=> b!1917007 (= lt!734802 (maxPrefix!1930 thiss!23328 rules!3198 lt!734801))))

(declare-fun lt!734811 () BalanceConc!14284)

(declare-fun list!8803 (BalanceConc!14284) List!21752)

(assert (=> b!1917007 (= lt!734801 (list!8803 lt!734811))))

(assert (=> b!1917007 e!1224727))

(declare-fun res!856872 () Bool)

(assert (=> b!1917007 (=> (not res!856872) (not e!1224727))))

(assert (=> b!1917007 (= res!856872 (isDefined!3745 lt!734799))))

(assert (=> b!1917007 (= lt!734799 (getRuleFromTag!714 thiss!23328 rules!3198 (tag!4311 (rule!6074 separatorToken!354))))))

(declare-fun lt!734805 () Unit!36073)

(assert (=> b!1917007 (= lt!734805 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!714 thiss!23328 rules!3198 lt!734810 separatorToken!354))))

(declare-fun charsOf!2427 (Token!7294) BalanceConc!14284)

(assert (=> b!1917007 (= lt!734810 (list!8803 (charsOf!2427 separatorToken!354)))))

(declare-fun lt!734804 () Unit!36073)

(declare-fun lemmaEqSameImage!579 (TokenValueInjection!7598 BalanceConc!14284 BalanceConc!14284) Unit!36073)

(declare-fun seqFromList!2743 (List!21752) BalanceConc!14284)

(assert (=> b!1917007 (= lt!734804 (lemmaEqSameImage!579 (transformation!3871 (rule!6074 (h!27073 tokens!598))) lt!734811 (seqFromList!2743 (originalCharacters!4678 (h!27073 tokens!598)))))))

(declare-fun lt!734797 () Unit!36073)

(declare-fun lemmaSemiInverse!850 (TokenValueInjection!7598 BalanceConc!14284) Unit!36073)

(assert (=> b!1917007 (= lt!734797 (lemmaSemiInverse!850 (transformation!3871 (rule!6074 (h!27073 tokens!598))) lt!734811))))

(assert (=> b!1917007 (= lt!734811 (charsOf!2427 (h!27073 tokens!598)))))

(declare-fun tp!547023 () Bool)

(declare-fun b!1917008 () Bool)

(declare-fun e!1224736 () Bool)

(assert (=> b!1917008 (= e!1224736 (and (inv!21 (value!121916 separatorToken!354)) e!1224718 tp!547023))))

(assert (=> b!1917009 (= e!1224725 (and tp!547029 tp!547034))))

(declare-fun b!1917010 () Bool)

(declare-fun res!856869 () Bool)

(assert (=> b!1917010 (=> (not res!856869) (not e!1224721))))

(declare-fun sepAndNonSepRulesDisjointChars!969 (List!21755 List!21755) Bool)

(assert (=> b!1917010 (= res!856869 (sepAndNonSepRulesDisjointChars!969 rules!3198 rules!3198))))

(declare-fun b!1917011 () Bool)

(assert (=> b!1917011 (= e!1224731 (= (rule!6074 separatorToken!354) lt!734807))))

(declare-fun b!1916996 () Bool)

(declare-fun res!856861 () Bool)

(assert (=> b!1916996 (=> (not res!856861) (not e!1224721))))

(assert (=> b!1916996 (= res!856861 (is-Cons!21672 tokens!598))))

(declare-fun res!856862 () Bool)

(assert (=> start!192218 (=> (not res!856862) (not e!1224721))))

(assert (=> start!192218 (= res!856862 (is-Lexer!3482 thiss!23328))))

(assert (=> start!192218 e!1224721))

(assert (=> start!192218 true))

(assert (=> start!192218 e!1224720))

(assert (=> start!192218 e!1224726))

(assert (=> start!192218 (and (inv!28768 separatorToken!354) e!1224736)))

(assert (= (and start!192218 res!856862) b!1917005))

(assert (= (and b!1917005 res!856870) b!1916995))

(assert (= (and b!1916995 res!856873) b!1917000))

(assert (= (and b!1917000 res!856874) b!1916994))

(assert (= (and b!1916994 res!856871) b!1917001))

(assert (= (and b!1917001 res!856867) b!1916993))

(assert (= (and b!1916993 res!856868) b!1917010))

(assert (= (and b!1917010 res!856869) b!1916996))

(assert (= (and b!1916996 res!856861) b!1917007))

(assert (= (and b!1917007 res!856872) b!1916988))

(assert (= (and b!1916988 res!856863) b!1917011))

(assert (= (and b!1917007 res!856864) b!1916997))

(assert (= (and b!1917007 res!856865) b!1917006))

(assert (= (and b!1917006 res!856866) b!1917004))

(assert (= (and b!1917007 (not res!856875)) b!1916990))

(assert (= b!1916998 b!1917002))

(assert (= b!1916989 b!1916998))

(assert (= (and start!192218 (is-Cons!21673 rules!3198)) b!1916989))

(assert (= b!1916999 b!1916992))

(assert (= b!1916991 b!1916999))

(assert (= b!1916987 b!1916991))

(assert (= (and start!192218 (is-Cons!21672 tokens!598)) b!1916987))

(assert (= b!1917003 b!1917009))

(assert (= b!1917008 b!1917003))

(assert (= start!192218 b!1917008))

(declare-fun m!2352223 () Bool)

(assert (=> b!1916994 m!2352223))

(declare-fun m!2352225 () Bool)

(assert (=> b!1916997 m!2352225))

(declare-fun m!2352227 () Bool)

(assert (=> b!1916993 m!2352227))

(declare-fun m!2352229 () Bool)

(assert (=> b!1917000 m!2352229))

(declare-fun m!2352231 () Bool)

(assert (=> start!192218 m!2352231))

(declare-fun m!2352233 () Bool)

(assert (=> b!1917003 m!2352233))

(declare-fun m!2352235 () Bool)

(assert (=> b!1917003 m!2352235))

(declare-fun m!2352237 () Bool)

(assert (=> b!1917007 m!2352237))

(declare-fun m!2352239 () Bool)

(assert (=> b!1917007 m!2352239))

(declare-fun m!2352241 () Bool)

(assert (=> b!1917007 m!2352241))

(assert (=> b!1917007 m!2352239))

(declare-fun m!2352243 () Bool)

(assert (=> b!1917007 m!2352243))

(declare-fun m!2352245 () Bool)

(assert (=> b!1917007 m!2352245))

(declare-fun m!2352247 () Bool)

(assert (=> b!1917007 m!2352247))

(declare-fun m!2352249 () Bool)

(assert (=> b!1917007 m!2352249))

(declare-fun m!2352251 () Bool)

(assert (=> b!1917007 m!2352251))

(declare-fun m!2352253 () Bool)

(assert (=> b!1917007 m!2352253))

(declare-fun m!2352255 () Bool)

(assert (=> b!1917007 m!2352255))

(declare-fun m!2352257 () Bool)

(assert (=> b!1917007 m!2352257))

(declare-fun m!2352259 () Bool)

(assert (=> b!1917007 m!2352259))

(declare-fun m!2352261 () Bool)

(assert (=> b!1917007 m!2352261))

(declare-fun m!2352263 () Bool)

(assert (=> b!1917007 m!2352263))

(declare-fun m!2352265 () Bool)

(assert (=> b!1917007 m!2352265))

(declare-fun m!2352267 () Bool)

(assert (=> b!1917007 m!2352267))

(declare-fun m!2352269 () Bool)

(assert (=> b!1917007 m!2352269))

(declare-fun m!2352271 () Bool)

(assert (=> b!1917007 m!2352271))

(assert (=> b!1917007 m!2352267))

(assert (=> b!1917007 m!2352257))

(assert (=> b!1917007 m!2352251))

(declare-fun m!2352273 () Bool)

(assert (=> b!1916999 m!2352273))

(declare-fun m!2352275 () Bool)

(assert (=> b!1916999 m!2352275))

(declare-fun m!2352277 () Bool)

(assert (=> b!1917010 m!2352277))

(declare-fun m!2352279 () Bool)

(assert (=> b!1916990 m!2352279))

(declare-fun m!2352281 () Bool)

(assert (=> b!1916990 m!2352281))

(declare-fun m!2352283 () Bool)

(assert (=> b!1916990 m!2352283))

(declare-fun m!2352285 () Bool)

(assert (=> b!1917006 m!2352285))

(declare-fun m!2352287 () Bool)

(assert (=> b!1917006 m!2352287))

(declare-fun m!2352289 () Bool)

(assert (=> b!1916988 m!2352289))

(declare-fun m!2352291 () Bool)

(assert (=> b!1916988 m!2352291))

(declare-fun m!2352293 () Bool)

(assert (=> b!1916987 m!2352293))

(declare-fun m!2352295 () Bool)

(assert (=> b!1916995 m!2352295))

(declare-fun m!2352297 () Bool)

(assert (=> b!1917008 m!2352297))

(declare-fun m!2352299 () Bool)

(assert (=> b!1916998 m!2352299))

(declare-fun m!2352301 () Bool)

(assert (=> b!1916998 m!2352301))

(declare-fun m!2352303 () Bool)

(assert (=> b!1916991 m!2352303))

(declare-fun m!2352305 () Bool)

(assert (=> b!1917005 m!2352305))

(push 1)

(assert b_and!149561)

(assert (not b_next!55061))

(assert b_and!149565)

(assert (not b!1917005))

(assert (not b!1916991))

(assert (not b!1917010))

(assert (not b!1916987))

(assert (not b_next!55057))

(assert b_and!149555)

(assert (not b!1916995))

(assert (not b!1916990))

(assert (not b_next!55055))

(assert (not b!1917006))

(assert b_and!149559)

(assert (not b!1917008))

(assert b_and!149557)

(assert (not b!1916994))

(assert (not b_next!55063))

(assert (not b_next!55059))

(assert (not b!1916997))

(assert (not b!1916989))

(assert (not b!1916988))

(assert (not b_next!55053))

(assert (not b!1917003))

(assert (not b!1917007))

(assert (not b!1916993))

(assert (not b!1916998))

(assert (not start!192218))

(assert b_and!149563)

(assert (not b!1916999))

(assert (not b!1917000))

(check-sat)

(pop 1)

(push 1)

(assert b_and!149561)

(assert (not b_next!55063))

(assert (not b_next!55061))

(assert (not b_next!55059))

(assert b_and!149565)

(assert (not b_next!55053))

(assert (not b_next!55057))

(assert b_and!149555)

(assert b_and!149563)

(assert (not b_next!55055))

(assert b_and!149559)

(assert b_and!149557)

(check-sat)

(pop 1)

