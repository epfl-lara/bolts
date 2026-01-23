; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77046 () Bool)

(assert start!77046)

(declare-fun b!856609 () Bool)

(declare-fun b_free!26009 () Bool)

(declare-fun b_next!26073 () Bool)

(assert (=> b!856609 (= b_free!26009 (not b_next!26073))))

(declare-fun tp!270228 () Bool)

(declare-fun b_and!75785 () Bool)

(assert (=> b!856609 (= tp!270228 b_and!75785)))

(declare-fun b_free!26011 () Bool)

(declare-fun b_next!26075 () Bool)

(assert (=> b!856609 (= b_free!26011 (not b_next!26075))))

(declare-fun tp!270223 () Bool)

(declare-fun b_and!75787 () Bool)

(assert (=> b!856609 (= tp!270223 b_and!75787)))

(declare-fun b!856610 () Bool)

(declare-fun b_free!26013 () Bool)

(declare-fun b_next!26077 () Bool)

(assert (=> b!856610 (= b_free!26013 (not b_next!26077))))

(declare-fun tp!270216 () Bool)

(declare-fun b_and!75789 () Bool)

(assert (=> b!856610 (= tp!270216 b_and!75789)))

(declare-fun b_free!26015 () Bool)

(declare-fun b_next!26079 () Bool)

(assert (=> b!856610 (= b_free!26015 (not b_next!26079))))

(declare-fun tp!270220 () Bool)

(declare-fun b_and!75791 () Bool)

(assert (=> b!856610 (= tp!270220 b_and!75791)))

(declare-fun b!856616 () Bool)

(declare-fun b_free!26017 () Bool)

(declare-fun b_next!26081 () Bool)

(assert (=> b!856616 (= b_free!26017 (not b_next!26081))))

(declare-fun tp!270227 () Bool)

(declare-fun b_and!75793 () Bool)

(assert (=> b!856616 (= tp!270227 b_and!75793)))

(declare-fun b_free!26019 () Bool)

(declare-fun b_next!26083 () Bool)

(assert (=> b!856616 (= b_free!26019 (not b_next!26083))))

(declare-fun tp!270217 () Bool)

(declare-fun b_and!75795 () Bool)

(assert (=> b!856616 (= tp!270217 b_and!75795)))

(declare-fun b!856606 () Bool)

(declare-fun res!390950 () Bool)

(declare-fun e!563790 () Bool)

(assert (=> b!856606 (=> (not res!390950) (not e!563790))))

(declare-datatypes ((List!9256 0))(
  ( (Nil!9240) (Cons!9240 (h!14641 (_ BitVec 16)) (t!96712 List!9256)) )
))
(declare-datatypes ((TokenValue!1800 0))(
  ( (FloatLiteralValue!3600 (text!13045 List!9256)) (TokenValueExt!1799 (__x!7331 Int)) (Broken!9000 (value!56092 List!9256)) (Object!1815) (End!1800) (Def!1800) (Underscore!1800) (Match!1800) (Else!1800) (Error!1800) (Case!1800) (If!1800) (Extends!1800) (Abstract!1800) (Class!1800) (Val!1800) (DelimiterValue!3600 (del!1860 List!9256)) (KeywordValue!1806 (value!56093 List!9256)) (CommentValue!3600 (value!56094 List!9256)) (WhitespaceValue!3600 (value!56095 List!9256)) (IndentationValue!1800 (value!56096 List!9256)) (String!10897) (Int32!1800) (Broken!9001 (value!56097 List!9256)) (Boolean!1801) (Unit!13736) (OperatorValue!1803 (op!1860 List!9256)) (IdentifierValue!3600 (value!56098 List!9256)) (IdentifierValue!3601 (value!56099 List!9256)) (WhitespaceValue!3601 (value!56100 List!9256)) (True!3600) (False!3600) (Broken!9002 (value!56101 List!9256)) (Broken!9003 (value!56102 List!9256)) (True!3601) (RightBrace!1800) (RightBracket!1800) (Colon!1800) (Null!1800) (Comma!1800) (LeftBracket!1800) (False!3601) (LeftBrace!1800) (ImaginaryLiteralValue!1800 (text!13046 List!9256)) (StringLiteralValue!5400 (value!56103 List!9256)) (EOFValue!1800 (value!56104 List!9256)) (IdentValue!1800 (value!56105 List!9256)) (DelimiterValue!3601 (value!56106 List!9256)) (DedentValue!1800 (value!56107 List!9256)) (NewLineValue!1800 (value!56108 List!9256)) (IntegerValue!5400 (value!56109 (_ BitVec 32)) (text!13047 List!9256)) (IntegerValue!5401 (value!56110 Int) (text!13048 List!9256)) (Times!1800) (Or!1800) (Equal!1800) (Minus!1800) (Broken!9004 (value!56111 List!9256)) (And!1800) (Div!1800) (LessEqual!1800) (Mod!1800) (Concat!3967) (Not!1800) (Plus!1800) (SpaceValue!1800 (value!56112 List!9256)) (IntegerValue!5402 (value!56113 Int) (text!13049 List!9256)) (StringLiteralValue!5401 (text!13050 List!9256)) (FloatLiteralValue!3601 (text!13051 List!9256)) (BytesLiteralValue!1800 (value!56114 List!9256)) (CommentValue!3601 (value!56115 List!9256)) (StringLiteralValue!5402 (value!56116 List!9256)) (ErrorTokenValue!1800 (msg!1861 List!9256)) )
))
(declare-datatypes ((C!4904 0))(
  ( (C!4905 (val!2700 Int)) )
))
(declare-datatypes ((Regex!2167 0))(
  ( (ElementMatch!2167 (c!138855 C!4904)) (Concat!3968 (regOne!4846 Regex!2167) (regTwo!4846 Regex!2167)) (EmptyExpr!2167) (Star!2167 (reg!2496 Regex!2167)) (EmptyLang!2167) (Union!2167 (regOne!4847 Regex!2167) (regTwo!4847 Regex!2167)) )
))
(declare-datatypes ((String!10898 0))(
  ( (String!10899 (value!56117 String)) )
))
(declare-datatypes ((List!9257 0))(
  ( (Nil!9241) (Cons!9241 (h!14642 C!4904) (t!96713 List!9257)) )
))
(declare-datatypes ((IArray!6131 0))(
  ( (IArray!6132 (innerList!3123 List!9257)) )
))
(declare-datatypes ((Conc!3063 0))(
  ( (Node!3063 (left!6839 Conc!3063) (right!7169 Conc!3063) (csize!6356 Int) (cheight!3274 Int)) (Leaf!4518 (xs!5752 IArray!6131) (csize!6357 Int)) (Empty!3063) )
))
(declare-datatypes ((BalanceConc!6140 0))(
  ( (BalanceConc!6141 (c!138856 Conc!3063)) )
))
(declare-datatypes ((TokenValueInjection!3300 0))(
  ( (TokenValueInjection!3301 (toValue!2791 Int) (toChars!2650 Int)) )
))
(declare-datatypes ((Rule!3268 0))(
  ( (Rule!3269 (regex!1734 Regex!2167) (tag!1996 String!10898) (isSeparator!1734 Bool) (transformation!1734 TokenValueInjection!3300)) )
))
(declare-datatypes ((Token!3134 0))(
  ( (Token!3135 (value!56118 TokenValue!1800) (rule!3157 Rule!3268) (size!7715 Int) (originalCharacters!2290 List!9257)) )
))
(declare-fun separatorToken!297 () Token!3134)

(assert (=> b!856606 (= res!390950 (isSeparator!1734 (rule!3157 separatorToken!297)))))

(declare-fun b!856607 () Bool)

(declare-datatypes ((List!9258 0))(
  ( (Nil!9242) (Cons!9242 (h!14643 Token!3134) (t!96714 List!9258)) )
))
(declare-fun lt!323878 () List!9258)

(declare-datatypes ((List!9259 0))(
  ( (Nil!9243) (Cons!9243 (h!14644 Rule!3268) (t!96715 List!9259)) )
))
(declare-fun rules!2621 () List!9259)

(declare-datatypes ((LexerInterface!1536 0))(
  ( (LexerInterfaceExt!1533 (__x!7332 Int)) (Lexer!1534) )
))
(declare-fun thiss!20117 () LexerInterface!1536)

(declare-fun e!563797 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!50 (LexerInterface!1536 List!9258 List!9259) Bool)

(assert (=> b!856607 (= e!563797 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 lt!323878 rules!2621))))

(declare-fun b!856608 () Bool)

(declare-fun res!390962 () Bool)

(assert (=> b!856608 (=> (not res!390962) (not e!563790))))

(declare-fun rulesProduceIndividualToken!600 (LexerInterface!1536 List!9259 Token!3134) Bool)

(assert (=> b!856608 (= res!390962 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun e!563801 () Bool)

(assert (=> b!856609 (= e!563801 (and tp!270228 tp!270223))))

(declare-fun e!563784 () Bool)

(assert (=> b!856610 (= e!563784 (and tp!270216 tp!270220))))

(declare-fun b!856611 () Bool)

(declare-fun e!563785 () Bool)

(declare-fun tp!270218 () Bool)

(declare-fun e!563789 () Bool)

(declare-fun inv!21 (TokenValue!1800) Bool)

(assert (=> b!856611 (= e!563785 (and (inv!21 (value!56118 separatorToken!297)) e!563789 tp!270218))))

(declare-fun b!856612 () Bool)

(declare-fun res!390949 () Bool)

(declare-fun e!563799 () Bool)

(assert (=> b!856612 (=> res!390949 e!563799)))

(declare-fun l!5107 () List!9258)

(declare-fun lt!323881 () List!9258)

(declare-fun head!1486 (List!9258) Token!3134)

(assert (=> b!856612 (= res!390949 (not (= (head!1486 l!5107) (h!14643 lt!323881))))))

(declare-fun b!856613 () Bool)

(declare-fun res!390958 () Bool)

(assert (=> b!856613 (=> (not res!390958) (not e!563790))))

(declare-fun rulesInvariant!1412 (LexerInterface!1536 List!9259) Bool)

(assert (=> b!856613 (= res!390958 (rulesInvariant!1412 thiss!20117 rules!2621))))

(declare-fun b!856615 () Bool)

(declare-fun e!563803 () Bool)

(assert (=> b!856615 (= e!563803 e!563799)))

(declare-fun res!390957 () Bool)

(assert (=> b!856615 (=> res!390957 e!563799)))

(assert (=> b!856615 (= res!390957 (not (= (t!96714 (t!96714 lt!323881)) lt!323878)))))

(declare-fun lt!323880 () List!9258)

(declare-fun withSeparatorTokenList!66 (LexerInterface!1536 List!9258 Token!3134) List!9258)

(assert (=> b!856615 (= lt!323878 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))

(declare-fun tail!1046 (List!9258) List!9258)

(assert (=> b!856615 (= lt!323880 (tail!1046 l!5107))))

(declare-fun e!563788 () Bool)

(assert (=> b!856616 (= e!563788 (and tp!270227 tp!270217))))

(declare-fun b!856617 () Bool)

(assert (=> b!856617 (= e!563790 (not e!563803))))

(declare-fun res!390960 () Bool)

(assert (=> b!856617 (=> res!390960 e!563803)))

(get-info :version)

(assert (=> b!856617 (= res!390960 (or (not ((_ is Cons!9242) lt!323881)) (not ((_ is Cons!9242) (t!96714 lt!323881)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!424 (LexerInterface!1536 List!9259 List!9258) Bool)

(assert (=> b!856617 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 lt!323881)))

(assert (=> b!856617 (= lt!323881 (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13737 0))(
  ( (Unit!13738) )
))
(declare-fun lt!323876 () Unit!13737)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!66 (LexerInterface!1536 List!9259 List!9258 Token!3134) Unit!13737)

(assert (=> b!856617 (= lt!323876 (withSeparatorTokenListPreservesRulesProduceTokens!66 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!856618 () Bool)

(declare-fun res!390959 () Bool)

(assert (=> b!856618 (=> (not res!390959) (not e!563790))))

(declare-fun isEmpty!5480 (List!9259) Bool)

(assert (=> b!856618 (= res!390959 (not (isEmpty!5480 rules!2621)))))

(declare-fun b!856619 () Bool)

(declare-fun e!563800 () Bool)

(assert (=> b!856619 (= e!563800 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 lt!323881 rules!2621))))

(declare-fun b!856620 () Bool)

(declare-fun res!390955 () Bool)

(assert (=> b!856620 (=> (not res!390955) (not e!563790))))

(declare-fun lambda!25690 () Int)

(declare-fun forall!2193 (List!9258 Int) Bool)

(assert (=> b!856620 (= res!390955 (forall!2193 l!5107 lambda!25690))))

(declare-fun b!856621 () Bool)

(assert (=> b!856621 (= e!563799 e!563800)))

(declare-fun res!390951 () Bool)

(assert (=> b!856621 (=> res!390951 e!563800)))

(declare-fun isEmpty!5481 (List!9258) Bool)

(assert (=> b!856621 (= res!390951 (not (isEmpty!5481 (t!96714 (t!96714 lt!323881)))))))

(assert (=> b!856621 e!563797))

(declare-fun res!390952 () Bool)

(assert (=> b!856621 (=> (not res!390952) (not e!563797))))

(assert (=> b!856621 (= res!390952 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 lt!323878))))

(declare-fun lt!323877 () Unit!13737)

(assert (=> b!856621 (= lt!323877 (withSeparatorTokenListPreservesRulesProduceTokens!66 thiss!20117 rules!2621 lt!323880 separatorToken!297))))

(declare-fun lt!323875 () Unit!13737)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!30 (LexerInterface!1536 List!9259 List!9258 Token!3134) Unit!13737)

(assert (=> b!856621 (= lt!323875 (printWithSeparatorTokenImpliesSeparableTokensList!30 thiss!20117 rules!2621 lt!323880 separatorToken!297))))

(declare-fun separableTokensPredicate!66 (LexerInterface!1536 Token!3134 Token!3134 List!9259) Bool)

(assert (=> b!856621 (separableTokensPredicate!66 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621)))

(declare-fun lt!323879 () Unit!13737)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!46 (LexerInterface!1536 Token!3134 Token!3134 List!9259) Unit!13737)

(assert (=> b!856621 (= lt!323879 (lemmaTokensOfDifferentKindsAreSeparable!46 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621))))

(declare-fun b!856622 () Bool)

(declare-fun e!563794 () Bool)

(declare-fun e!563796 () Bool)

(declare-fun tp!270224 () Bool)

(assert (=> b!856622 (= e!563794 (and e!563796 tp!270224))))

(declare-fun tp!270221 () Bool)

(declare-fun b!856623 () Bool)

(declare-fun e!563795 () Bool)

(declare-fun inv!11756 (String!10898) Bool)

(declare-fun inv!11759 (TokenValueInjection!3300) Bool)

(assert (=> b!856623 (= e!563795 (and tp!270221 (inv!11756 (tag!1996 (rule!3157 (h!14643 l!5107)))) (inv!11759 (transformation!1734 (rule!3157 (h!14643 l!5107)))) e!563788))))

(declare-fun b!856624 () Bool)

(declare-fun res!390956 () Bool)

(assert (=> b!856624 (=> (not res!390956) (not e!563790))))

(declare-fun sepAndNonSepRulesDisjointChars!534 (List!9259 List!9259) Bool)

(assert (=> b!856624 (= res!390956 (sepAndNonSepRulesDisjointChars!534 rules!2621 rules!2621))))

(declare-fun e!563802 () Bool)

(declare-fun b!856625 () Bool)

(declare-fun tp!270222 () Bool)

(declare-fun e!563792 () Bool)

(declare-fun inv!11760 (Token!3134) Bool)

(assert (=> b!856625 (= e!563792 (and (inv!11760 (h!14643 l!5107)) e!563802 tp!270222))))

(declare-fun b!856626 () Bool)

(declare-fun tp!270226 () Bool)

(assert (=> b!856626 (= e!563796 (and tp!270226 (inv!11756 (tag!1996 (h!14644 rules!2621))) (inv!11759 (transformation!1734 (h!14644 rules!2621))) e!563801))))

(declare-fun b!856627 () Bool)

(declare-fun res!390953 () Bool)

(assert (=> b!856627 (=> (not res!390953) (not e!563790))))

(assert (=> b!856627 (= res!390953 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 l!5107))))

(declare-fun tp!270225 () Bool)

(declare-fun b!856628 () Bool)

(assert (=> b!856628 (= e!563802 (and (inv!21 (value!56118 (h!14643 l!5107))) e!563795 tp!270225))))

(declare-fun b!856629 () Bool)

(declare-fun tp!270219 () Bool)

(assert (=> b!856629 (= e!563789 (and tp!270219 (inv!11756 (tag!1996 (rule!3157 separatorToken!297))) (inv!11759 (transformation!1734 (rule!3157 separatorToken!297))) e!563784))))

(declare-fun res!390961 () Bool)

(assert (=> start!77046 (=> (not res!390961) (not e!563790))))

(assert (=> start!77046 (= res!390961 ((_ is Lexer!1534) thiss!20117))))

(assert (=> start!77046 e!563790))

(assert (=> start!77046 true))

(assert (=> start!77046 e!563794))

(assert (=> start!77046 e!563792))

(assert (=> start!77046 (and (inv!11760 separatorToken!297) e!563785)))

(declare-fun b!856614 () Bool)

(declare-fun res!390954 () Bool)

(assert (=> b!856614 (=> res!390954 e!563799)))

(assert (=> b!856614 (= res!390954 (not (= (h!14643 (t!96714 lt!323881)) separatorToken!297)))))

(assert (= (and start!77046 res!390961) b!856618))

(assert (= (and b!856618 res!390959) b!856613))

(assert (= (and b!856613 res!390958) b!856627))

(assert (= (and b!856627 res!390953) b!856608))

(assert (= (and b!856608 res!390962) b!856606))

(assert (= (and b!856606 res!390950) b!856620))

(assert (= (and b!856620 res!390955) b!856624))

(assert (= (and b!856624 res!390956) b!856617))

(assert (= (and b!856617 (not res!390960)) b!856615))

(assert (= (and b!856615 (not res!390957)) b!856612))

(assert (= (and b!856612 (not res!390949)) b!856614))

(assert (= (and b!856614 (not res!390954)) b!856621))

(assert (= (and b!856621 res!390952) b!856607))

(assert (= (and b!856621 (not res!390951)) b!856619))

(assert (= b!856626 b!856609))

(assert (= b!856622 b!856626))

(assert (= (and start!77046 ((_ is Cons!9243) rules!2621)) b!856622))

(assert (= b!856623 b!856616))

(assert (= b!856628 b!856623))

(assert (= b!856625 b!856628))

(assert (= (and start!77046 ((_ is Cons!9242) l!5107)) b!856625))

(assert (= b!856629 b!856610))

(assert (= b!856611 b!856629))

(assert (= start!77046 b!856611))

(declare-fun m!1098185 () Bool)

(assert (=> b!856619 m!1098185))

(declare-fun m!1098187 () Bool)

(assert (=> b!856627 m!1098187))

(declare-fun m!1098189 () Bool)

(assert (=> b!856607 m!1098189))

(declare-fun m!1098191 () Bool)

(assert (=> b!856620 m!1098191))

(declare-fun m!1098193 () Bool)

(assert (=> b!856608 m!1098193))

(declare-fun m!1098195 () Bool)

(assert (=> b!856621 m!1098195))

(declare-fun m!1098197 () Bool)

(assert (=> b!856621 m!1098197))

(declare-fun m!1098199 () Bool)

(assert (=> b!856621 m!1098199))

(declare-fun m!1098201 () Bool)

(assert (=> b!856621 m!1098201))

(declare-fun m!1098203 () Bool)

(assert (=> b!856621 m!1098203))

(declare-fun m!1098205 () Bool)

(assert (=> b!856621 m!1098205))

(declare-fun m!1098207 () Bool)

(assert (=> b!856628 m!1098207))

(declare-fun m!1098209 () Bool)

(assert (=> b!856623 m!1098209))

(declare-fun m!1098211 () Bool)

(assert (=> b!856623 m!1098211))

(declare-fun m!1098213 () Bool)

(assert (=> b!856613 m!1098213))

(declare-fun m!1098215 () Bool)

(assert (=> start!77046 m!1098215))

(declare-fun m!1098217 () Bool)

(assert (=> b!856615 m!1098217))

(declare-fun m!1098219 () Bool)

(assert (=> b!856615 m!1098219))

(declare-fun m!1098221 () Bool)

(assert (=> b!856626 m!1098221))

(declare-fun m!1098223 () Bool)

(assert (=> b!856626 m!1098223))

(declare-fun m!1098225 () Bool)

(assert (=> b!856624 m!1098225))

(declare-fun m!1098227 () Bool)

(assert (=> b!856612 m!1098227))

(declare-fun m!1098229 () Bool)

(assert (=> b!856611 m!1098229))

(declare-fun m!1098231 () Bool)

(assert (=> b!856617 m!1098231))

(declare-fun m!1098233 () Bool)

(assert (=> b!856617 m!1098233))

(declare-fun m!1098235 () Bool)

(assert (=> b!856617 m!1098235))

(declare-fun m!1098237 () Bool)

(assert (=> b!856625 m!1098237))

(declare-fun m!1098239 () Bool)

(assert (=> b!856618 m!1098239))

(declare-fun m!1098241 () Bool)

(assert (=> b!856629 m!1098241))

(declare-fun m!1098243 () Bool)

(assert (=> b!856629 m!1098243))

(check-sat b_and!75787 (not b!856611) (not b!856608) (not b!856620) (not b!856629) (not b!856607) b_and!75785 (not b_next!26083) (not b!856623) b_and!75793 (not b!856621) (not start!77046) (not b_next!26081) b_and!75791 (not b!856613) (not b!856618) (not b!856622) (not b_next!26073) (not b_next!26079) b_and!75795 b_and!75789 (not b!856615) (not b_next!26077) (not b!856625) (not b_next!26075) (not b!856612) (not b!856627) (not b!856624) (not b!856626) (not b!856628) (not b!856617) (not b!856619))
(check-sat b_and!75787 (not b_next!26081) b_and!75791 (not b_next!26075) b_and!75785 (not b_next!26083) b_and!75793 (not b_next!26073) (not b_next!26079) b_and!75795 (not b_next!26077) b_and!75789)
(get-model)

(declare-fun d!268017 () Bool)

(declare-fun res!390974 () Bool)

(declare-fun e!563806 () Bool)

(assert (=> d!268017 (=> (not res!390974) (not e!563806))))

(declare-fun isEmpty!5483 (List!9257) Bool)

(assert (=> d!268017 (= res!390974 (not (isEmpty!5483 (originalCharacters!2290 separatorToken!297))))))

(assert (=> d!268017 (= (inv!11760 separatorToken!297) e!563806)))

(declare-fun b!856634 () Bool)

(declare-fun res!390975 () Bool)

(assert (=> b!856634 (=> (not res!390975) (not e!563806))))

(declare-fun list!3644 (BalanceConc!6140) List!9257)

(declare-fun dynLambda!4343 (Int TokenValue!1800) BalanceConc!6140)

(assert (=> b!856634 (= res!390975 (= (originalCharacters!2290 separatorToken!297) (list!3644 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))))))

(declare-fun b!856635 () Bool)

(declare-fun size!7718 (List!9257) Int)

(assert (=> b!856635 (= e!563806 (= (size!7715 separatorToken!297) (size!7718 (originalCharacters!2290 separatorToken!297))))))

(assert (= (and d!268017 res!390974) b!856634))

(assert (= (and b!856634 res!390975) b!856635))

(declare-fun b_lambda!28815 () Bool)

(assert (=> (not b_lambda!28815) (not b!856634)))

(declare-fun t!96717 () Bool)

(declare-fun tb!60757 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) t!96717) tb!60757))

(declare-fun b!856640 () Bool)

(declare-fun e!563809 () Bool)

(declare-fun tp!270231 () Bool)

(declare-fun inv!11763 (Conc!3063) Bool)

(assert (=> b!856640 (= e!563809 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))) tp!270231))))

(declare-fun result!70338 () Bool)

(declare-fun inv!11764 (BalanceConc!6140) Bool)

(assert (=> tb!60757 (= result!70338 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))) e!563809))))

(assert (= tb!60757 b!856640))

(declare-fun m!1098245 () Bool)

(assert (=> b!856640 m!1098245))

(declare-fun m!1098247 () Bool)

(assert (=> tb!60757 m!1098247))

(assert (=> b!856634 t!96717))

(declare-fun b_and!75797 () Bool)

(assert (= b_and!75787 (and (=> t!96717 result!70338) b_and!75797)))

(declare-fun t!96719 () Bool)

(declare-fun tb!60759 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) t!96719) tb!60759))

(declare-fun result!70342 () Bool)

(assert (= result!70342 result!70338))

(assert (=> b!856634 t!96719))

(declare-fun b_and!75799 () Bool)

(assert (= b_and!75791 (and (=> t!96719 result!70342) b_and!75799)))

(declare-fun t!96721 () Bool)

(declare-fun tb!60761 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) t!96721) tb!60761))

(declare-fun result!70344 () Bool)

(assert (= result!70344 result!70338))

(assert (=> b!856634 t!96721))

(declare-fun b_and!75801 () Bool)

(assert (= b_and!75795 (and (=> t!96721 result!70344) b_and!75801)))

(declare-fun m!1098249 () Bool)

(assert (=> d!268017 m!1098249))

(declare-fun m!1098251 () Bool)

(assert (=> b!856634 m!1098251))

(assert (=> b!856634 m!1098251))

(declare-fun m!1098253 () Bool)

(assert (=> b!856634 m!1098253))

(declare-fun m!1098255 () Bool)

(assert (=> b!856635 m!1098255))

(assert (=> start!77046 d!268017))

(declare-fun d!268019 () Bool)

(declare-fun c!138861 () Bool)

(assert (=> d!268019 (= c!138861 ((_ is IntegerValue!5400) (value!56118 separatorToken!297)))))

(declare-fun e!563818 () Bool)

(assert (=> d!268019 (= (inv!21 (value!56118 separatorToken!297)) e!563818)))

(declare-fun b!856651 () Bool)

(declare-fun inv!16 (TokenValue!1800) Bool)

(assert (=> b!856651 (= e!563818 (inv!16 (value!56118 separatorToken!297)))))

(declare-fun b!856652 () Bool)

(declare-fun res!390978 () Bool)

(declare-fun e!563817 () Bool)

(assert (=> b!856652 (=> res!390978 e!563817)))

(assert (=> b!856652 (= res!390978 (not ((_ is IntegerValue!5402) (value!56118 separatorToken!297))))))

(declare-fun e!563816 () Bool)

(assert (=> b!856652 (= e!563816 e!563817)))

(declare-fun b!856653 () Bool)

(assert (=> b!856653 (= e!563818 e!563816)))

(declare-fun c!138862 () Bool)

(assert (=> b!856653 (= c!138862 ((_ is IntegerValue!5401) (value!56118 separatorToken!297)))))

(declare-fun b!856654 () Bool)

(declare-fun inv!17 (TokenValue!1800) Bool)

(assert (=> b!856654 (= e!563816 (inv!17 (value!56118 separatorToken!297)))))

(declare-fun b!856655 () Bool)

(declare-fun inv!15 (TokenValue!1800) Bool)

(assert (=> b!856655 (= e!563817 (inv!15 (value!56118 separatorToken!297)))))

(assert (= (and d!268019 c!138861) b!856651))

(assert (= (and d!268019 (not c!138861)) b!856653))

(assert (= (and b!856653 c!138862) b!856654))

(assert (= (and b!856653 (not c!138862)) b!856652))

(assert (= (and b!856652 (not res!390978)) b!856655))

(declare-fun m!1098257 () Bool)

(assert (=> b!856651 m!1098257))

(declare-fun m!1098259 () Bool)

(assert (=> b!856654 m!1098259))

(declare-fun m!1098261 () Bool)

(assert (=> b!856655 m!1098261))

(assert (=> b!856611 d!268019))

(declare-fun d!268021 () Bool)

(declare-fun res!390983 () Bool)

(declare-fun e!563823 () Bool)

(assert (=> d!268021 (=> res!390983 e!563823)))

(assert (=> d!268021 (= res!390983 ((_ is Nil!9242) l!5107))))

(assert (=> d!268021 (= (forall!2193 l!5107 lambda!25690) e!563823)))

(declare-fun b!856660 () Bool)

(declare-fun e!563824 () Bool)

(assert (=> b!856660 (= e!563823 e!563824)))

(declare-fun res!390984 () Bool)

(assert (=> b!856660 (=> (not res!390984) (not e!563824))))

(declare-fun dynLambda!4347 (Int Token!3134) Bool)

(assert (=> b!856660 (= res!390984 (dynLambda!4347 lambda!25690 (h!14643 l!5107)))))

(declare-fun b!856661 () Bool)

(assert (=> b!856661 (= e!563824 (forall!2193 (t!96714 l!5107) lambda!25690))))

(assert (= (and d!268021 (not res!390983)) b!856660))

(assert (= (and b!856660 res!390984) b!856661))

(declare-fun b_lambda!28817 () Bool)

(assert (=> (not b_lambda!28817) (not b!856660)))

(declare-fun m!1098263 () Bool)

(assert (=> b!856660 m!1098263))

(declare-fun m!1098265 () Bool)

(assert (=> b!856661 m!1098265))

(assert (=> b!856620 d!268021))

(declare-fun d!268023 () Bool)

(assert (=> d!268023 (separableTokensPredicate!66 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621)))

(declare-fun lt!323884 () Unit!13737)

(declare-fun choose!5050 (LexerInterface!1536 Token!3134 Token!3134 List!9259) Unit!13737)

(assert (=> d!268023 (= lt!323884 (choose!5050 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621))))

(assert (=> d!268023 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268023 (= (lemmaTokensOfDifferentKindsAreSeparable!46 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621) lt!323884)))

(declare-fun bs!231898 () Bool)

(assert (= bs!231898 d!268023))

(assert (=> bs!231898 m!1098195))

(declare-fun m!1098267 () Bool)

(assert (=> bs!231898 m!1098267))

(assert (=> bs!231898 m!1098239))

(assert (=> b!856621 d!268023))

(declare-fun b!856689 () Bool)

(declare-fun res!391007 () Bool)

(declare-fun e!563839 () Bool)

(assert (=> b!856689 (=> (not res!391007) (not e!563839))))

(assert (=> b!856689 (= res!391007 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun d!268025 () Bool)

(assert (=> d!268025 e!563839))

(declare-fun res!391008 () Bool)

(assert (=> d!268025 (=> (not res!391008) (not e!563839))))

(assert (=> d!268025 (= res!391008 ((_ is Lexer!1534) thiss!20117))))

(declare-fun lt!323916 () Unit!13737)

(declare-fun choose!5051 (LexerInterface!1536 List!9259 List!9258 Token!3134) Unit!13737)

(assert (=> d!268025 (= lt!323916 (choose!5051 thiss!20117 rules!2621 lt!323880 separatorToken!297))))

(assert (=> d!268025 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268025 (= (printWithSeparatorTokenImpliesSeparableTokensList!30 thiss!20117 rules!2621 lt!323880 separatorToken!297) lt!323916)))

(declare-fun b!856690 () Bool)

(declare-fun res!391010 () Bool)

(assert (=> b!856690 (=> (not res!391010) (not e!563839))))

(assert (=> b!856690 (= res!391010 (isSeparator!1734 (rule!3157 separatorToken!297)))))

(declare-fun b!856691 () Bool)

(declare-fun res!391011 () Bool)

(assert (=> b!856691 (=> (not res!391011) (not e!563839))))

(assert (=> b!856691 (= res!391011 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 lt!323880))))

(declare-fun b!856692 () Bool)

(assert (=> b!856692 (= e!563839 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297) rules!2621))))

(declare-fun lt!323915 () Unit!13737)

(declare-fun lt!323917 () Unit!13737)

(assert (=> b!856692 (= lt!323915 lt!323917)))

(assert (=> b!856692 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))

(assert (=> b!856692 (= lt!323917 (withSeparatorTokenListPreservesRulesProduceTokens!66 thiss!20117 rules!2621 lt!323880 separatorToken!297))))

(declare-fun b!856693 () Bool)

(declare-fun res!391009 () Bool)

(assert (=> b!856693 (=> (not res!391009) (not e!563839))))

(assert (=> b!856693 (= res!391009 (rulesInvariant!1412 thiss!20117 rules!2621))))

(assert (= (and d!268025 res!391008) b!856693))

(assert (= (and b!856693 res!391009) b!856691))

(assert (= (and b!856691 res!391011) b!856689))

(assert (= (and b!856689 res!391007) b!856690))

(assert (= (and b!856690 res!391010) b!856692))

(declare-fun m!1098297 () Bool)

(assert (=> d!268025 m!1098297))

(assert (=> d!268025 m!1098239))

(assert (=> b!856692 m!1098217))

(assert (=> b!856692 m!1098217))

(declare-fun m!1098299 () Bool)

(assert (=> b!856692 m!1098299))

(assert (=> b!856692 m!1098217))

(declare-fun m!1098301 () Bool)

(assert (=> b!856692 m!1098301))

(assert (=> b!856692 m!1098201))

(assert (=> b!856693 m!1098213))

(declare-fun m!1098303 () Bool)

(assert (=> b!856691 m!1098303))

(assert (=> b!856689 m!1098193))

(assert (=> b!856621 d!268025))

(declare-fun d!268035 () Bool)

(assert (=> d!268035 (= (isEmpty!5481 (t!96714 (t!96714 lt!323881))) ((_ is Nil!9242) (t!96714 (t!96714 lt!323881))))))

(assert (=> b!856621 d!268035))

(declare-fun bs!231901 () Bool)

(declare-fun d!268037 () Bool)

(assert (= bs!231901 (and d!268037 b!856620)))

(declare-fun lambda!25693 () Int)

(assert (=> bs!231901 (not (= lambda!25693 lambda!25690))))

(declare-fun b!856729 () Bool)

(declare-fun e!563861 () Bool)

(assert (=> b!856729 (= e!563861 true)))

(declare-fun b!856728 () Bool)

(declare-fun e!563860 () Bool)

(assert (=> b!856728 (= e!563860 e!563861)))

(declare-fun b!856727 () Bool)

(declare-fun e!563859 () Bool)

(assert (=> b!856727 (= e!563859 e!563860)))

(assert (=> d!268037 e!563859))

(assert (= b!856728 b!856729))

(assert (= b!856727 b!856728))

(assert (= (and d!268037 ((_ is Cons!9243) rules!2621)) b!856727))

(declare-fun order!5979 () Int)

(declare-fun order!5977 () Int)

(declare-fun dynLambda!4349 (Int Int) Int)

(declare-fun dynLambda!4350 (Int Int) Int)

(assert (=> b!856729 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25693))))

(declare-fun order!5981 () Int)

(declare-fun dynLambda!4351 (Int Int) Int)

(assert (=> b!856729 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25693))))

(assert (=> d!268037 true))

(declare-fun lt!323934 () Bool)

(assert (=> d!268037 (= lt!323934 (forall!2193 lt!323878 lambda!25693))))

(declare-fun e!563852 () Bool)

(assert (=> d!268037 (= lt!323934 e!563852)))

(declare-fun res!391036 () Bool)

(assert (=> d!268037 (=> res!391036 e!563852)))

(assert (=> d!268037 (= res!391036 (not ((_ is Cons!9242) lt!323878)))))

(assert (=> d!268037 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268037 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 lt!323878) lt!323934)))

(declare-fun b!856717 () Bool)

(declare-fun e!563851 () Bool)

(assert (=> b!856717 (= e!563852 e!563851)))

(declare-fun res!391035 () Bool)

(assert (=> b!856717 (=> (not res!391035) (not e!563851))))

(assert (=> b!856717 (= res!391035 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323878)))))

(declare-fun b!856718 () Bool)

(assert (=> b!856718 (= e!563851 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 lt!323878)))))

(assert (= (and d!268037 (not res!391036)) b!856717))

(assert (= (and b!856717 res!391035) b!856718))

(declare-fun m!1098315 () Bool)

(assert (=> d!268037 m!1098315))

(assert (=> d!268037 m!1098239))

(declare-fun m!1098317 () Bool)

(assert (=> b!856717 m!1098317))

(declare-fun m!1098319 () Bool)

(assert (=> b!856718 m!1098319))

(assert (=> b!856621 d!268037))

(declare-fun d!268043 () Bool)

(assert (=> d!268043 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))

(declare-fun lt!323937 () Unit!13737)

(declare-fun choose!5052 (LexerInterface!1536 List!9259 List!9258 Token!3134) Unit!13737)

(assert (=> d!268043 (= lt!323937 (choose!5052 thiss!20117 rules!2621 lt!323880 separatorToken!297))))

(assert (=> d!268043 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268043 (= (withSeparatorTokenListPreservesRulesProduceTokens!66 thiss!20117 rules!2621 lt!323880 separatorToken!297) lt!323937)))

(declare-fun bs!231902 () Bool)

(assert (= bs!231902 d!268043))

(assert (=> bs!231902 m!1098217))

(assert (=> bs!231902 m!1098217))

(assert (=> bs!231902 m!1098301))

(declare-fun m!1098321 () Bool)

(assert (=> bs!231902 m!1098321))

(assert (=> bs!231902 m!1098239))

(assert (=> b!856621 d!268043))

(declare-fun d!268045 () Bool)

(declare-fun prefixMatchZipperSequence!37 (Regex!2167 BalanceConc!6140) Bool)

(declare-fun rulesRegex!26 (LexerInterface!1536 List!9259) Regex!2167)

(declare-fun ++!2392 (BalanceConc!6140 BalanceConc!6140) BalanceConc!6140)

(declare-fun charsOf!1001 (Token!3134) BalanceConc!6140)

(declare-fun singletonSeq!551 (C!4904) BalanceConc!6140)

(declare-fun apply!1921 (BalanceConc!6140 Int) C!4904)

(assert (=> d!268045 (= (separableTokensPredicate!66 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621) (not (prefixMatchZipperSequence!37 (rulesRegex!26 thiss!20117 rules!2621) (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))))))

(declare-fun bs!231903 () Bool)

(assert (= bs!231903 d!268045))

(declare-fun m!1098323 () Bool)

(assert (=> bs!231903 m!1098323))

(declare-fun m!1098325 () Bool)

(assert (=> bs!231903 m!1098325))

(declare-fun m!1098327 () Bool)

(assert (=> bs!231903 m!1098327))

(declare-fun m!1098329 () Bool)

(assert (=> bs!231903 m!1098329))

(declare-fun m!1098331 () Bool)

(assert (=> bs!231903 m!1098331))

(assert (=> bs!231903 m!1098329))

(declare-fun m!1098333 () Bool)

(assert (=> bs!231903 m!1098333))

(assert (=> bs!231903 m!1098331))

(declare-fun m!1098335 () Bool)

(assert (=> bs!231903 m!1098335))

(assert (=> bs!231903 m!1098327))

(assert (=> bs!231903 m!1098323))

(assert (=> bs!231903 m!1098335))

(assert (=> bs!231903 m!1098325))

(assert (=> b!856621 d!268045))

(declare-fun d!268047 () Bool)

(declare-fun res!391067 () Bool)

(declare-fun e!563915 () Bool)

(assert (=> d!268047 (=> res!391067 e!563915)))

(assert (=> d!268047 (= res!391067 (or (not ((_ is Cons!9242) lt!323881)) (not ((_ is Cons!9242) (t!96714 lt!323881)))))))

(assert (=> d!268047 (= (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 lt!323881 rules!2621) e!563915)))

(declare-fun b!856802 () Bool)

(declare-fun e!563914 () Bool)

(assert (=> b!856802 (= e!563915 e!563914)))

(declare-fun res!391068 () Bool)

(assert (=> b!856802 (=> (not res!391068) (not e!563914))))

(assert (=> b!856802 (= res!391068 (separableTokensPredicate!66 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621))))

(declare-fun lt!323977 () Unit!13737)

(declare-fun Unit!13745 () Unit!13737)

(assert (=> b!856802 (= lt!323977 Unit!13745)))

(declare-fun size!7719 (BalanceConc!6140) Int)

(assert (=> b!856802 (> (size!7719 (charsOf!1001 (h!14643 (t!96714 lt!323881)))) 0)))

(declare-fun lt!323982 () Unit!13737)

(declare-fun Unit!13746 () Unit!13737)

(assert (=> b!856802 (= lt!323982 Unit!13746)))

(assert (=> b!856802 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323881)))))

(declare-fun lt!323979 () Unit!13737)

(declare-fun Unit!13747 () Unit!13737)

(assert (=> b!856802 (= lt!323979 Unit!13747)))

(assert (=> b!856802 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323881))))

(declare-fun lt!323983 () Unit!13737)

(declare-fun lt!323980 () Unit!13737)

(assert (=> b!856802 (= lt!323983 lt!323980)))

(assert (=> b!856802 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323881)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 (LexerInterface!1536 List!9259 List!9258 Token!3134) Unit!13737)

(assert (=> b!856802 (= lt!323980 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323881 (h!14643 (t!96714 lt!323881))))))

(declare-fun lt!323981 () Unit!13737)

(declare-fun lt!323978 () Unit!13737)

(assert (=> b!856802 (= lt!323981 lt!323978)))

(assert (=> b!856802 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323881))))

(assert (=> b!856802 (= lt!323978 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323881 (h!14643 lt!323881)))))

(declare-fun b!856803 () Bool)

(assert (=> b!856803 (= e!563914 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))) rules!2621))))

(assert (= (and d!268047 (not res!391067)) b!856802))

(assert (= (and b!856802 res!391068) b!856803))

(declare-fun m!1098387 () Bool)

(assert (=> b!856802 m!1098387))

(declare-fun m!1098389 () Bool)

(assert (=> b!856802 m!1098389))

(assert (=> b!856802 m!1098195))

(declare-fun m!1098391 () Bool)

(assert (=> b!856802 m!1098391))

(assert (=> b!856802 m!1098323))

(declare-fun m!1098393 () Bool)

(assert (=> b!856802 m!1098393))

(assert (=> b!856802 m!1098323))

(declare-fun m!1098395 () Bool)

(assert (=> b!856802 m!1098395))

(declare-fun m!1098397 () Bool)

(assert (=> b!856803 m!1098397))

(assert (=> b!856619 d!268047))

(declare-fun d!268067 () Bool)

(declare-fun lt!323998 () Bool)

(declare-fun e!563935 () Bool)

(assert (=> d!268067 (= lt!323998 e!563935)))

(declare-fun res!391085 () Bool)

(assert (=> d!268067 (=> (not res!391085) (not e!563935))))

(declare-datatypes ((IArray!6133 0))(
  ( (IArray!6134 (innerList!3124 List!9258)) )
))
(declare-datatypes ((Conc!3064 0))(
  ( (Node!3064 (left!6844 Conc!3064) (right!7174 Conc!3064) (csize!6358 Int) (cheight!3275 Int)) (Leaf!4519 (xs!5753 IArray!6133) (csize!6359 Int)) (Empty!3064) )
))
(declare-datatypes ((BalanceConc!6142 0))(
  ( (BalanceConc!6143 (c!138897 Conc!3064)) )
))
(declare-fun list!3645 (BalanceConc!6142) List!9258)

(declare-datatypes ((tuple2!10418 0))(
  ( (tuple2!10419 (_1!6035 BalanceConc!6142) (_2!6035 BalanceConc!6140)) )
))
(declare-fun lex!627 (LexerInterface!1536 List!9259 BalanceConc!6140) tuple2!10418)

(declare-fun print!564 (LexerInterface!1536 BalanceConc!6142) BalanceConc!6140)

(declare-fun singletonSeq!552 (Token!3134) BalanceConc!6142)

(assert (=> d!268067 (= res!391085 (= (list!3645 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297))))) (list!3645 (singletonSeq!552 separatorToken!297))))))

(declare-fun e!563936 () Bool)

(assert (=> d!268067 (= lt!323998 e!563936)))

(declare-fun res!391084 () Bool)

(assert (=> d!268067 (=> (not res!391084) (not e!563936))))

(declare-fun lt!323999 () tuple2!10418)

(declare-fun size!7720 (BalanceConc!6142) Int)

(assert (=> d!268067 (= res!391084 (= (size!7720 (_1!6035 lt!323999)) 1))))

(assert (=> d!268067 (= lt!323999 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297))))))

(assert (=> d!268067 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268067 (= (rulesProduceIndividualToken!600 thiss!20117 rules!2621 separatorToken!297) lt!323998)))

(declare-fun b!856831 () Bool)

(declare-fun res!391083 () Bool)

(assert (=> b!856831 (=> (not res!391083) (not e!563936))))

(declare-fun apply!1922 (BalanceConc!6142 Int) Token!3134)

(assert (=> b!856831 (= res!391083 (= (apply!1922 (_1!6035 lt!323999) 0) separatorToken!297))))

(declare-fun b!856832 () Bool)

(declare-fun isEmpty!5484 (BalanceConc!6140) Bool)

(assert (=> b!856832 (= e!563936 (isEmpty!5484 (_2!6035 lt!323999)))))

(declare-fun b!856833 () Bool)

(assert (=> b!856833 (= e!563935 (isEmpty!5484 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297))))))))

(assert (= (and d!268067 res!391084) b!856831))

(assert (= (and b!856831 res!391083) b!856832))

(assert (= (and d!268067 res!391085) b!856833))

(declare-fun m!1098469 () Bool)

(assert (=> d!268067 m!1098469))

(declare-fun m!1098471 () Bool)

(assert (=> d!268067 m!1098471))

(declare-fun m!1098473 () Bool)

(assert (=> d!268067 m!1098473))

(assert (=> d!268067 m!1098239))

(declare-fun m!1098475 () Bool)

(assert (=> d!268067 m!1098475))

(declare-fun m!1098477 () Bool)

(assert (=> d!268067 m!1098477))

(declare-fun m!1098479 () Bool)

(assert (=> d!268067 m!1098479))

(assert (=> d!268067 m!1098471))

(assert (=> d!268067 m!1098475))

(assert (=> d!268067 m!1098471))

(declare-fun m!1098481 () Bool)

(assert (=> b!856831 m!1098481))

(declare-fun m!1098483 () Bool)

(assert (=> b!856832 m!1098483))

(assert (=> b!856833 m!1098471))

(assert (=> b!856833 m!1098471))

(assert (=> b!856833 m!1098475))

(assert (=> b!856833 m!1098475))

(assert (=> b!856833 m!1098477))

(declare-fun m!1098485 () Bool)

(assert (=> b!856833 m!1098485))

(assert (=> b!856608 d!268067))

(declare-fun d!268081 () Bool)

(declare-fun res!391086 () Bool)

(declare-fun e!563938 () Bool)

(assert (=> d!268081 (=> res!391086 e!563938)))

(assert (=> d!268081 (= res!391086 (or (not ((_ is Cons!9242) lt!323878)) (not ((_ is Cons!9242) (t!96714 lt!323878)))))))

(assert (=> d!268081 (= (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 lt!323878 rules!2621) e!563938)))

(declare-fun b!856834 () Bool)

(declare-fun e!563937 () Bool)

(assert (=> b!856834 (= e!563938 e!563937)))

(declare-fun res!391087 () Bool)

(assert (=> b!856834 (=> (not res!391087) (not e!563937))))

(assert (=> b!856834 (= res!391087 (separableTokensPredicate!66 thiss!20117 (h!14643 lt!323878) (h!14643 (t!96714 lt!323878)) rules!2621))))

(declare-fun lt!324000 () Unit!13737)

(declare-fun Unit!13748 () Unit!13737)

(assert (=> b!856834 (= lt!324000 Unit!13748)))

(assert (=> b!856834 (> (size!7719 (charsOf!1001 (h!14643 (t!96714 lt!323878)))) 0)))

(declare-fun lt!324005 () Unit!13737)

(declare-fun Unit!13749 () Unit!13737)

(assert (=> b!856834 (= lt!324005 Unit!13749)))

(assert (=> b!856834 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323878)))))

(declare-fun lt!324002 () Unit!13737)

(declare-fun Unit!13750 () Unit!13737)

(assert (=> b!856834 (= lt!324002 Unit!13750)))

(assert (=> b!856834 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323878))))

(declare-fun lt!324006 () Unit!13737)

(declare-fun lt!324003 () Unit!13737)

(assert (=> b!856834 (= lt!324006 lt!324003)))

(assert (=> b!856834 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323878)))))

(assert (=> b!856834 (= lt!324003 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323878 (h!14643 (t!96714 lt!323878))))))

(declare-fun lt!324004 () Unit!13737)

(declare-fun lt!324001 () Unit!13737)

(assert (=> b!856834 (= lt!324004 lt!324001)))

(assert (=> b!856834 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323878))))

(assert (=> b!856834 (= lt!324001 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323878 (h!14643 lt!323878)))))

(declare-fun b!856835 () Bool)

(assert (=> b!856835 (= e!563937 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))) rules!2621))))

(assert (= (and d!268081 (not res!391086)) b!856834))

(assert (= (and b!856834 res!391087) b!856835))

(declare-fun m!1098487 () Bool)

(assert (=> b!856834 m!1098487))

(assert (=> b!856834 m!1098317))

(declare-fun m!1098489 () Bool)

(assert (=> b!856834 m!1098489))

(declare-fun m!1098491 () Bool)

(assert (=> b!856834 m!1098491))

(declare-fun m!1098493 () Bool)

(assert (=> b!856834 m!1098493))

(declare-fun m!1098495 () Bool)

(assert (=> b!856834 m!1098495))

(assert (=> b!856834 m!1098493))

(declare-fun m!1098497 () Bool)

(assert (=> b!856834 m!1098497))

(declare-fun m!1098499 () Bool)

(assert (=> b!856835 m!1098499))

(assert (=> b!856607 d!268081))

(declare-fun d!268083 () Bool)

(declare-fun c!138880 () Bool)

(assert (=> d!268083 (= c!138880 ((_ is IntegerValue!5400) (value!56118 (h!14643 l!5107))))))

(declare-fun e!563941 () Bool)

(assert (=> d!268083 (= (inv!21 (value!56118 (h!14643 l!5107))) e!563941)))

(declare-fun b!856836 () Bool)

(assert (=> b!856836 (= e!563941 (inv!16 (value!56118 (h!14643 l!5107))))))

(declare-fun b!856837 () Bool)

(declare-fun res!391088 () Bool)

(declare-fun e!563940 () Bool)

(assert (=> b!856837 (=> res!391088 e!563940)))

(assert (=> b!856837 (= res!391088 (not ((_ is IntegerValue!5402) (value!56118 (h!14643 l!5107)))))))

(declare-fun e!563939 () Bool)

(assert (=> b!856837 (= e!563939 e!563940)))

(declare-fun b!856838 () Bool)

(assert (=> b!856838 (= e!563941 e!563939)))

(declare-fun c!138881 () Bool)

(assert (=> b!856838 (= c!138881 ((_ is IntegerValue!5401) (value!56118 (h!14643 l!5107))))))

(declare-fun b!856839 () Bool)

(assert (=> b!856839 (= e!563939 (inv!17 (value!56118 (h!14643 l!5107))))))

(declare-fun b!856840 () Bool)

(assert (=> b!856840 (= e!563940 (inv!15 (value!56118 (h!14643 l!5107))))))

(assert (= (and d!268083 c!138880) b!856836))

(assert (= (and d!268083 (not c!138880)) b!856838))

(assert (= (and b!856838 c!138881) b!856839))

(assert (= (and b!856838 (not c!138881)) b!856837))

(assert (= (and b!856837 (not res!391088)) b!856840))

(declare-fun m!1098501 () Bool)

(assert (=> b!856836 m!1098501))

(declare-fun m!1098503 () Bool)

(assert (=> b!856839 m!1098503))

(declare-fun m!1098505 () Bool)

(assert (=> b!856840 m!1098505))

(assert (=> b!856628 d!268083))

(declare-fun d!268085 () Bool)

(assert (=> d!268085 (= (inv!11756 (tag!1996 (rule!3157 separatorToken!297))) (= (mod (str.len (value!56117 (tag!1996 (rule!3157 separatorToken!297)))) 2) 0))))

(assert (=> b!856629 d!268085))

(declare-fun d!268087 () Bool)

(declare-fun res!391091 () Bool)

(declare-fun e!563944 () Bool)

(assert (=> d!268087 (=> (not res!391091) (not e!563944))))

(declare-fun semiInverseModEq!680 (Int Int) Bool)

(assert (=> d!268087 (= res!391091 (semiInverseModEq!680 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))))))

(assert (=> d!268087 (= (inv!11759 (transformation!1734 (rule!3157 separatorToken!297))) e!563944)))

(declare-fun b!856843 () Bool)

(declare-fun equivClasses!647 (Int Int) Bool)

(assert (=> b!856843 (= e!563944 (equivClasses!647 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))))))

(assert (= (and d!268087 res!391091) b!856843))

(declare-fun m!1098507 () Bool)

(assert (=> d!268087 m!1098507))

(declare-fun m!1098509 () Bool)

(assert (=> b!856843 m!1098509))

(assert (=> b!856629 d!268087))

(declare-fun d!268089 () Bool)

(assert (=> d!268089 (= (isEmpty!5480 rules!2621) ((_ is Nil!9243) rules!2621))))

(assert (=> b!856618 d!268089))

(declare-fun bs!231912 () Bool)

(declare-fun d!268091 () Bool)

(assert (= bs!231912 (and d!268091 b!856620)))

(declare-fun lambda!25699 () Int)

(assert (=> bs!231912 (not (= lambda!25699 lambda!25690))))

(declare-fun bs!231913 () Bool)

(assert (= bs!231913 (and d!268091 d!268037)))

(assert (=> bs!231913 (= lambda!25699 lambda!25693)))

(declare-fun b!856854 () Bool)

(declare-fun e!563953 () Bool)

(assert (=> b!856854 (= e!563953 true)))

(declare-fun b!856853 () Bool)

(declare-fun e!563952 () Bool)

(assert (=> b!856853 (= e!563952 e!563953)))

(declare-fun b!856852 () Bool)

(declare-fun e!563951 () Bool)

(assert (=> b!856852 (= e!563951 e!563952)))

(assert (=> d!268091 e!563951))

(assert (= b!856853 b!856854))

(assert (= b!856852 b!856853))

(assert (= (and d!268091 ((_ is Cons!9243) rules!2621)) b!856852))

(assert (=> b!856854 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25699))))

(assert (=> b!856854 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25699))))

(assert (=> d!268091 true))

(declare-fun lt!324011 () Bool)

(assert (=> d!268091 (= lt!324011 (forall!2193 l!5107 lambda!25699))))

(declare-fun e!563950 () Bool)

(assert (=> d!268091 (= lt!324011 e!563950)))

(declare-fun res!391099 () Bool)

(assert (=> d!268091 (=> res!391099 e!563950)))

(assert (=> d!268091 (= res!391099 (not ((_ is Cons!9242) l!5107)))))

(assert (=> d!268091 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268091 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 l!5107) lt!324011)))

(declare-fun b!856850 () Bool)

(declare-fun e!563949 () Bool)

(assert (=> b!856850 (= e!563950 e!563949)))

(declare-fun res!391098 () Bool)

(assert (=> b!856850 (=> (not res!391098) (not e!563949))))

(assert (=> b!856850 (= res!391098 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 l!5107)))))

(declare-fun b!856851 () Bool)

(assert (=> b!856851 (= e!563949 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 l!5107)))))

(assert (= (and d!268091 (not res!391099)) b!856850))

(assert (= (and b!856850 res!391098) b!856851))

(declare-fun m!1098511 () Bool)

(assert (=> d!268091 m!1098511))

(assert (=> d!268091 m!1098239))

(declare-fun m!1098513 () Bool)

(assert (=> b!856850 m!1098513))

(declare-fun m!1098515 () Bool)

(assert (=> b!856851 m!1098515))

(assert (=> b!856627 d!268091))

(declare-fun bs!231914 () Bool)

(declare-fun d!268093 () Bool)

(assert (= bs!231914 (and d!268093 b!856620)))

(declare-fun lambda!25700 () Int)

(assert (=> bs!231914 (not (= lambda!25700 lambda!25690))))

(declare-fun bs!231915 () Bool)

(assert (= bs!231915 (and d!268093 d!268037)))

(assert (=> bs!231915 (= lambda!25700 lambda!25693)))

(declare-fun bs!231916 () Bool)

(assert (= bs!231916 (and d!268093 d!268091)))

(assert (=> bs!231916 (= lambda!25700 lambda!25699)))

(declare-fun b!856859 () Bool)

(declare-fun e!563958 () Bool)

(assert (=> b!856859 (= e!563958 true)))

(declare-fun b!856858 () Bool)

(declare-fun e!563957 () Bool)

(assert (=> b!856858 (= e!563957 e!563958)))

(declare-fun b!856857 () Bool)

(declare-fun e!563956 () Bool)

(assert (=> b!856857 (= e!563956 e!563957)))

(assert (=> d!268093 e!563956))

(assert (= b!856858 b!856859))

(assert (= b!856857 b!856858))

(assert (= (and d!268093 ((_ is Cons!9243) rules!2621)) b!856857))

(assert (=> b!856859 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25700))))

(assert (=> b!856859 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25700))))

(assert (=> d!268093 true))

(declare-fun lt!324012 () Bool)

(assert (=> d!268093 (= lt!324012 (forall!2193 lt!323881 lambda!25700))))

(declare-fun e!563955 () Bool)

(assert (=> d!268093 (= lt!324012 e!563955)))

(declare-fun res!391101 () Bool)

(assert (=> d!268093 (=> res!391101 e!563955)))

(assert (=> d!268093 (= res!391101 (not ((_ is Cons!9242) lt!323881)))))

(assert (=> d!268093 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268093 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 lt!323881) lt!324012)))

(declare-fun b!856855 () Bool)

(declare-fun e!563954 () Bool)

(assert (=> b!856855 (= e!563955 e!563954)))

(declare-fun res!391100 () Bool)

(assert (=> b!856855 (=> (not res!391100) (not e!563954))))

(assert (=> b!856855 (= res!391100 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323881)))))

(declare-fun b!856856 () Bool)

(assert (=> b!856856 (= e!563954 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 lt!323881)))))

(assert (= (and d!268093 (not res!391101)) b!856855))

(assert (= (and b!856855 res!391100) b!856856))

(declare-fun m!1098517 () Bool)

(assert (=> d!268093 m!1098517))

(assert (=> d!268093 m!1098239))

(assert (=> b!856855 m!1098389))

(declare-fun m!1098519 () Bool)

(assert (=> b!856856 m!1098519))

(assert (=> b!856617 d!268093))

(declare-fun b!856959 () Bool)

(declare-fun e!564034 () Bool)

(declare-fun e!564031 () Bool)

(assert (=> b!856959 (= e!564034 e!564031)))

(declare-fun res!391131 () Bool)

(assert (=> b!856959 (=> res!391131 e!564031)))

(assert (=> b!856959 (= res!391131 (not ((_ is Cons!9242) l!5107)))))

(declare-fun b!856960 () Bool)

(declare-fun e!564030 () List!9257)

(assert (=> b!856960 (= e!564030 Nil!9241)))

(declare-fun b!856961 () Bool)

(declare-fun res!391130 () Bool)

(assert (=> b!856961 (=> (not res!391130) (not e!564034))))

(declare-fun e!564033 () Bool)

(assert (=> b!856961 (= res!391130 e!564033)))

(declare-fun res!391129 () Bool)

(assert (=> b!856961 (=> res!391129 e!564033)))

(assert (=> b!856961 (= res!391129 (not ((_ is Cons!9242) l!5107)))))

(declare-fun d!268095 () Bool)

(declare-fun lt!324044 () List!9258)

(declare-fun printList!484 (LexerInterface!1536 List!9258) List!9257)

(declare-fun printWithSeparatorTokenList!42 (LexerInterface!1536 List!9258 Token!3134) List!9257)

(assert (=> d!268095 (= (printList!484 thiss!20117 lt!324044) (printWithSeparatorTokenList!42 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!564035 () List!9258)

(assert (=> d!268095 (= lt!324044 e!564035)))

(declare-fun c!138892 () Bool)

(assert (=> d!268095 (= c!138892 ((_ is Cons!9242) l!5107))))

(assert (=> d!268095 e!564034))

(declare-fun res!391132 () Bool)

(assert (=> d!268095 (=> (not res!391132) (not e!564034))))

(assert (=> d!268095 (= res!391132 (isSeparator!1734 (rule!3157 separatorToken!297)))))

(assert (=> d!268095 (= (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297) lt!324044)))

(declare-fun b!856962 () Bool)

(declare-fun $colon$colon!97 (List!9258 Token!3134) List!9258)

(assert (=> b!856962 (= e!564033 (= (printList!484 thiss!20117 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107))) e!564030))))

(declare-fun c!138891 () Bool)

(declare-fun lt!324046 () List!9258)

(assert (=> b!856962 (= c!138891 ((_ is Cons!9242) lt!324046))))

(assert (=> b!856962 (= lt!324046 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107)))))

(declare-fun b!856963 () Bool)

(declare-fun e!564032 () List!9257)

(assert (=> b!856963 (= e!564031 (= (printList!484 thiss!20117 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297)) e!564032))))

(declare-fun c!138893 () Bool)

(declare-fun lt!324043 () List!9258)

(assert (=> b!856963 (= c!138893 ((_ is Cons!9242) lt!324043))))

(assert (=> b!856963 (= lt!324043 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!856964 () Bool)

(declare-fun ++!2394 (List!9257 List!9257) List!9257)

(assert (=> b!856964 (= e!564030 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324046))) (printList!484 thiss!20117 (t!96714 lt!324046))))))

(declare-fun b!856965 () Bool)

(assert (=> b!856965 (= e!564032 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324043))) (printList!484 thiss!20117 (t!96714 lt!324043))))))

(declare-fun b!856966 () Bool)

(assert (=> b!856966 (= e!564035 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107)))))

(declare-fun lt!324041 () List!9257)

(assert (=> b!856966 (= lt!324041 (list!3644 (charsOf!1001 (h!14643 l!5107))))))

(declare-fun lt!324039 () List!9257)

(assert (=> b!856966 (= lt!324039 (list!3644 (charsOf!1001 separatorToken!297)))))

(declare-fun lt!324040 () List!9257)

(assert (=> b!856966 (= lt!324040 (printList!484 thiss!20117 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297)))))

(declare-fun lt!324042 () Unit!13737)

(declare-fun lemmaConcatAssociativity!759 (List!9257 List!9257 List!9257) Unit!13737)

(assert (=> b!856966 (= lt!324042 (lemmaConcatAssociativity!759 lt!324041 lt!324039 lt!324040))))

(assert (=> b!856966 (= (++!2394 (++!2394 lt!324041 lt!324039) lt!324040) (++!2394 lt!324041 (++!2394 lt!324039 lt!324040)))))

(declare-fun lt!324045 () Unit!13737)

(assert (=> b!856966 (= lt!324045 lt!324042)))

(declare-fun b!856967 () Bool)

(assert (=> b!856967 (= e!564035 Nil!9242)))

(declare-fun b!856968 () Bool)

(assert (=> b!856968 (= e!564032 Nil!9241)))

(assert (= (and d!268095 res!391132) b!856961))

(assert (= (and b!856961 (not res!391129)) b!856962))

(assert (= (and b!856962 c!138891) b!856964))

(assert (= (and b!856962 (not c!138891)) b!856960))

(assert (= (and b!856961 res!391130) b!856959))

(assert (= (and b!856959 (not res!391131)) b!856963))

(assert (= (and b!856963 c!138893) b!856965))

(assert (= (and b!856963 (not c!138893)) b!856968))

(assert (= (and d!268095 c!138892) b!856966))

(assert (= (and d!268095 (not c!138892)) b!856967))

(declare-fun m!1098621 () Bool)

(assert (=> b!856966 m!1098621))

(declare-fun m!1098623 () Bool)

(assert (=> b!856966 m!1098623))

(declare-fun m!1098625 () Bool)

(assert (=> b!856966 m!1098625))

(declare-fun m!1098627 () Bool)

(assert (=> b!856966 m!1098627))

(declare-fun m!1098629 () Bool)

(assert (=> b!856966 m!1098629))

(declare-fun m!1098631 () Bool)

(assert (=> b!856966 m!1098631))

(declare-fun m!1098633 () Bool)

(assert (=> b!856966 m!1098633))

(assert (=> b!856966 m!1098627))

(assert (=> b!856966 m!1098631))

(declare-fun m!1098635 () Bool)

(assert (=> b!856966 m!1098635))

(declare-fun m!1098637 () Bool)

(assert (=> b!856966 m!1098637))

(declare-fun m!1098639 () Bool)

(assert (=> b!856966 m!1098639))

(assert (=> b!856966 m!1098623))

(assert (=> b!856966 m!1098639))

(declare-fun m!1098641 () Bool)

(assert (=> b!856966 m!1098641))

(declare-fun m!1098643 () Bool)

(assert (=> b!856966 m!1098643))

(assert (=> b!856966 m!1098627))

(assert (=> b!856966 m!1098635))

(assert (=> b!856966 m!1098621))

(declare-fun m!1098645 () Bool)

(assert (=> b!856966 m!1098645))

(assert (=> b!856963 m!1098627))

(assert (=> b!856963 m!1098627))

(assert (=> b!856963 m!1098635))

(assert (=> b!856963 m!1098635))

(declare-fun m!1098647 () Bool)

(assert (=> b!856963 m!1098647))

(declare-fun m!1098649 () Bool)

(assert (=> d!268095 m!1098649))

(declare-fun m!1098651 () Bool)

(assert (=> d!268095 m!1098651))

(assert (=> b!856962 m!1098627))

(assert (=> b!856962 m!1098627))

(assert (=> b!856962 m!1098635))

(assert (=> b!856962 m!1098635))

(assert (=> b!856962 m!1098637))

(assert (=> b!856962 m!1098637))

(declare-fun m!1098653 () Bool)

(assert (=> b!856962 m!1098653))

(declare-fun m!1098655 () Bool)

(assert (=> b!856964 m!1098655))

(assert (=> b!856964 m!1098655))

(declare-fun m!1098657 () Bool)

(assert (=> b!856964 m!1098657))

(declare-fun m!1098659 () Bool)

(assert (=> b!856964 m!1098659))

(assert (=> b!856964 m!1098657))

(assert (=> b!856964 m!1098659))

(declare-fun m!1098661 () Bool)

(assert (=> b!856964 m!1098661))

(declare-fun m!1098663 () Bool)

(assert (=> b!856965 m!1098663))

(assert (=> b!856965 m!1098663))

(declare-fun m!1098665 () Bool)

(assert (=> b!856965 m!1098665))

(declare-fun m!1098667 () Bool)

(assert (=> b!856965 m!1098667))

(assert (=> b!856965 m!1098665))

(assert (=> b!856965 m!1098667))

(declare-fun m!1098669 () Bool)

(assert (=> b!856965 m!1098669))

(assert (=> b!856617 d!268095))

(declare-fun d!268115 () Bool)

(assert (=> d!268115 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!324047 () Unit!13737)

(assert (=> d!268115 (= lt!324047 (choose!5052 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!268115 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268115 (= (withSeparatorTokenListPreservesRulesProduceTokens!66 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!324047)))

(declare-fun bs!231918 () Bool)

(assert (= bs!231918 d!268115))

(assert (=> bs!231918 m!1098233))

(assert (=> bs!231918 m!1098233))

(declare-fun m!1098671 () Bool)

(assert (=> bs!231918 m!1098671))

(declare-fun m!1098673 () Bool)

(assert (=> bs!231918 m!1098673))

(assert (=> bs!231918 m!1098239))

(assert (=> b!856617 d!268115))

(declare-fun b!856969 () Bool)

(declare-fun e!564040 () Bool)

(declare-fun e!564037 () Bool)

(assert (=> b!856969 (= e!564040 e!564037)))

(declare-fun res!391135 () Bool)

(assert (=> b!856969 (=> res!391135 e!564037)))

(assert (=> b!856969 (= res!391135 (not ((_ is Cons!9242) lt!323880)))))

(declare-fun b!856970 () Bool)

(declare-fun e!564036 () List!9257)

(assert (=> b!856970 (= e!564036 Nil!9241)))

(declare-fun b!856971 () Bool)

(declare-fun res!391134 () Bool)

(assert (=> b!856971 (=> (not res!391134) (not e!564040))))

(declare-fun e!564039 () Bool)

(assert (=> b!856971 (= res!391134 e!564039)))

(declare-fun res!391133 () Bool)

(assert (=> b!856971 (=> res!391133 e!564039)))

(assert (=> b!856971 (= res!391133 (not ((_ is Cons!9242) lt!323880)))))

(declare-fun d!268117 () Bool)

(declare-fun lt!324053 () List!9258)

(assert (=> d!268117 (= (printList!484 thiss!20117 lt!324053) (printWithSeparatorTokenList!42 thiss!20117 lt!323880 separatorToken!297))))

(declare-fun e!564041 () List!9258)

(assert (=> d!268117 (= lt!324053 e!564041)))

(declare-fun c!138895 () Bool)

(assert (=> d!268117 (= c!138895 ((_ is Cons!9242) lt!323880))))

(assert (=> d!268117 e!564040))

(declare-fun res!391136 () Bool)

(assert (=> d!268117 (=> (not res!391136) (not e!564040))))

(assert (=> d!268117 (= res!391136 (isSeparator!1734 (rule!3157 separatorToken!297)))))

(assert (=> d!268117 (= (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297) lt!324053)))

(declare-fun b!856972 () Bool)

(assert (=> b!856972 (= e!564039 (= (printList!484 thiss!20117 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880))) e!564036))))

(declare-fun c!138894 () Bool)

(declare-fun lt!324055 () List!9258)

(assert (=> b!856972 (= c!138894 ((_ is Cons!9242) lt!324055))))

(assert (=> b!856972 (= lt!324055 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880)))))

(declare-fun e!564038 () List!9257)

(declare-fun b!856973 () Bool)

(assert (=> b!856973 (= e!564037 (= (printList!484 thiss!20117 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297)) e!564038))))

(declare-fun c!138896 () Bool)

(declare-fun lt!324052 () List!9258)

(assert (=> b!856973 (= c!138896 ((_ is Cons!9242) lt!324052))))

(assert (=> b!856973 (= lt!324052 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297))))

(declare-fun b!856974 () Bool)

(assert (=> b!856974 (= e!564036 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324055))) (printList!484 thiss!20117 (t!96714 lt!324055))))))

(declare-fun b!856975 () Bool)

(assert (=> b!856975 (= e!564038 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324052))) (printList!484 thiss!20117 (t!96714 lt!324052))))))

(declare-fun b!856976 () Bool)

(assert (=> b!856976 (= e!564041 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880)))))

(declare-fun lt!324050 () List!9257)

(assert (=> b!856976 (= lt!324050 (list!3644 (charsOf!1001 (h!14643 lt!323880))))))

(declare-fun lt!324048 () List!9257)

(assert (=> b!856976 (= lt!324048 (list!3644 (charsOf!1001 separatorToken!297)))))

(declare-fun lt!324049 () List!9257)

(assert (=> b!856976 (= lt!324049 (printList!484 thiss!20117 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297)))))

(declare-fun lt!324051 () Unit!13737)

(assert (=> b!856976 (= lt!324051 (lemmaConcatAssociativity!759 lt!324050 lt!324048 lt!324049))))

(assert (=> b!856976 (= (++!2394 (++!2394 lt!324050 lt!324048) lt!324049) (++!2394 lt!324050 (++!2394 lt!324048 lt!324049)))))

(declare-fun lt!324054 () Unit!13737)

(assert (=> b!856976 (= lt!324054 lt!324051)))

(declare-fun b!856977 () Bool)

(assert (=> b!856977 (= e!564041 Nil!9242)))

(declare-fun b!856978 () Bool)

(assert (=> b!856978 (= e!564038 Nil!9241)))

(assert (= (and d!268117 res!391136) b!856971))

(assert (= (and b!856971 (not res!391133)) b!856972))

(assert (= (and b!856972 c!138894) b!856974))

(assert (= (and b!856972 (not c!138894)) b!856970))

(assert (= (and b!856971 res!391134) b!856969))

(assert (= (and b!856969 (not res!391135)) b!856973))

(assert (= (and b!856973 c!138896) b!856975))

(assert (= (and b!856973 (not c!138896)) b!856978))

(assert (= (and d!268117 c!138895) b!856976))

(assert (= (and d!268117 (not c!138895)) b!856977))

(declare-fun m!1098675 () Bool)

(assert (=> b!856976 m!1098675))

(declare-fun m!1098677 () Bool)

(assert (=> b!856976 m!1098677))

(declare-fun m!1098679 () Bool)

(assert (=> b!856976 m!1098679))

(declare-fun m!1098681 () Bool)

(assert (=> b!856976 m!1098681))

(declare-fun m!1098683 () Bool)

(assert (=> b!856976 m!1098683))

(assert (=> b!856976 m!1098631))

(assert (=> b!856976 m!1098633))

(assert (=> b!856976 m!1098681))

(assert (=> b!856976 m!1098631))

(declare-fun m!1098685 () Bool)

(assert (=> b!856976 m!1098685))

(declare-fun m!1098687 () Bool)

(assert (=> b!856976 m!1098687))

(declare-fun m!1098689 () Bool)

(assert (=> b!856976 m!1098689))

(assert (=> b!856976 m!1098677))

(assert (=> b!856976 m!1098689))

(declare-fun m!1098691 () Bool)

(assert (=> b!856976 m!1098691))

(declare-fun m!1098693 () Bool)

(assert (=> b!856976 m!1098693))

(assert (=> b!856976 m!1098681))

(assert (=> b!856976 m!1098685))

(assert (=> b!856976 m!1098675))

(declare-fun m!1098695 () Bool)

(assert (=> b!856976 m!1098695))

(assert (=> b!856973 m!1098681))

(assert (=> b!856973 m!1098681))

(assert (=> b!856973 m!1098685))

(assert (=> b!856973 m!1098685))

(declare-fun m!1098697 () Bool)

(assert (=> b!856973 m!1098697))

(declare-fun m!1098699 () Bool)

(assert (=> d!268117 m!1098699))

(declare-fun m!1098701 () Bool)

(assert (=> d!268117 m!1098701))

(assert (=> b!856972 m!1098681))

(assert (=> b!856972 m!1098681))

(assert (=> b!856972 m!1098685))

(assert (=> b!856972 m!1098685))

(assert (=> b!856972 m!1098687))

(assert (=> b!856972 m!1098687))

(declare-fun m!1098703 () Bool)

(assert (=> b!856972 m!1098703))

(declare-fun m!1098705 () Bool)

(assert (=> b!856974 m!1098705))

(assert (=> b!856974 m!1098705))

(declare-fun m!1098707 () Bool)

(assert (=> b!856974 m!1098707))

(declare-fun m!1098709 () Bool)

(assert (=> b!856974 m!1098709))

(assert (=> b!856974 m!1098707))

(assert (=> b!856974 m!1098709))

(declare-fun m!1098711 () Bool)

(assert (=> b!856974 m!1098711))

(declare-fun m!1098713 () Bool)

(assert (=> b!856975 m!1098713))

(assert (=> b!856975 m!1098713))

(declare-fun m!1098715 () Bool)

(assert (=> b!856975 m!1098715))

(declare-fun m!1098717 () Bool)

(assert (=> b!856975 m!1098717))

(assert (=> b!856975 m!1098715))

(assert (=> b!856975 m!1098717))

(declare-fun m!1098719 () Bool)

(assert (=> b!856975 m!1098719))

(assert (=> b!856615 d!268117))

(declare-fun d!268119 () Bool)

(assert (=> d!268119 (= (tail!1046 l!5107) (t!96714 l!5107))))

(assert (=> b!856615 d!268119))

(declare-fun d!268121 () Bool)

(assert (=> d!268121 (= (inv!11756 (tag!1996 (h!14644 rules!2621))) (= (mod (str.len (value!56117 (tag!1996 (h!14644 rules!2621)))) 2) 0))))

(assert (=> b!856626 d!268121))

(declare-fun d!268123 () Bool)

(declare-fun res!391137 () Bool)

(declare-fun e!564042 () Bool)

(assert (=> d!268123 (=> (not res!391137) (not e!564042))))

(assert (=> d!268123 (= res!391137 (semiInverseModEq!680 (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toValue!2791 (transformation!1734 (h!14644 rules!2621)))))))

(assert (=> d!268123 (= (inv!11759 (transformation!1734 (h!14644 rules!2621))) e!564042)))

(declare-fun b!856979 () Bool)

(assert (=> b!856979 (= e!564042 (equivClasses!647 (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toValue!2791 (transformation!1734 (h!14644 rules!2621)))))))

(assert (= (and d!268123 res!391137) b!856979))

(declare-fun m!1098721 () Bool)

(assert (=> d!268123 m!1098721))

(declare-fun m!1098723 () Bool)

(assert (=> b!856979 m!1098723))

(assert (=> b!856626 d!268123))

(declare-fun d!268125 () Bool)

(declare-fun res!391142 () Bool)

(declare-fun e!564047 () Bool)

(assert (=> d!268125 (=> res!391142 e!564047)))

(assert (=> d!268125 (= res!391142 (not ((_ is Cons!9243) rules!2621)))))

(assert (=> d!268125 (= (sepAndNonSepRulesDisjointChars!534 rules!2621 rules!2621) e!564047)))

(declare-fun b!856984 () Bool)

(declare-fun e!564048 () Bool)

(assert (=> b!856984 (= e!564047 e!564048)))

(declare-fun res!391143 () Bool)

(assert (=> b!856984 (=> (not res!391143) (not e!564048))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!247 (Rule!3268 List!9259) Bool)

(assert (=> b!856984 (= res!391143 (ruleDisjointCharsFromAllFromOtherType!247 (h!14644 rules!2621) rules!2621))))

(declare-fun b!856985 () Bool)

(assert (=> b!856985 (= e!564048 (sepAndNonSepRulesDisjointChars!534 rules!2621 (t!96715 rules!2621)))))

(assert (= (and d!268125 (not res!391142)) b!856984))

(assert (= (and b!856984 res!391143) b!856985))

(declare-fun m!1098725 () Bool)

(assert (=> b!856984 m!1098725))

(declare-fun m!1098727 () Bool)

(assert (=> b!856985 m!1098727))

(assert (=> b!856624 d!268125))

(declare-fun d!268127 () Bool)

(declare-fun res!391144 () Bool)

(declare-fun e!564049 () Bool)

(assert (=> d!268127 (=> (not res!391144) (not e!564049))))

(assert (=> d!268127 (= res!391144 (not (isEmpty!5483 (originalCharacters!2290 (h!14643 l!5107)))))))

(assert (=> d!268127 (= (inv!11760 (h!14643 l!5107)) e!564049)))

(declare-fun b!856986 () Bool)

(declare-fun res!391145 () Bool)

(assert (=> b!856986 (=> (not res!391145) (not e!564049))))

(assert (=> b!856986 (= res!391145 (= (originalCharacters!2290 (h!14643 l!5107)) (list!3644 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))))))

(declare-fun b!856987 () Bool)

(assert (=> b!856987 (= e!564049 (= (size!7715 (h!14643 l!5107)) (size!7718 (originalCharacters!2290 (h!14643 l!5107)))))))

(assert (= (and d!268127 res!391144) b!856986))

(assert (= (and b!856986 res!391145) b!856987))

(declare-fun b_lambda!28831 () Bool)

(assert (=> (not b_lambda!28831) (not b!856986)))

(declare-fun t!96749 () Bool)

(declare-fun tb!60783 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) t!96749) tb!60783))

(declare-fun b!856988 () Bool)

(declare-fun e!564050 () Bool)

(declare-fun tp!270292 () Bool)

(assert (=> b!856988 (= e!564050 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))) tp!270292))))

(declare-fun result!70376 () Bool)

(assert (=> tb!60783 (= result!70376 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))) e!564050))))

(assert (= tb!60783 b!856988))

(declare-fun m!1098729 () Bool)

(assert (=> b!856988 m!1098729))

(declare-fun m!1098731 () Bool)

(assert (=> tb!60783 m!1098731))

(assert (=> b!856986 t!96749))

(declare-fun b_and!75823 () Bool)

(assert (= b_and!75797 (and (=> t!96749 result!70376) b_and!75823)))

(declare-fun tb!60785 () Bool)

(declare-fun t!96751 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) t!96751) tb!60785))

(declare-fun result!70378 () Bool)

(assert (= result!70378 result!70376))

(assert (=> b!856986 t!96751))

(declare-fun b_and!75825 () Bool)

(assert (= b_and!75799 (and (=> t!96751 result!70378) b_and!75825)))

(declare-fun t!96753 () Bool)

(declare-fun tb!60787 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) t!96753) tb!60787))

(declare-fun result!70380 () Bool)

(assert (= result!70380 result!70376))

(assert (=> b!856986 t!96753))

(declare-fun b_and!75827 () Bool)

(assert (= b_and!75801 (and (=> t!96753 result!70380) b_and!75827)))

(declare-fun m!1098733 () Bool)

(assert (=> d!268127 m!1098733))

(declare-fun m!1098735 () Bool)

(assert (=> b!856986 m!1098735))

(assert (=> b!856986 m!1098735))

(declare-fun m!1098737 () Bool)

(assert (=> b!856986 m!1098737))

(declare-fun m!1098739 () Bool)

(assert (=> b!856987 m!1098739))

(assert (=> b!856625 d!268127))

(declare-fun d!268129 () Bool)

(assert (=> d!268129 (= (inv!11756 (tag!1996 (rule!3157 (h!14643 l!5107)))) (= (mod (str.len (value!56117 (tag!1996 (rule!3157 (h!14643 l!5107))))) 2) 0))))

(assert (=> b!856623 d!268129))

(declare-fun d!268131 () Bool)

(declare-fun res!391146 () Bool)

(declare-fun e!564051 () Bool)

(assert (=> d!268131 (=> (not res!391146) (not e!564051))))

(assert (=> d!268131 (= res!391146 (semiInverseModEq!680 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107))))))))

(assert (=> d!268131 (= (inv!11759 (transformation!1734 (rule!3157 (h!14643 l!5107)))) e!564051)))

(declare-fun b!856989 () Bool)

(assert (=> b!856989 (= e!564051 (equivClasses!647 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107))))))))

(assert (= (and d!268131 res!391146) b!856989))

(declare-fun m!1098741 () Bool)

(assert (=> d!268131 m!1098741))

(declare-fun m!1098743 () Bool)

(assert (=> b!856989 m!1098743))

(assert (=> b!856623 d!268131))

(declare-fun d!268133 () Bool)

(assert (=> d!268133 (= (head!1486 l!5107) (h!14643 l!5107))))

(assert (=> b!856612 d!268133))

(declare-fun d!268135 () Bool)

(declare-fun res!391149 () Bool)

(declare-fun e!564054 () Bool)

(assert (=> d!268135 (=> (not res!391149) (not e!564054))))

(declare-fun rulesValid!611 (LexerInterface!1536 List!9259) Bool)

(assert (=> d!268135 (= res!391149 (rulesValid!611 thiss!20117 rules!2621))))

(assert (=> d!268135 (= (rulesInvariant!1412 thiss!20117 rules!2621) e!564054)))

(declare-fun b!856992 () Bool)

(declare-datatypes ((List!9261 0))(
  ( (Nil!9245) (Cons!9245 (h!14646 String!10898) (t!96763 List!9261)) )
))
(declare-fun noDuplicateTag!611 (LexerInterface!1536 List!9259 List!9261) Bool)

(assert (=> b!856992 (= e!564054 (noDuplicateTag!611 thiss!20117 rules!2621 Nil!9245))))

(assert (= (and d!268135 res!391149) b!856992))

(declare-fun m!1098745 () Bool)

(assert (=> d!268135 m!1098745))

(declare-fun m!1098747 () Bool)

(assert (=> b!856992 m!1098747))

(assert (=> b!856613 d!268135))

(declare-fun b!856997 () Bool)

(declare-fun e!564057 () Bool)

(declare-fun tp_is_empty!3993 () Bool)

(declare-fun tp!270295 () Bool)

(assert (=> b!856997 (= e!564057 (and tp_is_empty!3993 tp!270295))))

(assert (=> b!856611 (= tp!270218 e!564057)))

(assert (= (and b!856611 ((_ is Cons!9241) (originalCharacters!2290 separatorToken!297))) b!856997))

(declare-fun b!857008 () Bool)

(declare-fun b_free!26029 () Bool)

(declare-fun b_next!26093 () Bool)

(assert (=> b!857008 (= b_free!26029 (not b_next!26093))))

(declare-fun tp!270306 () Bool)

(declare-fun b_and!75829 () Bool)

(assert (=> b!857008 (= tp!270306 b_and!75829)))

(declare-fun b_free!26031 () Bool)

(declare-fun b_next!26095 () Bool)

(assert (=> b!857008 (= b_free!26031 (not b_next!26095))))

(declare-fun tb!60789 () Bool)

(declare-fun t!96755 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) t!96755) tb!60789))

(declare-fun result!70386 () Bool)

(assert (= result!70386 result!70338))

(assert (=> b!856634 t!96755))

(declare-fun t!96757 () Bool)

(declare-fun tb!60791 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) t!96757) tb!60791))

(declare-fun result!70388 () Bool)

(assert (= result!70388 result!70376))

(assert (=> b!856986 t!96757))

(declare-fun tp!270304 () Bool)

(declare-fun b_and!75831 () Bool)

(assert (=> b!857008 (= tp!270304 (and (=> t!96755 result!70386) (=> t!96757 result!70388) b_and!75831))))

(declare-fun e!564068 () Bool)

(assert (=> b!857008 (= e!564068 (and tp!270306 tp!270304))))

(declare-fun b!857007 () Bool)

(declare-fun e!564067 () Bool)

(declare-fun tp!270307 () Bool)

(assert (=> b!857007 (= e!564067 (and tp!270307 (inv!11756 (tag!1996 (h!14644 (t!96715 rules!2621)))) (inv!11759 (transformation!1734 (h!14644 (t!96715 rules!2621)))) e!564068))))

(declare-fun b!857006 () Bool)

(declare-fun e!564066 () Bool)

(declare-fun tp!270305 () Bool)

(assert (=> b!857006 (= e!564066 (and e!564067 tp!270305))))

(assert (=> b!856622 (= tp!270224 e!564066)))

(assert (= b!857007 b!857008))

(assert (= b!857006 b!857007))

(assert (= (and b!856622 ((_ is Cons!9243) (t!96715 rules!2621))) b!857006))

(declare-fun m!1098749 () Bool)

(assert (=> b!857007 m!1098749))

(declare-fun m!1098751 () Bool)

(assert (=> b!857007 m!1098751))

(declare-fun b!857009 () Bool)

(declare-fun e!564070 () Bool)

(declare-fun tp!270308 () Bool)

(assert (=> b!857009 (= e!564070 (and tp_is_empty!3993 tp!270308))))

(assert (=> b!856628 (= tp!270225 e!564070)))

(assert (= (and b!856628 ((_ is Cons!9241) (originalCharacters!2290 (h!14643 l!5107)))) b!857009))

(declare-fun e!564073 () Bool)

(assert (=> b!856629 (= tp!270219 e!564073)))

(declare-fun b!857021 () Bool)

(declare-fun tp!270319 () Bool)

(declare-fun tp!270321 () Bool)

(assert (=> b!857021 (= e!564073 (and tp!270319 tp!270321))))

(declare-fun b!857022 () Bool)

(declare-fun tp!270323 () Bool)

(assert (=> b!857022 (= e!564073 tp!270323)))

(declare-fun b!857020 () Bool)

(assert (=> b!857020 (= e!564073 tp_is_empty!3993)))

(declare-fun b!857023 () Bool)

(declare-fun tp!270322 () Bool)

(declare-fun tp!270320 () Bool)

(assert (=> b!857023 (= e!564073 (and tp!270322 tp!270320))))

(assert (= (and b!856629 ((_ is ElementMatch!2167) (regex!1734 (rule!3157 separatorToken!297)))) b!857020))

(assert (= (and b!856629 ((_ is Concat!3968) (regex!1734 (rule!3157 separatorToken!297)))) b!857021))

(assert (= (and b!856629 ((_ is Star!2167) (regex!1734 (rule!3157 separatorToken!297)))) b!857022))

(assert (= (and b!856629 ((_ is Union!2167) (regex!1734 (rule!3157 separatorToken!297)))) b!857023))

(declare-fun e!564074 () Bool)

(assert (=> b!856626 (= tp!270226 e!564074)))

(declare-fun b!857025 () Bool)

(declare-fun tp!270324 () Bool)

(declare-fun tp!270326 () Bool)

(assert (=> b!857025 (= e!564074 (and tp!270324 tp!270326))))

(declare-fun b!857026 () Bool)

(declare-fun tp!270328 () Bool)

(assert (=> b!857026 (= e!564074 tp!270328)))

(declare-fun b!857024 () Bool)

(assert (=> b!857024 (= e!564074 tp_is_empty!3993)))

(declare-fun b!857027 () Bool)

(declare-fun tp!270327 () Bool)

(declare-fun tp!270325 () Bool)

(assert (=> b!857027 (= e!564074 (and tp!270327 tp!270325))))

(assert (= (and b!856626 ((_ is ElementMatch!2167) (regex!1734 (h!14644 rules!2621)))) b!857024))

(assert (= (and b!856626 ((_ is Concat!3968) (regex!1734 (h!14644 rules!2621)))) b!857025))

(assert (= (and b!856626 ((_ is Star!2167) (regex!1734 (h!14644 rules!2621)))) b!857026))

(assert (= (and b!856626 ((_ is Union!2167) (regex!1734 (h!14644 rules!2621)))) b!857027))

(declare-fun b!857041 () Bool)

(declare-fun b_free!26033 () Bool)

(declare-fun b_next!26097 () Bool)

(assert (=> b!857041 (= b_free!26033 (not b_next!26097))))

(declare-fun tp!270340 () Bool)

(declare-fun b_and!75833 () Bool)

(assert (=> b!857041 (= tp!270340 b_and!75833)))

(declare-fun b_free!26035 () Bool)

(declare-fun b_next!26099 () Bool)

(assert (=> b!857041 (= b_free!26035 (not b_next!26099))))

(declare-fun t!96759 () Bool)

(declare-fun tb!60793 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) t!96759) tb!60793))

(declare-fun result!70394 () Bool)

(assert (= result!70394 result!70338))

(assert (=> b!856634 t!96759))

(declare-fun t!96761 () Bool)

(declare-fun tb!60795 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) t!96761) tb!60795))

(declare-fun result!70396 () Bool)

(assert (= result!70396 result!70376))

(assert (=> b!856986 t!96761))

(declare-fun b_and!75835 () Bool)

(declare-fun tp!270341 () Bool)

(assert (=> b!857041 (= tp!270341 (and (=> t!96759 result!70394) (=> t!96761 result!70396) b_and!75835))))

(declare-fun e!564088 () Bool)

(assert (=> b!857041 (= e!564088 (and tp!270340 tp!270341))))

(declare-fun tp!270339 () Bool)

(declare-fun e!564091 () Bool)

(declare-fun b!857038 () Bool)

(declare-fun e!564090 () Bool)

(assert (=> b!857038 (= e!564090 (and (inv!11760 (h!14643 (t!96714 l!5107))) e!564091 tp!270339))))

(declare-fun e!564087 () Bool)

(declare-fun b!857040 () Bool)

(declare-fun tp!270342 () Bool)

(assert (=> b!857040 (= e!564087 (and tp!270342 (inv!11756 (tag!1996 (rule!3157 (h!14643 (t!96714 l!5107))))) (inv!11759 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) e!564088))))

(assert (=> b!856625 (= tp!270222 e!564090)))

(declare-fun tp!270343 () Bool)

(declare-fun b!857039 () Bool)

(assert (=> b!857039 (= e!564091 (and (inv!21 (value!56118 (h!14643 (t!96714 l!5107)))) e!564087 tp!270343))))

(assert (= b!857040 b!857041))

(assert (= b!857039 b!857040))

(assert (= b!857038 b!857039))

(assert (= (and b!856625 ((_ is Cons!9242) (t!96714 l!5107))) b!857038))

(declare-fun m!1098753 () Bool)

(assert (=> b!857038 m!1098753))

(declare-fun m!1098755 () Bool)

(assert (=> b!857040 m!1098755))

(declare-fun m!1098757 () Bool)

(assert (=> b!857040 m!1098757))

(declare-fun m!1098759 () Bool)

(assert (=> b!857039 m!1098759))

(declare-fun e!564093 () Bool)

(assert (=> b!856623 (= tp!270221 e!564093)))

(declare-fun b!857043 () Bool)

(declare-fun tp!270344 () Bool)

(declare-fun tp!270346 () Bool)

(assert (=> b!857043 (= e!564093 (and tp!270344 tp!270346))))

(declare-fun b!857044 () Bool)

(declare-fun tp!270348 () Bool)

(assert (=> b!857044 (= e!564093 tp!270348)))

(declare-fun b!857042 () Bool)

(assert (=> b!857042 (= e!564093 tp_is_empty!3993)))

(declare-fun b!857045 () Bool)

(declare-fun tp!270347 () Bool)

(declare-fun tp!270345 () Bool)

(assert (=> b!857045 (= e!564093 (and tp!270347 tp!270345))))

(assert (= (and b!856623 ((_ is ElementMatch!2167) (regex!1734 (rule!3157 (h!14643 l!5107))))) b!857042))

(assert (= (and b!856623 ((_ is Concat!3968) (regex!1734 (rule!3157 (h!14643 l!5107))))) b!857043))

(assert (= (and b!856623 ((_ is Star!2167) (regex!1734 (rule!3157 (h!14643 l!5107))))) b!857044))

(assert (= (and b!856623 ((_ is Union!2167) (regex!1734 (rule!3157 (h!14643 l!5107))))) b!857045))

(declare-fun b_lambda!28833 () Bool)

(assert (= b_lambda!28817 (or b!856620 b_lambda!28833)))

(declare-fun bs!231919 () Bool)

(declare-fun d!268137 () Bool)

(assert (= bs!231919 (and d!268137 b!856620)))

(assert (=> bs!231919 (= (dynLambda!4347 lambda!25690 (h!14643 l!5107)) (not (isSeparator!1734 (rule!3157 (h!14643 l!5107)))))))

(assert (=> b!856660 d!268137))

(declare-fun b_lambda!28835 () Bool)

(assert (= b_lambda!28831 (or (and b!856609 b_free!26011 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!857041 b_free!26035 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!857008 b_free!26031 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!856610 b_free!26015 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!856616 b_free!26019) b_lambda!28835)))

(declare-fun b_lambda!28837 () Bool)

(assert (= b_lambda!28815 (or (and b!857008 b_free!26031 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!856610 b_free!26015) (and b!857041 b_free!26035 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!856609 b_free!26011 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!856616 b_free!26019 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) b_lambda!28837)))

(check-sat (not b!856987) (not b!856975) (not b!857007) (not b!857025) (not b!856852) (not d!268117) (not b!856655) (not b!856634) (not b!856855) (not b_lambda!28833) (not b!856851) (not b!856831) (not b_next!26081) (not b!856651) (not b!856857) (not b!856840) (not b!856843) (not d!268067) (not b!857006) (not b!856976) (not d!268131) (not tb!60757) (not b!856988) (not b!857043) (not b!857022) (not d!268045) (not b!856635) (not b!856691) (not b!857023) (not b!856985) (not d!268135) (not d!268115) (not b!856972) b_and!75823 (not b!856965) (not b!857044) (not d!268127) (not d!268123) (not b!857040) (not b_lambda!28835) (not b!856654) (not d!268091) (not b_next!26073) (not b!856803) (not b_next!26079) (not b!856984) (not b!856835) (not b_next!26093) b_and!75831 (not d!268023) (not d!268017) (not b!856834) (not d!268087) (not d!268037) (not b!856693) b_and!75829 (not b!857045) (not b!856802) (not b!856836) (not b_next!26077) (not b!856963) b_and!75789 (not b!857039) (not tb!60783) (not b_next!26097) (not d!268093) (not b!856962) (not b!856974) b_and!75835 (not b!856966) (not b_next!26075) (not b!856689) (not b!856973) tp_is_empty!3993 b_and!75785 (not b!856986) (not b!856640) (not b_next!26095) (not b!856989) (not b!856717) (not b_next!26083) (not b!856718) b_and!75825 (not d!268095) (not b!857027) (not b_next!26099) (not b_lambda!28837) (not b!856839) (not b!856964) (not d!268043) (not b!856692) (not b!857009) (not b!857038) (not b!856979) (not b!856832) (not b!857021) b_and!75793 b_and!75827 (not d!268025) (not b!856661) (not b!856850) (not b!856997) (not b!856727) (not b!857026) (not b!856856) (not b!856833) b_and!75833 (not b!856992))
(check-sat (not b_next!26081) b_and!75823 b_and!75829 (not b_next!26097) b_and!75785 (not b_next!26095) (not b_next!26099) b_and!75793 b_and!75827 b_and!75833 (not b_next!26073) (not b_next!26079) (not b_next!26093) b_and!75831 (not b_next!26077) b_and!75789 b_and!75835 (not b_next!26075) (not b_next!26083) b_and!75825)
(get-model)

(assert (=> b!856693 d!268135))

(declare-fun d!268139 () Bool)

(declare-fun charsToBigInt!0 (List!9256 Int) Int)

(assert (=> d!268139 (= (inv!15 (value!56118 separatorToken!297)) (= (charsToBigInt!0 (text!13049 (value!56118 separatorToken!297)) 0) (value!56113 (value!56118 separatorToken!297))))))

(declare-fun bs!231920 () Bool)

(assert (= bs!231920 d!268139))

(declare-fun m!1098761 () Bool)

(assert (=> bs!231920 m!1098761))

(assert (=> b!856655 d!268139))

(declare-fun d!268141 () Bool)

(declare-fun res!391155 () Bool)

(declare-fun e!564094 () Bool)

(assert (=> d!268141 (=> res!391155 e!564094)))

(assert (=> d!268141 (= res!391155 ((_ is Nil!9242) lt!323881))))

(assert (=> d!268141 (= (forall!2193 lt!323881 lambda!25700) e!564094)))

(declare-fun b!857046 () Bool)

(declare-fun e!564095 () Bool)

(assert (=> b!857046 (= e!564094 e!564095)))

(declare-fun res!391156 () Bool)

(assert (=> b!857046 (=> (not res!391156) (not e!564095))))

(assert (=> b!857046 (= res!391156 (dynLambda!4347 lambda!25700 (h!14643 lt!323881)))))

(declare-fun b!857047 () Bool)

(assert (=> b!857047 (= e!564095 (forall!2193 (t!96714 lt!323881) lambda!25700))))

(assert (= (and d!268141 (not res!391155)) b!857046))

(assert (= (and b!857046 res!391156) b!857047))

(declare-fun b_lambda!28839 () Bool)

(assert (=> (not b_lambda!28839) (not b!857046)))

(declare-fun m!1098763 () Bool)

(assert (=> b!857046 m!1098763))

(declare-fun m!1098765 () Bool)

(assert (=> b!857047 m!1098765))

(assert (=> d!268093 d!268141))

(assert (=> d!268093 d!268089))

(declare-fun d!268143 () Bool)

(declare-fun lt!324058 () BalanceConc!6140)

(assert (=> d!268143 (= (list!3644 lt!324058) (originalCharacters!2290 (h!14643 lt!323881)))))

(assert (=> d!268143 (= lt!324058 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881)))) (value!56118 (h!14643 lt!323881))))))

(assert (=> d!268143 (= (charsOf!1001 (h!14643 lt!323881)) lt!324058)))

(declare-fun b_lambda!28841 () Bool)

(assert (=> (not b_lambda!28841) (not d!268143)))

(declare-fun t!96765 () Bool)

(declare-fun tb!60797 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881))))) t!96765) tb!60797))

(declare-fun b!857048 () Bool)

(declare-fun e!564096 () Bool)

(declare-fun tp!270349 () Bool)

(assert (=> b!857048 (= e!564096 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881)))) (value!56118 (h!14643 lt!323881))))) tp!270349))))

(declare-fun result!70398 () Bool)

(assert (=> tb!60797 (= result!70398 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881)))) (value!56118 (h!14643 lt!323881)))) e!564096))))

(assert (= tb!60797 b!857048))

(declare-fun m!1098767 () Bool)

(assert (=> b!857048 m!1098767))

(declare-fun m!1098769 () Bool)

(assert (=> tb!60797 m!1098769))

(assert (=> d!268143 t!96765))

(declare-fun b_and!75837 () Bool)

(assert (= b_and!75823 (and (=> t!96765 result!70398) b_and!75837)))

(declare-fun tb!60799 () Bool)

(declare-fun t!96767 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881))))) t!96767) tb!60799))

(declare-fun result!70400 () Bool)

(assert (= result!70400 result!70398))

(assert (=> d!268143 t!96767))

(declare-fun b_and!75839 () Bool)

(assert (= b_and!75835 (and (=> t!96767 result!70400) b_and!75839)))

(declare-fun tb!60801 () Bool)

(declare-fun t!96769 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881))))) t!96769) tb!60801))

(declare-fun result!70402 () Bool)

(assert (= result!70402 result!70398))

(assert (=> d!268143 t!96769))

(declare-fun b_and!75841 () Bool)

(assert (= b_and!75827 (and (=> t!96769 result!70402) b_and!75841)))

(declare-fun t!96771 () Bool)

(declare-fun tb!60803 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881))))) t!96771) tb!60803))

(declare-fun result!70404 () Bool)

(assert (= result!70404 result!70398))

(assert (=> d!268143 t!96771))

(declare-fun b_and!75843 () Bool)

(assert (= b_and!75831 (and (=> t!96771 result!70404) b_and!75843)))

(declare-fun t!96773 () Bool)

(declare-fun tb!60805 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881))))) t!96773) tb!60805))

(declare-fun result!70406 () Bool)

(assert (= result!70406 result!70398))

(assert (=> d!268143 t!96773))

(declare-fun b_and!75845 () Bool)

(assert (= b_and!75825 (and (=> t!96773 result!70406) b_and!75845)))

(declare-fun m!1098771 () Bool)

(assert (=> d!268143 m!1098771))

(declare-fun m!1098773 () Bool)

(assert (=> d!268143 m!1098773))

(assert (=> d!268045 d!268143))

(declare-fun d!268145 () Bool)

(declare-fun lt!324061 () C!4904)

(declare-fun apply!1924 (List!9257 Int) C!4904)

(assert (=> d!268145 (= lt!324061 (apply!1924 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!323881)))) 0))))

(declare-fun apply!1925 (Conc!3063 Int) C!4904)

(assert (=> d!268145 (= lt!324061 (apply!1925 (c!138856 (charsOf!1001 (h!14643 (t!96714 lt!323881)))) 0))))

(declare-fun e!564099 () Bool)

(assert (=> d!268145 e!564099))

(declare-fun res!391159 () Bool)

(assert (=> d!268145 (=> (not res!391159) (not e!564099))))

(assert (=> d!268145 (= res!391159 (<= 0 0))))

(assert (=> d!268145 (= (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0) lt!324061)))

(declare-fun b!857051 () Bool)

(assert (=> b!857051 (= e!564099 (< 0 (size!7719 (charsOf!1001 (h!14643 (t!96714 lt!323881))))))))

(assert (= (and d!268145 res!391159) b!857051))

(assert (=> d!268145 m!1098323))

(declare-fun m!1098775 () Bool)

(assert (=> d!268145 m!1098775))

(assert (=> d!268145 m!1098775))

(declare-fun m!1098777 () Bool)

(assert (=> d!268145 m!1098777))

(declare-fun m!1098779 () Bool)

(assert (=> d!268145 m!1098779))

(assert (=> b!857051 m!1098323))

(assert (=> b!857051 m!1098395))

(assert (=> d!268045 d!268145))

(declare-fun b!857061 () Bool)

(declare-fun res!391168 () Bool)

(declare-fun e!564102 () Bool)

(assert (=> b!857061 (=> (not res!391168) (not e!564102))))

(declare-fun height!401 (Conc!3063) Int)

(declare-fun ++!2395 (Conc!3063 Conc!3063) Conc!3063)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!857061 (= res!391168 (<= (height!401 (++!2395 (c!138856 (charsOf!1001 (h!14643 lt!323881))) (c!138856 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))) (+ (max!0 (height!401 (c!138856 (charsOf!1001 (h!14643 lt!323881)))) (height!401 (c!138856 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))) 1)))))

(declare-fun b!857063 () Bool)

(declare-fun lt!324064 () BalanceConc!6140)

(assert (=> b!857063 (= e!564102 (= (list!3644 lt!324064) (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!323881))) (list!3644 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))))))

(declare-fun b!857060 () Bool)

(declare-fun res!391171 () Bool)

(assert (=> b!857060 (=> (not res!391171) (not e!564102))))

(declare-fun isBalanced!850 (Conc!3063) Bool)

(assert (=> b!857060 (= res!391171 (isBalanced!850 (++!2395 (c!138856 (charsOf!1001 (h!14643 lt!323881))) (c!138856 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))))))

(declare-fun d!268147 () Bool)

(assert (=> d!268147 e!564102))

(declare-fun res!391170 () Bool)

(assert (=> d!268147 (=> (not res!391170) (not e!564102))))

(declare-fun appendAssocInst!197 (Conc!3063 Conc!3063) Bool)

(assert (=> d!268147 (= res!391170 (appendAssocInst!197 (c!138856 (charsOf!1001 (h!14643 lt!323881))) (c!138856 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0)))))))

(assert (=> d!268147 (= lt!324064 (BalanceConc!6141 (++!2395 (c!138856 (charsOf!1001 (h!14643 lt!323881))) (c!138856 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))))))

(assert (=> d!268147 (= (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))) lt!324064)))

(declare-fun b!857062 () Bool)

(declare-fun res!391169 () Bool)

(assert (=> b!857062 (=> (not res!391169) (not e!564102))))

(assert (=> b!857062 (= res!391169 (>= (height!401 (++!2395 (c!138856 (charsOf!1001 (h!14643 lt!323881))) (c!138856 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))) (max!0 (height!401 (c!138856 (charsOf!1001 (h!14643 lt!323881)))) (height!401 (c!138856 (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0)))))))))

(assert (= (and d!268147 res!391170) b!857060))

(assert (= (and b!857060 res!391171) b!857061))

(assert (= (and b!857061 res!391168) b!857062))

(assert (= (and b!857062 res!391169) b!857063))

(declare-fun m!1098781 () Bool)

(assert (=> b!857060 m!1098781))

(assert (=> b!857060 m!1098781))

(declare-fun m!1098783 () Bool)

(assert (=> b!857060 m!1098783))

(declare-fun m!1098785 () Bool)

(assert (=> b!857061 m!1098785))

(declare-fun m!1098787 () Bool)

(assert (=> b!857061 m!1098787))

(declare-fun m!1098789 () Bool)

(assert (=> b!857061 m!1098789))

(assert (=> b!857061 m!1098785))

(assert (=> b!857061 m!1098787))

(assert (=> b!857061 m!1098781))

(declare-fun m!1098791 () Bool)

(assert (=> b!857061 m!1098791))

(assert (=> b!857061 m!1098781))

(declare-fun m!1098793 () Bool)

(assert (=> d!268147 m!1098793))

(assert (=> d!268147 m!1098781))

(assert (=> b!857062 m!1098785))

(assert (=> b!857062 m!1098787))

(assert (=> b!857062 m!1098789))

(assert (=> b!857062 m!1098785))

(assert (=> b!857062 m!1098787))

(assert (=> b!857062 m!1098781))

(assert (=> b!857062 m!1098791))

(assert (=> b!857062 m!1098781))

(declare-fun m!1098795 () Bool)

(assert (=> b!857063 m!1098795))

(assert (=> b!857063 m!1098325))

(declare-fun m!1098797 () Bool)

(assert (=> b!857063 m!1098797))

(assert (=> b!857063 m!1098327))

(declare-fun m!1098799 () Bool)

(assert (=> b!857063 m!1098799))

(assert (=> b!857063 m!1098797))

(assert (=> b!857063 m!1098799))

(declare-fun m!1098801 () Bool)

(assert (=> b!857063 m!1098801))

(assert (=> d!268045 d!268147))

(declare-fun d!268149 () Bool)

(declare-fun lt!324065 () BalanceConc!6140)

(assert (=> d!268149 (= (list!3644 lt!324065) (originalCharacters!2290 (h!14643 (t!96714 lt!323881))))))

(assert (=> d!268149 (= lt!324065 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881))))) (value!56118 (h!14643 (t!96714 lt!323881)))))))

(assert (=> d!268149 (= (charsOf!1001 (h!14643 (t!96714 lt!323881))) lt!324065)))

(declare-fun b_lambda!28843 () Bool)

(assert (=> (not b_lambda!28843) (not d!268149)))

(declare-fun tb!60807 () Bool)

(declare-fun t!96775 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881)))))) t!96775) tb!60807))

(declare-fun b!857064 () Bool)

(declare-fun e!564103 () Bool)

(declare-fun tp!270350 () Bool)

(assert (=> b!857064 (= e!564103 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881))))) (value!56118 (h!14643 (t!96714 lt!323881)))))) tp!270350))))

(declare-fun result!70408 () Bool)

(assert (=> tb!60807 (= result!70408 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881))))) (value!56118 (h!14643 (t!96714 lt!323881))))) e!564103))))

(assert (= tb!60807 b!857064))

(declare-fun m!1098803 () Bool)

(assert (=> b!857064 m!1098803))

(declare-fun m!1098805 () Bool)

(assert (=> tb!60807 m!1098805))

(assert (=> d!268149 t!96775))

(declare-fun b_and!75847 () Bool)

(assert (= b_and!75843 (and (=> t!96775 result!70408) b_and!75847)))

(declare-fun t!96777 () Bool)

(declare-fun tb!60809 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881)))))) t!96777) tb!60809))

(declare-fun result!70410 () Bool)

(assert (= result!70410 result!70408))

(assert (=> d!268149 t!96777))

(declare-fun b_and!75849 () Bool)

(assert (= b_and!75839 (and (=> t!96777 result!70410) b_and!75849)))

(declare-fun tb!60811 () Bool)

(declare-fun t!96779 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881)))))) t!96779) tb!60811))

(declare-fun result!70412 () Bool)

(assert (= result!70412 result!70408))

(assert (=> d!268149 t!96779))

(declare-fun b_and!75851 () Bool)

(assert (= b_and!75837 (and (=> t!96779 result!70412) b_and!75851)))

(declare-fun tb!60813 () Bool)

(declare-fun t!96781 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881)))))) t!96781) tb!60813))

(declare-fun result!70414 () Bool)

(assert (= result!70414 result!70408))

(assert (=> d!268149 t!96781))

(declare-fun b_and!75853 () Bool)

(assert (= b_and!75841 (and (=> t!96781 result!70414) b_and!75853)))

(declare-fun tb!60815 () Bool)

(declare-fun t!96783 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881)))))) t!96783) tb!60815))

(declare-fun result!70416 () Bool)

(assert (= result!70416 result!70408))

(assert (=> d!268149 t!96783))

(declare-fun b_and!75855 () Bool)

(assert (= b_and!75845 (and (=> t!96783 result!70416) b_and!75855)))

(declare-fun m!1098807 () Bool)

(assert (=> d!268149 m!1098807))

(declare-fun m!1098809 () Bool)

(assert (=> d!268149 m!1098809))

(assert (=> d!268045 d!268149))

(declare-fun d!268151 () Bool)

(declare-fun lt!324086 () Bool)

(declare-fun prefixMatch!11 (Regex!2167 List!9257) Bool)

(assert (=> d!268151 (= lt!324086 (prefixMatch!11 (rulesRegex!26 thiss!20117 rules!2621) (list!3644 (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!9262 0))(
  ( (Nil!9246) (Cons!9246 (h!14647 Regex!2167) (t!96996 List!9262)) )
))
(declare-datatypes ((Context!872 0))(
  ( (Context!873 (exprs!936 List!9262)) )
))
(declare-fun prefixMatchZipperSequence!38 ((InoxSet Context!872) BalanceConc!6140 Int) Bool)

(declare-fun focus!31 (Regex!2167) (InoxSet Context!872))

(assert (=> d!268151 (= lt!324086 (prefixMatchZipperSequence!38 (focus!31 (rulesRegex!26 thiss!20117 rules!2621)) (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))) 0))))

(declare-fun lt!324095 () Unit!13737)

(declare-fun lt!324088 () Unit!13737)

(assert (=> d!268151 (= lt!324095 lt!324088)))

(declare-fun lt!324090 () (InoxSet Context!872))

(declare-fun lt!324093 () List!9257)

(declare-fun prefixMatchZipper!11 ((InoxSet Context!872) List!9257) Bool)

(assert (=> d!268151 (= (prefixMatch!11 (rulesRegex!26 thiss!20117 rules!2621) lt!324093) (prefixMatchZipper!11 lt!324090 lt!324093))))

(declare-datatypes ((List!9263 0))(
  ( (Nil!9247) (Cons!9247 (h!14648 Context!872) (t!96997 List!9263)) )
))
(declare-fun lt!324092 () List!9263)

(declare-fun prefixMatchZipperRegexEquiv!11 ((InoxSet Context!872) List!9263 Regex!2167 List!9257) Unit!13737)

(assert (=> d!268151 (= lt!324088 (prefixMatchZipperRegexEquiv!11 lt!324090 lt!324092 (rulesRegex!26 thiss!20117 rules!2621) lt!324093))))

(assert (=> d!268151 (= lt!324093 (list!3644 (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0)))))))

(declare-fun toList!577 ((InoxSet Context!872)) List!9263)

(assert (=> d!268151 (= lt!324092 (toList!577 (focus!31 (rulesRegex!26 thiss!20117 rules!2621))))))

(assert (=> d!268151 (= lt!324090 (focus!31 (rulesRegex!26 thiss!20117 rules!2621)))))

(declare-fun lt!324089 () Unit!13737)

(declare-fun lt!324091 () Unit!13737)

(assert (=> d!268151 (= lt!324089 lt!324091)))

(declare-fun lt!324087 () (InoxSet Context!872))

(declare-fun lt!324094 () Int)

(declare-fun dropList!273 (BalanceConc!6140 Int) List!9257)

(assert (=> d!268151 (= (prefixMatchZipper!11 lt!324087 (dropList!273 (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))) lt!324094)) (prefixMatchZipperSequence!38 lt!324087 (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))) lt!324094))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!11 ((InoxSet Context!872) BalanceConc!6140 Int) Unit!13737)

(assert (=> d!268151 (= lt!324091 (lemmaprefixMatchZipperSequenceEquivalent!11 lt!324087 (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0))) lt!324094))))

(assert (=> d!268151 (= lt!324094 0)))

(assert (=> d!268151 (= lt!324087 (focus!31 (rulesRegex!26 thiss!20117 rules!2621)))))

(declare-fun validRegex!661 (Regex!2167) Bool)

(assert (=> d!268151 (validRegex!661 (rulesRegex!26 thiss!20117 rules!2621))))

(assert (=> d!268151 (= (prefixMatchZipperSequence!37 (rulesRegex!26 thiss!20117 rules!2621) (++!2392 (charsOf!1001 (h!14643 lt!323881)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0)))) lt!324086)))

(declare-fun bs!231921 () Bool)

(assert (= bs!231921 d!268151))

(declare-fun m!1098811 () Bool)

(assert (=> bs!231921 m!1098811))

(assert (=> bs!231921 m!1098329))

(declare-fun m!1098813 () Bool)

(assert (=> bs!231921 m!1098813))

(assert (=> bs!231921 m!1098811))

(declare-fun m!1098815 () Bool)

(assert (=> bs!231921 m!1098815))

(assert (=> bs!231921 m!1098331))

(declare-fun m!1098817 () Bool)

(assert (=> bs!231921 m!1098817))

(assert (=> bs!231921 m!1098331))

(assert (=> bs!231921 m!1098811))

(declare-fun m!1098819 () Bool)

(assert (=> bs!231921 m!1098819))

(assert (=> bs!231921 m!1098331))

(declare-fun m!1098821 () Bool)

(assert (=> bs!231921 m!1098821))

(declare-fun m!1098823 () Bool)

(assert (=> bs!231921 m!1098823))

(declare-fun m!1098825 () Bool)

(assert (=> bs!231921 m!1098825))

(assert (=> bs!231921 m!1098329))

(declare-fun m!1098827 () Bool)

(assert (=> bs!231921 m!1098827))

(assert (=> bs!231921 m!1098329))

(assert (=> bs!231921 m!1098823))

(assert (=> bs!231921 m!1098329))

(declare-fun m!1098829 () Bool)

(assert (=> bs!231921 m!1098829))

(assert (=> bs!231921 m!1098331))

(assert (=> bs!231921 m!1098829))

(declare-fun m!1098831 () Bool)

(assert (=> bs!231921 m!1098831))

(assert (=> bs!231921 m!1098331))

(declare-fun m!1098833 () Bool)

(assert (=> bs!231921 m!1098833))

(assert (=> bs!231921 m!1098329))

(declare-fun m!1098835 () Bool)

(assert (=> bs!231921 m!1098835))

(assert (=> d!268045 d!268151))

(declare-fun d!268153 () Bool)

(declare-fun e!564106 () Bool)

(assert (=> d!268153 e!564106))

(declare-fun res!391175 () Bool)

(assert (=> d!268153 (=> (not res!391175) (not e!564106))))

(declare-fun lt!324098 () BalanceConc!6140)

(assert (=> d!268153 (= res!391175 (= (list!3644 lt!324098) (Cons!9241 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0) Nil!9241)))))

(declare-fun singleton!269 (C!4904) BalanceConc!6140)

(assert (=> d!268153 (= lt!324098 (singleton!269 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0)))))

(assert (=> d!268153 (= (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323881))) 0)) lt!324098)))

(declare-fun b!857067 () Bool)

(assert (=> b!857067 (= e!564106 (isBalanced!850 (c!138856 lt!324098)))))

(assert (= (and d!268153 res!391175) b!857067))

(declare-fun m!1098837 () Bool)

(assert (=> d!268153 m!1098837))

(assert (=> d!268153 m!1098335))

(declare-fun m!1098839 () Bool)

(assert (=> d!268153 m!1098839))

(declare-fun m!1098841 () Bool)

(assert (=> b!857067 m!1098841))

(assert (=> d!268045 d!268153))

(declare-fun d!268155 () Bool)

(declare-fun lt!324101 () Unit!13737)

(declare-fun lemma!13 (List!9259 LexerInterface!1536 List!9259) Unit!13737)

(assert (=> d!268155 (= lt!324101 (lemma!13 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!25703 () Int)

(declare-fun generalisedUnion!17 (List!9262) Regex!2167)

(declare-fun map!1912 (List!9259 Int) List!9262)

(assert (=> d!268155 (= (rulesRegex!26 thiss!20117 rules!2621) (generalisedUnion!17 (map!1912 rules!2621 lambda!25703)))))

(declare-fun bs!231922 () Bool)

(assert (= bs!231922 d!268155))

(declare-fun m!1098843 () Bool)

(assert (=> bs!231922 m!1098843))

(declare-fun m!1098845 () Bool)

(assert (=> bs!231922 m!1098845))

(assert (=> bs!231922 m!1098845))

(declare-fun m!1098847 () Bool)

(assert (=> bs!231922 m!1098847))

(assert (=> d!268045 d!268155))

(declare-fun d!268157 () Bool)

(declare-fun res!391176 () Bool)

(declare-fun e!564108 () Bool)

(assert (=> d!268157 (=> res!391176 e!564108)))

(assert (=> d!268157 (= res!391176 (or (not ((_ is Cons!9242) (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))) (not ((_ is Cons!9242) (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))))))))

(assert (=> d!268157 (= (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))) rules!2621) e!564108)))

(declare-fun b!857068 () Bool)

(declare-fun e!564107 () Bool)

(assert (=> b!857068 (= e!564108 e!564107)))

(declare-fun res!391177 () Bool)

(assert (=> b!857068 (=> (not res!391177) (not e!564107))))

(assert (=> b!857068 (= res!391177 (separableTokensPredicate!66 thiss!20117 (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881)))) (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))) rules!2621))))

(declare-fun lt!324102 () Unit!13737)

(declare-fun Unit!13751 () Unit!13737)

(assert (=> b!857068 (= lt!324102 Unit!13751)))

(assert (=> b!857068 (> (size!7719 (charsOf!1001 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))))) 0)))

(declare-fun lt!324107 () Unit!13737)

(declare-fun Unit!13752 () Unit!13737)

(assert (=> b!857068 (= lt!324107 Unit!13752)))

(assert (=> b!857068 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))))))

(declare-fun lt!324104 () Unit!13737)

(declare-fun Unit!13753 () Unit!13737)

(assert (=> b!857068 (= lt!324104 Unit!13753)))

(assert (=> b!857068 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881)))))))

(declare-fun lt!324108 () Unit!13737)

(declare-fun lt!324105 () Unit!13737)

(assert (=> b!857068 (= lt!324108 lt!324105)))

(assert (=> b!857068 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))))))

(assert (=> b!857068 (= lt!324105 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))) (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881)))))))))

(declare-fun lt!324106 () Unit!13737)

(declare-fun lt!324103 () Unit!13737)

(assert (=> b!857068 (= lt!324106 lt!324103)))

(assert (=> b!857068 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881)))))))

(assert (=> b!857068 (= lt!324103 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))) (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))))))

(declare-fun b!857069 () Bool)

(assert (=> b!857069 (= e!564107 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (Cons!9242 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881))))) (t!96714 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323881)) (t!96714 (t!96714 lt!323881)))))) rules!2621))))

(assert (= (and d!268157 (not res!391176)) b!857068))

(assert (= (and b!857068 res!391177) b!857069))

(declare-fun m!1098849 () Bool)

(assert (=> b!857068 m!1098849))

(declare-fun m!1098851 () Bool)

(assert (=> b!857068 m!1098851))

(declare-fun m!1098853 () Bool)

(assert (=> b!857068 m!1098853))

(declare-fun m!1098855 () Bool)

(assert (=> b!857068 m!1098855))

(declare-fun m!1098857 () Bool)

(assert (=> b!857068 m!1098857))

(declare-fun m!1098859 () Bool)

(assert (=> b!857068 m!1098859))

(assert (=> b!857068 m!1098857))

(declare-fun m!1098861 () Bool)

(assert (=> b!857068 m!1098861))

(declare-fun m!1098863 () Bool)

(assert (=> b!857069 m!1098863))

(assert (=> b!856803 d!268157))

(declare-fun b!857080 () Bool)

(declare-fun res!391182 () Bool)

(declare-fun e!564114 () Bool)

(assert (=> b!857080 (=> (not res!391182) (not e!564114))))

(declare-fun lt!324111 () List!9257)

(assert (=> b!857080 (= res!391182 (= (size!7718 lt!324111) (+ (size!7718 lt!324050) (size!7718 lt!324048))))))

(declare-fun b!857078 () Bool)

(declare-fun e!564113 () List!9257)

(assert (=> b!857078 (= e!564113 lt!324048)))

(declare-fun b!857079 () Bool)

(assert (=> b!857079 (= e!564113 (Cons!9241 (h!14642 lt!324050) (++!2394 (t!96713 lt!324050) lt!324048)))))

(declare-fun b!857081 () Bool)

(assert (=> b!857081 (= e!564114 (or (not (= lt!324048 Nil!9241)) (= lt!324111 lt!324050)))))

(declare-fun d!268159 () Bool)

(assert (=> d!268159 e!564114))

(declare-fun res!391183 () Bool)

(assert (=> d!268159 (=> (not res!391183) (not e!564114))))

(declare-fun content!1353 (List!9257) (InoxSet C!4904))

(assert (=> d!268159 (= res!391183 (= (content!1353 lt!324111) ((_ map or) (content!1353 lt!324050) (content!1353 lt!324048))))))

(assert (=> d!268159 (= lt!324111 e!564113)))

(declare-fun c!138904 () Bool)

(assert (=> d!268159 (= c!138904 ((_ is Nil!9241) lt!324050))))

(assert (=> d!268159 (= (++!2394 lt!324050 lt!324048) lt!324111)))

(assert (= (and d!268159 c!138904) b!857078))

(assert (= (and d!268159 (not c!138904)) b!857079))

(assert (= (and d!268159 res!391183) b!857080))

(assert (= (and b!857080 res!391182) b!857081))

(declare-fun m!1098865 () Bool)

(assert (=> b!857080 m!1098865))

(declare-fun m!1098867 () Bool)

(assert (=> b!857080 m!1098867))

(declare-fun m!1098869 () Bool)

(assert (=> b!857080 m!1098869))

(declare-fun m!1098871 () Bool)

(assert (=> b!857079 m!1098871))

(declare-fun m!1098873 () Bool)

(assert (=> d!268159 m!1098873))

(declare-fun m!1098875 () Bool)

(assert (=> d!268159 m!1098875))

(declare-fun m!1098877 () Bool)

(assert (=> d!268159 m!1098877))

(assert (=> b!856976 d!268159))

(declare-fun d!268163 () Bool)

(assert (=> d!268163 (= ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (Cons!9242 separatorToken!297 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297)))))

(assert (=> b!856976 d!268163))

(declare-fun d!268165 () Bool)

(assert (=> d!268165 (= (++!2394 (++!2394 lt!324050 lt!324048) lt!324049) (++!2394 lt!324050 (++!2394 lt!324048 lt!324049)))))

(declare-fun lt!324114 () Unit!13737)

(declare-fun choose!5053 (List!9257 List!9257 List!9257) Unit!13737)

(assert (=> d!268165 (= lt!324114 (choose!5053 lt!324050 lt!324048 lt!324049))))

(assert (=> d!268165 (= (lemmaConcatAssociativity!759 lt!324050 lt!324048 lt!324049) lt!324114)))

(declare-fun bs!231923 () Bool)

(assert (= bs!231923 d!268165))

(assert (=> bs!231923 m!1098675))

(assert (=> bs!231923 m!1098675))

(assert (=> bs!231923 m!1098695))

(declare-fun m!1098879 () Bool)

(assert (=> bs!231923 m!1098879))

(assert (=> bs!231923 m!1098689))

(assert (=> bs!231923 m!1098689))

(assert (=> bs!231923 m!1098691))

(assert (=> b!856976 d!268165))

(declare-fun d!268167 () Bool)

(declare-fun lt!324115 () BalanceConc!6140)

(assert (=> d!268167 (= (list!3644 lt!324115) (originalCharacters!2290 separatorToken!297))))

(assert (=> d!268167 (= lt!324115 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))))

(assert (=> d!268167 (= (charsOf!1001 separatorToken!297) lt!324115)))

(declare-fun b_lambda!28845 () Bool)

(assert (=> (not b_lambda!28845) (not d!268167)))

(assert (=> d!268167 t!96721))

(declare-fun b_and!75857 () Bool)

(assert (= b_and!75853 (and (=> t!96721 result!70344) b_and!75857)))

(assert (=> d!268167 t!96759))

(declare-fun b_and!75859 () Bool)

(assert (= b_and!75849 (and (=> t!96759 result!70394) b_and!75859)))

(assert (=> d!268167 t!96719))

(declare-fun b_and!75861 () Bool)

(assert (= b_and!75855 (and (=> t!96719 result!70342) b_and!75861)))

(assert (=> d!268167 t!96717))

(declare-fun b_and!75863 () Bool)

(assert (= b_and!75851 (and (=> t!96717 result!70338) b_and!75863)))

(assert (=> d!268167 t!96755))

(declare-fun b_and!75865 () Bool)

(assert (= b_and!75847 (and (=> t!96755 result!70386) b_and!75865)))

(declare-fun m!1098881 () Bool)

(assert (=> d!268167 m!1098881))

(assert (=> d!268167 m!1098251))

(assert (=> b!856976 d!268167))

(declare-fun b!857088 () Bool)

(declare-fun res!391184 () Bool)

(declare-fun e!564118 () Bool)

(assert (=> b!857088 (=> (not res!391184) (not e!564118))))

(declare-fun lt!324116 () List!9257)

(assert (=> b!857088 (= res!391184 (= (size!7718 lt!324116) (+ (size!7718 lt!324048) (size!7718 lt!324049))))))

(declare-fun b!857086 () Bool)

(declare-fun e!564117 () List!9257)

(assert (=> b!857086 (= e!564117 lt!324049)))

(declare-fun b!857087 () Bool)

(assert (=> b!857087 (= e!564117 (Cons!9241 (h!14642 lt!324048) (++!2394 (t!96713 lt!324048) lt!324049)))))

(declare-fun b!857089 () Bool)

(assert (=> b!857089 (= e!564118 (or (not (= lt!324049 Nil!9241)) (= lt!324116 lt!324048)))))

(declare-fun d!268169 () Bool)

(assert (=> d!268169 e!564118))

(declare-fun res!391185 () Bool)

(assert (=> d!268169 (=> (not res!391185) (not e!564118))))

(assert (=> d!268169 (= res!391185 (= (content!1353 lt!324116) ((_ map or) (content!1353 lt!324048) (content!1353 lt!324049))))))

(assert (=> d!268169 (= lt!324116 e!564117)))

(declare-fun c!138907 () Bool)

(assert (=> d!268169 (= c!138907 ((_ is Nil!9241) lt!324048))))

(assert (=> d!268169 (= (++!2394 lt!324048 lt!324049) lt!324116)))

(assert (= (and d!268169 c!138907) b!857086))

(assert (= (and d!268169 (not c!138907)) b!857087))

(assert (= (and d!268169 res!391185) b!857088))

(assert (= (and b!857088 res!391184) b!857089))

(declare-fun m!1098883 () Bool)

(assert (=> b!857088 m!1098883))

(assert (=> b!857088 m!1098869))

(declare-fun m!1098885 () Bool)

(assert (=> b!857088 m!1098885))

(declare-fun m!1098887 () Bool)

(assert (=> b!857087 m!1098887))

(declare-fun m!1098889 () Bool)

(assert (=> d!268169 m!1098889))

(assert (=> d!268169 m!1098877))

(declare-fun m!1098891 () Bool)

(assert (=> d!268169 m!1098891))

(assert (=> b!856976 d!268169))

(declare-fun c!138914 () Bool)

(declare-fun d!268171 () Bool)

(assert (=> d!268171 (= c!138914 ((_ is Cons!9242) (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297)))))

(declare-fun e!564128 () List!9257)

(assert (=> d!268171 (= (printList!484 thiss!20117 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297)) e!564128)))

(declare-fun b!857102 () Bool)

(assert (=> b!857102 (= e!564128 (++!2394 (list!3644 (charsOf!1001 (h!14643 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297)))) (printList!484 thiss!20117 (t!96714 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297)))))))

(declare-fun b!857103 () Bool)

(assert (=> b!857103 (= e!564128 Nil!9241)))

(assert (= (and d!268171 c!138914) b!857102))

(assert (= (and d!268171 (not c!138914)) b!857103))

(declare-fun m!1098901 () Bool)

(assert (=> b!857102 m!1098901))

(assert (=> b!857102 m!1098901))

(declare-fun m!1098903 () Bool)

(assert (=> b!857102 m!1098903))

(declare-fun m!1098905 () Bool)

(assert (=> b!857102 m!1098905))

(assert (=> b!857102 m!1098903))

(assert (=> b!857102 m!1098905))

(declare-fun m!1098907 () Bool)

(assert (=> b!857102 m!1098907))

(assert (=> b!856976 d!268171))

(declare-fun b!857108 () Bool)

(declare-fun e!564133 () Bool)

(declare-fun e!564130 () Bool)

(assert (=> b!857108 (= e!564133 e!564130)))

(declare-fun res!391192 () Bool)

(assert (=> b!857108 (=> res!391192 e!564130)))

(assert (=> b!857108 (= res!391192 (not ((_ is Cons!9242) (t!96714 lt!323880))))))

(declare-fun b!857109 () Bool)

(declare-fun e!564129 () List!9257)

(assert (=> b!857109 (= e!564129 Nil!9241)))

(declare-fun b!857110 () Bool)

(declare-fun res!391191 () Bool)

(assert (=> b!857110 (=> (not res!391191) (not e!564133))))

(declare-fun e!564132 () Bool)

(assert (=> b!857110 (= res!391191 e!564132)))

(declare-fun res!391190 () Bool)

(assert (=> b!857110 (=> res!391190 e!564132)))

(assert (=> b!857110 (= res!391190 (not ((_ is Cons!9242) (t!96714 lt!323880))))))

(declare-fun d!268177 () Bool)

(declare-fun lt!324130 () List!9258)

(assert (=> d!268177 (= (printList!484 thiss!20117 lt!324130) (printWithSeparatorTokenList!42 thiss!20117 (t!96714 lt!323880) separatorToken!297))))

(declare-fun e!564134 () List!9258)

(assert (=> d!268177 (= lt!324130 e!564134)))

(declare-fun c!138916 () Bool)

(assert (=> d!268177 (= c!138916 ((_ is Cons!9242) (t!96714 lt!323880)))))

(assert (=> d!268177 e!564133))

(declare-fun res!391193 () Bool)

(assert (=> d!268177 (=> (not res!391193) (not e!564133))))

(assert (=> d!268177 (= res!391193 (isSeparator!1734 (rule!3157 separatorToken!297)))))

(assert (=> d!268177 (= (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) lt!324130)))

(declare-fun b!857111 () Bool)

(assert (=> b!857111 (= e!564132 (= (printList!484 thiss!20117 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 lt!323880)) separatorToken!297) separatorToken!297) (h!14643 (t!96714 lt!323880)))) e!564129))))

(declare-fun c!138915 () Bool)

(declare-fun lt!324132 () List!9258)

(assert (=> b!857111 (= c!138915 ((_ is Cons!9242) lt!324132))))

(assert (=> b!857111 (= lt!324132 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 lt!323880)) separatorToken!297) separatorToken!297) (h!14643 (t!96714 lt!323880))))))

(declare-fun e!564131 () List!9257)

(declare-fun b!857112 () Bool)

(assert (=> b!857112 (= e!564130 (= (printList!484 thiss!20117 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 lt!323880)) separatorToken!297) separatorToken!297)) e!564131))))

(declare-fun c!138917 () Bool)

(declare-fun lt!324129 () List!9258)

(assert (=> b!857112 (= c!138917 ((_ is Cons!9242) lt!324129))))

(assert (=> b!857112 (= lt!324129 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 lt!323880)) separatorToken!297) separatorToken!297))))

(declare-fun b!857113 () Bool)

(assert (=> b!857113 (= e!564129 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324132))) (printList!484 thiss!20117 (t!96714 lt!324132))))))

(declare-fun b!857114 () Bool)

(assert (=> b!857114 (= e!564131 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324129))) (printList!484 thiss!20117 (t!96714 lt!324129))))))

(declare-fun b!857115 () Bool)

(assert (=> b!857115 (= e!564134 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 lt!323880)) separatorToken!297) separatorToken!297) (h!14643 (t!96714 lt!323880))))))

(declare-fun lt!324127 () List!9257)

(assert (=> b!857115 (= lt!324127 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!323880)))))))

(declare-fun lt!324125 () List!9257)

(assert (=> b!857115 (= lt!324125 (list!3644 (charsOf!1001 separatorToken!297)))))

(declare-fun lt!324126 () List!9257)

(assert (=> b!857115 (= lt!324126 (printList!484 thiss!20117 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 lt!323880)) separatorToken!297)))))

(declare-fun lt!324128 () Unit!13737)

(assert (=> b!857115 (= lt!324128 (lemmaConcatAssociativity!759 lt!324127 lt!324125 lt!324126))))

(assert (=> b!857115 (= (++!2394 (++!2394 lt!324127 lt!324125) lt!324126) (++!2394 lt!324127 (++!2394 lt!324125 lt!324126)))))

(declare-fun lt!324131 () Unit!13737)

(assert (=> b!857115 (= lt!324131 lt!324128)))

(declare-fun b!857116 () Bool)

(assert (=> b!857116 (= e!564134 Nil!9242)))

(declare-fun b!857117 () Bool)

(assert (=> b!857117 (= e!564131 Nil!9241)))

(assert (= (and d!268177 res!391193) b!857110))

(assert (= (and b!857110 (not res!391190)) b!857111))

(assert (= (and b!857111 c!138915) b!857113))

(assert (= (and b!857111 (not c!138915)) b!857109))

(assert (= (and b!857110 res!391191) b!857108))

(assert (= (and b!857108 (not res!391192)) b!857112))

(assert (= (and b!857112 c!138917) b!857114))

(assert (= (and b!857112 (not c!138917)) b!857117))

(assert (= (and d!268177 c!138916) b!857115))

(assert (= (and d!268177 (not c!138916)) b!857116))

(declare-fun m!1098909 () Bool)

(assert (=> b!857115 m!1098909))

(declare-fun m!1098911 () Bool)

(assert (=> b!857115 m!1098911))

(declare-fun m!1098913 () Bool)

(assert (=> b!857115 m!1098913))

(declare-fun m!1098915 () Bool)

(assert (=> b!857115 m!1098915))

(declare-fun m!1098917 () Bool)

(assert (=> b!857115 m!1098917))

(assert (=> b!857115 m!1098631))

(assert (=> b!857115 m!1098633))

(assert (=> b!857115 m!1098915))

(assert (=> b!857115 m!1098631))

(declare-fun m!1098919 () Bool)

(assert (=> b!857115 m!1098919))

(declare-fun m!1098921 () Bool)

(assert (=> b!857115 m!1098921))

(declare-fun m!1098923 () Bool)

(assert (=> b!857115 m!1098923))

(assert (=> b!857115 m!1098911))

(assert (=> b!857115 m!1098923))

(declare-fun m!1098925 () Bool)

(assert (=> b!857115 m!1098925))

(declare-fun m!1098927 () Bool)

(assert (=> b!857115 m!1098927))

(assert (=> b!857115 m!1098915))

(assert (=> b!857115 m!1098919))

(assert (=> b!857115 m!1098909))

(declare-fun m!1098929 () Bool)

(assert (=> b!857115 m!1098929))

(assert (=> b!857112 m!1098915))

(assert (=> b!857112 m!1098915))

(assert (=> b!857112 m!1098919))

(assert (=> b!857112 m!1098919))

(declare-fun m!1098933 () Bool)

(assert (=> b!857112 m!1098933))

(declare-fun m!1098937 () Bool)

(assert (=> d!268177 m!1098937))

(declare-fun m!1098939 () Bool)

(assert (=> d!268177 m!1098939))

(assert (=> b!857111 m!1098915))

(assert (=> b!857111 m!1098915))

(assert (=> b!857111 m!1098919))

(assert (=> b!857111 m!1098919))

(assert (=> b!857111 m!1098921))

(assert (=> b!857111 m!1098921))

(declare-fun m!1098943 () Bool)

(assert (=> b!857111 m!1098943))

(declare-fun m!1098945 () Bool)

(assert (=> b!857113 m!1098945))

(assert (=> b!857113 m!1098945))

(declare-fun m!1098949 () Bool)

(assert (=> b!857113 m!1098949))

(declare-fun m!1098951 () Bool)

(assert (=> b!857113 m!1098951))

(assert (=> b!857113 m!1098949))

(assert (=> b!857113 m!1098951))

(declare-fun m!1098955 () Bool)

(assert (=> b!857113 m!1098955))

(declare-fun m!1098957 () Bool)

(assert (=> b!857114 m!1098957))

(assert (=> b!857114 m!1098957))

(declare-fun m!1098961 () Bool)

(assert (=> b!857114 m!1098961))

(declare-fun m!1098965 () Bool)

(assert (=> b!857114 m!1098965))

(assert (=> b!857114 m!1098961))

(assert (=> b!857114 m!1098965))

(declare-fun m!1098967 () Bool)

(assert (=> b!857114 m!1098967))

(assert (=> b!856976 d!268177))

(declare-fun b!857120 () Bool)

(declare-fun res!391194 () Bool)

(declare-fun e!564136 () Bool)

(assert (=> b!857120 (=> (not res!391194) (not e!564136))))

(declare-fun lt!324133 () List!9257)

(assert (=> b!857120 (= res!391194 (= (size!7718 lt!324133) (+ (size!7718 lt!324050) (size!7718 (++!2394 lt!324048 lt!324049)))))))

(declare-fun b!857118 () Bool)

(declare-fun e!564135 () List!9257)

(assert (=> b!857118 (= e!564135 (++!2394 lt!324048 lt!324049))))

(declare-fun b!857119 () Bool)

(assert (=> b!857119 (= e!564135 (Cons!9241 (h!14642 lt!324050) (++!2394 (t!96713 lt!324050) (++!2394 lt!324048 lt!324049))))))

(declare-fun b!857121 () Bool)

(assert (=> b!857121 (= e!564136 (or (not (= (++!2394 lt!324048 lt!324049) Nil!9241)) (= lt!324133 lt!324050)))))

(declare-fun d!268179 () Bool)

(assert (=> d!268179 e!564136))

(declare-fun res!391195 () Bool)

(assert (=> d!268179 (=> (not res!391195) (not e!564136))))

(assert (=> d!268179 (= res!391195 (= (content!1353 lt!324133) ((_ map or) (content!1353 lt!324050) (content!1353 (++!2394 lt!324048 lt!324049)))))))

(assert (=> d!268179 (= lt!324133 e!564135)))

(declare-fun c!138918 () Bool)

(assert (=> d!268179 (= c!138918 ((_ is Nil!9241) lt!324050))))

(assert (=> d!268179 (= (++!2394 lt!324050 (++!2394 lt!324048 lt!324049)) lt!324133)))

(assert (= (and d!268179 c!138918) b!857118))

(assert (= (and d!268179 (not c!138918)) b!857119))

(assert (= (and d!268179 res!391195) b!857120))

(assert (= (and b!857120 res!391194) b!857121))

(declare-fun m!1098979 () Bool)

(assert (=> b!857120 m!1098979))

(assert (=> b!857120 m!1098867))

(assert (=> b!857120 m!1098675))

(declare-fun m!1098981 () Bool)

(assert (=> b!857120 m!1098981))

(assert (=> b!857119 m!1098675))

(declare-fun m!1098983 () Bool)

(assert (=> b!857119 m!1098983))

(declare-fun m!1098985 () Bool)

(assert (=> d!268179 m!1098985))

(assert (=> d!268179 m!1098875))

(assert (=> d!268179 m!1098675))

(declare-fun m!1098987 () Bool)

(assert (=> d!268179 m!1098987))

(assert (=> b!856976 d!268179))

(declare-fun d!268181 () Bool)

(declare-fun list!3647 (Conc!3063) List!9257)

(assert (=> d!268181 (= (list!3644 (charsOf!1001 separatorToken!297)) (list!3647 (c!138856 (charsOf!1001 separatorToken!297))))))

(declare-fun bs!231924 () Bool)

(assert (= bs!231924 d!268181))

(declare-fun m!1099009 () Bool)

(assert (=> bs!231924 m!1099009))

(assert (=> b!856976 d!268181))

(declare-fun d!268183 () Bool)

(assert (=> d!268183 (= ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880)) (Cons!9242 (h!14643 lt!323880) ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297)))))

(assert (=> b!856976 d!268183))

(declare-fun d!268187 () Bool)

(assert (=> d!268187 (= (list!3644 (charsOf!1001 (h!14643 lt!323880))) (list!3647 (c!138856 (charsOf!1001 (h!14643 lt!323880)))))))

(declare-fun bs!231925 () Bool)

(assert (= bs!231925 d!268187))

(declare-fun m!1099013 () Bool)

(assert (=> bs!231925 m!1099013))

(assert (=> b!856976 d!268187))

(declare-fun b!857126 () Bool)

(declare-fun res!391196 () Bool)

(declare-fun e!564139 () Bool)

(assert (=> b!857126 (=> (not res!391196) (not e!564139))))

(declare-fun lt!324134 () List!9257)

(assert (=> b!857126 (= res!391196 (= (size!7718 lt!324134) (+ (size!7718 (++!2394 lt!324050 lt!324048)) (size!7718 lt!324049))))))

(declare-fun b!857124 () Bool)

(declare-fun e!564138 () List!9257)

(assert (=> b!857124 (= e!564138 lt!324049)))

(declare-fun b!857125 () Bool)

(assert (=> b!857125 (= e!564138 (Cons!9241 (h!14642 (++!2394 lt!324050 lt!324048)) (++!2394 (t!96713 (++!2394 lt!324050 lt!324048)) lt!324049)))))

(declare-fun b!857127 () Bool)

(assert (=> b!857127 (= e!564139 (or (not (= lt!324049 Nil!9241)) (= lt!324134 (++!2394 lt!324050 lt!324048))))))

(declare-fun d!268189 () Bool)

(assert (=> d!268189 e!564139))

(declare-fun res!391197 () Bool)

(assert (=> d!268189 (=> (not res!391197) (not e!564139))))

(assert (=> d!268189 (= res!391197 (= (content!1353 lt!324134) ((_ map or) (content!1353 (++!2394 lt!324050 lt!324048)) (content!1353 lt!324049))))))

(assert (=> d!268189 (= lt!324134 e!564138)))

(declare-fun c!138920 () Bool)

(assert (=> d!268189 (= c!138920 ((_ is Nil!9241) (++!2394 lt!324050 lt!324048)))))

(assert (=> d!268189 (= (++!2394 (++!2394 lt!324050 lt!324048) lt!324049) lt!324134)))

(assert (= (and d!268189 c!138920) b!857124))

(assert (= (and d!268189 (not c!138920)) b!857125))

(assert (= (and d!268189 res!391197) b!857126))

(assert (= (and b!857126 res!391196) b!857127))

(declare-fun m!1099021 () Bool)

(assert (=> b!857126 m!1099021))

(assert (=> b!857126 m!1098689))

(declare-fun m!1099023 () Bool)

(assert (=> b!857126 m!1099023))

(assert (=> b!857126 m!1098885))

(declare-fun m!1099025 () Bool)

(assert (=> b!857125 m!1099025))

(declare-fun m!1099027 () Bool)

(assert (=> d!268189 m!1099027))

(assert (=> d!268189 m!1098689))

(declare-fun m!1099029 () Bool)

(assert (=> d!268189 m!1099029))

(assert (=> d!268189 m!1098891))

(assert (=> b!856976 d!268189))

(declare-fun d!268191 () Bool)

(declare-fun lt!324135 () BalanceConc!6140)

(assert (=> d!268191 (= (list!3644 lt!324135) (originalCharacters!2290 (h!14643 lt!323880)))))

(assert (=> d!268191 (= lt!324135 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880)))) (value!56118 (h!14643 lt!323880))))))

(assert (=> d!268191 (= (charsOf!1001 (h!14643 lt!323880)) lt!324135)))

(declare-fun b_lambda!28847 () Bool)

(assert (=> (not b_lambda!28847) (not d!268191)))

(declare-fun t!96788 () Bool)

(declare-fun tb!60817 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880))))) t!96788) tb!60817))

(declare-fun b!857128 () Bool)

(declare-fun e!564140 () Bool)

(declare-fun tp!270351 () Bool)

(assert (=> b!857128 (= e!564140 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880)))) (value!56118 (h!14643 lt!323880))))) tp!270351))))

(declare-fun result!70418 () Bool)

(assert (=> tb!60817 (= result!70418 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880)))) (value!56118 (h!14643 lt!323880)))) e!564140))))

(assert (= tb!60817 b!857128))

(declare-fun m!1099033 () Bool)

(assert (=> b!857128 m!1099033))

(declare-fun m!1099035 () Bool)

(assert (=> tb!60817 m!1099035))

(assert (=> d!268191 t!96788))

(declare-fun b_and!75867 () Bool)

(assert (= b_and!75859 (and (=> t!96788 result!70418) b_and!75867)))

(declare-fun t!96790 () Bool)

(declare-fun tb!60819 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880))))) t!96790) tb!60819))

(declare-fun result!70420 () Bool)

(assert (= result!70420 result!70418))

(assert (=> d!268191 t!96790))

(declare-fun b_and!75869 () Bool)

(assert (= b_and!75865 (and (=> t!96790 result!70420) b_and!75869)))

(declare-fun t!96792 () Bool)

(declare-fun tb!60821 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880))))) t!96792) tb!60821))

(declare-fun result!70422 () Bool)

(assert (= result!70422 result!70418))

(assert (=> d!268191 t!96792))

(declare-fun b_and!75871 () Bool)

(assert (= b_and!75861 (and (=> t!96792 result!70422) b_and!75871)))

(declare-fun t!96794 () Bool)

(declare-fun tb!60823 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880))))) t!96794) tb!60823))

(declare-fun result!70424 () Bool)

(assert (= result!70424 result!70418))

(assert (=> d!268191 t!96794))

(declare-fun b_and!75873 () Bool)

(assert (= b_and!75857 (and (=> t!96794 result!70424) b_and!75873)))

(declare-fun tb!60825 () Bool)

(declare-fun t!96796 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880))))) t!96796) tb!60825))

(declare-fun result!70426 () Bool)

(assert (= result!70426 result!70418))

(assert (=> d!268191 t!96796))

(declare-fun b_and!75875 () Bool)

(assert (= b_and!75863 (and (=> t!96796 result!70426) b_and!75875)))

(declare-fun m!1099037 () Bool)

(assert (=> d!268191 m!1099037))

(declare-fun m!1099039 () Bool)

(assert (=> d!268191 m!1099039))

(assert (=> b!856976 d!268191))

(declare-fun d!268195 () Bool)

(declare-fun charsToBigInt!1 (List!9256) Int)

(assert (=> d!268195 (= (inv!17 (value!56118 (h!14643 l!5107))) (= (charsToBigInt!1 (text!13048 (value!56118 (h!14643 l!5107)))) (value!56110 (value!56118 (h!14643 l!5107)))))))

(declare-fun bs!231926 () Bool)

(assert (= bs!231926 d!268195))

(declare-fun m!1099041 () Bool)

(assert (=> bs!231926 m!1099041))

(assert (=> b!856839 d!268195))

(declare-fun d!268197 () Bool)

(assert (=> d!268197 (= (inv!11756 (tag!1996 (h!14644 (t!96715 rules!2621)))) (= (mod (str.len (value!56117 (tag!1996 (h!14644 (t!96715 rules!2621))))) 2) 0))))

(assert (=> b!857007 d!268197))

(declare-fun d!268199 () Bool)

(declare-fun res!391198 () Bool)

(declare-fun e!564141 () Bool)

(assert (=> d!268199 (=> (not res!391198) (not e!564141))))

(assert (=> d!268199 (= res!391198 (semiInverseModEq!680 (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toValue!2791 (transformation!1734 (h!14644 (t!96715 rules!2621))))))))

(assert (=> d!268199 (= (inv!11759 (transformation!1734 (h!14644 (t!96715 rules!2621)))) e!564141)))

(declare-fun b!857129 () Bool)

(assert (=> b!857129 (= e!564141 (equivClasses!647 (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toValue!2791 (transformation!1734 (h!14644 (t!96715 rules!2621))))))))

(assert (= (and d!268199 res!391198) b!857129))

(declare-fun m!1099043 () Bool)

(assert (=> d!268199 m!1099043))

(declare-fun m!1099045 () Bool)

(assert (=> b!857129 m!1099045))

(assert (=> b!857007 d!268199))

(declare-fun d!268201 () Bool)

(declare-fun c!138921 () Bool)

(assert (=> d!268201 (= c!138921 ((_ is IntegerValue!5400) (value!56118 (h!14643 (t!96714 l!5107)))))))

(declare-fun e!564144 () Bool)

(assert (=> d!268201 (= (inv!21 (value!56118 (h!14643 (t!96714 l!5107)))) e!564144)))

(declare-fun b!857130 () Bool)

(assert (=> b!857130 (= e!564144 (inv!16 (value!56118 (h!14643 (t!96714 l!5107)))))))

(declare-fun b!857131 () Bool)

(declare-fun res!391199 () Bool)

(declare-fun e!564143 () Bool)

(assert (=> b!857131 (=> res!391199 e!564143)))

(assert (=> b!857131 (= res!391199 (not ((_ is IntegerValue!5402) (value!56118 (h!14643 (t!96714 l!5107))))))))

(declare-fun e!564142 () Bool)

(assert (=> b!857131 (= e!564142 e!564143)))

(declare-fun b!857132 () Bool)

(assert (=> b!857132 (= e!564144 e!564142)))

(declare-fun c!138922 () Bool)

(assert (=> b!857132 (= c!138922 ((_ is IntegerValue!5401) (value!56118 (h!14643 (t!96714 l!5107)))))))

(declare-fun b!857133 () Bool)

(assert (=> b!857133 (= e!564142 (inv!17 (value!56118 (h!14643 (t!96714 l!5107)))))))

(declare-fun b!857134 () Bool)

(assert (=> b!857134 (= e!564143 (inv!15 (value!56118 (h!14643 (t!96714 l!5107)))))))

(assert (= (and d!268201 c!138921) b!857130))

(assert (= (and d!268201 (not c!138921)) b!857132))

(assert (= (and b!857132 c!138922) b!857133))

(assert (= (and b!857132 (not c!138922)) b!857131))

(assert (= (and b!857131 (not res!391199)) b!857134))

(declare-fun m!1099047 () Bool)

(assert (=> b!857130 m!1099047))

(declare-fun m!1099049 () Bool)

(assert (=> b!857133 m!1099049))

(declare-fun m!1099051 () Bool)

(assert (=> b!857134 m!1099051))

(assert (=> b!857039 d!268201))

(declare-fun d!268203 () Bool)

(assert (=> d!268203 (= (isEmpty!5483 (originalCharacters!2290 separatorToken!297)) ((_ is Nil!9241) (originalCharacters!2290 separatorToken!297)))))

(assert (=> d!268017 d!268203))

(declare-fun b!857141 () Bool)

(declare-fun res!391200 () Bool)

(declare-fun e!564148 () Bool)

(assert (=> b!857141 (=> (not res!391200) (not e!564148))))

(declare-fun lt!324136 () List!9257)

(assert (=> b!857141 (= res!391200 (= (size!7718 lt!324136) (+ (size!7718 (list!3644 (charsOf!1001 (h!14643 lt!324055)))) (size!7718 (printList!484 thiss!20117 (t!96714 lt!324055))))))))

(declare-fun b!857139 () Bool)

(declare-fun e!564147 () List!9257)

(assert (=> b!857139 (= e!564147 (printList!484 thiss!20117 (t!96714 lt!324055)))))

(declare-fun b!857140 () Bool)

(assert (=> b!857140 (= e!564147 (Cons!9241 (h!14642 (list!3644 (charsOf!1001 (h!14643 lt!324055)))) (++!2394 (t!96713 (list!3644 (charsOf!1001 (h!14643 lt!324055)))) (printList!484 thiss!20117 (t!96714 lt!324055)))))))

(declare-fun b!857142 () Bool)

(assert (=> b!857142 (= e!564148 (or (not (= (printList!484 thiss!20117 (t!96714 lt!324055)) Nil!9241)) (= lt!324136 (list!3644 (charsOf!1001 (h!14643 lt!324055))))))))

(declare-fun d!268205 () Bool)

(assert (=> d!268205 e!564148))

(declare-fun res!391201 () Bool)

(assert (=> d!268205 (=> (not res!391201) (not e!564148))))

(assert (=> d!268205 (= res!391201 (= (content!1353 lt!324136) ((_ map or) (content!1353 (list!3644 (charsOf!1001 (h!14643 lt!324055)))) (content!1353 (printList!484 thiss!20117 (t!96714 lt!324055))))))))

(assert (=> d!268205 (= lt!324136 e!564147)))

(declare-fun c!138925 () Bool)

(assert (=> d!268205 (= c!138925 ((_ is Nil!9241) (list!3644 (charsOf!1001 (h!14643 lt!324055)))))))

(assert (=> d!268205 (= (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324055))) (printList!484 thiss!20117 (t!96714 lt!324055))) lt!324136)))

(assert (= (and d!268205 c!138925) b!857139))

(assert (= (and d!268205 (not c!138925)) b!857140))

(assert (= (and d!268205 res!391201) b!857141))

(assert (= (and b!857141 res!391200) b!857142))

(declare-fun m!1099053 () Bool)

(assert (=> b!857141 m!1099053))

(assert (=> b!857141 m!1098707))

(declare-fun m!1099055 () Bool)

(assert (=> b!857141 m!1099055))

(assert (=> b!857141 m!1098709))

(declare-fun m!1099057 () Bool)

(assert (=> b!857141 m!1099057))

(assert (=> b!857140 m!1098709))

(declare-fun m!1099059 () Bool)

(assert (=> b!857140 m!1099059))

(declare-fun m!1099061 () Bool)

(assert (=> d!268205 m!1099061))

(assert (=> d!268205 m!1098707))

(declare-fun m!1099063 () Bool)

(assert (=> d!268205 m!1099063))

(assert (=> d!268205 m!1098709))

(declare-fun m!1099065 () Bool)

(assert (=> d!268205 m!1099065))

(assert (=> b!856974 d!268205))

(declare-fun d!268207 () Bool)

(assert (=> d!268207 (= (list!3644 (charsOf!1001 (h!14643 lt!324055))) (list!3647 (c!138856 (charsOf!1001 (h!14643 lt!324055)))))))

(declare-fun bs!231927 () Bool)

(assert (= bs!231927 d!268207))

(declare-fun m!1099067 () Bool)

(assert (=> bs!231927 m!1099067))

(assert (=> b!856974 d!268207))

(declare-fun d!268209 () Bool)

(declare-fun lt!324137 () BalanceConc!6140)

(assert (=> d!268209 (= (list!3644 lt!324137) (originalCharacters!2290 (h!14643 lt!324055)))))

(assert (=> d!268209 (= lt!324137 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055)))) (value!56118 (h!14643 lt!324055))))))

(assert (=> d!268209 (= (charsOf!1001 (h!14643 lt!324055)) lt!324137)))

(declare-fun b_lambda!28849 () Bool)

(assert (=> (not b_lambda!28849) (not d!268209)))

(declare-fun tb!60827 () Bool)

(declare-fun t!96798 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055))))) t!96798) tb!60827))

(declare-fun b!857143 () Bool)

(declare-fun e!564149 () Bool)

(declare-fun tp!270352 () Bool)

(assert (=> b!857143 (= e!564149 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055)))) (value!56118 (h!14643 lt!324055))))) tp!270352))))

(declare-fun result!70428 () Bool)

(assert (=> tb!60827 (= result!70428 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055)))) (value!56118 (h!14643 lt!324055)))) e!564149))))

(assert (= tb!60827 b!857143))

(declare-fun m!1099069 () Bool)

(assert (=> b!857143 m!1099069))

(declare-fun m!1099071 () Bool)

(assert (=> tb!60827 m!1099071))

(assert (=> d!268209 t!96798))

(declare-fun b_and!75877 () Bool)

(assert (= b_and!75871 (and (=> t!96798 result!70428) b_and!75877)))

(declare-fun t!96800 () Bool)

(declare-fun tb!60829 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055))))) t!96800) tb!60829))

(declare-fun result!70430 () Bool)

(assert (= result!70430 result!70428))

(assert (=> d!268209 t!96800))

(declare-fun b_and!75879 () Bool)

(assert (= b_and!75875 (and (=> t!96800 result!70430) b_and!75879)))

(declare-fun tb!60831 () Bool)

(declare-fun t!96802 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055))))) t!96802) tb!60831))

(declare-fun result!70432 () Bool)

(assert (= result!70432 result!70428))

(assert (=> d!268209 t!96802))

(declare-fun b_and!75881 () Bool)

(assert (= b_and!75869 (and (=> t!96802 result!70432) b_and!75881)))

(declare-fun t!96804 () Bool)

(declare-fun tb!60833 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055))))) t!96804) tb!60833))

(declare-fun result!70434 () Bool)

(assert (= result!70434 result!70428))

(assert (=> d!268209 t!96804))

(declare-fun b_and!75883 () Bool)

(assert (= b_and!75867 (and (=> t!96804 result!70434) b_and!75883)))

(declare-fun t!96806 () Bool)

(declare-fun tb!60835 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055))))) t!96806) tb!60835))

(declare-fun result!70436 () Bool)

(assert (= result!70436 result!70428))

(assert (=> d!268209 t!96806))

(declare-fun b_and!75885 () Bool)

(assert (= b_and!75873 (and (=> t!96806 result!70436) b_and!75885)))

(declare-fun m!1099073 () Bool)

(assert (=> d!268209 m!1099073))

(declare-fun m!1099075 () Bool)

(assert (=> d!268209 m!1099075))

(assert (=> b!856974 d!268209))

(declare-fun d!268211 () Bool)

(declare-fun c!138926 () Bool)

(assert (=> d!268211 (= c!138926 ((_ is Cons!9242) (t!96714 lt!324055)))))

(declare-fun e!564150 () List!9257)

(assert (=> d!268211 (= (printList!484 thiss!20117 (t!96714 lt!324055)) e!564150)))

(declare-fun b!857144 () Bool)

(assert (=> b!857144 (= e!564150 (++!2394 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!324055)))) (printList!484 thiss!20117 (t!96714 (t!96714 lt!324055)))))))

(declare-fun b!857145 () Bool)

(assert (=> b!857145 (= e!564150 Nil!9241)))

(assert (= (and d!268211 c!138926) b!857144))

(assert (= (and d!268211 (not c!138926)) b!857145))

(declare-fun m!1099077 () Bool)

(assert (=> b!857144 m!1099077))

(assert (=> b!857144 m!1099077))

(declare-fun m!1099079 () Bool)

(assert (=> b!857144 m!1099079))

(declare-fun m!1099081 () Bool)

(assert (=> b!857144 m!1099081))

(assert (=> b!857144 m!1099079))

(assert (=> b!857144 m!1099081))

(declare-fun m!1099083 () Bool)

(assert (=> b!857144 m!1099083))

(assert (=> b!856974 d!268211))

(declare-fun bs!231928 () Bool)

(declare-fun d!268213 () Bool)

(assert (= bs!231928 (and d!268213 b!856620)))

(declare-fun lambda!25704 () Int)

(assert (=> bs!231928 (not (= lambda!25704 lambda!25690))))

(declare-fun bs!231929 () Bool)

(assert (= bs!231929 (and d!268213 d!268037)))

(assert (=> bs!231929 (= lambda!25704 lambda!25693)))

(declare-fun bs!231930 () Bool)

(assert (= bs!231930 (and d!268213 d!268091)))

(assert (=> bs!231930 (= lambda!25704 lambda!25699)))

(declare-fun bs!231931 () Bool)

(assert (= bs!231931 (and d!268213 d!268093)))

(assert (=> bs!231931 (= lambda!25704 lambda!25700)))

(declare-fun b!857152 () Bool)

(declare-fun e!564156 () Bool)

(assert (=> b!857152 (= e!564156 true)))

(declare-fun b!857151 () Bool)

(declare-fun e!564155 () Bool)

(assert (=> b!857151 (= e!564155 e!564156)))

(declare-fun b!857150 () Bool)

(declare-fun e!564154 () Bool)

(assert (=> b!857150 (= e!564154 e!564155)))

(assert (=> d!268213 e!564154))

(assert (= b!857151 b!857152))

(assert (= b!857150 b!857151))

(assert (= (and d!268213 ((_ is Cons!9243) rules!2621)) b!857150))

(assert (=> b!857152 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25704))))

(assert (=> b!857152 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25704))))

(assert (=> d!268213 true))

(declare-fun lt!324138 () Bool)

(assert (=> d!268213 (= lt!324138 (forall!2193 lt!323880 lambda!25704))))

(declare-fun e!564153 () Bool)

(assert (=> d!268213 (= lt!324138 e!564153)))

(declare-fun res!391203 () Bool)

(assert (=> d!268213 (=> res!391203 e!564153)))

(assert (=> d!268213 (= res!391203 (not ((_ is Cons!9242) lt!323880)))))

(assert (=> d!268213 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268213 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 lt!323880) lt!324138)))

(declare-fun b!857148 () Bool)

(declare-fun e!564152 () Bool)

(assert (=> b!857148 (= e!564153 e!564152)))

(declare-fun res!391202 () Bool)

(assert (=> b!857148 (=> (not res!391202) (not e!564152))))

(assert (=> b!857148 (= res!391202 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323880)))))

(declare-fun b!857149 () Bool)

(assert (=> b!857149 (= e!564152 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 lt!323880)))))

(assert (= (and d!268213 (not res!391203)) b!857148))

(assert (= (and b!857148 res!391202) b!857149))

(declare-fun m!1099091 () Bool)

(assert (=> d!268213 m!1099091))

(assert (=> d!268213 m!1098239))

(declare-fun m!1099093 () Bool)

(assert (=> b!857148 m!1099093))

(declare-fun m!1099095 () Bool)

(assert (=> b!857149 m!1099095))

(assert (=> b!856691 d!268213))

(assert (=> b!856689 d!268067))

(declare-fun d!268215 () Bool)

(assert (=> d!268215 true))

(declare-fun order!5989 () Int)

(declare-fun lambda!25707 () Int)

(declare-fun dynLambda!4352 (Int Int) Int)

(assert (=> d!268215 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (dynLambda!4352 order!5989 lambda!25707))))

(assert (=> d!268215 true))

(assert (=> d!268215 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (dynLambda!4352 order!5989 lambda!25707))))

(declare-fun Forall!420 (Int) Bool)

(assert (=> d!268215 (= (semiInverseModEq!680 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (Forall!420 lambda!25707))))

(declare-fun bs!231932 () Bool)

(assert (= bs!231932 d!268215))

(declare-fun m!1099101 () Bool)

(assert (=> bs!231932 m!1099101))

(assert (=> d!268131 d!268215))

(declare-fun d!268221 () Bool)

(declare-fun charsToInt!0 (List!9256) (_ BitVec 32))

(assert (=> d!268221 (= (inv!16 (value!56118 separatorToken!297)) (= (charsToInt!0 (text!13047 (value!56118 separatorToken!297))) (value!56109 (value!56118 separatorToken!297))))))

(declare-fun bs!231933 () Bool)

(assert (= bs!231933 d!268221))

(declare-fun m!1099103 () Bool)

(assert (=> bs!231933 m!1099103))

(assert (=> b!856651 d!268221))

(declare-fun c!138928 () Bool)

(declare-fun d!268223 () Bool)

(assert (=> d!268223 (= c!138928 ((_ is Cons!9242) ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!564159 () List!9257)

(assert (=> d!268223 (= (printList!484 thiss!20117 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297)) e!564159)))

(declare-fun b!857159 () Bool)

(assert (=> b!857159 (= e!564159 (++!2394 (list!3644 (charsOf!1001 (h!14643 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297)))) (printList!484 thiss!20117 (t!96714 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!857160 () Bool)

(assert (=> b!857160 (= e!564159 Nil!9241)))

(assert (= (and d!268223 c!138928) b!857159))

(assert (= (and d!268223 (not c!138928)) b!857160))

(declare-fun m!1099105 () Bool)

(assert (=> b!857159 m!1099105))

(assert (=> b!857159 m!1099105))

(declare-fun m!1099107 () Bool)

(assert (=> b!857159 m!1099107))

(declare-fun m!1099109 () Bool)

(assert (=> b!857159 m!1099109))

(assert (=> b!857159 m!1099107))

(assert (=> b!857159 m!1099109))

(declare-fun m!1099111 () Bool)

(assert (=> b!857159 m!1099111))

(assert (=> b!856963 d!268223))

(declare-fun d!268225 () Bool)

(assert (=> d!268225 (= ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (Cons!9242 separatorToken!297 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297)))))

(assert (=> b!856963 d!268225))

(declare-fun b!857165 () Bool)

(declare-fun e!564166 () Bool)

(declare-fun e!564163 () Bool)

(assert (=> b!857165 (= e!564166 e!564163)))

(declare-fun res!391208 () Bool)

(assert (=> b!857165 (=> res!391208 e!564163)))

(assert (=> b!857165 (= res!391208 (not ((_ is Cons!9242) (t!96714 l!5107))))))

(declare-fun b!857166 () Bool)

(declare-fun e!564162 () List!9257)

(assert (=> b!857166 (= e!564162 Nil!9241)))

(declare-fun b!857167 () Bool)

(declare-fun res!391207 () Bool)

(assert (=> b!857167 (=> (not res!391207) (not e!564166))))

(declare-fun e!564165 () Bool)

(assert (=> b!857167 (= res!391207 e!564165)))

(declare-fun res!391206 () Bool)

(assert (=> b!857167 (=> res!391206 e!564165)))

(assert (=> b!857167 (= res!391206 (not ((_ is Cons!9242) (t!96714 l!5107))))))

(declare-fun d!268227 () Bool)

(declare-fun lt!324146 () List!9258)

(assert (=> d!268227 (= (printList!484 thiss!20117 lt!324146) (printWithSeparatorTokenList!42 thiss!20117 (t!96714 l!5107) separatorToken!297))))

(declare-fun e!564167 () List!9258)

(assert (=> d!268227 (= lt!324146 e!564167)))

(declare-fun c!138932 () Bool)

(assert (=> d!268227 (= c!138932 ((_ is Cons!9242) (t!96714 l!5107)))))

(assert (=> d!268227 e!564166))

(declare-fun res!391209 () Bool)

(assert (=> d!268227 (=> (not res!391209) (not e!564166))))

(assert (=> d!268227 (= res!391209 (isSeparator!1734 (rule!3157 separatorToken!297)))))

(assert (=> d!268227 (= (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) lt!324146)))

(declare-fun b!857168 () Bool)

(assert (=> b!857168 (= e!564165 (= (printList!484 thiss!20117 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 l!5107)) separatorToken!297) separatorToken!297) (h!14643 (t!96714 l!5107)))) e!564162))))

(declare-fun c!138931 () Bool)

(declare-fun lt!324148 () List!9258)

(assert (=> b!857168 (= c!138931 ((_ is Cons!9242) lt!324148))))

(assert (=> b!857168 (= lt!324148 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 l!5107)) separatorToken!297) separatorToken!297) (h!14643 (t!96714 l!5107))))))

(declare-fun b!857169 () Bool)

(declare-fun e!564164 () List!9257)

(assert (=> b!857169 (= e!564163 (= (printList!484 thiss!20117 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 l!5107)) separatorToken!297) separatorToken!297)) e!564164))))

(declare-fun c!138933 () Bool)

(declare-fun lt!324145 () List!9258)

(assert (=> b!857169 (= c!138933 ((_ is Cons!9242) lt!324145))))

(assert (=> b!857169 (= lt!324145 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!857170 () Bool)

(assert (=> b!857170 (= e!564162 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324148))) (printList!484 thiss!20117 (t!96714 lt!324148))))))

(declare-fun b!857171 () Bool)

(assert (=> b!857171 (= e!564164 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324145))) (printList!484 thiss!20117 (t!96714 lt!324145))))))

(declare-fun b!857172 () Bool)

(assert (=> b!857172 (= e!564167 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 l!5107)) separatorToken!297) separatorToken!297) (h!14643 (t!96714 l!5107))))))

(declare-fun lt!324143 () List!9257)

(assert (=> b!857172 (= lt!324143 (list!3644 (charsOf!1001 (h!14643 (t!96714 l!5107)))))))

(declare-fun lt!324141 () List!9257)

(assert (=> b!857172 (= lt!324141 (list!3644 (charsOf!1001 separatorToken!297)))))

(declare-fun lt!324142 () List!9257)

(assert (=> b!857172 (= lt!324142 (printList!484 thiss!20117 (withSeparatorTokenList!66 thiss!20117 (t!96714 (t!96714 l!5107)) separatorToken!297)))))

(declare-fun lt!324144 () Unit!13737)

(assert (=> b!857172 (= lt!324144 (lemmaConcatAssociativity!759 lt!324143 lt!324141 lt!324142))))

(assert (=> b!857172 (= (++!2394 (++!2394 lt!324143 lt!324141) lt!324142) (++!2394 lt!324143 (++!2394 lt!324141 lt!324142)))))

(declare-fun lt!324147 () Unit!13737)

(assert (=> b!857172 (= lt!324147 lt!324144)))

(declare-fun b!857173 () Bool)

(assert (=> b!857173 (= e!564167 Nil!9242)))

(declare-fun b!857174 () Bool)

(assert (=> b!857174 (= e!564164 Nil!9241)))

(assert (= (and d!268227 res!391209) b!857167))

(assert (= (and b!857167 (not res!391206)) b!857168))

(assert (= (and b!857168 c!138931) b!857170))

(assert (= (and b!857168 (not c!138931)) b!857166))

(assert (= (and b!857167 res!391207) b!857165))

(assert (= (and b!857165 (not res!391208)) b!857169))

(assert (= (and b!857169 c!138933) b!857171))

(assert (= (and b!857169 (not c!138933)) b!857174))

(assert (= (and d!268227 c!138932) b!857172))

(assert (= (and d!268227 (not c!138932)) b!857173))

(declare-fun m!1099113 () Bool)

(assert (=> b!857172 m!1099113))

(declare-fun m!1099115 () Bool)

(assert (=> b!857172 m!1099115))

(declare-fun m!1099117 () Bool)

(assert (=> b!857172 m!1099117))

(declare-fun m!1099119 () Bool)

(assert (=> b!857172 m!1099119))

(declare-fun m!1099121 () Bool)

(assert (=> b!857172 m!1099121))

(assert (=> b!857172 m!1098631))

(assert (=> b!857172 m!1098633))

(assert (=> b!857172 m!1099119))

(assert (=> b!857172 m!1098631))

(declare-fun m!1099123 () Bool)

(assert (=> b!857172 m!1099123))

(declare-fun m!1099125 () Bool)

(assert (=> b!857172 m!1099125))

(declare-fun m!1099127 () Bool)

(assert (=> b!857172 m!1099127))

(assert (=> b!857172 m!1099115))

(assert (=> b!857172 m!1099127))

(declare-fun m!1099129 () Bool)

(assert (=> b!857172 m!1099129))

(declare-fun m!1099131 () Bool)

(assert (=> b!857172 m!1099131))

(assert (=> b!857172 m!1099119))

(assert (=> b!857172 m!1099123))

(assert (=> b!857172 m!1099113))

(declare-fun m!1099133 () Bool)

(assert (=> b!857172 m!1099133))

(assert (=> b!857169 m!1099119))

(assert (=> b!857169 m!1099119))

(assert (=> b!857169 m!1099123))

(assert (=> b!857169 m!1099123))

(declare-fun m!1099135 () Bool)

(assert (=> b!857169 m!1099135))

(declare-fun m!1099137 () Bool)

(assert (=> d!268227 m!1099137))

(declare-fun m!1099139 () Bool)

(assert (=> d!268227 m!1099139))

(assert (=> b!857168 m!1099119))

(assert (=> b!857168 m!1099119))

(assert (=> b!857168 m!1099123))

(assert (=> b!857168 m!1099123))

(assert (=> b!857168 m!1099125))

(assert (=> b!857168 m!1099125))

(declare-fun m!1099141 () Bool)

(assert (=> b!857168 m!1099141))

(declare-fun m!1099143 () Bool)

(assert (=> b!857170 m!1099143))

(assert (=> b!857170 m!1099143))

(declare-fun m!1099145 () Bool)

(assert (=> b!857170 m!1099145))

(declare-fun m!1099147 () Bool)

(assert (=> b!857170 m!1099147))

(assert (=> b!857170 m!1099145))

(assert (=> b!857170 m!1099147))

(declare-fun m!1099149 () Bool)

(assert (=> b!857170 m!1099149))

(declare-fun m!1099151 () Bool)

(assert (=> b!857171 m!1099151))

(assert (=> b!857171 m!1099151))

(declare-fun m!1099153 () Bool)

(assert (=> b!857171 m!1099153))

(declare-fun m!1099155 () Bool)

(assert (=> b!857171 m!1099155))

(assert (=> b!857171 m!1099153))

(assert (=> b!857171 m!1099155))

(declare-fun m!1099157 () Bool)

(assert (=> b!857171 m!1099157))

(assert (=> b!856963 d!268227))

(declare-fun d!268229 () Bool)

(declare-fun res!391220 () Bool)

(declare-fun e!564176 () Bool)

(assert (=> d!268229 (=> res!391220 e!564176)))

(assert (=> d!268229 (= res!391220 ((_ is Nil!9243) rules!2621))))

(assert (=> d!268229 (= (noDuplicateTag!611 thiss!20117 rules!2621 Nil!9245) e!564176)))

(declare-fun b!857187 () Bool)

(declare-fun e!564177 () Bool)

(assert (=> b!857187 (= e!564176 e!564177)))

(declare-fun res!391221 () Bool)

(assert (=> b!857187 (=> (not res!391221) (not e!564177))))

(declare-fun contains!1707 (List!9261 String!10898) Bool)

(assert (=> b!857187 (= res!391221 (not (contains!1707 Nil!9245 (tag!1996 (h!14644 rules!2621)))))))

(declare-fun b!857188 () Bool)

(assert (=> b!857188 (= e!564177 (noDuplicateTag!611 thiss!20117 (t!96715 rules!2621) (Cons!9245 (tag!1996 (h!14644 rules!2621)) Nil!9245)))))

(assert (= (and d!268229 (not res!391220)) b!857187))

(assert (= (and b!857187 res!391221) b!857188))

(declare-fun m!1099173 () Bool)

(assert (=> b!857187 m!1099173))

(declare-fun m!1099175 () Bool)

(assert (=> b!857188 m!1099175))

(assert (=> b!856992 d!268229))

(declare-fun d!268233 () Bool)

(declare-fun lt!324150 () Bool)

(declare-fun e!564178 () Bool)

(assert (=> d!268233 (= lt!324150 e!564178)))

(declare-fun res!391224 () Bool)

(assert (=> d!268233 (=> (not res!391224) (not e!564178))))

(assert (=> d!268233 (= res!391224 (= (list!3645 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 lt!323881)))))) (list!3645 (singletonSeq!552 (h!14643 lt!323881)))))))

(declare-fun e!564179 () Bool)

(assert (=> d!268233 (= lt!324150 e!564179)))

(declare-fun res!391223 () Bool)

(assert (=> d!268233 (=> (not res!391223) (not e!564179))))

(declare-fun lt!324151 () tuple2!10418)

(assert (=> d!268233 (= res!391223 (= (size!7720 (_1!6035 lt!324151)) 1))))

(assert (=> d!268233 (= lt!324151 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 lt!323881)))))))

(assert (=> d!268233 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268233 (= (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323881)) lt!324150)))

(declare-fun b!857189 () Bool)

(declare-fun res!391222 () Bool)

(assert (=> b!857189 (=> (not res!391222) (not e!564179))))

(assert (=> b!857189 (= res!391222 (= (apply!1922 (_1!6035 lt!324151) 0) (h!14643 lt!323881)))))

(declare-fun b!857190 () Bool)

(assert (=> b!857190 (= e!564179 (isEmpty!5484 (_2!6035 lt!324151)))))

(declare-fun b!857191 () Bool)

(assert (=> b!857191 (= e!564178 (isEmpty!5484 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 lt!323881)))))))))

(assert (= (and d!268233 res!391223) b!857189))

(assert (= (and b!857189 res!391222) b!857190))

(assert (= (and d!268233 res!391224) b!857191))

(declare-fun m!1099177 () Bool)

(assert (=> d!268233 m!1099177))

(declare-fun m!1099179 () Bool)

(assert (=> d!268233 m!1099179))

(declare-fun m!1099181 () Bool)

(assert (=> d!268233 m!1099181))

(assert (=> d!268233 m!1098239))

(declare-fun m!1099183 () Bool)

(assert (=> d!268233 m!1099183))

(declare-fun m!1099187 () Bool)

(assert (=> d!268233 m!1099187))

(declare-fun m!1099189 () Bool)

(assert (=> d!268233 m!1099189))

(assert (=> d!268233 m!1099179))

(assert (=> d!268233 m!1099183))

(assert (=> d!268233 m!1099179))

(declare-fun m!1099191 () Bool)

(assert (=> b!857189 m!1099191))

(declare-fun m!1099193 () Bool)

(assert (=> b!857190 m!1099193))

(assert (=> b!857191 m!1099179))

(assert (=> b!857191 m!1099179))

(assert (=> b!857191 m!1099183))

(assert (=> b!857191 m!1099183))

(assert (=> b!857191 m!1099187))

(declare-fun m!1099195 () Bool)

(assert (=> b!857191 m!1099195))

(assert (=> b!856855 d!268233))

(declare-fun d!268237 () Bool)

(declare-fun res!391225 () Bool)

(declare-fun e!564180 () Bool)

(assert (=> d!268237 (=> res!391225 e!564180)))

(assert (=> d!268237 (= res!391225 (not ((_ is Cons!9243) (t!96715 rules!2621))))))

(assert (=> d!268237 (= (sepAndNonSepRulesDisjointChars!534 rules!2621 (t!96715 rules!2621)) e!564180)))

(declare-fun b!857192 () Bool)

(declare-fun e!564181 () Bool)

(assert (=> b!857192 (= e!564180 e!564181)))

(declare-fun res!391226 () Bool)

(assert (=> b!857192 (=> (not res!391226) (not e!564181))))

(assert (=> b!857192 (= res!391226 (ruleDisjointCharsFromAllFromOtherType!247 (h!14644 (t!96715 rules!2621)) rules!2621))))

(declare-fun b!857193 () Bool)

(assert (=> b!857193 (= e!564181 (sepAndNonSepRulesDisjointChars!534 rules!2621 (t!96715 (t!96715 rules!2621))))))

(assert (= (and d!268237 (not res!391225)) b!857192))

(assert (= (and b!857192 res!391226) b!857193))

(declare-fun m!1099197 () Bool)

(assert (=> b!857192 m!1099197))

(declare-fun m!1099199 () Bool)

(assert (=> b!857193 m!1099199))

(assert (=> b!856985 d!268237))

(declare-fun d!268239 () Bool)

(declare-fun lt!324156 () Bool)

(assert (=> d!268239 (= lt!324156 (isEmpty!5483 (list!3644 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)))))))))

(declare-fun isEmpty!5486 (Conc!3063) Bool)

(assert (=> d!268239 (= lt!324156 (isEmpty!5486 (c!138856 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)))))))))

(assert (=> d!268239 (= (isEmpty!5484 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297))))) lt!324156)))

(declare-fun bs!231935 () Bool)

(assert (= bs!231935 d!268239))

(declare-fun m!1099201 () Bool)

(assert (=> bs!231935 m!1099201))

(assert (=> bs!231935 m!1099201))

(declare-fun m!1099203 () Bool)

(assert (=> bs!231935 m!1099203))

(declare-fun m!1099205 () Bool)

(assert (=> bs!231935 m!1099205))

(assert (=> b!856833 d!268239))

(declare-fun b!857224 () Bool)

(declare-fun res!391241 () Bool)

(declare-fun e!564201 () Bool)

(assert (=> b!857224 (=> (not res!391241) (not e!564201))))

(declare-fun lt!324200 () tuple2!10418)

(declare-datatypes ((tuple2!10422 0))(
  ( (tuple2!10423 (_1!6037 List!9258) (_2!6037 List!9257)) )
))
(declare-fun lexList!397 (LexerInterface!1536 List!9259 List!9257) tuple2!10422)

(assert (=> b!857224 (= res!391241 (= (list!3645 (_1!6035 lt!324200)) (_1!6037 (lexList!397 thiss!20117 rules!2621 (list!3644 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)))))))))

(declare-fun b!857225 () Bool)

(declare-fun e!564203 () Bool)

(declare-fun isEmpty!5487 (BalanceConc!6142) Bool)

(assert (=> b!857225 (= e!564203 (not (isEmpty!5487 (_1!6035 lt!324200))))))

(declare-fun d!268241 () Bool)

(assert (=> d!268241 e!564201))

(declare-fun res!391239 () Bool)

(assert (=> d!268241 (=> (not res!391239) (not e!564201))))

(declare-fun e!564202 () Bool)

(assert (=> d!268241 (= res!391239 e!564202)))

(declare-fun c!138943 () Bool)

(assert (=> d!268241 (= c!138943 (> (size!7720 (_1!6035 lt!324200)) 0))))

(declare-fun lexTailRecV2!304 (LexerInterface!1536 List!9259 BalanceConc!6140 BalanceConc!6140 BalanceConc!6140 BalanceConc!6142) tuple2!10418)

(assert (=> d!268241 (= lt!324200 (lexTailRecV2!304 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)) (BalanceConc!6141 Empty!3063) (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)) (BalanceConc!6143 Empty!3064)))))

(assert (=> d!268241 (= (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297))) lt!324200)))

(declare-fun b!857223 () Bool)

(assert (=> b!857223 (= e!564201 (= (list!3644 (_2!6035 lt!324200)) (_2!6037 (lexList!397 thiss!20117 rules!2621 (list!3644 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)))))))))

(declare-fun b!857226 () Bool)

(assert (=> b!857226 (= e!564202 e!564203)))

(declare-fun res!391240 () Bool)

(assert (=> b!857226 (= res!391240 (< (size!7719 (_2!6035 lt!324200)) (size!7719 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)))))))

(assert (=> b!857226 (=> (not res!391240) (not e!564203))))

(declare-fun b!857227 () Bool)

(assert (=> b!857227 (= e!564202 (= (_2!6035 lt!324200) (print!564 thiss!20117 (singletonSeq!552 separatorToken!297))))))

(assert (= (and d!268241 c!138943) b!857226))

(assert (= (and d!268241 (not c!138943)) b!857227))

(assert (= (and b!857226 res!391240) b!857225))

(assert (= (and d!268241 res!391239) b!857224))

(assert (= (and b!857224 res!391241) b!857223))

(declare-fun m!1099317 () Bool)

(assert (=> b!857224 m!1099317))

(assert (=> b!857224 m!1098475))

(declare-fun m!1099319 () Bool)

(assert (=> b!857224 m!1099319))

(assert (=> b!857224 m!1099319))

(declare-fun m!1099321 () Bool)

(assert (=> b!857224 m!1099321))

(declare-fun m!1099323 () Bool)

(assert (=> d!268241 m!1099323))

(assert (=> d!268241 m!1098475))

(assert (=> d!268241 m!1098475))

(declare-fun m!1099325 () Bool)

(assert (=> d!268241 m!1099325))

(declare-fun m!1099327 () Bool)

(assert (=> b!857225 m!1099327))

(declare-fun m!1099329 () Bool)

(assert (=> b!857223 m!1099329))

(assert (=> b!857223 m!1098475))

(assert (=> b!857223 m!1099319))

(assert (=> b!857223 m!1099319))

(assert (=> b!857223 m!1099321))

(declare-fun m!1099331 () Bool)

(assert (=> b!857226 m!1099331))

(assert (=> b!857226 m!1098475))

(declare-fun m!1099333 () Bool)

(assert (=> b!857226 m!1099333))

(assert (=> b!856833 d!268241))

(declare-fun d!268271 () Bool)

(declare-fun lt!324206 () BalanceConc!6140)

(assert (=> d!268271 (= (list!3644 lt!324206) (printList!484 thiss!20117 (list!3645 (singletonSeq!552 separatorToken!297))))))

(declare-fun printTailRec!479 (LexerInterface!1536 BalanceConc!6142 Int BalanceConc!6140) BalanceConc!6140)

(assert (=> d!268271 (= lt!324206 (printTailRec!479 thiss!20117 (singletonSeq!552 separatorToken!297) 0 (BalanceConc!6141 Empty!3063)))))

(assert (=> d!268271 (= (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)) lt!324206)))

(declare-fun bs!231941 () Bool)

(assert (= bs!231941 d!268271))

(declare-fun m!1099335 () Bool)

(assert (=> bs!231941 m!1099335))

(assert (=> bs!231941 m!1098471))

(assert (=> bs!231941 m!1098473))

(assert (=> bs!231941 m!1098473))

(declare-fun m!1099337 () Bool)

(assert (=> bs!231941 m!1099337))

(assert (=> bs!231941 m!1098471))

(declare-fun m!1099339 () Bool)

(assert (=> bs!231941 m!1099339))

(assert (=> b!856833 d!268271))

(declare-fun d!268273 () Bool)

(declare-fun e!564210 () Bool)

(assert (=> d!268273 e!564210))

(declare-fun res!391256 () Bool)

(assert (=> d!268273 (=> (not res!391256) (not e!564210))))

(declare-fun lt!324209 () BalanceConc!6142)

(assert (=> d!268273 (= res!391256 (= (list!3645 lt!324209) (Cons!9242 separatorToken!297 Nil!9242)))))

(declare-fun singleton!271 (Token!3134) BalanceConc!6142)

(assert (=> d!268273 (= lt!324209 (singleton!271 separatorToken!297))))

(assert (=> d!268273 (= (singletonSeq!552 separatorToken!297) lt!324209)))

(declare-fun b!857243 () Bool)

(declare-fun isBalanced!852 (Conc!3064) Bool)

(assert (=> b!857243 (= e!564210 (isBalanced!852 (c!138897 lt!324209)))))

(assert (= (and d!268273 res!391256) b!857243))

(declare-fun m!1099363 () Bool)

(assert (=> d!268273 m!1099363))

(declare-fun m!1099365 () Bool)

(assert (=> d!268273 m!1099365))

(declare-fun m!1099367 () Bool)

(assert (=> b!857243 m!1099367))

(assert (=> b!856833 d!268273))

(declare-fun bs!231942 () Bool)

(declare-fun d!268277 () Bool)

(assert (= bs!231942 (and d!268277 d!268213)))

(declare-fun lambda!25711 () Int)

(assert (=> bs!231942 (= lambda!25711 lambda!25704)))

(declare-fun bs!231943 () Bool)

(assert (= bs!231943 (and d!268277 d!268091)))

(assert (=> bs!231943 (= lambda!25711 lambda!25699)))

(declare-fun bs!231944 () Bool)

(assert (= bs!231944 (and d!268277 b!856620)))

(assert (=> bs!231944 (not (= lambda!25711 lambda!25690))))

(declare-fun bs!231945 () Bool)

(assert (= bs!231945 (and d!268277 d!268093)))

(assert (=> bs!231945 (= lambda!25711 lambda!25700)))

(declare-fun bs!231946 () Bool)

(assert (= bs!231946 (and d!268277 d!268037)))

(assert (=> bs!231946 (= lambda!25711 lambda!25693)))

(declare-fun b!857248 () Bool)

(declare-fun e!564215 () Bool)

(assert (=> b!857248 (= e!564215 true)))

(declare-fun b!857247 () Bool)

(declare-fun e!564214 () Bool)

(assert (=> b!857247 (= e!564214 e!564215)))

(declare-fun b!857246 () Bool)

(declare-fun e!564213 () Bool)

(assert (=> b!857246 (= e!564213 e!564214)))

(assert (=> d!268277 e!564213))

(assert (= b!857247 b!857248))

(assert (= b!857246 b!857247))

(assert (= (and d!268277 ((_ is Cons!9243) rules!2621)) b!857246))

(assert (=> b!857248 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25711))))

(assert (=> b!857248 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25711))))

(assert (=> d!268277 true))

(declare-fun lt!324210 () Bool)

(assert (=> d!268277 (= lt!324210 (forall!2193 (t!96714 l!5107) lambda!25711))))

(declare-fun e!564212 () Bool)

(assert (=> d!268277 (= lt!324210 e!564212)))

(declare-fun res!391258 () Bool)

(assert (=> d!268277 (=> res!391258 e!564212)))

(assert (=> d!268277 (= res!391258 (not ((_ is Cons!9242) (t!96714 l!5107))))))

(assert (=> d!268277 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268277 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 l!5107)) lt!324210)))

(declare-fun b!857244 () Bool)

(declare-fun e!564211 () Bool)

(assert (=> b!857244 (= e!564212 e!564211)))

(declare-fun res!391257 () Bool)

(assert (=> b!857244 (=> (not res!391257) (not e!564211))))

(assert (=> b!857244 (= res!391257 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 l!5107))))))

(declare-fun b!857245 () Bool)

(assert (=> b!857245 (= e!564211 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 (t!96714 l!5107))))))

(assert (= (and d!268277 (not res!391258)) b!857244))

(assert (= (and b!857244 res!391257) b!857245))

(declare-fun m!1099369 () Bool)

(assert (=> d!268277 m!1099369))

(assert (=> d!268277 m!1098239))

(declare-fun m!1099371 () Bool)

(assert (=> b!857244 m!1099371))

(declare-fun m!1099373 () Bool)

(assert (=> b!857245 m!1099373))

(assert (=> b!856851 d!268277))

(declare-fun d!268279 () Bool)

(declare-fun lt!324224 () Token!3134)

(declare-fun apply!1928 (List!9258 Int) Token!3134)

(assert (=> d!268279 (= lt!324224 (apply!1928 (list!3645 (_1!6035 lt!323999)) 0))))

(declare-fun apply!1929 (Conc!3064 Int) Token!3134)

(assert (=> d!268279 (= lt!324224 (apply!1929 (c!138897 (_1!6035 lt!323999)) 0))))

(declare-fun e!564228 () Bool)

(assert (=> d!268279 e!564228))

(declare-fun res!391268 () Bool)

(assert (=> d!268279 (=> (not res!391268) (not e!564228))))

(assert (=> d!268279 (= res!391268 (<= 0 0))))

(assert (=> d!268279 (= (apply!1922 (_1!6035 lt!323999) 0) lt!324224)))

(declare-fun b!857266 () Bool)

(assert (=> b!857266 (= e!564228 (< 0 (size!7720 (_1!6035 lt!323999))))))

(assert (= (and d!268279 res!391268) b!857266))

(declare-fun m!1099411 () Bool)

(assert (=> d!268279 m!1099411))

(assert (=> d!268279 m!1099411))

(declare-fun m!1099415 () Bool)

(assert (=> d!268279 m!1099415))

(declare-fun m!1099417 () Bool)

(assert (=> d!268279 m!1099417))

(assert (=> b!857266 m!1098469))

(assert (=> b!856831 d!268279))

(declare-fun d!268289 () Bool)

(assert (=> d!268289 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297) rules!2621)))

(declare-fun lt!324234 () Unit!13737)

(declare-fun lt!324235 () Unit!13737)

(assert (=> d!268289 (= lt!324234 lt!324235)))

(assert (=> d!268289 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))

(assert (=> d!268289 (= lt!324235 (withSeparatorTokenListPreservesRulesProduceTokens!66 thiss!20117 rules!2621 lt!323880 separatorToken!297))))

(assert (=> d!268289 true))

(declare-fun _$39!217 () Unit!13737)

(assert (=> d!268289 (= (choose!5051 thiss!20117 rules!2621 lt!323880 separatorToken!297) _$39!217)))

(declare-fun bs!231948 () Bool)

(assert (= bs!231948 d!268289))

(assert (=> bs!231948 m!1098217))

(assert (=> bs!231948 m!1098217))

(assert (=> bs!231948 m!1098299))

(assert (=> bs!231948 m!1098217))

(assert (=> bs!231948 m!1098301))

(assert (=> bs!231948 m!1098201))

(assert (=> d!268025 d!268289))

(assert (=> d!268025 d!268089))

(declare-fun d!268301 () Bool)

(assert (=> d!268301 (= (isEmpty!5483 (originalCharacters!2290 (h!14643 l!5107))) ((_ is Nil!9241) (originalCharacters!2290 (h!14643 l!5107))))))

(assert (=> d!268127 d!268301))

(declare-fun d!268303 () Bool)

(declare-fun c!138957 () Bool)

(assert (=> d!268303 (= c!138957 ((_ is Cons!9242) lt!324044))))

(declare-fun e!564240 () List!9257)

(assert (=> d!268303 (= (printList!484 thiss!20117 lt!324044) e!564240)))

(declare-fun b!857289 () Bool)

(assert (=> b!857289 (= e!564240 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324044))) (printList!484 thiss!20117 (t!96714 lt!324044))))))

(declare-fun b!857290 () Bool)

(assert (=> b!857290 (= e!564240 Nil!9241)))

(assert (= (and d!268303 c!138957) b!857289))

(assert (= (and d!268303 (not c!138957)) b!857290))

(declare-fun m!1099465 () Bool)

(assert (=> b!857289 m!1099465))

(assert (=> b!857289 m!1099465))

(declare-fun m!1099467 () Bool)

(assert (=> b!857289 m!1099467))

(declare-fun m!1099469 () Bool)

(assert (=> b!857289 m!1099469))

(assert (=> b!857289 m!1099467))

(assert (=> b!857289 m!1099469))

(declare-fun m!1099471 () Bool)

(assert (=> b!857289 m!1099471))

(assert (=> d!268095 d!268303))

(declare-fun d!268305 () Bool)

(declare-fun c!138960 () Bool)

(assert (=> d!268305 (= c!138960 ((_ is Cons!9242) l!5107))))

(declare-fun e!564243 () List!9257)

(assert (=> d!268305 (= (printWithSeparatorTokenList!42 thiss!20117 l!5107 separatorToken!297) e!564243)))

(declare-fun b!857295 () Bool)

(assert (=> b!857295 (= e!564243 (++!2394 (++!2394 (list!3644 (charsOf!1001 (h!14643 l!5107))) (list!3644 (charsOf!1001 separatorToken!297))) (printWithSeparatorTokenList!42 thiss!20117 (t!96714 l!5107) separatorToken!297)))))

(declare-fun b!857296 () Bool)

(assert (=> b!857296 (= e!564243 Nil!9241)))

(assert (= (and d!268305 c!138960) b!857295))

(assert (= (and d!268305 (not c!138960)) b!857296))

(assert (=> b!857295 m!1098625))

(assert (=> b!857295 m!1098633))

(declare-fun m!1099473 () Bool)

(assert (=> b!857295 m!1099473))

(assert (=> b!857295 m!1098623))

(assert (=> b!857295 m!1098631))

(assert (=> b!857295 m!1098633))

(assert (=> b!857295 m!1099139))

(assert (=> b!857295 m!1098631))

(assert (=> b!857295 m!1098623))

(assert (=> b!857295 m!1098625))

(assert (=> b!857295 m!1099473))

(assert (=> b!857295 m!1099139))

(declare-fun m!1099475 () Bool)

(assert (=> b!857295 m!1099475))

(assert (=> d!268095 d!268305))

(declare-fun d!268307 () Bool)

(declare-fun c!138963 () Bool)

(assert (=> d!268307 (= c!138963 ((_ is Node!3063) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))))))

(declare-fun e!564248 () Bool)

(assert (=> d!268307 (= (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))) e!564248)))

(declare-fun b!857303 () Bool)

(declare-fun inv!11765 (Conc!3063) Bool)

(assert (=> b!857303 (= e!564248 (inv!11765 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))))))

(declare-fun b!857304 () Bool)

(declare-fun e!564249 () Bool)

(assert (=> b!857304 (= e!564248 e!564249)))

(declare-fun res!391277 () Bool)

(assert (=> b!857304 (= res!391277 (not ((_ is Leaf!4518) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))))))))

(assert (=> b!857304 (=> res!391277 e!564249)))

(declare-fun b!857305 () Bool)

(declare-fun inv!11766 (Conc!3063) Bool)

(assert (=> b!857305 (= e!564249 (inv!11766 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))))))

(assert (= (and d!268307 c!138963) b!857303))

(assert (= (and d!268307 (not c!138963)) b!857304))

(assert (= (and b!857304 (not res!391277)) b!857305))

(declare-fun m!1099477 () Bool)

(assert (=> b!857303 m!1099477))

(declare-fun m!1099479 () Bool)

(assert (=> b!857305 m!1099479))

(assert (=> b!856988 d!268307))

(declare-fun b!857308 () Bool)

(declare-fun res!391278 () Bool)

(declare-fun e!564251 () Bool)

(assert (=> b!857308 (=> (not res!391278) (not e!564251))))

(declare-fun lt!324236 () List!9257)

(assert (=> b!857308 (= res!391278 (= (size!7718 lt!324236) (+ (size!7718 (list!3644 (charsOf!1001 (h!14643 lt!324043)))) (size!7718 (printList!484 thiss!20117 (t!96714 lt!324043))))))))

(declare-fun b!857306 () Bool)

(declare-fun e!564250 () List!9257)

(assert (=> b!857306 (= e!564250 (printList!484 thiss!20117 (t!96714 lt!324043)))))

(declare-fun b!857307 () Bool)

(assert (=> b!857307 (= e!564250 (Cons!9241 (h!14642 (list!3644 (charsOf!1001 (h!14643 lt!324043)))) (++!2394 (t!96713 (list!3644 (charsOf!1001 (h!14643 lt!324043)))) (printList!484 thiss!20117 (t!96714 lt!324043)))))))

(declare-fun b!857309 () Bool)

(assert (=> b!857309 (= e!564251 (or (not (= (printList!484 thiss!20117 (t!96714 lt!324043)) Nil!9241)) (= lt!324236 (list!3644 (charsOf!1001 (h!14643 lt!324043))))))))

(declare-fun d!268309 () Bool)

(assert (=> d!268309 e!564251))

(declare-fun res!391279 () Bool)

(assert (=> d!268309 (=> (not res!391279) (not e!564251))))

(assert (=> d!268309 (= res!391279 (= (content!1353 lt!324236) ((_ map or) (content!1353 (list!3644 (charsOf!1001 (h!14643 lt!324043)))) (content!1353 (printList!484 thiss!20117 (t!96714 lt!324043))))))))

(assert (=> d!268309 (= lt!324236 e!564250)))

(declare-fun c!138964 () Bool)

(assert (=> d!268309 (= c!138964 ((_ is Nil!9241) (list!3644 (charsOf!1001 (h!14643 lt!324043)))))))

(assert (=> d!268309 (= (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324043))) (printList!484 thiss!20117 (t!96714 lt!324043))) lt!324236)))

(assert (= (and d!268309 c!138964) b!857306))

(assert (= (and d!268309 (not c!138964)) b!857307))

(assert (= (and d!268309 res!391279) b!857308))

(assert (= (and b!857308 res!391278) b!857309))

(declare-fun m!1099481 () Bool)

(assert (=> b!857308 m!1099481))

(assert (=> b!857308 m!1098665))

(declare-fun m!1099483 () Bool)

(assert (=> b!857308 m!1099483))

(assert (=> b!857308 m!1098667))

(declare-fun m!1099485 () Bool)

(assert (=> b!857308 m!1099485))

(assert (=> b!857307 m!1098667))

(declare-fun m!1099487 () Bool)

(assert (=> b!857307 m!1099487))

(declare-fun m!1099489 () Bool)

(assert (=> d!268309 m!1099489))

(assert (=> d!268309 m!1098665))

(declare-fun m!1099491 () Bool)

(assert (=> d!268309 m!1099491))

(assert (=> d!268309 m!1098667))

(declare-fun m!1099493 () Bool)

(assert (=> d!268309 m!1099493))

(assert (=> b!856965 d!268309))

(declare-fun d!268311 () Bool)

(assert (=> d!268311 (= (list!3644 (charsOf!1001 (h!14643 lt!324043))) (list!3647 (c!138856 (charsOf!1001 (h!14643 lt!324043)))))))

(declare-fun bs!231949 () Bool)

(assert (= bs!231949 d!268311))

(declare-fun m!1099495 () Bool)

(assert (=> bs!231949 m!1099495))

(assert (=> b!856965 d!268311))

(declare-fun d!268313 () Bool)

(declare-fun lt!324237 () BalanceConc!6140)

(assert (=> d!268313 (= (list!3644 lt!324237) (originalCharacters!2290 (h!14643 lt!324043)))))

(assert (=> d!268313 (= lt!324237 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043)))) (value!56118 (h!14643 lt!324043))))))

(assert (=> d!268313 (= (charsOf!1001 (h!14643 lt!324043)) lt!324237)))

(declare-fun b_lambda!28861 () Bool)

(assert (=> (not b_lambda!28861) (not d!268313)))

(declare-fun t!96850 () Bool)

(declare-fun tb!60877 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043))))) t!96850) tb!60877))

(declare-fun b!857310 () Bool)

(declare-fun e!564252 () Bool)

(declare-fun tp!270357 () Bool)

(assert (=> b!857310 (= e!564252 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043)))) (value!56118 (h!14643 lt!324043))))) tp!270357))))

(declare-fun result!70478 () Bool)

(assert (=> tb!60877 (= result!70478 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043)))) (value!56118 (h!14643 lt!324043)))) e!564252))))

(assert (= tb!60877 b!857310))

(declare-fun m!1099497 () Bool)

(assert (=> b!857310 m!1099497))

(declare-fun m!1099499 () Bool)

(assert (=> tb!60877 m!1099499))

(assert (=> d!268313 t!96850))

(declare-fun b_and!75927 () Bool)

(assert (= b_and!75883 (and (=> t!96850 result!70478) b_and!75927)))

(declare-fun tb!60879 () Bool)

(declare-fun t!96852 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043))))) t!96852) tb!60879))

(declare-fun result!70480 () Bool)

(assert (= result!70480 result!70478))

(assert (=> d!268313 t!96852))

(declare-fun b_and!75929 () Bool)

(assert (= b_and!75881 (and (=> t!96852 result!70480) b_and!75929)))

(declare-fun t!96854 () Bool)

(declare-fun tb!60881 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043))))) t!96854) tb!60881))

(declare-fun result!70482 () Bool)

(assert (= result!70482 result!70478))

(assert (=> d!268313 t!96854))

(declare-fun b_and!75931 () Bool)

(assert (= b_and!75879 (and (=> t!96854 result!70482) b_and!75931)))

(declare-fun t!96856 () Bool)

(declare-fun tb!60883 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043))))) t!96856) tb!60883))

(declare-fun result!70484 () Bool)

(assert (= result!70484 result!70478))

(assert (=> d!268313 t!96856))

(declare-fun b_and!75933 () Bool)

(assert (= b_and!75877 (and (=> t!96856 result!70484) b_and!75933)))

(declare-fun tb!60885 () Bool)

(declare-fun t!96858 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043))))) t!96858) tb!60885))

(declare-fun result!70486 () Bool)

(assert (= result!70486 result!70478))

(assert (=> d!268313 t!96858))

(declare-fun b_and!75935 () Bool)

(assert (= b_and!75885 (and (=> t!96858 result!70486) b_and!75935)))

(declare-fun m!1099501 () Bool)

(assert (=> d!268313 m!1099501))

(declare-fun m!1099503 () Bool)

(assert (=> d!268313 m!1099503))

(assert (=> b!856965 d!268313))

(declare-fun d!268315 () Bool)

(declare-fun c!138965 () Bool)

(assert (=> d!268315 (= c!138965 ((_ is Cons!9242) (t!96714 lt!324043)))))

(declare-fun e!564253 () List!9257)

(assert (=> d!268315 (= (printList!484 thiss!20117 (t!96714 lt!324043)) e!564253)))

(declare-fun b!857311 () Bool)

(assert (=> b!857311 (= e!564253 (++!2394 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!324043)))) (printList!484 thiss!20117 (t!96714 (t!96714 lt!324043)))))))

(declare-fun b!857312 () Bool)

(assert (=> b!857312 (= e!564253 Nil!9241)))

(assert (= (and d!268315 c!138965) b!857311))

(assert (= (and d!268315 (not c!138965)) b!857312))

(declare-fun m!1099505 () Bool)

(assert (=> b!857311 m!1099505))

(assert (=> b!857311 m!1099505))

(declare-fun m!1099507 () Bool)

(assert (=> b!857311 m!1099507))

(declare-fun m!1099509 () Bool)

(assert (=> b!857311 m!1099509))

(assert (=> b!857311 m!1099507))

(assert (=> b!857311 m!1099509))

(declare-fun m!1099511 () Bool)

(assert (=> b!857311 m!1099511))

(assert (=> b!856965 d!268315))

(declare-fun bs!231950 () Bool)

(declare-fun d!268317 () Bool)

(assert (= bs!231950 (and d!268317 d!268277)))

(declare-fun lambda!25715 () Int)

(assert (=> bs!231950 (= lambda!25715 lambda!25711)))

(declare-fun bs!231951 () Bool)

(assert (= bs!231951 (and d!268317 d!268213)))

(assert (=> bs!231951 (= lambda!25715 lambda!25704)))

(declare-fun bs!231952 () Bool)

(assert (= bs!231952 (and d!268317 d!268091)))

(assert (=> bs!231952 (= lambda!25715 lambda!25699)))

(declare-fun bs!231953 () Bool)

(assert (= bs!231953 (and d!268317 b!856620)))

(assert (=> bs!231953 (not (= lambda!25715 lambda!25690))))

(declare-fun bs!231954 () Bool)

(assert (= bs!231954 (and d!268317 d!268093)))

(assert (=> bs!231954 (= lambda!25715 lambda!25700)))

(declare-fun bs!231955 () Bool)

(assert (= bs!231955 (and d!268317 d!268037)))

(assert (=> bs!231955 (= lambda!25715 lambda!25693)))

(declare-fun b!857317 () Bool)

(declare-fun e!564258 () Bool)

(assert (=> b!857317 (= e!564258 true)))

(declare-fun b!857316 () Bool)

(declare-fun e!564257 () Bool)

(assert (=> b!857316 (= e!564257 e!564258)))

(declare-fun b!857315 () Bool)

(declare-fun e!564256 () Bool)

(assert (=> b!857315 (= e!564256 e!564257)))

(assert (=> d!268317 e!564256))

(assert (= b!857316 b!857317))

(assert (= b!857315 b!857316))

(assert (= (and d!268317 ((_ is Cons!9243) rules!2621)) b!857315))

(assert (=> b!857317 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25715))))

(assert (=> b!857317 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25715))))

(assert (=> d!268317 true))

(declare-fun lt!324242 () Bool)

(assert (=> d!268317 (= lt!324242 (forall!2193 (t!96714 lt!323878) lambda!25715))))

(declare-fun e!564255 () Bool)

(assert (=> d!268317 (= lt!324242 e!564255)))

(declare-fun res!391281 () Bool)

(assert (=> d!268317 (=> res!391281 e!564255)))

(assert (=> d!268317 (= res!391281 (not ((_ is Cons!9242) (t!96714 lt!323878))))))

(assert (=> d!268317 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268317 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 lt!323878)) lt!324242)))

(declare-fun b!857313 () Bool)

(declare-fun e!564254 () Bool)

(assert (=> b!857313 (= e!564255 e!564254)))

(declare-fun res!391280 () Bool)

(assert (=> b!857313 (=> (not res!391280) (not e!564254))))

(assert (=> b!857313 (= res!391280 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323878))))))

(declare-fun b!857314 () Bool)

(assert (=> b!857314 (= e!564254 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 (t!96714 lt!323878))))))

(assert (= (and d!268317 (not res!391281)) b!857313))

(assert (= (and b!857313 res!391280) b!857314))

(declare-fun m!1099513 () Bool)

(assert (=> d!268317 m!1099513))

(assert (=> d!268317 m!1098239))

(assert (=> b!857313 m!1098495))

(declare-fun m!1099515 () Bool)

(assert (=> b!857314 m!1099515))

(assert (=> b!856718 d!268317))

(declare-fun d!268321 () Bool)

(assert (=> d!268321 (= (list!3644 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))) (list!3647 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))))))

(declare-fun bs!231957 () Bool)

(assert (= bs!231957 d!268321))

(declare-fun m!1099517 () Bool)

(assert (=> bs!231957 m!1099517))

(assert (=> b!856986 d!268321))

(declare-fun d!268323 () Bool)

(assert (=> d!268323 (= (inv!16 (value!56118 (h!14643 l!5107))) (= (charsToInt!0 (text!13047 (value!56118 (h!14643 l!5107)))) (value!56109 (value!56118 (h!14643 l!5107)))))))

(declare-fun bs!231958 () Bool)

(assert (= bs!231958 d!268323))

(declare-fun m!1099525 () Bool)

(assert (=> bs!231958 m!1099525))

(assert (=> b!856836 d!268323))

(assert (=> d!268067 d!268271))

(assert (=> d!268067 d!268241))

(declare-fun d!268327 () Bool)

(declare-fun list!3649 (Conc!3064) List!9258)

(assert (=> d!268327 (= (list!3645 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297))))) (list!3649 (c!138897 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 separatorToken!297)))))))))

(declare-fun bs!231959 () Bool)

(assert (= bs!231959 d!268327))

(declare-fun m!1099533 () Bool)

(assert (=> bs!231959 m!1099533))

(assert (=> d!268067 d!268327))

(declare-fun d!268331 () Bool)

(assert (=> d!268331 (= (list!3645 (singletonSeq!552 separatorToken!297)) (list!3649 (c!138897 (singletonSeq!552 separatorToken!297))))))

(declare-fun bs!231960 () Bool)

(assert (= bs!231960 d!268331))

(declare-fun m!1099535 () Bool)

(assert (=> bs!231960 m!1099535))

(assert (=> d!268067 d!268331))

(assert (=> d!268067 d!268273))

(declare-fun d!268333 () Bool)

(declare-fun lt!324247 () Int)

(declare-fun size!7722 (List!9258) Int)

(assert (=> d!268333 (= lt!324247 (size!7722 (list!3645 (_1!6035 lt!323999))))))

(declare-fun size!7723 (Conc!3064) Int)

(assert (=> d!268333 (= lt!324247 (size!7723 (c!138897 (_1!6035 lt!323999))))))

(assert (=> d!268333 (= (size!7720 (_1!6035 lt!323999)) lt!324247)))

(declare-fun bs!231961 () Bool)

(assert (= bs!231961 d!268333))

(assert (=> bs!231961 m!1099411))

(assert (=> bs!231961 m!1099411))

(declare-fun m!1099537 () Bool)

(assert (=> bs!231961 m!1099537))

(declare-fun m!1099539 () Bool)

(assert (=> bs!231961 m!1099539))

(assert (=> d!268067 d!268333))

(assert (=> d!268067 d!268089))

(declare-fun d!268335 () Bool)

(declare-fun c!138968 () Bool)

(assert (=> d!268335 (= c!138968 ((_ is Cons!9242) ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297)))))

(declare-fun e!564261 () List!9257)

(assert (=> d!268335 (= (printList!484 thiss!20117 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297)) e!564261)))

(declare-fun b!857322 () Bool)

(assert (=> b!857322 (= e!564261 (++!2394 (list!3644 (charsOf!1001 (h!14643 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297)))) (printList!484 thiss!20117 (t!96714 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297)))))))

(declare-fun b!857323 () Bool)

(assert (=> b!857323 (= e!564261 Nil!9241)))

(assert (= (and d!268335 c!138968) b!857322))

(assert (= (and d!268335 (not c!138968)) b!857323))

(declare-fun m!1099541 () Bool)

(assert (=> b!857322 m!1099541))

(assert (=> b!857322 m!1099541))

(declare-fun m!1099543 () Bool)

(assert (=> b!857322 m!1099543))

(declare-fun m!1099545 () Bool)

(assert (=> b!857322 m!1099545))

(assert (=> b!857322 m!1099543))

(assert (=> b!857322 m!1099545))

(declare-fun m!1099547 () Bool)

(assert (=> b!857322 m!1099547))

(assert (=> b!856973 d!268335))

(assert (=> b!856973 d!268163))

(assert (=> b!856973 d!268177))

(declare-fun d!268337 () Bool)

(declare-fun lt!324253 () Int)

(assert (=> d!268337 (>= lt!324253 0)))

(declare-fun e!564267 () Int)

(assert (=> d!268337 (= lt!324253 e!564267)))

(declare-fun c!138971 () Bool)

(assert (=> d!268337 (= c!138971 ((_ is Nil!9241) (originalCharacters!2290 separatorToken!297)))))

(assert (=> d!268337 (= (size!7718 (originalCharacters!2290 separatorToken!297)) lt!324253)))

(declare-fun b!857331 () Bool)

(assert (=> b!857331 (= e!564267 0)))

(declare-fun b!857332 () Bool)

(assert (=> b!857332 (= e!564267 (+ 1 (size!7718 (t!96713 (originalCharacters!2290 separatorToken!297)))))))

(assert (= (and d!268337 c!138971) b!857331))

(assert (= (and d!268337 (not c!138971)) b!857332))

(declare-fun m!1099555 () Bool)

(assert (=> b!857332 m!1099555))

(assert (=> b!856635 d!268337))

(declare-fun d!268341 () Bool)

(declare-fun res!391285 () Bool)

(declare-fun e!564269 () Bool)

(assert (=> d!268341 (=> res!391285 e!564269)))

(assert (=> d!268341 (= res!391285 (or (not ((_ is Cons!9242) (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))) (not ((_ is Cons!9242) (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))))))))

(assert (=> d!268341 (= (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))) rules!2621) e!564269)))

(declare-fun b!857333 () Bool)

(declare-fun e!564268 () Bool)

(assert (=> b!857333 (= e!564269 e!564268)))

(declare-fun res!391286 () Bool)

(assert (=> b!857333 (=> (not res!391286) (not e!564268))))

(assert (=> b!857333 (= res!391286 (separableTokensPredicate!66 thiss!20117 (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878)))) (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))) rules!2621))))

(declare-fun lt!324254 () Unit!13737)

(declare-fun Unit!13754 () Unit!13737)

(assert (=> b!857333 (= lt!324254 Unit!13754)))

(assert (=> b!857333 (> (size!7719 (charsOf!1001 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))))) 0)))

(declare-fun lt!324259 () Unit!13737)

(declare-fun Unit!13755 () Unit!13737)

(assert (=> b!857333 (= lt!324259 Unit!13755)))

(assert (=> b!857333 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))))))

(declare-fun lt!324256 () Unit!13737)

(declare-fun Unit!13756 () Unit!13737)

(assert (=> b!857333 (= lt!324256 Unit!13756)))

(assert (=> b!857333 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878)))))))

(declare-fun lt!324260 () Unit!13737)

(declare-fun lt!324257 () Unit!13737)

(assert (=> b!857333 (= lt!324260 lt!324257)))

(assert (=> b!857333 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))))))

(assert (=> b!857333 (= lt!324257 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))) (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878)))))))))

(declare-fun lt!324258 () Unit!13737)

(declare-fun lt!324255 () Unit!13737)

(assert (=> b!857333 (= lt!324258 lt!324255)))

(assert (=> b!857333 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878)))))))

(assert (=> b!857333 (= lt!324255 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))) (h!14643 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))))))

(declare-fun b!857334 () Bool)

(assert (=> b!857334 (= e!564268 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (Cons!9242 (h!14643 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878))))) (t!96714 (t!96714 (Cons!9242 (h!14643 (t!96714 lt!323878)) (t!96714 (t!96714 lt!323878)))))) rules!2621))))

(assert (= (and d!268341 (not res!391285)) b!857333))

(assert (= (and b!857333 res!391286) b!857334))

(declare-fun m!1099557 () Bool)

(assert (=> b!857333 m!1099557))

(declare-fun m!1099559 () Bool)

(assert (=> b!857333 m!1099559))

(declare-fun m!1099561 () Bool)

(assert (=> b!857333 m!1099561))

(declare-fun m!1099563 () Bool)

(assert (=> b!857333 m!1099563))

(declare-fun m!1099565 () Bool)

(assert (=> b!857333 m!1099565))

(declare-fun m!1099567 () Bool)

(assert (=> b!857333 m!1099567))

(assert (=> b!857333 m!1099565))

(declare-fun m!1099569 () Bool)

(assert (=> b!857333 m!1099569))

(declare-fun m!1099571 () Bool)

(assert (=> b!857334 m!1099571))

(assert (=> b!856835 d!268341))

(declare-fun d!268343 () Bool)

(assert (=> d!268343 true))

(declare-fun lt!324266 () Bool)

(declare-fun rulesValidInductive!618 (LexerInterface!1536 List!9259) Bool)

(assert (=> d!268343 (= lt!324266 (rulesValidInductive!618 thiss!20117 rules!2621))))

(declare-fun lambda!25718 () Int)

(declare-fun forall!2194 (List!9259 Int) Bool)

(assert (=> d!268343 (= lt!324266 (forall!2194 rules!2621 lambda!25718))))

(assert (=> d!268343 (= (rulesValid!611 thiss!20117 rules!2621) lt!324266)))

(declare-fun bs!231963 () Bool)

(assert (= bs!231963 d!268343))

(declare-fun m!1099579 () Bool)

(assert (=> bs!231963 m!1099579))

(declare-fun m!1099581 () Bool)

(assert (=> bs!231963 m!1099581))

(assert (=> d!268135 d!268343))

(declare-fun bs!231964 () Bool)

(declare-fun d!268347 () Bool)

(assert (= bs!231964 (and d!268347 d!268215)))

(declare-fun lambda!25719 () Int)

(assert (=> bs!231964 (= (and (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (= (toValue!2791 (transformation!1734 (h!14644 rules!2621))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (= lambda!25719 lambda!25707))))

(assert (=> d!268347 true))

(assert (=> d!268347 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4352 order!5989 lambda!25719))))

(assert (=> d!268347 true))

(assert (=> d!268347 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4352 order!5989 lambda!25719))))

(assert (=> d!268347 (= (semiInverseModEq!680 (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (Forall!420 lambda!25719))))

(declare-fun bs!231965 () Bool)

(assert (= bs!231965 d!268347))

(declare-fun m!1099583 () Bool)

(assert (=> bs!231965 m!1099583))

(assert (=> d!268123 d!268347))

(declare-fun bs!231966 () Bool)

(declare-fun d!268349 () Bool)

(assert (= bs!231966 (and d!268349 d!268215)))

(declare-fun lambda!25720 () Int)

(assert (=> bs!231966 (= (and (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (= (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (= lambda!25720 lambda!25707))))

(declare-fun bs!231967 () Bool)

(assert (= bs!231967 (and d!268349 d!268347)))

(assert (=> bs!231967 (= (and (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (= (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297))) (toValue!2791 (transformation!1734 (h!14644 rules!2621))))) (= lambda!25720 lambda!25719))))

(assert (=> d!268349 true))

(assert (=> d!268349 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) (dynLambda!4352 order!5989 lambda!25720))))

(assert (=> d!268349 true))

(assert (=> d!268349 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))) (dynLambda!4352 order!5989 lambda!25720))))

(assert (=> d!268349 (= (semiInverseModEq!680 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))) (Forall!420 lambda!25720))))

(declare-fun bs!231968 () Bool)

(assert (= bs!231968 d!268349))

(declare-fun m!1099585 () Bool)

(assert (=> bs!231968 m!1099585))

(assert (=> d!268087 d!268349))

(declare-fun d!268351 () Bool)

(assert (=> d!268351 (= (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))) (isBalanced!850 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))))))

(declare-fun bs!231969 () Bool)

(assert (= bs!231969 d!268351))

(declare-fun m!1099587 () Bool)

(assert (=> bs!231969 m!1099587))

(assert (=> tb!60757 d!268351))

(declare-fun d!268353 () Bool)

(assert (=> d!268353 (= (inv!17 (value!56118 separatorToken!297)) (= (charsToBigInt!1 (text!13048 (value!56118 separatorToken!297))) (value!56110 (value!56118 separatorToken!297))))))

(declare-fun bs!231970 () Bool)

(assert (= bs!231970 d!268353))

(declare-fun m!1099589 () Bool)

(assert (=> bs!231970 m!1099589))

(assert (=> b!856654 d!268353))

(declare-fun d!268355 () Bool)

(declare-fun res!391287 () Bool)

(declare-fun e!564271 () Bool)

(assert (=> d!268355 (=> res!391287 e!564271)))

(assert (=> d!268355 (= res!391287 (or (not ((_ is Cons!9242) (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))) (not ((_ is Cons!9242) (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))))))

(assert (=> d!268355 (= (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297) rules!2621) e!564271)))

(declare-fun b!857337 () Bool)

(declare-fun e!564270 () Bool)

(assert (=> b!857337 (= e!564271 e!564270)))

(declare-fun res!391288 () Bool)

(assert (=> b!857337 (=> (not res!391288) (not e!564270))))

(assert (=> b!857337 (= res!391288 (separableTokensPredicate!66 thiss!20117 (h!14643 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297)) (h!14643 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))) rules!2621))))

(declare-fun lt!324267 () Unit!13737)

(declare-fun Unit!13757 () Unit!13737)

(assert (=> b!857337 (= lt!324267 Unit!13757)))

(assert (=> b!857337 (> (size!7719 (charsOf!1001 (h!14643 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))) 0)))

(declare-fun lt!324272 () Unit!13737)

(declare-fun Unit!13758 () Unit!13737)

(assert (=> b!857337 (= lt!324272 Unit!13758)))

(assert (=> b!857337 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))))

(declare-fun lt!324269 () Unit!13737)

(declare-fun Unit!13759 () Unit!13737)

(assert (=> b!857337 (= lt!324269 Unit!13759)))

(assert (=> b!857337 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297)))))

(declare-fun lt!324273 () Unit!13737)

(declare-fun lt!324270 () Unit!13737)

(assert (=> b!857337 (= lt!324273 lt!324270)))

(assert (=> b!857337 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))))

(assert (=> b!857337 (= lt!324270 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297) (h!14643 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297)))))))

(declare-fun lt!324271 () Unit!13737)

(declare-fun lt!324268 () Unit!13737)

(assert (=> b!857337 (= lt!324271 lt!324268)))

(assert (=> b!857337 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297)))))

(assert (=> b!857337 (= lt!324268 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297) (h!14643 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))))

(declare-fun b!857338 () Bool)

(assert (=> b!857338 (= e!564270 (tokensListTwoByTwoPredicateSeparableList!50 thiss!20117 (Cons!9242 (h!14643 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))) (t!96714 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297)))) rules!2621))))

(assert (= (and d!268355 (not res!391287)) b!857337))

(assert (= (and b!857337 res!391288) b!857338))

(assert (=> b!857337 m!1098217))

(declare-fun m!1099591 () Bool)

(assert (=> b!857337 m!1099591))

(declare-fun m!1099593 () Bool)

(assert (=> b!857337 m!1099593))

(declare-fun m!1099595 () Bool)

(assert (=> b!857337 m!1099595))

(assert (=> b!857337 m!1098217))

(declare-fun m!1099597 () Bool)

(assert (=> b!857337 m!1099597))

(declare-fun m!1099599 () Bool)

(assert (=> b!857337 m!1099599))

(declare-fun m!1099601 () Bool)

(assert (=> b!857337 m!1099601))

(assert (=> b!857337 m!1099599))

(declare-fun m!1099603 () Bool)

(assert (=> b!857337 m!1099603))

(declare-fun m!1099605 () Bool)

(assert (=> b!857338 m!1099605))

(assert (=> b!856692 d!268355))

(assert (=> b!856692 d!268117))

(declare-fun bs!231971 () Bool)

(declare-fun d!268357 () Bool)

(assert (= bs!231971 (and d!268357 d!268277)))

(declare-fun lambda!25721 () Int)

(assert (=> bs!231971 (= lambda!25721 lambda!25711)))

(declare-fun bs!231972 () Bool)

(assert (= bs!231972 (and d!268357 d!268213)))

(assert (=> bs!231972 (= lambda!25721 lambda!25704)))

(declare-fun bs!231973 () Bool)

(assert (= bs!231973 (and d!268357 d!268091)))

(assert (=> bs!231973 (= lambda!25721 lambda!25699)))

(declare-fun bs!231974 () Bool)

(assert (= bs!231974 (and d!268357 d!268317)))

(assert (=> bs!231974 (= lambda!25721 lambda!25715)))

(declare-fun bs!231975 () Bool)

(assert (= bs!231975 (and d!268357 b!856620)))

(assert (=> bs!231975 (not (= lambda!25721 lambda!25690))))

(declare-fun bs!231976 () Bool)

(assert (= bs!231976 (and d!268357 d!268093)))

(assert (=> bs!231976 (= lambda!25721 lambda!25700)))

(declare-fun bs!231977 () Bool)

(assert (= bs!231977 (and d!268357 d!268037)))

(assert (=> bs!231977 (= lambda!25721 lambda!25693)))

(declare-fun b!857343 () Bool)

(declare-fun e!564276 () Bool)

(assert (=> b!857343 (= e!564276 true)))

(declare-fun b!857342 () Bool)

(declare-fun e!564275 () Bool)

(assert (=> b!857342 (= e!564275 e!564276)))

(declare-fun b!857341 () Bool)

(declare-fun e!564274 () Bool)

(assert (=> b!857341 (= e!564274 e!564275)))

(assert (=> d!268357 e!564274))

(assert (= b!857342 b!857343))

(assert (= b!857341 b!857342))

(assert (= (and d!268357 ((_ is Cons!9243) rules!2621)) b!857341))

(assert (=> b!857343 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25721))))

(assert (=> b!857343 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25721))))

(assert (=> d!268357 true))

(declare-fun lt!324274 () Bool)

(assert (=> d!268357 (= lt!324274 (forall!2193 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297) lambda!25721))))

(declare-fun e!564273 () Bool)

(assert (=> d!268357 (= lt!324274 e!564273)))

(declare-fun res!391290 () Bool)

(assert (=> d!268357 (=> res!391290 e!564273)))

(assert (=> d!268357 (= res!391290 (not ((_ is Cons!9242) (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))))

(assert (=> d!268357 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268357 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297)) lt!324274)))

(declare-fun b!857339 () Bool)

(declare-fun e!564272 () Bool)

(assert (=> b!857339 (= e!564273 e!564272)))

(declare-fun res!391289 () Bool)

(assert (=> b!857339 (=> (not res!391289) (not e!564272))))

(assert (=> b!857339 (= res!391289 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))))

(declare-fun b!857340 () Bool)

(assert (=> b!857340 (= e!564272 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))))

(assert (= (and d!268357 (not res!391290)) b!857339))

(assert (= (and b!857339 res!391289) b!857340))

(assert (=> d!268357 m!1098217))

(declare-fun m!1099607 () Bool)

(assert (=> d!268357 m!1099607))

(assert (=> d!268357 m!1098239))

(assert (=> b!857339 m!1099593))

(declare-fun m!1099609 () Bool)

(assert (=> b!857340 m!1099609))

(assert (=> b!856692 d!268357))

(assert (=> b!856692 d!268043))

(assert (=> b!856802 d!268149))

(declare-fun d!268359 () Bool)

(assert (=> d!268359 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323881)))))

(declare-fun lt!324280 () Unit!13737)

(declare-fun choose!5054 (LexerInterface!1536 List!9259 List!9258 Token!3134) Unit!13737)

(assert (=> d!268359 (= lt!324280 (choose!5054 thiss!20117 rules!2621 lt!323881 (h!14643 (t!96714 lt!323881))))))

(assert (=> d!268359 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268359 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323881 (h!14643 (t!96714 lt!323881))) lt!324280)))

(declare-fun bs!231978 () Bool)

(assert (= bs!231978 d!268359))

(assert (=> bs!231978 m!1098393))

(declare-fun m!1099629 () Bool)

(assert (=> bs!231978 m!1099629))

(assert (=> bs!231978 m!1098239))

(assert (=> b!856802 d!268359))

(declare-fun d!268363 () Bool)

(declare-fun lt!324283 () Int)

(assert (=> d!268363 (= lt!324283 (size!7718 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!323881))))))))

(declare-fun size!7724 (Conc!3063) Int)

(assert (=> d!268363 (= lt!324283 (size!7724 (c!138856 (charsOf!1001 (h!14643 (t!96714 lt!323881))))))))

(assert (=> d!268363 (= (size!7719 (charsOf!1001 (h!14643 (t!96714 lt!323881)))) lt!324283)))

(declare-fun bs!231979 () Bool)

(assert (= bs!231979 d!268363))

(assert (=> bs!231979 m!1098323))

(assert (=> bs!231979 m!1098775))

(assert (=> bs!231979 m!1098775))

(declare-fun m!1099631 () Bool)

(assert (=> bs!231979 m!1099631))

(declare-fun m!1099633 () Bool)

(assert (=> bs!231979 m!1099633))

(assert (=> b!856802 d!268363))

(assert (=> b!856802 d!268045))

(declare-fun d!268365 () Bool)

(assert (=> d!268365 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323881))))

(declare-fun lt!324284 () Unit!13737)

(assert (=> d!268365 (= lt!324284 (choose!5054 thiss!20117 rules!2621 lt!323881 (h!14643 lt!323881)))))

(assert (=> d!268365 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268365 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323881 (h!14643 lt!323881)) lt!324284)))

(declare-fun bs!231980 () Bool)

(assert (= bs!231980 d!268365))

(assert (=> bs!231980 m!1098389))

(declare-fun m!1099635 () Bool)

(assert (=> bs!231980 m!1099635))

(assert (=> bs!231980 m!1098239))

(assert (=> b!856802 d!268365))

(assert (=> b!856802 d!268233))

(declare-fun d!268367 () Bool)

(declare-fun lt!324285 () Bool)

(declare-fun e!564286 () Bool)

(assert (=> d!268367 (= lt!324285 e!564286)))

(declare-fun res!391302 () Bool)

(assert (=> d!268367 (=> (not res!391302) (not e!564286))))

(assert (=> d!268367 (= res!391302 (= (list!3645 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 (t!96714 lt!323881))))))) (list!3645 (singletonSeq!552 (h!14643 (t!96714 lt!323881))))))))

(declare-fun e!564287 () Bool)

(assert (=> d!268367 (= lt!324285 e!564287)))

(declare-fun res!391301 () Bool)

(assert (=> d!268367 (=> (not res!391301) (not e!564287))))

(declare-fun lt!324286 () tuple2!10418)

(assert (=> d!268367 (= res!391301 (= (size!7720 (_1!6035 lt!324286)) 1))))

(assert (=> d!268367 (= lt!324286 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 (t!96714 lt!323881))))))))

(assert (=> d!268367 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268367 (= (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323881))) lt!324285)))

(declare-fun b!857359 () Bool)

(declare-fun res!391300 () Bool)

(assert (=> b!857359 (=> (not res!391300) (not e!564287))))

(assert (=> b!857359 (= res!391300 (= (apply!1922 (_1!6035 lt!324286) 0) (h!14643 (t!96714 lt!323881))))))

(declare-fun b!857360 () Bool)

(assert (=> b!857360 (= e!564287 (isEmpty!5484 (_2!6035 lt!324286)))))

(declare-fun b!857361 () Bool)

(assert (=> b!857361 (= e!564286 (isEmpty!5484 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 (t!96714 lt!323881))))))))))

(assert (= (and d!268367 res!391301) b!857359))

(assert (= (and b!857359 res!391300) b!857360))

(assert (= (and d!268367 res!391302) b!857361))

(declare-fun m!1099637 () Bool)

(assert (=> d!268367 m!1099637))

(declare-fun m!1099639 () Bool)

(assert (=> d!268367 m!1099639))

(declare-fun m!1099641 () Bool)

(assert (=> d!268367 m!1099641))

(assert (=> d!268367 m!1098239))

(declare-fun m!1099643 () Bool)

(assert (=> d!268367 m!1099643))

(declare-fun m!1099645 () Bool)

(assert (=> d!268367 m!1099645))

(declare-fun m!1099647 () Bool)

(assert (=> d!268367 m!1099647))

(assert (=> d!268367 m!1099639))

(assert (=> d!268367 m!1099643))

(assert (=> d!268367 m!1099639))

(declare-fun m!1099649 () Bool)

(assert (=> b!857359 m!1099649))

(declare-fun m!1099651 () Bool)

(assert (=> b!857360 m!1099651))

(assert (=> b!857361 m!1099639))

(assert (=> b!857361 m!1099639))

(assert (=> b!857361 m!1099643))

(assert (=> b!857361 m!1099643))

(assert (=> b!857361 m!1099645))

(declare-fun m!1099653 () Bool)

(assert (=> b!857361 m!1099653))

(assert (=> b!856802 d!268367))

(declare-fun d!268369 () Bool)

(assert (=> d!268369 (= (inv!15 (value!56118 (h!14643 l!5107))) (= (charsToBigInt!0 (text!13049 (value!56118 (h!14643 l!5107))) 0) (value!56113 (value!56118 (h!14643 l!5107)))))))

(declare-fun bs!231981 () Bool)

(assert (= bs!231981 d!268369))

(declare-fun m!1099655 () Bool)

(assert (=> bs!231981 m!1099655))

(assert (=> b!856840 d!268369))

(declare-fun d!268371 () Bool)

(declare-fun res!391303 () Bool)

(declare-fun e!564288 () Bool)

(assert (=> d!268371 (=> (not res!391303) (not e!564288))))

(assert (=> d!268371 (= res!391303 (not (isEmpty!5483 (originalCharacters!2290 (h!14643 (t!96714 l!5107))))))))

(assert (=> d!268371 (= (inv!11760 (h!14643 (t!96714 l!5107))) e!564288)))

(declare-fun b!857362 () Bool)

(declare-fun res!391304 () Bool)

(assert (=> b!857362 (=> (not res!391304) (not e!564288))))

(assert (=> b!857362 (= res!391304 (= (originalCharacters!2290 (h!14643 (t!96714 l!5107))) (list!3644 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (value!56118 (h!14643 (t!96714 l!5107)))))))))

(declare-fun b!857363 () Bool)

(assert (=> b!857363 (= e!564288 (= (size!7715 (h!14643 (t!96714 l!5107))) (size!7718 (originalCharacters!2290 (h!14643 (t!96714 l!5107))))))))

(assert (= (and d!268371 res!391303) b!857362))

(assert (= (and b!857362 res!391304) b!857363))

(declare-fun b_lambda!28863 () Bool)

(assert (=> (not b_lambda!28863) (not b!857362)))

(declare-fun t!96861 () Bool)

(declare-fun tb!60887 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) t!96861) tb!60887))

(declare-fun b!857364 () Bool)

(declare-fun e!564289 () Bool)

(declare-fun tp!270358 () Bool)

(assert (=> b!857364 (= e!564289 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (value!56118 (h!14643 (t!96714 l!5107)))))) tp!270358))))

(declare-fun result!70488 () Bool)

(assert (=> tb!60887 (= result!70488 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (value!56118 (h!14643 (t!96714 l!5107))))) e!564289))))

(assert (= tb!60887 b!857364))

(declare-fun m!1099657 () Bool)

(assert (=> b!857364 m!1099657))

(declare-fun m!1099659 () Bool)

(assert (=> tb!60887 m!1099659))

(assert (=> b!857362 t!96861))

(declare-fun b_and!75937 () Bool)

(assert (= b_and!75931 (and (=> t!96861 result!70488) b_and!75937)))

(declare-fun t!96863 () Bool)

(declare-fun tb!60889 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) t!96863) tb!60889))

(declare-fun result!70490 () Bool)

(assert (= result!70490 result!70488))

(assert (=> b!857362 t!96863))

(declare-fun b_and!75939 () Bool)

(assert (= b_and!75927 (and (=> t!96863 result!70490) b_and!75939)))

(declare-fun t!96865 () Bool)

(declare-fun tb!60891 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) t!96865) tb!60891))

(declare-fun result!70492 () Bool)

(assert (= result!70492 result!70488))

(assert (=> b!857362 t!96865))

(declare-fun b_and!75941 () Bool)

(assert (= b_and!75935 (and (=> t!96865 result!70492) b_and!75941)))

(declare-fun tb!60893 () Bool)

(declare-fun t!96867 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) t!96867) tb!60893))

(declare-fun result!70494 () Bool)

(assert (= result!70494 result!70488))

(assert (=> b!857362 t!96867))

(declare-fun b_and!75943 () Bool)

(assert (= b_and!75933 (and (=> t!96867 result!70494) b_and!75943)))

(declare-fun t!96869 () Bool)

(declare-fun tb!60895 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) t!96869) tb!60895))

(declare-fun result!70496 () Bool)

(assert (= result!70496 result!70488))

(assert (=> b!857362 t!96869))

(declare-fun b_and!75945 () Bool)

(assert (= b_and!75929 (and (=> t!96869 result!70496) b_and!75945)))

(declare-fun m!1099661 () Bool)

(assert (=> d!268371 m!1099661))

(declare-fun m!1099663 () Bool)

(assert (=> b!857362 m!1099663))

(assert (=> b!857362 m!1099663))

(declare-fun m!1099665 () Bool)

(assert (=> b!857362 m!1099665))

(declare-fun m!1099667 () Bool)

(assert (=> b!857363 m!1099667))

(assert (=> b!857038 d!268371))

(declare-fun d!268373 () Bool)

(declare-fun res!391305 () Bool)

(declare-fun e!564290 () Bool)

(assert (=> d!268373 (=> res!391305 e!564290)))

(assert (=> d!268373 (= res!391305 ((_ is Nil!9242) l!5107))))

(assert (=> d!268373 (= (forall!2193 l!5107 lambda!25699) e!564290)))

(declare-fun b!857365 () Bool)

(declare-fun e!564291 () Bool)

(assert (=> b!857365 (= e!564290 e!564291)))

(declare-fun res!391306 () Bool)

(assert (=> b!857365 (=> (not res!391306) (not e!564291))))

(assert (=> b!857365 (= res!391306 (dynLambda!4347 lambda!25699 (h!14643 l!5107)))))

(declare-fun b!857366 () Bool)

(assert (=> b!857366 (= e!564291 (forall!2193 (t!96714 l!5107) lambda!25699))))

(assert (= (and d!268373 (not res!391305)) b!857365))

(assert (= (and b!857365 res!391306) b!857366))

(declare-fun b_lambda!28865 () Bool)

(assert (=> (not b_lambda!28865) (not b!857365)))

(declare-fun m!1099669 () Bool)

(assert (=> b!857365 m!1099669))

(declare-fun m!1099671 () Bool)

(assert (=> b!857366 m!1099671))

(assert (=> d!268091 d!268373))

(assert (=> d!268091 d!268089))

(declare-fun d!268375 () Bool)

(declare-fun c!138976 () Bool)

(assert (=> d!268375 (= c!138976 ((_ is Node!3063) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))))))

(declare-fun e!564292 () Bool)

(assert (=> d!268375 (= (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))) e!564292)))

(declare-fun b!857367 () Bool)

(assert (=> b!857367 (= e!564292 (inv!11765 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))))))

(declare-fun b!857368 () Bool)

(declare-fun e!564293 () Bool)

(assert (=> b!857368 (= e!564292 e!564293)))

(declare-fun res!391307 () Bool)

(assert (=> b!857368 (= res!391307 (not ((_ is Leaf!4518) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))))))))

(assert (=> b!857368 (=> res!391307 e!564293)))

(declare-fun b!857369 () Bool)

(assert (=> b!857369 (= e!564293 (inv!11766 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))))))

(assert (= (and d!268375 c!138976) b!857367))

(assert (= (and d!268375 (not c!138976)) b!857368))

(assert (= (and b!857368 (not res!391307)) b!857369))

(declare-fun m!1099679 () Bool)

(assert (=> b!857367 m!1099679))

(declare-fun m!1099681 () Bool)

(assert (=> b!857369 m!1099681))

(assert (=> b!856640 d!268375))

(declare-fun b!857372 () Bool)

(declare-fun res!391308 () Bool)

(declare-fun e!564295 () Bool)

(assert (=> b!857372 (=> (not res!391308) (not e!564295))))

(declare-fun lt!324290 () List!9257)

(assert (=> b!857372 (= res!391308 (= (size!7718 lt!324290) (+ (size!7718 (list!3644 (charsOf!1001 (h!14643 lt!324052)))) (size!7718 (printList!484 thiss!20117 (t!96714 lt!324052))))))))

(declare-fun b!857370 () Bool)

(declare-fun e!564294 () List!9257)

(assert (=> b!857370 (= e!564294 (printList!484 thiss!20117 (t!96714 lt!324052)))))

(declare-fun b!857371 () Bool)

(assert (=> b!857371 (= e!564294 (Cons!9241 (h!14642 (list!3644 (charsOf!1001 (h!14643 lt!324052)))) (++!2394 (t!96713 (list!3644 (charsOf!1001 (h!14643 lt!324052)))) (printList!484 thiss!20117 (t!96714 lt!324052)))))))

(declare-fun b!857373 () Bool)

(assert (=> b!857373 (= e!564295 (or (not (= (printList!484 thiss!20117 (t!96714 lt!324052)) Nil!9241)) (= lt!324290 (list!3644 (charsOf!1001 (h!14643 lt!324052))))))))

(declare-fun d!268379 () Bool)

(assert (=> d!268379 e!564295))

(declare-fun res!391309 () Bool)

(assert (=> d!268379 (=> (not res!391309) (not e!564295))))

(assert (=> d!268379 (= res!391309 (= (content!1353 lt!324290) ((_ map or) (content!1353 (list!3644 (charsOf!1001 (h!14643 lt!324052)))) (content!1353 (printList!484 thiss!20117 (t!96714 lt!324052))))))))

(assert (=> d!268379 (= lt!324290 e!564294)))

(declare-fun c!138977 () Bool)

(assert (=> d!268379 (= c!138977 ((_ is Nil!9241) (list!3644 (charsOf!1001 (h!14643 lt!324052)))))))

(assert (=> d!268379 (= (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324052))) (printList!484 thiss!20117 (t!96714 lt!324052))) lt!324290)))

(assert (= (and d!268379 c!138977) b!857370))

(assert (= (and d!268379 (not c!138977)) b!857371))

(assert (= (and d!268379 res!391309) b!857372))

(assert (= (and b!857372 res!391308) b!857373))

(declare-fun m!1099683 () Bool)

(assert (=> b!857372 m!1099683))

(assert (=> b!857372 m!1098715))

(declare-fun m!1099685 () Bool)

(assert (=> b!857372 m!1099685))

(assert (=> b!857372 m!1098717))

(declare-fun m!1099687 () Bool)

(assert (=> b!857372 m!1099687))

(assert (=> b!857371 m!1098717))

(declare-fun m!1099689 () Bool)

(assert (=> b!857371 m!1099689))

(declare-fun m!1099691 () Bool)

(assert (=> d!268379 m!1099691))

(assert (=> d!268379 m!1098715))

(declare-fun m!1099693 () Bool)

(assert (=> d!268379 m!1099693))

(assert (=> d!268379 m!1098717))

(declare-fun m!1099695 () Bool)

(assert (=> d!268379 m!1099695))

(assert (=> b!856975 d!268379))

(declare-fun d!268381 () Bool)

(assert (=> d!268381 (= (list!3644 (charsOf!1001 (h!14643 lt!324052))) (list!3647 (c!138856 (charsOf!1001 (h!14643 lt!324052)))))))

(declare-fun bs!231983 () Bool)

(assert (= bs!231983 d!268381))

(declare-fun m!1099697 () Bool)

(assert (=> bs!231983 m!1099697))

(assert (=> b!856975 d!268381))

(declare-fun d!268383 () Bool)

(declare-fun lt!324291 () BalanceConc!6140)

(assert (=> d!268383 (= (list!3644 lt!324291) (originalCharacters!2290 (h!14643 lt!324052)))))

(assert (=> d!268383 (= lt!324291 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052)))) (value!56118 (h!14643 lt!324052))))))

(assert (=> d!268383 (= (charsOf!1001 (h!14643 lt!324052)) lt!324291)))

(declare-fun b_lambda!28867 () Bool)

(assert (=> (not b_lambda!28867) (not d!268383)))

(declare-fun t!96871 () Bool)

(declare-fun tb!60897 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052))))) t!96871) tb!60897))

(declare-fun b!857374 () Bool)

(declare-fun e!564296 () Bool)

(declare-fun tp!270359 () Bool)

(assert (=> b!857374 (= e!564296 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052)))) (value!56118 (h!14643 lt!324052))))) tp!270359))))

(declare-fun result!70498 () Bool)

(assert (=> tb!60897 (= result!70498 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052)))) (value!56118 (h!14643 lt!324052)))) e!564296))))

(assert (= tb!60897 b!857374))

(declare-fun m!1099699 () Bool)

(assert (=> b!857374 m!1099699))

(declare-fun m!1099701 () Bool)

(assert (=> tb!60897 m!1099701))

(assert (=> d!268383 t!96871))

(declare-fun b_and!75947 () Bool)

(assert (= b_and!75939 (and (=> t!96871 result!70498) b_and!75947)))

(declare-fun t!96873 () Bool)

(declare-fun tb!60899 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052))))) t!96873) tb!60899))

(declare-fun result!70500 () Bool)

(assert (= result!70500 result!70498))

(assert (=> d!268383 t!96873))

(declare-fun b_and!75949 () Bool)

(assert (= b_and!75941 (and (=> t!96873 result!70500) b_and!75949)))

(declare-fun tb!60901 () Bool)

(declare-fun t!96875 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052))))) t!96875) tb!60901))

(declare-fun result!70502 () Bool)

(assert (= result!70502 result!70498))

(assert (=> d!268383 t!96875))

(declare-fun b_and!75951 () Bool)

(assert (= b_and!75943 (and (=> t!96875 result!70502) b_and!75951)))

(declare-fun tb!60903 () Bool)

(declare-fun t!96877 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052))))) t!96877) tb!60903))

(declare-fun result!70504 () Bool)

(assert (= result!70504 result!70498))

(assert (=> d!268383 t!96877))

(declare-fun b_and!75953 () Bool)

(assert (= b_and!75937 (and (=> t!96877 result!70504) b_and!75953)))

(declare-fun tb!60905 () Bool)

(declare-fun t!96879 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052))))) t!96879) tb!60905))

(declare-fun result!70506 () Bool)

(assert (= result!70506 result!70498))

(assert (=> d!268383 t!96879))

(declare-fun b_and!75955 () Bool)

(assert (= b_and!75945 (and (=> t!96879 result!70506) b_and!75955)))

(declare-fun m!1099703 () Bool)

(assert (=> d!268383 m!1099703))

(declare-fun m!1099705 () Bool)

(assert (=> d!268383 m!1099705))

(assert (=> b!856975 d!268383))

(declare-fun d!268385 () Bool)

(declare-fun c!138978 () Bool)

(assert (=> d!268385 (= c!138978 ((_ is Cons!9242) (t!96714 lt!324052)))))

(declare-fun e!564297 () List!9257)

(assert (=> d!268385 (= (printList!484 thiss!20117 (t!96714 lt!324052)) e!564297)))

(declare-fun b!857375 () Bool)

(assert (=> b!857375 (= e!564297 (++!2394 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!324052)))) (printList!484 thiss!20117 (t!96714 (t!96714 lt!324052)))))))

(declare-fun b!857376 () Bool)

(assert (=> b!857376 (= e!564297 Nil!9241)))

(assert (= (and d!268385 c!138978) b!857375))

(assert (= (and d!268385 (not c!138978)) b!857376))

(declare-fun m!1099707 () Bool)

(assert (=> b!857375 m!1099707))

(assert (=> b!857375 m!1099707))

(declare-fun m!1099709 () Bool)

(assert (=> b!857375 m!1099709))

(declare-fun m!1099711 () Bool)

(assert (=> b!857375 m!1099711))

(assert (=> b!857375 m!1099709))

(assert (=> b!857375 m!1099711))

(declare-fun m!1099713 () Bool)

(assert (=> b!857375 m!1099713))

(assert (=> b!856975 d!268385))

(declare-fun bs!231984 () Bool)

(declare-fun d!268387 () Bool)

(assert (= bs!231984 (and d!268387 d!268277)))

(declare-fun lambda!25722 () Int)

(assert (=> bs!231984 (= lambda!25722 lambda!25711)))

(declare-fun bs!231985 () Bool)

(assert (= bs!231985 (and d!268387 d!268213)))

(assert (=> bs!231985 (= lambda!25722 lambda!25704)))

(declare-fun bs!231986 () Bool)

(assert (= bs!231986 (and d!268387 d!268091)))

(assert (=> bs!231986 (= lambda!25722 lambda!25699)))

(declare-fun bs!231987 () Bool)

(assert (= bs!231987 (and d!268387 d!268317)))

(assert (=> bs!231987 (= lambda!25722 lambda!25715)))

(declare-fun bs!231988 () Bool)

(assert (= bs!231988 (and d!268387 d!268357)))

(assert (=> bs!231988 (= lambda!25722 lambda!25721)))

(declare-fun bs!231989 () Bool)

(assert (= bs!231989 (and d!268387 b!856620)))

(assert (=> bs!231989 (not (= lambda!25722 lambda!25690))))

(declare-fun bs!231990 () Bool)

(assert (= bs!231990 (and d!268387 d!268093)))

(assert (=> bs!231990 (= lambda!25722 lambda!25700)))

(declare-fun bs!231991 () Bool)

(assert (= bs!231991 (and d!268387 d!268037)))

(assert (=> bs!231991 (= lambda!25722 lambda!25693)))

(declare-fun b!857383 () Bool)

(declare-fun e!564304 () Bool)

(assert (=> b!857383 (= e!564304 true)))

(declare-fun b!857382 () Bool)

(declare-fun e!564303 () Bool)

(assert (=> b!857382 (= e!564303 e!564304)))

(declare-fun b!857381 () Bool)

(declare-fun e!564302 () Bool)

(assert (=> b!857381 (= e!564302 e!564303)))

(assert (=> d!268387 e!564302))

(assert (= b!857382 b!857383))

(assert (= b!857381 b!857382))

(assert (= (and d!268387 ((_ is Cons!9243) rules!2621)) b!857381))

(assert (=> b!857383 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25722))))

(assert (=> b!857383 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25722))))

(assert (=> d!268387 true))

(declare-fun lt!324294 () Bool)

(assert (=> d!268387 (= lt!324294 (forall!2193 (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297) lambda!25722))))

(declare-fun e!564301 () Bool)

(assert (=> d!268387 (= lt!324294 e!564301)))

(declare-fun res!391313 () Bool)

(assert (=> d!268387 (=> res!391313 e!564301)))

(assert (=> d!268387 (= res!391313 (not ((_ is Cons!9242) (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!268387 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268387 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297)) lt!324294)))

(declare-fun b!857379 () Bool)

(declare-fun e!564300 () Bool)

(assert (=> b!857379 (= e!564301 e!564300)))

(declare-fun res!391312 () Bool)

(assert (=> b!857379 (=> (not res!391312) (not e!564300))))

(assert (=> b!857379 (= res!391312 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!857380 () Bool)

(assert (=> b!857380 (= e!564300 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!268387 (not res!391313)) b!857379))

(assert (= (and b!857379 res!391312) b!857380))

(assert (=> d!268387 m!1098233))

(declare-fun m!1099721 () Bool)

(assert (=> d!268387 m!1099721))

(assert (=> d!268387 m!1098239))

(declare-fun m!1099723 () Bool)

(assert (=> b!857379 m!1099723))

(declare-fun m!1099727 () Bool)

(assert (=> b!857380 m!1099727))

(assert (=> d!268115 d!268387))

(assert (=> d!268115 d!268095))

(declare-fun d!268391 () Bool)

(assert (=> d!268391 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!268391 true))

(declare-fun _$32!357 () Unit!13737)

(assert (=> d!268391 (= (choose!5052 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!357)))

(declare-fun bs!231995 () Bool)

(assert (= bs!231995 d!268391))

(assert (=> bs!231995 m!1098233))

(assert (=> bs!231995 m!1098233))

(assert (=> bs!231995 m!1098671))

(assert (=> d!268115 d!268391))

(assert (=> d!268115 d!268089))

(declare-fun bm!50529 () Bool)

(declare-fun call!50534 () Bool)

(assert (=> bm!50529 (= call!50534 (ruleDisjointCharsFromAllFromOtherType!247 (h!14644 rules!2621) (t!96715 rules!2621)))))

(declare-fun d!268415 () Bool)

(declare-fun c!138986 () Bool)

(assert (=> d!268415 (= c!138986 (and ((_ is Cons!9243) rules!2621) (not (= (isSeparator!1734 (h!14644 rules!2621)) (isSeparator!1734 (h!14644 rules!2621))))))))

(declare-fun e!564323 () Bool)

(assert (=> d!268415 (= (ruleDisjointCharsFromAllFromOtherType!247 (h!14644 rules!2621) rules!2621) e!564323)))

(declare-fun b!857413 () Bool)

(declare-fun e!564324 () Bool)

(assert (=> b!857413 (= e!564324 call!50534)))

(declare-fun b!857414 () Bool)

(declare-fun e!564325 () Bool)

(assert (=> b!857414 (= e!564325 call!50534)))

(declare-fun b!857415 () Bool)

(assert (=> b!857415 (= e!564323 e!564324)))

(declare-fun res!391327 () Bool)

(declare-fun rulesUseDisjointChars!127 (Rule!3268 Rule!3268) Bool)

(assert (=> b!857415 (= res!391327 (rulesUseDisjointChars!127 (h!14644 rules!2621) (h!14644 rules!2621)))))

(assert (=> b!857415 (=> (not res!391327) (not e!564324))))

(declare-fun b!857416 () Bool)

(assert (=> b!857416 (= e!564323 e!564325)))

(declare-fun res!391328 () Bool)

(assert (=> b!857416 (= res!391328 (not ((_ is Cons!9243) rules!2621)))))

(assert (=> b!857416 (=> res!391328 e!564325)))

(assert (= (and d!268415 c!138986) b!857415))

(assert (= (and d!268415 (not c!138986)) b!857416))

(assert (= (and b!857415 res!391327) b!857413))

(assert (= (and b!857416 (not res!391328)) b!857414))

(assert (= (or b!857413 b!857414) bm!50529))

(declare-fun m!1099803 () Bool)

(assert (=> bm!50529 m!1099803))

(declare-fun m!1099805 () Bool)

(assert (=> b!857415 m!1099805))

(assert (=> b!856984 d!268415))

(declare-fun bs!231997 () Bool)

(declare-fun d!268417 () Bool)

(assert (= bs!231997 (and d!268417 d!268277)))

(declare-fun lambda!25723 () Int)

(assert (=> bs!231997 (= lambda!25723 lambda!25711)))

(declare-fun bs!231998 () Bool)

(assert (= bs!231998 (and d!268417 d!268213)))

(assert (=> bs!231998 (= lambda!25723 lambda!25704)))

(declare-fun bs!231999 () Bool)

(assert (= bs!231999 (and d!268417 d!268091)))

(assert (=> bs!231999 (= lambda!25723 lambda!25699)))

(declare-fun bs!232000 () Bool)

(assert (= bs!232000 (and d!268417 d!268317)))

(assert (=> bs!232000 (= lambda!25723 lambda!25715)))

(declare-fun bs!232001 () Bool)

(assert (= bs!232001 (and d!268417 d!268357)))

(assert (=> bs!232001 (= lambda!25723 lambda!25721)))

(declare-fun bs!232002 () Bool)

(assert (= bs!232002 (and d!268417 b!856620)))

(assert (=> bs!232002 (not (= lambda!25723 lambda!25690))))

(declare-fun bs!232003 () Bool)

(assert (= bs!232003 (and d!268417 d!268093)))

(assert (=> bs!232003 (= lambda!25723 lambda!25700)))

(declare-fun bs!232004 () Bool)

(assert (= bs!232004 (and d!268417 d!268387)))

(assert (=> bs!232004 (= lambda!25723 lambda!25722)))

(declare-fun bs!232005 () Bool)

(assert (= bs!232005 (and d!268417 d!268037)))

(assert (=> bs!232005 (= lambda!25723 lambda!25693)))

(declare-fun b!857421 () Bool)

(declare-fun e!564330 () Bool)

(assert (=> b!857421 (= e!564330 true)))

(declare-fun b!857420 () Bool)

(declare-fun e!564329 () Bool)

(assert (=> b!857420 (= e!564329 e!564330)))

(declare-fun b!857419 () Bool)

(declare-fun e!564328 () Bool)

(assert (=> b!857419 (= e!564328 e!564329)))

(assert (=> d!268417 e!564328))

(assert (= b!857420 b!857421))

(assert (= b!857419 b!857420))

(assert (= (and d!268417 ((_ is Cons!9243) rules!2621)) b!857419))

(assert (=> b!857421 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25723))))

(assert (=> b!857421 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4350 order!5979 lambda!25723))))

(assert (=> d!268417 true))

(declare-fun lt!324309 () Bool)

(assert (=> d!268417 (= lt!324309 (forall!2193 (t!96714 lt!323881) lambda!25723))))

(declare-fun e!564327 () Bool)

(assert (=> d!268417 (= lt!324309 e!564327)))

(declare-fun res!391330 () Bool)

(assert (=> d!268417 (=> res!391330 e!564327)))

(assert (=> d!268417 (= res!391330 (not ((_ is Cons!9242) (t!96714 lt!323881))))))

(assert (=> d!268417 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268417 (= (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 lt!323881)) lt!324309)))

(declare-fun b!857417 () Bool)

(declare-fun e!564326 () Bool)

(assert (=> b!857417 (= e!564327 e!564326)))

(declare-fun res!391329 () Bool)

(assert (=> b!857417 (=> (not res!391329) (not e!564326))))

(assert (=> b!857417 (= res!391329 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323881))))))

(declare-fun b!857418 () Bool)

(assert (=> b!857418 (= e!564326 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (t!96714 (t!96714 lt!323881))))))

(assert (= (and d!268417 (not res!391330)) b!857417))

(assert (= (and b!857417 res!391329) b!857418))

(declare-fun m!1099827 () Bool)

(assert (=> d!268417 m!1099827))

(assert (=> d!268417 m!1098239))

(assert (=> b!857417 m!1098393))

(declare-fun m!1099829 () Bool)

(assert (=> b!857418 m!1099829))

(assert (=> b!856856 d!268417))

(declare-fun d!268423 () Bool)

(declare-fun c!138987 () Bool)

(assert (=> d!268423 (= c!138987 ((_ is Cons!9242) ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107))))))

(declare-fun e!564333 () List!9257)

(assert (=> d!268423 (= (printList!484 thiss!20117 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107))) e!564333)))

(declare-fun b!857425 () Bool)

(assert (=> b!857425 (= e!564333 (++!2394 (list!3644 (charsOf!1001 (h!14643 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107))))) (printList!484 thiss!20117 (t!96714 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107))))))))

(declare-fun b!857426 () Bool)

(assert (=> b!857426 (= e!564333 Nil!9241)))

(assert (= (and d!268423 c!138987) b!857425))

(assert (= (and d!268423 (not c!138987)) b!857426))

(declare-fun m!1099831 () Bool)

(assert (=> b!857425 m!1099831))

(assert (=> b!857425 m!1099831))

(declare-fun m!1099833 () Bool)

(assert (=> b!857425 m!1099833))

(declare-fun m!1099835 () Bool)

(assert (=> b!857425 m!1099835))

(assert (=> b!857425 m!1099833))

(assert (=> b!857425 m!1099835))

(declare-fun m!1099837 () Bool)

(assert (=> b!857425 m!1099837))

(assert (=> b!856962 d!268423))

(declare-fun d!268425 () Bool)

(assert (=> d!268425 (= ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297) (h!14643 l!5107)) (Cons!9242 (h!14643 l!5107) ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!856962 d!268425))

(assert (=> b!856962 d!268225))

(assert (=> b!856962 d!268227))

(declare-fun d!268427 () Bool)

(declare-fun lt!324312 () Bool)

(assert (=> d!268427 (= lt!324312 (isEmpty!5483 (list!3644 (_2!6035 lt!323999))))))

(assert (=> d!268427 (= lt!324312 (isEmpty!5486 (c!138856 (_2!6035 lt!323999))))))

(assert (=> d!268427 (= (isEmpty!5484 (_2!6035 lt!323999)) lt!324312)))

(declare-fun bs!232006 () Bool)

(assert (= bs!232006 d!268427))

(declare-fun m!1099839 () Bool)

(assert (=> bs!232006 m!1099839))

(assert (=> bs!232006 m!1099839))

(declare-fun m!1099841 () Bool)

(assert (=> bs!232006 m!1099841))

(declare-fun m!1099843 () Bool)

(assert (=> bs!232006 m!1099843))

(assert (=> b!856832 d!268427))

(declare-fun d!268429 () Bool)

(assert (=> d!268429 (= (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))) (isBalanced!850 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))))))

(declare-fun bs!232007 () Bool)

(assert (= bs!232007 d!268429))

(declare-fun m!1099845 () Bool)

(assert (=> bs!232007 m!1099845))

(assert (=> tb!60783 d!268429))

(declare-fun d!268431 () Bool)

(assert (=> d!268431 (= (inv!11756 (tag!1996 (rule!3157 (h!14643 (t!96714 l!5107))))) (= (mod (str.len (value!56117 (tag!1996 (rule!3157 (h!14643 (t!96714 l!5107)))))) 2) 0))))

(assert (=> b!857040 d!268431))

(declare-fun d!268433 () Bool)

(declare-fun res!391334 () Bool)

(declare-fun e!564334 () Bool)

(assert (=> d!268433 (=> (not res!391334) (not e!564334))))

(assert (=> d!268433 (= res!391334 (semiInverseModEq!680 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))))))

(assert (=> d!268433 (= (inv!11759 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) e!564334)))

(declare-fun b!857427 () Bool)

(assert (=> b!857427 (= e!564334 (equivClasses!647 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))))))

(assert (= (and d!268433 res!391334) b!857427))

(declare-fun m!1099847 () Bool)

(assert (=> d!268433 m!1099847))

(declare-fun m!1099849 () Bool)

(assert (=> b!857427 m!1099849))

(assert (=> b!857040 d!268433))

(declare-fun d!268435 () Bool)

(assert (=> d!268435 true))

(declare-fun lambda!25726 () Int)

(declare-fun order!5993 () Int)

(declare-fun dynLambda!4354 (Int Int) Int)

(assert (=> d!268435 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))) (dynLambda!4354 order!5993 lambda!25726))))

(declare-fun Forall2!330 (Int) Bool)

(assert (=> d!268435 (= (equivClasses!647 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))) (Forall2!330 lambda!25726))))

(declare-fun bs!232012 () Bool)

(assert (= bs!232012 d!268435))

(declare-fun m!1099893 () Bool)

(assert (=> bs!232012 m!1099893))

(assert (=> b!856843 d!268435))

(declare-fun bs!232013 () Bool)

(declare-fun d!268449 () Bool)

(assert (= bs!232013 (and d!268449 d!268435)))

(declare-fun lambda!25727 () Int)

(assert (=> bs!232013 (= (= (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))) (= lambda!25727 lambda!25726))))

(assert (=> d!268449 true))

(assert (=> d!268449 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (dynLambda!4354 order!5993 lambda!25727))))

(assert (=> d!268449 (= (equivClasses!647 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (Forall2!330 lambda!25727))))

(declare-fun bs!232014 () Bool)

(assert (= bs!232014 d!268449))

(declare-fun m!1099895 () Bool)

(assert (=> bs!232014 m!1099895))

(assert (=> b!856989 d!268449))

(declare-fun d!268451 () Bool)

(declare-fun lt!324319 () Bool)

(declare-fun e!564341 () Bool)

(assert (=> d!268451 (= lt!324319 e!564341)))

(declare-fun res!391343 () Bool)

(assert (=> d!268451 (=> (not res!391343) (not e!564341))))

(assert (=> d!268451 (= res!391343 (= (list!3645 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 l!5107)))))) (list!3645 (singletonSeq!552 (h!14643 l!5107)))))))

(declare-fun e!564342 () Bool)

(assert (=> d!268451 (= lt!324319 e!564342)))

(declare-fun res!391342 () Bool)

(assert (=> d!268451 (=> (not res!391342) (not e!564342))))

(declare-fun lt!324320 () tuple2!10418)

(assert (=> d!268451 (= res!391342 (= (size!7720 (_1!6035 lt!324320)) 1))))

(assert (=> d!268451 (= lt!324320 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 l!5107)))))))

(assert (=> d!268451 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268451 (= (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 l!5107)) lt!324319)))

(declare-fun b!857438 () Bool)

(declare-fun res!391341 () Bool)

(assert (=> b!857438 (=> (not res!391341) (not e!564342))))

(assert (=> b!857438 (= res!391341 (= (apply!1922 (_1!6035 lt!324320) 0) (h!14643 l!5107)))))

(declare-fun b!857439 () Bool)

(assert (=> b!857439 (= e!564342 (isEmpty!5484 (_2!6035 lt!324320)))))

(declare-fun b!857440 () Bool)

(assert (=> b!857440 (= e!564341 (isEmpty!5484 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 l!5107)))))))))

(assert (= (and d!268451 res!391342) b!857438))

(assert (= (and b!857438 res!391341) b!857439))

(assert (= (and d!268451 res!391343) b!857440))

(declare-fun m!1099897 () Bool)

(assert (=> d!268451 m!1099897))

(declare-fun m!1099899 () Bool)

(assert (=> d!268451 m!1099899))

(declare-fun m!1099901 () Bool)

(assert (=> d!268451 m!1099901))

(assert (=> d!268451 m!1098239))

(declare-fun m!1099903 () Bool)

(assert (=> d!268451 m!1099903))

(declare-fun m!1099905 () Bool)

(assert (=> d!268451 m!1099905))

(declare-fun m!1099907 () Bool)

(assert (=> d!268451 m!1099907))

(assert (=> d!268451 m!1099899))

(assert (=> d!268451 m!1099903))

(assert (=> d!268451 m!1099899))

(declare-fun m!1099909 () Bool)

(assert (=> b!857438 m!1099909))

(declare-fun m!1099911 () Bool)

(assert (=> b!857439 m!1099911))

(assert (=> b!857440 m!1099899))

(assert (=> b!857440 m!1099899))

(assert (=> b!857440 m!1099903))

(assert (=> b!857440 m!1099903))

(assert (=> b!857440 m!1099905))

(declare-fun m!1099913 () Bool)

(assert (=> b!857440 m!1099913))

(assert (=> b!856850 d!268451))

(declare-fun b!857451 () Bool)

(declare-fun res!391348 () Bool)

(declare-fun e!564350 () Bool)

(assert (=> b!857451 (=> (not res!391348) (not e!564350))))

(declare-fun lt!324321 () List!9257)

(assert (=> b!857451 (= res!391348 (= (size!7718 lt!324321) (+ (size!7718 lt!324039) (size!7718 lt!324040))))))

(declare-fun b!857449 () Bool)

(declare-fun e!564349 () List!9257)

(assert (=> b!857449 (= e!564349 lt!324040)))

(declare-fun b!857450 () Bool)

(assert (=> b!857450 (= e!564349 (Cons!9241 (h!14642 lt!324039) (++!2394 (t!96713 lt!324039) lt!324040)))))

(declare-fun b!857452 () Bool)

(assert (=> b!857452 (= e!564350 (or (not (= lt!324040 Nil!9241)) (= lt!324321 lt!324039)))))

(declare-fun d!268453 () Bool)

(assert (=> d!268453 e!564350))

(declare-fun res!391349 () Bool)

(assert (=> d!268453 (=> (not res!391349) (not e!564350))))

(assert (=> d!268453 (= res!391349 (= (content!1353 lt!324321) ((_ map or) (content!1353 lt!324039) (content!1353 lt!324040))))))

(assert (=> d!268453 (= lt!324321 e!564349)))

(declare-fun c!138991 () Bool)

(assert (=> d!268453 (= c!138991 ((_ is Nil!9241) lt!324039))))

(assert (=> d!268453 (= (++!2394 lt!324039 lt!324040) lt!324321)))

(assert (= (and d!268453 c!138991) b!857449))

(assert (= (and d!268453 (not c!138991)) b!857450))

(assert (= (and d!268453 res!391349) b!857451))

(assert (= (and b!857451 res!391348) b!857452))

(declare-fun m!1099915 () Bool)

(assert (=> b!857451 m!1099915))

(declare-fun m!1099917 () Bool)

(assert (=> b!857451 m!1099917))

(declare-fun m!1099919 () Bool)

(assert (=> b!857451 m!1099919))

(declare-fun m!1099921 () Bool)

(assert (=> b!857450 m!1099921))

(declare-fun m!1099923 () Bool)

(assert (=> d!268453 m!1099923))

(declare-fun m!1099925 () Bool)

(assert (=> d!268453 m!1099925))

(declare-fun m!1099927 () Bool)

(assert (=> d!268453 m!1099927))

(assert (=> b!856966 d!268453))

(declare-fun d!268455 () Bool)

(declare-fun c!138992 () Bool)

(assert (=> d!268455 (= c!138992 ((_ is Cons!9242) (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297)))))

(declare-fun e!564351 () List!9257)

(assert (=> d!268455 (= (printList!484 thiss!20117 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297)) e!564351)))

(declare-fun b!857453 () Bool)

(assert (=> b!857453 (= e!564351 (++!2394 (list!3644 (charsOf!1001 (h!14643 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297)))) (printList!484 thiss!20117 (t!96714 (withSeparatorTokenList!66 thiss!20117 (t!96714 l!5107) separatorToken!297)))))))

(declare-fun b!857454 () Bool)

(assert (=> b!857454 (= e!564351 Nil!9241)))

(assert (= (and d!268455 c!138992) b!857453))

(assert (= (and d!268455 (not c!138992)) b!857454))

(declare-fun m!1099929 () Bool)

(assert (=> b!857453 m!1099929))

(assert (=> b!857453 m!1099929))

(declare-fun m!1099931 () Bool)

(assert (=> b!857453 m!1099931))

(declare-fun m!1099933 () Bool)

(assert (=> b!857453 m!1099933))

(assert (=> b!857453 m!1099931))

(assert (=> b!857453 m!1099933))

(declare-fun m!1099935 () Bool)

(assert (=> b!857453 m!1099935))

(assert (=> b!856966 d!268455))

(declare-fun d!268457 () Bool)

(assert (=> d!268457 (= (++!2394 (++!2394 lt!324041 lt!324039) lt!324040) (++!2394 lt!324041 (++!2394 lt!324039 lt!324040)))))

(declare-fun lt!324322 () Unit!13737)

(assert (=> d!268457 (= lt!324322 (choose!5053 lt!324041 lt!324039 lt!324040))))

(assert (=> d!268457 (= (lemmaConcatAssociativity!759 lt!324041 lt!324039 lt!324040) lt!324322)))

(declare-fun bs!232015 () Bool)

(assert (= bs!232015 d!268457))

(assert (=> bs!232015 m!1098621))

(assert (=> bs!232015 m!1098621))

(assert (=> bs!232015 m!1098645))

(declare-fun m!1099937 () Bool)

(assert (=> bs!232015 m!1099937))

(assert (=> bs!232015 m!1098639))

(assert (=> bs!232015 m!1098639))

(assert (=> bs!232015 m!1098641))

(assert (=> b!856966 d!268457))

(assert (=> b!856966 d!268167))

(declare-fun b!857457 () Bool)

(declare-fun res!391350 () Bool)

(declare-fun e!564353 () Bool)

(assert (=> b!857457 (=> (not res!391350) (not e!564353))))

(declare-fun lt!324323 () List!9257)

(assert (=> b!857457 (= res!391350 (= (size!7718 lt!324323) (+ (size!7718 lt!324041) (size!7718 (++!2394 lt!324039 lt!324040)))))))

(declare-fun b!857455 () Bool)

(declare-fun e!564352 () List!9257)

(assert (=> b!857455 (= e!564352 (++!2394 lt!324039 lt!324040))))

(declare-fun b!857456 () Bool)

(assert (=> b!857456 (= e!564352 (Cons!9241 (h!14642 lt!324041) (++!2394 (t!96713 lt!324041) (++!2394 lt!324039 lt!324040))))))

(declare-fun b!857458 () Bool)

(assert (=> b!857458 (= e!564353 (or (not (= (++!2394 lt!324039 lt!324040) Nil!9241)) (= lt!324323 lt!324041)))))

(declare-fun d!268459 () Bool)

(assert (=> d!268459 e!564353))

(declare-fun res!391351 () Bool)

(assert (=> d!268459 (=> (not res!391351) (not e!564353))))

(assert (=> d!268459 (= res!391351 (= (content!1353 lt!324323) ((_ map or) (content!1353 lt!324041) (content!1353 (++!2394 lt!324039 lt!324040)))))))

(assert (=> d!268459 (= lt!324323 e!564352)))

(declare-fun c!138993 () Bool)

(assert (=> d!268459 (= c!138993 ((_ is Nil!9241) lt!324041))))

(assert (=> d!268459 (= (++!2394 lt!324041 (++!2394 lt!324039 lt!324040)) lt!324323)))

(assert (= (and d!268459 c!138993) b!857455))

(assert (= (and d!268459 (not c!138993)) b!857456))

(assert (= (and d!268459 res!391351) b!857457))

(assert (= (and b!857457 res!391350) b!857458))

(declare-fun m!1099939 () Bool)

(assert (=> b!857457 m!1099939))

(declare-fun m!1099941 () Bool)

(assert (=> b!857457 m!1099941))

(assert (=> b!857457 m!1098621))

(declare-fun m!1099943 () Bool)

(assert (=> b!857457 m!1099943))

(assert (=> b!857456 m!1098621))

(declare-fun m!1099945 () Bool)

(assert (=> b!857456 m!1099945))

(declare-fun m!1099947 () Bool)

(assert (=> d!268459 m!1099947))

(declare-fun m!1099949 () Bool)

(assert (=> d!268459 m!1099949))

(assert (=> d!268459 m!1098621))

(declare-fun m!1099951 () Bool)

(assert (=> d!268459 m!1099951))

(assert (=> b!856966 d!268459))

(assert (=> b!856966 d!268181))

(declare-fun d!268461 () Bool)

(assert (=> d!268461 (= (list!3644 (charsOf!1001 (h!14643 l!5107))) (list!3647 (c!138856 (charsOf!1001 (h!14643 l!5107)))))))

(declare-fun bs!232016 () Bool)

(assert (= bs!232016 d!268461))

(declare-fun m!1099957 () Bool)

(assert (=> bs!232016 m!1099957))

(assert (=> b!856966 d!268461))

(declare-fun b!857465 () Bool)

(declare-fun res!391354 () Bool)

(declare-fun e!564358 () Bool)

(assert (=> b!857465 (=> (not res!391354) (not e!564358))))

(declare-fun lt!324324 () List!9257)

(assert (=> b!857465 (= res!391354 (= (size!7718 lt!324324) (+ (size!7718 (++!2394 lt!324041 lt!324039)) (size!7718 lt!324040))))))

(declare-fun b!857463 () Bool)

(declare-fun e!564357 () List!9257)

(assert (=> b!857463 (= e!564357 lt!324040)))

(declare-fun b!857464 () Bool)

(assert (=> b!857464 (= e!564357 (Cons!9241 (h!14642 (++!2394 lt!324041 lt!324039)) (++!2394 (t!96713 (++!2394 lt!324041 lt!324039)) lt!324040)))))

(declare-fun b!857466 () Bool)

(assert (=> b!857466 (= e!564358 (or (not (= lt!324040 Nil!9241)) (= lt!324324 (++!2394 lt!324041 lt!324039))))))

(declare-fun d!268465 () Bool)

(assert (=> d!268465 e!564358))

(declare-fun res!391355 () Bool)

(assert (=> d!268465 (=> (not res!391355) (not e!564358))))

(assert (=> d!268465 (= res!391355 (= (content!1353 lt!324324) ((_ map or) (content!1353 (++!2394 lt!324041 lt!324039)) (content!1353 lt!324040))))))

(assert (=> d!268465 (= lt!324324 e!564357)))

(declare-fun c!138995 () Bool)

(assert (=> d!268465 (= c!138995 ((_ is Nil!9241) (++!2394 lt!324041 lt!324039)))))

(assert (=> d!268465 (= (++!2394 (++!2394 lt!324041 lt!324039) lt!324040) lt!324324)))

(assert (= (and d!268465 c!138995) b!857463))

(assert (= (and d!268465 (not c!138995)) b!857464))

(assert (= (and d!268465 res!391355) b!857465))

(assert (= (and b!857465 res!391354) b!857466))

(declare-fun m!1099959 () Bool)

(assert (=> b!857465 m!1099959))

(assert (=> b!857465 m!1098639))

(declare-fun m!1099961 () Bool)

(assert (=> b!857465 m!1099961))

(assert (=> b!857465 m!1099919))

(declare-fun m!1099963 () Bool)

(assert (=> b!857464 m!1099963))

(declare-fun m!1099965 () Bool)

(assert (=> d!268465 m!1099965))

(assert (=> d!268465 m!1098639))

(declare-fun m!1099967 () Bool)

(assert (=> d!268465 m!1099967))

(assert (=> d!268465 m!1099927))

(assert (=> b!856966 d!268465))

(declare-fun b!857469 () Bool)

(declare-fun res!391356 () Bool)

(declare-fun e!564360 () Bool)

(assert (=> b!857469 (=> (not res!391356) (not e!564360))))

(declare-fun lt!324325 () List!9257)

(assert (=> b!857469 (= res!391356 (= (size!7718 lt!324325) (+ (size!7718 lt!324041) (size!7718 lt!324039))))))

(declare-fun b!857467 () Bool)

(declare-fun e!564359 () List!9257)

(assert (=> b!857467 (= e!564359 lt!324039)))

(declare-fun b!857468 () Bool)

(assert (=> b!857468 (= e!564359 (Cons!9241 (h!14642 lt!324041) (++!2394 (t!96713 lt!324041) lt!324039)))))

(declare-fun b!857470 () Bool)

(assert (=> b!857470 (= e!564360 (or (not (= lt!324039 Nil!9241)) (= lt!324325 lt!324041)))))

(declare-fun d!268467 () Bool)

(assert (=> d!268467 e!564360))

(declare-fun res!391357 () Bool)

(assert (=> d!268467 (=> (not res!391357) (not e!564360))))

(assert (=> d!268467 (= res!391357 (= (content!1353 lt!324325) ((_ map or) (content!1353 lt!324041) (content!1353 lt!324039))))))

(assert (=> d!268467 (= lt!324325 e!564359)))

(declare-fun c!138996 () Bool)

(assert (=> d!268467 (= c!138996 ((_ is Nil!9241) lt!324041))))

(assert (=> d!268467 (= (++!2394 lt!324041 lt!324039) lt!324325)))

(assert (= (and d!268467 c!138996) b!857467))

(assert (= (and d!268467 (not c!138996)) b!857468))

(assert (= (and d!268467 res!391357) b!857469))

(assert (= (and b!857469 res!391356) b!857470))

(declare-fun m!1099969 () Bool)

(assert (=> b!857469 m!1099969))

(assert (=> b!857469 m!1099941))

(assert (=> b!857469 m!1099917))

(declare-fun m!1099971 () Bool)

(assert (=> b!857468 m!1099971))

(declare-fun m!1099973 () Bool)

(assert (=> d!268467 m!1099973))

(assert (=> d!268467 m!1099949))

(assert (=> d!268467 m!1099925))

(assert (=> b!856966 d!268467))

(assert (=> b!856966 d!268425))

(declare-fun d!268469 () Bool)

(declare-fun lt!324326 () BalanceConc!6140)

(assert (=> d!268469 (= (list!3644 lt!324326) (originalCharacters!2290 (h!14643 l!5107)))))

(assert (=> d!268469 (= lt!324326 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))))

(assert (=> d!268469 (= (charsOf!1001 (h!14643 l!5107)) lt!324326)))

(declare-fun b_lambda!28875 () Bool)

(assert (=> (not b_lambda!28875) (not d!268469)))

(assert (=> d!268469 t!96749))

(declare-fun b_and!75987 () Bool)

(assert (= b_and!75953 (and (=> t!96749 result!70376) b_and!75987)))

(assert (=> d!268469 t!96761))

(declare-fun b_and!75989 () Bool)

(assert (= b_and!75947 (and (=> t!96761 result!70396) b_and!75989)))

(assert (=> d!268469 t!96753))

(declare-fun b_and!75991 () Bool)

(assert (= b_and!75949 (and (=> t!96753 result!70380) b_and!75991)))

(assert (=> d!268469 t!96757))

(declare-fun b_and!75993 () Bool)

(assert (= b_and!75955 (and (=> t!96757 result!70388) b_and!75993)))

(assert (=> d!268469 t!96751))

(declare-fun b_and!75995 () Bool)

(assert (= b_and!75951 (and (=> t!96751 result!70378) b_and!75995)))

(declare-fun m!1099975 () Bool)

(assert (=> d!268469 m!1099975))

(assert (=> d!268469 m!1098735))

(assert (=> b!856966 d!268469))

(assert (=> b!856966 d!268225))

(assert (=> b!856966 d!268227))

(assert (=> d!268043 d!268357))

(assert (=> d!268043 d!268117))

(declare-fun d!268471 () Bool)

(assert (=> d!268471 (rulesProduceEachTokenIndividuallyList!424 thiss!20117 rules!2621 (withSeparatorTokenList!66 thiss!20117 lt!323880 separatorToken!297))))

(assert (=> d!268471 true))

(declare-fun _$32!358 () Unit!13737)

(assert (=> d!268471 (= (choose!5052 thiss!20117 rules!2621 lt!323880 separatorToken!297) _$32!358)))

(declare-fun bs!232017 () Bool)

(assert (= bs!232017 d!268471))

(assert (=> bs!232017 m!1098217))

(assert (=> bs!232017 m!1098217))

(assert (=> bs!232017 m!1098301))

(assert (=> d!268043 d!268471))

(assert (=> d!268043 d!268089))

(declare-fun b!857477 () Bool)

(declare-fun res!391362 () Bool)

(declare-fun e!564366 () Bool)

(assert (=> b!857477 (=> (not res!391362) (not e!564366))))

(declare-fun lt!324327 () List!9257)

(assert (=> b!857477 (= res!391362 (= (size!7718 lt!324327) (+ (size!7718 (list!3644 (charsOf!1001 (h!14643 lt!324046)))) (size!7718 (printList!484 thiss!20117 (t!96714 lt!324046))))))))

(declare-fun b!857475 () Bool)

(declare-fun e!564365 () List!9257)

(assert (=> b!857475 (= e!564365 (printList!484 thiss!20117 (t!96714 lt!324046)))))

(declare-fun b!857476 () Bool)

(assert (=> b!857476 (= e!564365 (Cons!9241 (h!14642 (list!3644 (charsOf!1001 (h!14643 lt!324046)))) (++!2394 (t!96713 (list!3644 (charsOf!1001 (h!14643 lt!324046)))) (printList!484 thiss!20117 (t!96714 lt!324046)))))))

(declare-fun b!857478 () Bool)

(assert (=> b!857478 (= e!564366 (or (not (= (printList!484 thiss!20117 (t!96714 lt!324046)) Nil!9241)) (= lt!324327 (list!3644 (charsOf!1001 (h!14643 lt!324046))))))))

(declare-fun d!268473 () Bool)

(assert (=> d!268473 e!564366))

(declare-fun res!391363 () Bool)

(assert (=> d!268473 (=> (not res!391363) (not e!564366))))

(assert (=> d!268473 (= res!391363 (= (content!1353 lt!324327) ((_ map or) (content!1353 (list!3644 (charsOf!1001 (h!14643 lt!324046)))) (content!1353 (printList!484 thiss!20117 (t!96714 lt!324046))))))))

(assert (=> d!268473 (= lt!324327 e!564365)))

(declare-fun c!138997 () Bool)

(assert (=> d!268473 (= c!138997 ((_ is Nil!9241) (list!3644 (charsOf!1001 (h!14643 lt!324046)))))))

(assert (=> d!268473 (= (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324046))) (printList!484 thiss!20117 (t!96714 lt!324046))) lt!324327)))

(assert (= (and d!268473 c!138997) b!857475))

(assert (= (and d!268473 (not c!138997)) b!857476))

(assert (= (and d!268473 res!391363) b!857477))

(assert (= (and b!857477 res!391362) b!857478))

(declare-fun m!1099977 () Bool)

(assert (=> b!857477 m!1099977))

(assert (=> b!857477 m!1098657))

(declare-fun m!1099979 () Bool)

(assert (=> b!857477 m!1099979))

(assert (=> b!857477 m!1098659))

(declare-fun m!1099981 () Bool)

(assert (=> b!857477 m!1099981))

(assert (=> b!857476 m!1098659))

(declare-fun m!1099983 () Bool)

(assert (=> b!857476 m!1099983))

(declare-fun m!1099985 () Bool)

(assert (=> d!268473 m!1099985))

(assert (=> d!268473 m!1098657))

(declare-fun m!1099987 () Bool)

(assert (=> d!268473 m!1099987))

(assert (=> d!268473 m!1098659))

(declare-fun m!1099989 () Bool)

(assert (=> d!268473 m!1099989))

(assert (=> b!856964 d!268473))

(declare-fun d!268475 () Bool)

(assert (=> d!268475 (= (list!3644 (charsOf!1001 (h!14643 lt!324046))) (list!3647 (c!138856 (charsOf!1001 (h!14643 lt!324046)))))))

(declare-fun bs!232018 () Bool)

(assert (= bs!232018 d!268475))

(declare-fun m!1099991 () Bool)

(assert (=> bs!232018 m!1099991))

(assert (=> b!856964 d!268475))

(declare-fun d!268477 () Bool)

(declare-fun lt!324328 () BalanceConc!6140)

(assert (=> d!268477 (= (list!3644 lt!324328) (originalCharacters!2290 (h!14643 lt!324046)))))

(assert (=> d!268477 (= lt!324328 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046)))) (value!56118 (h!14643 lt!324046))))))

(assert (=> d!268477 (= (charsOf!1001 (h!14643 lt!324046)) lt!324328)))

(declare-fun b_lambda!28877 () Bool)

(assert (=> (not b_lambda!28877) (not d!268477)))

(declare-fun tb!60927 () Bool)

(declare-fun t!96903 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046))))) t!96903) tb!60927))

(declare-fun b!857483 () Bool)

(declare-fun e!564371 () Bool)

(declare-fun tp!270362 () Bool)

(assert (=> b!857483 (= e!564371 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046)))) (value!56118 (h!14643 lt!324046))))) tp!270362))))

(declare-fun result!70528 () Bool)

(assert (=> tb!60927 (= result!70528 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046)))) (value!56118 (h!14643 lt!324046)))) e!564371))))

(assert (= tb!60927 b!857483))

(declare-fun m!1099997 () Bool)

(assert (=> b!857483 m!1099997))

(declare-fun m!1099999 () Bool)

(assert (=> tb!60927 m!1099999))

(assert (=> d!268477 t!96903))

(declare-fun b_and!75997 () Bool)

(assert (= b_and!75993 (and (=> t!96903 result!70528) b_and!75997)))

(declare-fun tb!60929 () Bool)

(declare-fun t!96905 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046))))) t!96905) tb!60929))

(declare-fun result!70530 () Bool)

(assert (= result!70530 result!70528))

(assert (=> d!268477 t!96905))

(declare-fun b_and!75999 () Bool)

(assert (= b_and!75989 (and (=> t!96905 result!70530) b_and!75999)))

(declare-fun tb!60931 () Bool)

(declare-fun t!96907 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046))))) t!96907) tb!60931))

(declare-fun result!70532 () Bool)

(assert (= result!70532 result!70528))

(assert (=> d!268477 t!96907))

(declare-fun b_and!76001 () Bool)

(assert (= b_and!75995 (and (=> t!96907 result!70532) b_and!76001)))

(declare-fun tb!60933 () Bool)

(declare-fun t!96909 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046))))) t!96909) tb!60933))

(declare-fun result!70534 () Bool)

(assert (= result!70534 result!70528))

(assert (=> d!268477 t!96909))

(declare-fun b_and!76003 () Bool)

(assert (= b_and!75991 (and (=> t!96909 result!70534) b_and!76003)))

(declare-fun tb!60935 () Bool)

(declare-fun t!96911 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046))))) t!96911) tb!60935))

(declare-fun result!70536 () Bool)

(assert (= result!70536 result!70528))

(assert (=> d!268477 t!96911))

(declare-fun b_and!76005 () Bool)

(assert (= b_and!75987 (and (=> t!96911 result!70536) b_and!76005)))

(declare-fun m!1100001 () Bool)

(assert (=> d!268477 m!1100001))

(declare-fun m!1100003 () Bool)

(assert (=> d!268477 m!1100003))

(assert (=> b!856964 d!268477))

(declare-fun d!268481 () Bool)

(declare-fun c!138998 () Bool)

(assert (=> d!268481 (= c!138998 ((_ is Cons!9242) (t!96714 lt!324046)))))

(declare-fun e!564372 () List!9257)

(assert (=> d!268481 (= (printList!484 thiss!20117 (t!96714 lt!324046)) e!564372)))

(declare-fun b!857484 () Bool)

(assert (=> b!857484 (= e!564372 (++!2394 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!324046)))) (printList!484 thiss!20117 (t!96714 (t!96714 lt!324046)))))))

(declare-fun b!857485 () Bool)

(assert (=> b!857485 (= e!564372 Nil!9241)))

(assert (= (and d!268481 c!138998) b!857484))

(assert (= (and d!268481 (not c!138998)) b!857485))

(declare-fun m!1100019 () Bool)

(assert (=> b!857484 m!1100019))

(assert (=> b!857484 m!1100019))

(declare-fun m!1100021 () Bool)

(assert (=> b!857484 m!1100021))

(declare-fun m!1100023 () Bool)

(assert (=> b!857484 m!1100023))

(assert (=> b!857484 m!1100021))

(assert (=> b!857484 m!1100023))

(declare-fun m!1100027 () Bool)

(assert (=> b!857484 m!1100027))

(assert (=> b!856964 d!268481))

(declare-fun d!268485 () Bool)

(declare-fun res!391370 () Bool)

(declare-fun e!564375 () Bool)

(assert (=> d!268485 (=> res!391370 e!564375)))

(assert (=> d!268485 (= res!391370 ((_ is Nil!9242) (t!96714 l!5107)))))

(assert (=> d!268485 (= (forall!2193 (t!96714 l!5107) lambda!25690) e!564375)))

(declare-fun b!857488 () Bool)

(declare-fun e!564376 () Bool)

(assert (=> b!857488 (= e!564375 e!564376)))

(declare-fun res!391371 () Bool)

(assert (=> b!857488 (=> (not res!391371) (not e!564376))))

(assert (=> b!857488 (= res!391371 (dynLambda!4347 lambda!25690 (h!14643 (t!96714 l!5107))))))

(declare-fun b!857489 () Bool)

(assert (=> b!857489 (= e!564376 (forall!2193 (t!96714 (t!96714 l!5107)) lambda!25690))))

(assert (= (and d!268485 (not res!391370)) b!857488))

(assert (= (and b!857488 res!391371) b!857489))

(declare-fun b_lambda!28879 () Bool)

(assert (=> (not b_lambda!28879) (not b!857488)))

(declare-fun m!1100029 () Bool)

(assert (=> b!857488 m!1100029))

(declare-fun m!1100031 () Bool)

(assert (=> b!857489 m!1100031))

(assert (=> b!856661 d!268485))

(assert (=> d!268023 d!268045))

(declare-fun d!268487 () Bool)

(assert (=> d!268487 (separableTokensPredicate!66 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621)))

(assert (=> d!268487 true))

(declare-fun _$37!230 () Unit!13737)

(assert (=> d!268487 (= (choose!5050 thiss!20117 (h!14643 lt!323881) (h!14643 (t!96714 lt!323881)) rules!2621) _$37!230)))

(declare-fun bs!232040 () Bool)

(assert (= bs!232040 d!268487))

(assert (=> bs!232040 m!1098195))

(assert (=> d!268023 d!268487))

(assert (=> d!268023 d!268089))

(declare-fun bs!232041 () Bool)

(declare-fun d!268525 () Bool)

(assert (= bs!232041 (and d!268525 d!268435)))

(declare-fun lambda!25735 () Int)

(assert (=> bs!232041 (= (= (toValue!2791 (transformation!1734 (h!14644 rules!2621))) (toValue!2791 (transformation!1734 (rule!3157 separatorToken!297)))) (= lambda!25735 lambda!25726))))

(declare-fun bs!232042 () Bool)

(assert (= bs!232042 (and d!268525 d!268449)))

(assert (=> bs!232042 (= (= (toValue!2791 (transformation!1734 (h!14644 rules!2621))) (toValue!2791 (transformation!1734 (rule!3157 (h!14643 l!5107))))) (= lambda!25735 lambda!25727))))

(assert (=> d!268525 true))

(assert (=> d!268525 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (dynLambda!4354 order!5993 lambda!25735))))

(assert (=> d!268525 (= (equivClasses!647 (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toValue!2791 (transformation!1734 (h!14644 rules!2621)))) (Forall2!330 lambda!25735))))

(declare-fun bs!232043 () Bool)

(assert (= bs!232043 d!268525))

(declare-fun m!1100097 () Bool)

(assert (=> bs!232043 m!1100097))

(assert (=> b!856979 d!268525))

(declare-fun d!268527 () Bool)

(assert (=> d!268527 (= (list!3644 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))) (list!3647 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))))))

(declare-fun bs!232044 () Bool)

(assert (= bs!232044 d!268527))

(declare-fun m!1100099 () Bool)

(assert (=> bs!232044 m!1100099))

(assert (=> b!856634 d!268527))

(declare-fun d!268529 () Bool)

(declare-fun res!391386 () Bool)

(declare-fun e!564402 () Bool)

(assert (=> d!268529 (=> res!391386 e!564402)))

(assert (=> d!268529 (= res!391386 ((_ is Nil!9242) lt!323878))))

(assert (=> d!268529 (= (forall!2193 lt!323878 lambda!25693) e!564402)))

(declare-fun b!857520 () Bool)

(declare-fun e!564403 () Bool)

(assert (=> b!857520 (= e!564402 e!564403)))

(declare-fun res!391387 () Bool)

(assert (=> b!857520 (=> (not res!391387) (not e!564403))))

(assert (=> b!857520 (= res!391387 (dynLambda!4347 lambda!25693 (h!14643 lt!323878)))))

(declare-fun b!857521 () Bool)

(assert (=> b!857521 (= e!564403 (forall!2193 (t!96714 lt!323878) lambda!25693))))

(assert (= (and d!268529 (not res!391386)) b!857520))

(assert (= (and b!857520 res!391387) b!857521))

(declare-fun b_lambda!28887 () Bool)

(assert (=> (not b_lambda!28887) (not b!857520)))

(declare-fun m!1100103 () Bool)

(assert (=> b!857520 m!1100103))

(declare-fun m!1100105 () Bool)

(assert (=> b!857521 m!1100105))

(assert (=> d!268037 d!268529))

(assert (=> d!268037 d!268089))

(declare-fun d!268533 () Bool)

(declare-fun lt!324340 () Bool)

(declare-fun e!564405 () Bool)

(assert (=> d!268533 (= lt!324340 e!564405)))

(declare-fun res!391390 () Bool)

(assert (=> d!268533 (=> (not res!391390) (not e!564405))))

(assert (=> d!268533 (= res!391390 (= (list!3645 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 lt!323878)))))) (list!3645 (singletonSeq!552 (h!14643 lt!323878)))))))

(declare-fun e!564406 () Bool)

(assert (=> d!268533 (= lt!324340 e!564406)))

(declare-fun res!391389 () Bool)

(assert (=> d!268533 (=> (not res!391389) (not e!564406))))

(declare-fun lt!324341 () tuple2!10418)

(assert (=> d!268533 (= res!391389 (= (size!7720 (_1!6035 lt!324341)) 1))))

(assert (=> d!268533 (= lt!324341 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 lt!323878)))))))

(assert (=> d!268533 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268533 (= (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323878)) lt!324340)))

(declare-fun b!857524 () Bool)

(declare-fun res!391388 () Bool)

(assert (=> b!857524 (=> (not res!391388) (not e!564406))))

(assert (=> b!857524 (= res!391388 (= (apply!1922 (_1!6035 lt!324341) 0) (h!14643 lt!323878)))))

(declare-fun b!857525 () Bool)

(assert (=> b!857525 (= e!564406 (isEmpty!5484 (_2!6035 lt!324341)))))

(declare-fun b!857526 () Bool)

(assert (=> b!857526 (= e!564405 (isEmpty!5484 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 lt!323878)))))))))

(assert (= (and d!268533 res!391389) b!857524))

(assert (= (and b!857524 res!391388) b!857525))

(assert (= (and d!268533 res!391390) b!857526))

(declare-fun m!1100117 () Bool)

(assert (=> d!268533 m!1100117))

(declare-fun m!1100119 () Bool)

(assert (=> d!268533 m!1100119))

(declare-fun m!1100121 () Bool)

(assert (=> d!268533 m!1100121))

(assert (=> d!268533 m!1098239))

(declare-fun m!1100123 () Bool)

(assert (=> d!268533 m!1100123))

(declare-fun m!1100125 () Bool)

(assert (=> d!268533 m!1100125))

(declare-fun m!1100127 () Bool)

(assert (=> d!268533 m!1100127))

(assert (=> d!268533 m!1100119))

(assert (=> d!268533 m!1100123))

(assert (=> d!268533 m!1100119))

(declare-fun m!1100129 () Bool)

(assert (=> b!857524 m!1100129))

(declare-fun m!1100131 () Bool)

(assert (=> b!857525 m!1100131))

(assert (=> b!857526 m!1100119))

(assert (=> b!857526 m!1100119))

(assert (=> b!857526 m!1100123))

(assert (=> b!857526 m!1100123))

(assert (=> b!857526 m!1100125))

(declare-fun m!1100135 () Bool)

(assert (=> b!857526 m!1100135))

(assert (=> b!856717 d!268533))

(declare-fun d!268539 () Bool)

(declare-fun lt!324343 () Int)

(assert (=> d!268539 (>= lt!324343 0)))

(declare-fun e!564409 () Int)

(assert (=> d!268539 (= lt!324343 e!564409)))

(declare-fun c!139003 () Bool)

(assert (=> d!268539 (= c!139003 ((_ is Nil!9241) (originalCharacters!2290 (h!14643 l!5107))))))

(assert (=> d!268539 (= (size!7718 (originalCharacters!2290 (h!14643 l!5107))) lt!324343)))

(declare-fun b!857531 () Bool)

(assert (=> b!857531 (= e!564409 0)))

(declare-fun b!857532 () Bool)

(assert (=> b!857532 (= e!564409 (+ 1 (size!7718 (t!96713 (originalCharacters!2290 (h!14643 l!5107))))))))

(assert (= (and d!268539 c!139003) b!857531))

(assert (= (and d!268539 (not c!139003)) b!857532))

(declare-fun m!1100149 () Bool)

(assert (=> b!857532 m!1100149))

(assert (=> b!856987 d!268539))

(declare-fun d!268543 () Bool)

(declare-fun c!139005 () Bool)

(assert (=> d!268543 (= c!139005 ((_ is Cons!9242) ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880))))))

(declare-fun e!564412 () List!9257)

(assert (=> d!268543 (= (printList!484 thiss!20117 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880))) e!564412)))

(declare-fun b!857537 () Bool)

(assert (=> b!857537 (= e!564412 (++!2394 (list!3644 (charsOf!1001 (h!14643 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880))))) (printList!484 thiss!20117 (t!96714 ($colon$colon!97 ($colon$colon!97 (withSeparatorTokenList!66 thiss!20117 (t!96714 lt!323880) separatorToken!297) separatorToken!297) (h!14643 lt!323880))))))))

(declare-fun b!857538 () Bool)

(assert (=> b!857538 (= e!564412 Nil!9241)))

(assert (= (and d!268543 c!139005) b!857537))

(assert (= (and d!268543 (not c!139005)) b!857538))

(declare-fun m!1100167 () Bool)

(assert (=> b!857537 m!1100167))

(assert (=> b!857537 m!1100167))

(declare-fun m!1100169 () Bool)

(assert (=> b!857537 m!1100169))

(declare-fun m!1100171 () Bool)

(assert (=> b!857537 m!1100171))

(assert (=> b!857537 m!1100169))

(assert (=> b!857537 m!1100171))

(declare-fun m!1100173 () Bool)

(assert (=> b!857537 m!1100173))

(assert (=> b!856972 d!268543))

(assert (=> b!856972 d!268183))

(assert (=> b!856972 d!268163))

(assert (=> b!856972 d!268177))

(declare-fun d!268549 () Bool)

(declare-fun c!139007 () Bool)

(assert (=> d!268549 (= c!139007 ((_ is Cons!9242) lt!324053))))

(declare-fun e!564415 () List!9257)

(assert (=> d!268549 (= (printList!484 thiss!20117 lt!324053) e!564415)))

(declare-fun b!857543 () Bool)

(assert (=> b!857543 (= e!564415 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!324053))) (printList!484 thiss!20117 (t!96714 lt!324053))))))

(declare-fun b!857544 () Bool)

(assert (=> b!857544 (= e!564415 Nil!9241)))

(assert (= (and d!268549 c!139007) b!857543))

(assert (= (and d!268549 (not c!139007)) b!857544))

(declare-fun m!1100181 () Bool)

(assert (=> b!857543 m!1100181))

(assert (=> b!857543 m!1100181))

(declare-fun m!1100183 () Bool)

(assert (=> b!857543 m!1100183))

(declare-fun m!1100185 () Bool)

(assert (=> b!857543 m!1100185))

(assert (=> b!857543 m!1100183))

(assert (=> b!857543 m!1100185))

(declare-fun m!1100187 () Bool)

(assert (=> b!857543 m!1100187))

(assert (=> d!268117 d!268549))

(declare-fun d!268553 () Bool)

(declare-fun c!139009 () Bool)

(assert (=> d!268553 (= c!139009 ((_ is Cons!9242) lt!323880))))

(declare-fun e!564418 () List!9257)

(assert (=> d!268553 (= (printWithSeparatorTokenList!42 thiss!20117 lt!323880 separatorToken!297) e!564418)))

(declare-fun b!857549 () Bool)

(assert (=> b!857549 (= e!564418 (++!2394 (++!2394 (list!3644 (charsOf!1001 (h!14643 lt!323880))) (list!3644 (charsOf!1001 separatorToken!297))) (printWithSeparatorTokenList!42 thiss!20117 (t!96714 lt!323880) separatorToken!297)))))

(declare-fun b!857550 () Bool)

(assert (=> b!857550 (= e!564418 Nil!9241)))

(assert (= (and d!268553 c!139009) b!857549))

(assert (= (and d!268553 (not c!139009)) b!857550))

(assert (=> b!857549 m!1098679))

(assert (=> b!857549 m!1098633))

(declare-fun m!1100201 () Bool)

(assert (=> b!857549 m!1100201))

(assert (=> b!857549 m!1098677))

(assert (=> b!857549 m!1098631))

(assert (=> b!857549 m!1098633))

(assert (=> b!857549 m!1098939))

(assert (=> b!857549 m!1098631))

(assert (=> b!857549 m!1098677))

(assert (=> b!857549 m!1098679))

(assert (=> b!857549 m!1100201))

(assert (=> b!857549 m!1098939))

(declare-fun m!1100203 () Bool)

(assert (=> b!857549 m!1100203))

(assert (=> d!268117 d!268553))

(declare-fun d!268559 () Bool)

(assert (=> d!268559 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323878))))

(declare-fun lt!324348 () Unit!13737)

(assert (=> d!268559 (= lt!324348 (choose!5054 thiss!20117 rules!2621 lt!323878 (h!14643 lt!323878)))))

(assert (=> d!268559 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268559 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323878 (h!14643 lt!323878)) lt!324348)))

(declare-fun bs!232049 () Bool)

(assert (= bs!232049 d!268559))

(assert (=> bs!232049 m!1098317))

(declare-fun m!1100213 () Bool)

(assert (=> bs!232049 m!1100213))

(assert (=> bs!232049 m!1098239))

(assert (=> b!856834 d!268559))

(declare-fun d!268561 () Bool)

(declare-fun lt!324350 () BalanceConc!6140)

(assert (=> d!268561 (= (list!3644 lt!324350) (originalCharacters!2290 (h!14643 (t!96714 lt!323878))))))

(assert (=> d!268561 (= lt!324350 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878))))) (value!56118 (h!14643 (t!96714 lt!323878)))))))

(assert (=> d!268561 (= (charsOf!1001 (h!14643 (t!96714 lt!323878))) lt!324350)))

(declare-fun b_lambda!28889 () Bool)

(assert (=> (not b_lambda!28889) (not d!268561)))

(declare-fun tb!60947 () Bool)

(declare-fun t!96923 () Bool)

(assert (=> (and b!856609 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878)))))) t!96923) tb!60947))

(declare-fun b!857553 () Bool)

(declare-fun e!564420 () Bool)

(declare-fun tp!270364 () Bool)

(assert (=> b!857553 (= e!564420 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878))))) (value!56118 (h!14643 (t!96714 lt!323878)))))) tp!270364))))

(declare-fun result!70548 () Bool)

(assert (=> tb!60947 (= result!70548 (and (inv!11764 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878))))) (value!56118 (h!14643 (t!96714 lt!323878))))) e!564420))))

(assert (= tb!60947 b!857553))

(declare-fun m!1100217 () Bool)

(assert (=> b!857553 m!1100217))

(declare-fun m!1100219 () Bool)

(assert (=> tb!60947 m!1100219))

(assert (=> d!268561 t!96923))

(declare-fun b_and!76027 () Bool)

(assert (= b_and!76005 (and (=> t!96923 result!70548) b_and!76027)))

(declare-fun tb!60949 () Bool)

(declare-fun t!96925 () Bool)

(assert (=> (and b!856616 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878)))))) t!96925) tb!60949))

(declare-fun result!70550 () Bool)

(assert (= result!70550 result!70548))

(assert (=> d!268561 t!96925))

(declare-fun b_and!76029 () Bool)

(assert (= b_and!76003 (and (=> t!96925 result!70550) b_and!76029)))

(declare-fun t!96927 () Bool)

(declare-fun tb!60951 () Bool)

(assert (=> (and b!857008 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878)))))) t!96927) tb!60951))

(declare-fun result!70552 () Bool)

(assert (= result!70552 result!70548))

(assert (=> d!268561 t!96927))

(declare-fun b_and!76031 () Bool)

(assert (= b_and!75997 (and (=> t!96927 result!70552) b_and!76031)))

(declare-fun tb!60953 () Bool)

(declare-fun t!96929 () Bool)

(assert (=> (and b!857041 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878)))))) t!96929) tb!60953))

(declare-fun result!70554 () Bool)

(assert (= result!70554 result!70548))

(assert (=> d!268561 t!96929))

(declare-fun b_and!76033 () Bool)

(assert (= b_and!75999 (and (=> t!96929 result!70554) b_and!76033)))

(declare-fun t!96931 () Bool)

(declare-fun tb!60955 () Bool)

(assert (=> (and b!856610 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878)))))) t!96931) tb!60955))

(declare-fun result!70556 () Bool)

(assert (= result!70556 result!70548))

(assert (=> d!268561 t!96931))

(declare-fun b_and!76035 () Bool)

(assert (= b_and!76001 (and (=> t!96931 result!70556) b_and!76035)))

(declare-fun m!1100221 () Bool)

(assert (=> d!268561 m!1100221))

(declare-fun m!1100223 () Bool)

(assert (=> d!268561 m!1100223))

(assert (=> b!856834 d!268561))

(declare-fun d!268567 () Bool)

(declare-fun lt!324352 () Int)

(assert (=> d!268567 (= lt!324352 (size!7718 (list!3644 (charsOf!1001 (h!14643 (t!96714 lt!323878))))))))

(assert (=> d!268567 (= lt!324352 (size!7724 (c!138856 (charsOf!1001 (h!14643 (t!96714 lt!323878))))))))

(assert (=> d!268567 (= (size!7719 (charsOf!1001 (h!14643 (t!96714 lt!323878)))) lt!324352)))

(declare-fun bs!232050 () Bool)

(assert (= bs!232050 d!268567))

(assert (=> bs!232050 m!1098493))

(declare-fun m!1100231 () Bool)

(assert (=> bs!232050 m!1100231))

(assert (=> bs!232050 m!1100231))

(declare-fun m!1100235 () Bool)

(assert (=> bs!232050 m!1100235))

(declare-fun m!1100239 () Bool)

(assert (=> bs!232050 m!1100239))

(assert (=> b!856834 d!268567))

(assert (=> b!856834 d!268533))

(declare-fun d!268569 () Bool)

(assert (=> d!268569 (= (separableTokensPredicate!66 thiss!20117 (h!14643 lt!323878) (h!14643 (t!96714 lt!323878)) rules!2621) (not (prefixMatchZipperSequence!37 (rulesRegex!26 thiss!20117 rules!2621) (++!2392 (charsOf!1001 (h!14643 lt!323878)) (singletonSeq!551 (apply!1921 (charsOf!1001 (h!14643 (t!96714 lt!323878))) 0))))))))

(declare-fun bs!232052 () Bool)

(assert (= bs!232052 d!268569))

(assert (=> bs!232052 m!1098493))

(declare-fun m!1100247 () Bool)

(assert (=> bs!232052 m!1100247))

(declare-fun m!1100249 () Bool)

(assert (=> bs!232052 m!1100249))

(declare-fun m!1100251 () Bool)

(assert (=> bs!232052 m!1100251))

(assert (=> bs!232052 m!1098331))

(assert (=> bs!232052 m!1100251))

(declare-fun m!1100253 () Bool)

(assert (=> bs!232052 m!1100253))

(assert (=> bs!232052 m!1098331))

(declare-fun m!1100259 () Bool)

(assert (=> bs!232052 m!1100259))

(assert (=> bs!232052 m!1100249))

(assert (=> bs!232052 m!1098493))

(assert (=> bs!232052 m!1100259))

(assert (=> bs!232052 m!1100247))

(assert (=> b!856834 d!268569))

(declare-fun d!268575 () Bool)

(assert (=> d!268575 (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323878)))))

(declare-fun lt!324354 () Unit!13737)

(assert (=> d!268575 (= lt!324354 (choose!5054 thiss!20117 rules!2621 lt!323878 (h!14643 (t!96714 lt!323878))))))

(assert (=> d!268575 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268575 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!234 thiss!20117 rules!2621 lt!323878 (h!14643 (t!96714 lt!323878))) lt!324354)))

(declare-fun bs!232053 () Bool)

(assert (= bs!232053 d!268575))

(assert (=> bs!232053 m!1098495))

(declare-fun m!1100263 () Bool)

(assert (=> bs!232053 m!1100263))

(assert (=> bs!232053 m!1098239))

(assert (=> b!856834 d!268575))

(declare-fun d!268577 () Bool)

(declare-fun lt!324355 () Bool)

(declare-fun e!564424 () Bool)

(assert (=> d!268577 (= lt!324355 e!564424)))

(declare-fun res!391403 () Bool)

(assert (=> d!268577 (=> (not res!391403) (not e!564424))))

(assert (=> d!268577 (= res!391403 (= (list!3645 (_1!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 (t!96714 lt!323878))))))) (list!3645 (singletonSeq!552 (h!14643 (t!96714 lt!323878))))))))

(declare-fun e!564425 () Bool)

(assert (=> d!268577 (= lt!324355 e!564425)))

(declare-fun res!391402 () Bool)

(assert (=> d!268577 (=> (not res!391402) (not e!564425))))

(declare-fun lt!324356 () tuple2!10418)

(assert (=> d!268577 (= res!391402 (= (size!7720 (_1!6035 lt!324356)) 1))))

(assert (=> d!268577 (= lt!324356 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 (t!96714 lt!323878))))))))

(assert (=> d!268577 (not (isEmpty!5480 rules!2621))))

(assert (=> d!268577 (= (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 (t!96714 lt!323878))) lt!324355)))

(declare-fun b!857559 () Bool)

(declare-fun res!391401 () Bool)

(assert (=> b!857559 (=> (not res!391401) (not e!564425))))

(assert (=> b!857559 (= res!391401 (= (apply!1922 (_1!6035 lt!324356) 0) (h!14643 (t!96714 lt!323878))))))

(declare-fun b!857560 () Bool)

(assert (=> b!857560 (= e!564425 (isEmpty!5484 (_2!6035 lt!324356)))))

(declare-fun b!857561 () Bool)

(assert (=> b!857561 (= e!564424 (isEmpty!5484 (_2!6035 (lex!627 thiss!20117 rules!2621 (print!564 thiss!20117 (singletonSeq!552 (h!14643 (t!96714 lt!323878))))))))))

(assert (= (and d!268577 res!391402) b!857559))

(assert (= (and b!857559 res!391401) b!857560))

(assert (= (and d!268577 res!391403) b!857561))

(declare-fun m!1100275 () Bool)

(assert (=> d!268577 m!1100275))

(declare-fun m!1100277 () Bool)

(assert (=> d!268577 m!1100277))

(declare-fun m!1100279 () Bool)

(assert (=> d!268577 m!1100279))

(assert (=> d!268577 m!1098239))

(declare-fun m!1100281 () Bool)

(assert (=> d!268577 m!1100281))

(declare-fun m!1100283 () Bool)

(assert (=> d!268577 m!1100283))

(declare-fun m!1100285 () Bool)

(assert (=> d!268577 m!1100285))

(assert (=> d!268577 m!1100277))

(assert (=> d!268577 m!1100281))

(assert (=> d!268577 m!1100277))

(declare-fun m!1100287 () Bool)

(assert (=> b!857559 m!1100287))

(declare-fun m!1100289 () Bool)

(assert (=> b!857560 m!1100289))

(assert (=> b!857561 m!1100277))

(assert (=> b!857561 m!1100277))

(assert (=> b!857561 m!1100281))

(assert (=> b!857561 m!1100281))

(assert (=> b!857561 m!1100283))

(declare-fun m!1100297 () Bool)

(assert (=> b!857561 m!1100297))

(assert (=> b!856834 d!268577))

(declare-fun e!564429 () Bool)

(assert (=> b!857007 (= tp!270307 e!564429)))

(declare-fun b!857569 () Bool)

(declare-fun tp!270366 () Bool)

(declare-fun tp!270368 () Bool)

(assert (=> b!857569 (= e!564429 (and tp!270366 tp!270368))))

(declare-fun b!857570 () Bool)

(declare-fun tp!270370 () Bool)

(assert (=> b!857570 (= e!564429 tp!270370)))

(declare-fun b!857568 () Bool)

(assert (=> b!857568 (= e!564429 tp_is_empty!3993)))

(declare-fun b!857571 () Bool)

(declare-fun tp!270369 () Bool)

(declare-fun tp!270367 () Bool)

(assert (=> b!857571 (= e!564429 (and tp!270369 tp!270367))))

(assert (= (and b!857007 ((_ is ElementMatch!2167) (regex!1734 (h!14644 (t!96715 rules!2621))))) b!857568))

(assert (= (and b!857007 ((_ is Concat!3968) (regex!1734 (h!14644 (t!96715 rules!2621))))) b!857569))

(assert (= (and b!857007 ((_ is Star!2167) (regex!1734 (h!14644 (t!96715 rules!2621))))) b!857570))

(assert (= (and b!857007 ((_ is Union!2167) (regex!1734 (h!14644 (t!96715 rules!2621))))) b!857571))

(declare-fun b!857573 () Bool)

(declare-fun e!564431 () Bool)

(declare-fun tp!270372 () Bool)

(assert (=> b!857573 (= e!564431 (and tp_is_empty!3993 tp!270372))))

(assert (=> b!857039 (= tp!270343 e!564431)))

(assert (= (and b!857039 ((_ is Cons!9241) (originalCharacters!2290 (h!14643 (t!96714 l!5107))))) b!857573))

(declare-fun b!857576 () Bool)

(declare-fun b_free!26037 () Bool)

(declare-fun b_next!26101 () Bool)

(assert (=> b!857576 (= b_free!26037 (not b_next!26101))))

(declare-fun tp!270375 () Bool)

(declare-fun b_and!76055 () Bool)

(assert (=> b!857576 (= tp!270375 b_and!76055)))

(declare-fun b_free!26039 () Bool)

(declare-fun b_next!26103 () Bool)

(assert (=> b!857576 (= b_free!26039 (not b_next!26103))))

(declare-fun t!96953 () Bool)

(declare-fun tb!60977 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880))))) t!96953) tb!60977))

(declare-fun result!70578 () Bool)

(assert (= result!70578 result!70418))

(assert (=> d!268191 t!96953))

(declare-fun t!96955 () Bool)

(declare-fun tb!60979 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052))))) t!96955) tb!60979))

(declare-fun result!70580 () Bool)

(assert (= result!70580 result!70498))

(assert (=> d!268383 t!96955))

(declare-fun tb!60981 () Bool)

(declare-fun t!96957 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) t!96957) tb!60981))

(declare-fun result!70582 () Bool)

(assert (= result!70582 result!70376))

(assert (=> d!268469 t!96957))

(declare-fun t!96959 () Bool)

(declare-fun tb!60983 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881))))) t!96959) tb!60983))

(declare-fun result!70584 () Bool)

(assert (= result!70584 result!70398))

(assert (=> d!268143 t!96959))

(declare-fun tb!60985 () Bool)

(declare-fun t!96961 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) t!96961) tb!60985))

(declare-fun result!70586 () Bool)

(assert (= result!70586 result!70338))

(assert (=> d!268167 t!96961))

(declare-fun tb!60987 () Bool)

(declare-fun t!96963 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055))))) t!96963) tb!60987))

(declare-fun result!70588 () Bool)

(assert (= result!70588 result!70428))

(assert (=> d!268209 t!96963))

(assert (=> b!856634 t!96961))

(declare-fun t!96965 () Bool)

(declare-fun tb!60989 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881)))))) t!96965) tb!60989))

(declare-fun result!70590 () Bool)

(assert (= result!70590 result!70408))

(assert (=> d!268149 t!96965))

(declare-fun tb!60991 () Bool)

(declare-fun t!96967 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046))))) t!96967) tb!60991))

(declare-fun result!70592 () Bool)

(assert (= result!70592 result!70528))

(assert (=> d!268477 t!96967))

(declare-fun t!96969 () Bool)

(declare-fun tb!60993 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878)))))) t!96969) tb!60993))

(declare-fun result!70594 () Bool)

(assert (= result!70594 result!70548))

(assert (=> d!268561 t!96969))

(declare-fun t!96971 () Bool)

(declare-fun tb!60995 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043))))) t!96971) tb!60995))

(declare-fun result!70596 () Bool)

(assert (= result!70596 result!70478))

(assert (=> d!268313 t!96971))

(assert (=> b!856986 t!96957))

(declare-fun tb!60997 () Bool)

(declare-fun t!96973 () Bool)

(assert (=> (and b!857576 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) t!96973) tb!60997))

(declare-fun result!70598 () Bool)

(assert (= result!70598 result!70488))

(assert (=> b!857362 t!96973))

(declare-fun tp!270373 () Bool)

(declare-fun b_and!76059 () Bool)

(assert (=> b!857576 (= tp!270373 (and (=> t!96957 result!70582) (=> t!96973 result!70598) (=> t!96959 result!70584) (=> t!96961 result!70586) (=> t!96955 result!70580) (=> t!96967 result!70592) (=> t!96969 result!70594) (=> t!96965 result!70590) (=> t!96971 result!70596) (=> t!96963 result!70588) (=> t!96953 result!70578) b_and!76059))))

(declare-fun e!564434 () Bool)

(assert (=> b!857576 (= e!564434 (and tp!270375 tp!270373))))

(declare-fun b!857575 () Bool)

(declare-fun tp!270376 () Bool)

(declare-fun e!564433 () Bool)

(assert (=> b!857575 (= e!564433 (and tp!270376 (inv!11756 (tag!1996 (h!14644 (t!96715 (t!96715 rules!2621))))) (inv!11759 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) e!564434))))

(declare-fun b!857574 () Bool)

(declare-fun e!564432 () Bool)

(declare-fun tp!270374 () Bool)

(assert (=> b!857574 (= e!564432 (and e!564433 tp!270374))))

(assert (=> b!857006 (= tp!270305 e!564432)))

(assert (= b!857575 b!857576))

(assert (= b!857574 b!857575))

(assert (= (and b!857006 ((_ is Cons!9243) (t!96715 (t!96715 rules!2621)))) b!857574))

(declare-fun m!1100325 () Bool)

(assert (=> b!857575 m!1100325))

(declare-fun m!1100327 () Bool)

(assert (=> b!857575 m!1100327))

(declare-fun b!857582 () Bool)

(declare-fun b_free!26041 () Bool)

(declare-fun b_next!26105 () Bool)

(assert (=> b!857582 (= b_free!26041 (not b_next!26105))))

(declare-fun tp!270378 () Bool)

(declare-fun b_and!76061 () Bool)

(assert (=> b!857582 (= tp!270378 b_and!76061)))

(declare-fun b_free!26043 () Bool)

(declare-fun b_next!26107 () Bool)

(assert (=> b!857582 (= b_free!26043 (not b_next!26107))))

(declare-fun tb!60999 () Bool)

(declare-fun t!96975 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323880))))) t!96975) tb!60999))

(declare-fun result!70600 () Bool)

(assert (= result!70600 result!70418))

(assert (=> d!268191 t!96975))

(declare-fun tb!61001 () Bool)

(declare-fun t!96977 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324052))))) t!96977) tb!61001))

(declare-fun result!70602 () Bool)

(assert (= result!70602 result!70498))

(assert (=> d!268383 t!96977))

(declare-fun t!96979 () Bool)

(declare-fun tb!61003 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107))))) t!96979) tb!61003))

(declare-fun result!70604 () Bool)

(assert (= result!70604 result!70376))

(assert (=> d!268469 t!96979))

(declare-fun tb!61005 () Bool)

(declare-fun t!96981 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!323881))))) t!96981) tb!61005))

(declare-fun result!70606 () Bool)

(assert (= result!70606 result!70398))

(assert (=> d!268143 t!96981))

(declare-fun tb!61007 () Bool)

(declare-fun t!96983 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297)))) t!96983) tb!61007))

(declare-fun result!70608 () Bool)

(assert (= result!70608 result!70338))

(assert (=> d!268167 t!96983))

(declare-fun t!96985 () Bool)

(declare-fun tb!61009 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324055))))) t!96985) tb!61009))

(declare-fun result!70610 () Bool)

(assert (= result!70610 result!70428))

(assert (=> d!268209 t!96985))

(assert (=> b!856634 t!96983))

(declare-fun t!96987 () Bool)

(declare-fun tb!61011 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323881)))))) t!96987) tb!61011))

(declare-fun result!70612 () Bool)

(assert (= result!70612 result!70408))

(assert (=> d!268149 t!96987))

(declare-fun t!96989 () Bool)

(declare-fun tb!61013 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324046))))) t!96989) tb!61013))

(declare-fun result!70614 () Bool)

(assert (= result!70614 result!70528))

(assert (=> d!268477 t!96989))

(declare-fun tb!61015 () Bool)

(declare-fun t!96991 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 lt!323878)))))) t!96991) tb!61015))

(declare-fun result!70616 () Bool)

(assert (= result!70616 result!70548))

(assert (=> d!268561 t!96991))

(declare-fun t!96993 () Bool)

(declare-fun tb!61017 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 lt!324043))))) t!96993) tb!61017))

(declare-fun result!70618 () Bool)

(assert (= result!70618 result!70478))

(assert (=> d!268313 t!96993))

(assert (=> b!856986 t!96979))

(declare-fun t!96995 () Bool)

(declare-fun tb!61019 () Bool)

(assert (=> (and b!857582 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) t!96995) tb!61019))

(declare-fun result!70620 () Bool)

(assert (= result!70620 result!70488))

(assert (=> b!857362 t!96995))

(declare-fun tp!270379 () Bool)

(declare-fun b_and!76063 () Bool)

(assert (=> b!857582 (= tp!270379 (and (=> t!96987 result!70612) (=> t!96985 result!70610) (=> t!96981 result!70606) (=> t!96983 result!70608) (=> t!96979 result!70604) (=> t!96995 result!70620) (=> t!96989 result!70614) (=> t!96991 result!70616) (=> t!96977 result!70602) (=> t!96993 result!70618) (=> t!96975 result!70600) b_and!76063))))

(declare-fun e!564438 () Bool)

(assert (=> b!857582 (= e!564438 (and tp!270378 tp!270379))))

(declare-fun tp!270377 () Bool)

(declare-fun e!564441 () Bool)

(declare-fun e!564440 () Bool)

(declare-fun b!857579 () Bool)

(assert (=> b!857579 (= e!564440 (and (inv!11760 (h!14643 (t!96714 (t!96714 l!5107)))) e!564441 tp!270377))))

(declare-fun b!857581 () Bool)

(declare-fun tp!270380 () Bool)

(declare-fun e!564437 () Bool)

(assert (=> b!857581 (= e!564437 (and tp!270380 (inv!11756 (tag!1996 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (inv!11759 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) e!564438))))

(assert (=> b!857038 (= tp!270339 e!564440)))

(declare-fun b!857580 () Bool)

(declare-fun tp!270381 () Bool)

(assert (=> b!857580 (= e!564441 (and (inv!21 (value!56118 (h!14643 (t!96714 (t!96714 l!5107))))) e!564437 tp!270381))))

(assert (= b!857581 b!857582))

(assert (= b!857580 b!857581))

(assert (= b!857579 b!857580))

(assert (= (and b!857038 ((_ is Cons!9242) (t!96714 (t!96714 l!5107)))) b!857579))

(declare-fun m!1100329 () Bool)

(assert (=> b!857579 m!1100329))

(declare-fun m!1100331 () Bool)

(assert (=> b!857581 m!1100331))

(declare-fun m!1100333 () Bool)

(assert (=> b!857581 m!1100333))

(declare-fun m!1100335 () Bool)

(assert (=> b!857580 m!1100335))

(declare-fun tp!270390 () Bool)

(declare-fun b!857593 () Bool)

(declare-fun tp!270388 () Bool)

(declare-fun e!564447 () Bool)

(assert (=> b!857593 (= e!564447 (and (inv!11763 (left!6839 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))))) tp!270388 (inv!11763 (right!7169 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))))) tp!270390))))

(declare-fun b!857595 () Bool)

(declare-fun e!564448 () Bool)

(declare-fun tp!270389 () Bool)

(assert (=> b!857595 (= e!564448 tp!270389)))

(declare-fun b!857594 () Bool)

(declare-fun inv!11769 (IArray!6131) Bool)

(assert (=> b!857594 (= e!564447 (and (inv!11769 (xs!5752 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))))) e!564448))))

(assert (=> b!856640 (= tp!270231 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297)))) e!564447))))

(assert (= (and b!856640 ((_ is Node!3063) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))))) b!857593))

(assert (= b!857594 b!857595))

(assert (= (and b!856640 ((_ is Leaf!4518) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (value!56118 separatorToken!297))))) b!857594))

(declare-fun m!1100341 () Bool)

(assert (=> b!857593 m!1100341))

(declare-fun m!1100343 () Bool)

(assert (=> b!857593 m!1100343))

(declare-fun m!1100345 () Bool)

(assert (=> b!857594 m!1100345))

(assert (=> b!856640 m!1098245))

(declare-fun e!564449 () Bool)

(assert (=> b!857023 (= tp!270322 e!564449)))

(declare-fun b!857597 () Bool)

(declare-fun tp!270391 () Bool)

(declare-fun tp!270393 () Bool)

(assert (=> b!857597 (= e!564449 (and tp!270391 tp!270393))))

(declare-fun b!857598 () Bool)

(declare-fun tp!270395 () Bool)

(assert (=> b!857598 (= e!564449 tp!270395)))

(declare-fun b!857596 () Bool)

(assert (=> b!857596 (= e!564449 tp_is_empty!3993)))

(declare-fun b!857599 () Bool)

(declare-fun tp!270394 () Bool)

(declare-fun tp!270392 () Bool)

(assert (=> b!857599 (= e!564449 (and tp!270394 tp!270392))))

(assert (= (and b!857023 ((_ is ElementMatch!2167) (regOne!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857596))

(assert (= (and b!857023 ((_ is Concat!3968) (regOne!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857597))

(assert (= (and b!857023 ((_ is Star!2167) (regOne!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857598))

(assert (= (and b!857023 ((_ is Union!2167) (regOne!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857599))

(declare-fun e!564450 () Bool)

(assert (=> b!857023 (= tp!270320 e!564450)))

(declare-fun b!857601 () Bool)

(declare-fun tp!270396 () Bool)

(declare-fun tp!270398 () Bool)

(assert (=> b!857601 (= e!564450 (and tp!270396 tp!270398))))

(declare-fun b!857602 () Bool)

(declare-fun tp!270400 () Bool)

(assert (=> b!857602 (= e!564450 tp!270400)))

(declare-fun b!857600 () Bool)

(assert (=> b!857600 (= e!564450 tp_is_empty!3993)))

(declare-fun b!857603 () Bool)

(declare-fun tp!270399 () Bool)

(declare-fun tp!270397 () Bool)

(assert (=> b!857603 (= e!564450 (and tp!270399 tp!270397))))

(assert (= (and b!857023 ((_ is ElementMatch!2167) (regTwo!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857600))

(assert (= (and b!857023 ((_ is Concat!3968) (regTwo!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857601))

(assert (= (and b!857023 ((_ is Star!2167) (regTwo!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857602))

(assert (= (and b!857023 ((_ is Union!2167) (regTwo!4847 (regex!1734 (rule!3157 separatorToken!297))))) b!857603))

(declare-fun e!564451 () Bool)

(assert (=> b!857022 (= tp!270323 e!564451)))

(declare-fun b!857605 () Bool)

(declare-fun tp!270401 () Bool)

(declare-fun tp!270403 () Bool)

(assert (=> b!857605 (= e!564451 (and tp!270401 tp!270403))))

(declare-fun b!857606 () Bool)

(declare-fun tp!270405 () Bool)

(assert (=> b!857606 (= e!564451 tp!270405)))

(declare-fun b!857604 () Bool)

(assert (=> b!857604 (= e!564451 tp_is_empty!3993)))

(declare-fun b!857607 () Bool)

(declare-fun tp!270404 () Bool)

(declare-fun tp!270402 () Bool)

(assert (=> b!857607 (= e!564451 (and tp!270404 tp!270402))))

(assert (= (and b!857022 ((_ is ElementMatch!2167) (reg!2496 (regex!1734 (rule!3157 separatorToken!297))))) b!857604))

(assert (= (and b!857022 ((_ is Concat!3968) (reg!2496 (regex!1734 (rule!3157 separatorToken!297))))) b!857605))

(assert (= (and b!857022 ((_ is Star!2167) (reg!2496 (regex!1734 (rule!3157 separatorToken!297))))) b!857606))

(assert (= (and b!857022 ((_ is Union!2167) (reg!2496 (regex!1734 (rule!3157 separatorToken!297))))) b!857607))

(declare-fun b!857608 () Bool)

(declare-fun e!564452 () Bool)

(declare-fun tp!270406 () Bool)

(assert (=> b!857608 (= e!564452 (and tp_is_empty!3993 tp!270406))))

(assert (=> b!856997 (= tp!270295 e!564452)))

(assert (= (and b!856997 ((_ is Cons!9241) (t!96713 (originalCharacters!2290 separatorToken!297)))) b!857608))

(declare-fun e!564453 () Bool)

(assert (=> b!857040 (= tp!270342 e!564453)))

(declare-fun b!857610 () Bool)

(declare-fun tp!270407 () Bool)

(declare-fun tp!270409 () Bool)

(assert (=> b!857610 (= e!564453 (and tp!270407 tp!270409))))

(declare-fun b!857611 () Bool)

(declare-fun tp!270411 () Bool)

(assert (=> b!857611 (= e!564453 tp!270411)))

(declare-fun b!857609 () Bool)

(assert (=> b!857609 (= e!564453 tp_is_empty!3993)))

(declare-fun b!857612 () Bool)

(declare-fun tp!270410 () Bool)

(declare-fun tp!270408 () Bool)

(assert (=> b!857612 (= e!564453 (and tp!270410 tp!270408))))

(assert (= (and b!857040 ((_ is ElementMatch!2167) (regex!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) b!857609))

(assert (= (and b!857040 ((_ is Concat!3968) (regex!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) b!857610))

(assert (= (and b!857040 ((_ is Star!2167) (regex!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) b!857611))

(assert (= (and b!857040 ((_ is Union!2167) (regex!1734 (rule!3157 (h!14643 (t!96714 l!5107)))))) b!857612))

(declare-fun e!564454 () Bool)

(assert (=> b!857044 (= tp!270348 e!564454)))

(declare-fun b!857614 () Bool)

(declare-fun tp!270412 () Bool)

(declare-fun tp!270414 () Bool)

(assert (=> b!857614 (= e!564454 (and tp!270412 tp!270414))))

(declare-fun b!857615 () Bool)

(declare-fun tp!270416 () Bool)

(assert (=> b!857615 (= e!564454 tp!270416)))

(declare-fun b!857613 () Bool)

(assert (=> b!857613 (= e!564454 tp_is_empty!3993)))

(declare-fun b!857616 () Bool)

(declare-fun tp!270415 () Bool)

(declare-fun tp!270413 () Bool)

(assert (=> b!857616 (= e!564454 (and tp!270415 tp!270413))))

(assert (= (and b!857044 ((_ is ElementMatch!2167) (reg!2496 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857613))

(assert (= (and b!857044 ((_ is Concat!3968) (reg!2496 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857614))

(assert (= (and b!857044 ((_ is Star!2167) (reg!2496 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857615))

(assert (= (and b!857044 ((_ is Union!2167) (reg!2496 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857616))

(declare-fun e!564455 () Bool)

(assert (=> b!857043 (= tp!270344 e!564455)))

(declare-fun b!857618 () Bool)

(declare-fun tp!270417 () Bool)

(declare-fun tp!270419 () Bool)

(assert (=> b!857618 (= e!564455 (and tp!270417 tp!270419))))

(declare-fun b!857619 () Bool)

(declare-fun tp!270421 () Bool)

(assert (=> b!857619 (= e!564455 tp!270421)))

(declare-fun b!857617 () Bool)

(assert (=> b!857617 (= e!564455 tp_is_empty!3993)))

(declare-fun b!857620 () Bool)

(declare-fun tp!270420 () Bool)

(declare-fun tp!270418 () Bool)

(assert (=> b!857620 (= e!564455 (and tp!270420 tp!270418))))

(assert (= (and b!857043 ((_ is ElementMatch!2167) (regOne!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857617))

(assert (= (and b!857043 ((_ is Concat!3968) (regOne!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857618))

(assert (= (and b!857043 ((_ is Star!2167) (regOne!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857619))

(assert (= (and b!857043 ((_ is Union!2167) (regOne!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857620))

(declare-fun e!564456 () Bool)

(assert (=> b!857043 (= tp!270346 e!564456)))

(declare-fun b!857622 () Bool)

(declare-fun tp!270422 () Bool)

(declare-fun tp!270424 () Bool)

(assert (=> b!857622 (= e!564456 (and tp!270422 tp!270424))))

(declare-fun b!857623 () Bool)

(declare-fun tp!270426 () Bool)

(assert (=> b!857623 (= e!564456 tp!270426)))

(declare-fun b!857621 () Bool)

(assert (=> b!857621 (= e!564456 tp_is_empty!3993)))

(declare-fun b!857624 () Bool)

(declare-fun tp!270425 () Bool)

(declare-fun tp!270423 () Bool)

(assert (=> b!857624 (= e!564456 (and tp!270425 tp!270423))))

(assert (= (and b!857043 ((_ is ElementMatch!2167) (regTwo!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857621))

(assert (= (and b!857043 ((_ is Concat!3968) (regTwo!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857622))

(assert (= (and b!857043 ((_ is Star!2167) (regTwo!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857623))

(assert (= (and b!857043 ((_ is Union!2167) (regTwo!4846 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857624))

(declare-fun e!564457 () Bool)

(assert (=> b!857045 (= tp!270347 e!564457)))

(declare-fun b!857626 () Bool)

(declare-fun tp!270427 () Bool)

(declare-fun tp!270429 () Bool)

(assert (=> b!857626 (= e!564457 (and tp!270427 tp!270429))))

(declare-fun b!857627 () Bool)

(declare-fun tp!270431 () Bool)

(assert (=> b!857627 (= e!564457 tp!270431)))

(declare-fun b!857625 () Bool)

(assert (=> b!857625 (= e!564457 tp_is_empty!3993)))

(declare-fun b!857628 () Bool)

(declare-fun tp!270430 () Bool)

(declare-fun tp!270428 () Bool)

(assert (=> b!857628 (= e!564457 (and tp!270430 tp!270428))))

(assert (= (and b!857045 ((_ is ElementMatch!2167) (regOne!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857625))

(assert (= (and b!857045 ((_ is Concat!3968) (regOne!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857626))

(assert (= (and b!857045 ((_ is Star!2167) (regOne!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857627))

(assert (= (and b!857045 ((_ is Union!2167) (regOne!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857628))

(declare-fun e!564458 () Bool)

(assert (=> b!857045 (= tp!270345 e!564458)))

(declare-fun b!857630 () Bool)

(declare-fun tp!270432 () Bool)

(declare-fun tp!270434 () Bool)

(assert (=> b!857630 (= e!564458 (and tp!270432 tp!270434))))

(declare-fun b!857631 () Bool)

(declare-fun tp!270436 () Bool)

(assert (=> b!857631 (= e!564458 tp!270436)))

(declare-fun b!857629 () Bool)

(assert (=> b!857629 (= e!564458 tp_is_empty!3993)))

(declare-fun b!857632 () Bool)

(declare-fun tp!270435 () Bool)

(declare-fun tp!270433 () Bool)

(assert (=> b!857632 (= e!564458 (and tp!270435 tp!270433))))

(assert (= (and b!857045 ((_ is ElementMatch!2167) (regTwo!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857629))

(assert (= (and b!857045 ((_ is Concat!3968) (regTwo!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857630))

(assert (= (and b!857045 ((_ is Star!2167) (regTwo!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857631))

(assert (= (and b!857045 ((_ is Union!2167) (regTwo!4847 (regex!1734 (rule!3157 (h!14643 l!5107)))))) b!857632))

(declare-fun e!564459 () Bool)

(assert (=> b!857021 (= tp!270319 e!564459)))

(declare-fun b!857634 () Bool)

(declare-fun tp!270437 () Bool)

(declare-fun tp!270439 () Bool)

(assert (=> b!857634 (= e!564459 (and tp!270437 tp!270439))))

(declare-fun b!857635 () Bool)

(declare-fun tp!270441 () Bool)

(assert (=> b!857635 (= e!564459 tp!270441)))

(declare-fun b!857633 () Bool)

(assert (=> b!857633 (= e!564459 tp_is_empty!3993)))

(declare-fun b!857636 () Bool)

(declare-fun tp!270440 () Bool)

(declare-fun tp!270438 () Bool)

(assert (=> b!857636 (= e!564459 (and tp!270440 tp!270438))))

(assert (= (and b!857021 ((_ is ElementMatch!2167) (regOne!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857633))

(assert (= (and b!857021 ((_ is Concat!3968) (regOne!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857634))

(assert (= (and b!857021 ((_ is Star!2167) (regOne!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857635))

(assert (= (and b!857021 ((_ is Union!2167) (regOne!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857636))

(declare-fun e!564460 () Bool)

(assert (=> b!857021 (= tp!270321 e!564460)))

(declare-fun b!857638 () Bool)

(declare-fun tp!270442 () Bool)

(declare-fun tp!270444 () Bool)

(assert (=> b!857638 (= e!564460 (and tp!270442 tp!270444))))

(declare-fun b!857639 () Bool)

(declare-fun tp!270446 () Bool)

(assert (=> b!857639 (= e!564460 tp!270446)))

(declare-fun b!857637 () Bool)

(assert (=> b!857637 (= e!564460 tp_is_empty!3993)))

(declare-fun b!857640 () Bool)

(declare-fun tp!270445 () Bool)

(declare-fun tp!270443 () Bool)

(assert (=> b!857640 (= e!564460 (and tp!270445 tp!270443))))

(assert (= (and b!857021 ((_ is ElementMatch!2167) (regTwo!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857637))

(assert (= (and b!857021 ((_ is Concat!3968) (regTwo!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857638))

(assert (= (and b!857021 ((_ is Star!2167) (regTwo!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857639))

(assert (= (and b!857021 ((_ is Union!2167) (regTwo!4846 (regex!1734 (rule!3157 separatorToken!297))))) b!857640))

(declare-fun b!857641 () Bool)

(declare-fun e!564461 () Bool)

(declare-fun tp!270447 () Bool)

(assert (=> b!857641 (= e!564461 (and tp_is_empty!3993 tp!270447))))

(assert (=> b!857009 (= tp!270308 e!564461)))

(assert (= (and b!857009 ((_ is Cons!9241) (t!96713 (originalCharacters!2290 (h!14643 l!5107))))) b!857641))

(declare-fun b!857644 () Bool)

(declare-fun e!564464 () Bool)

(assert (=> b!857644 (= e!564464 true)))

(declare-fun b!857643 () Bool)

(declare-fun e!564463 () Bool)

(assert (=> b!857643 (= e!564463 e!564464)))

(declare-fun b!857642 () Bool)

(declare-fun e!564462 () Bool)

(assert (=> b!857642 (= e!564462 e!564463)))

(assert (=> b!856857 e!564462))

(assert (= b!857643 b!857644))

(assert (= b!857642 b!857643))

(assert (= (and b!856857 ((_ is Cons!9243) (t!96715 rules!2621))) b!857642))

(assert (=> b!857644 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 (t!96715 rules!2621))))) (dynLambda!4350 order!5979 lambda!25700))))

(assert (=> b!857644 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621))))) (dynLambda!4350 order!5979 lambda!25700))))

(declare-fun tp!270448 () Bool)

(declare-fun b!857645 () Bool)

(declare-fun e!564465 () Bool)

(declare-fun tp!270450 () Bool)

(assert (=> b!857645 (= e!564465 (and (inv!11763 (left!6839 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))))) tp!270448 (inv!11763 (right!7169 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))))) tp!270450))))

(declare-fun b!857647 () Bool)

(declare-fun e!564466 () Bool)

(declare-fun tp!270449 () Bool)

(assert (=> b!857647 (= e!564466 tp!270449)))

(declare-fun b!857646 () Bool)

(assert (=> b!857646 (= e!564465 (and (inv!11769 (xs!5752 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))))) e!564466))))

(assert (=> b!856988 (= tp!270292 (and (inv!11763 (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107))))) e!564465))))

(assert (= (and b!856988 ((_ is Node!3063) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))))) b!857645))

(assert (= b!857646 b!857647))

(assert (= (and b!856988 ((_ is Leaf!4518) (c!138856 (dynLambda!4343 (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (value!56118 (h!14643 l!5107)))))) b!857646))

(declare-fun m!1100355 () Bool)

(assert (=> b!857645 m!1100355))

(declare-fun m!1100357 () Bool)

(assert (=> b!857645 m!1100357))

(declare-fun m!1100359 () Bool)

(assert (=> b!857646 m!1100359))

(assert (=> b!856988 m!1098729))

(declare-fun b!857650 () Bool)

(declare-fun e!564469 () Bool)

(assert (=> b!857650 (= e!564469 true)))

(declare-fun b!857649 () Bool)

(declare-fun e!564468 () Bool)

(assert (=> b!857649 (= e!564468 e!564469)))

(declare-fun b!857648 () Bool)

(declare-fun e!564467 () Bool)

(assert (=> b!857648 (= e!564467 e!564468)))

(assert (=> b!856852 e!564467))

(assert (= b!857649 b!857650))

(assert (= b!857648 b!857649))

(assert (= (and b!856852 ((_ is Cons!9243) (t!96715 rules!2621))) b!857648))

(assert (=> b!857650 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 (t!96715 rules!2621))))) (dynLambda!4350 order!5979 lambda!25699))))

(assert (=> b!857650 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621))))) (dynLambda!4350 order!5979 lambda!25699))))

(declare-fun e!564470 () Bool)

(assert (=> b!857027 (= tp!270327 e!564470)))

(declare-fun b!857652 () Bool)

(declare-fun tp!270451 () Bool)

(declare-fun tp!270453 () Bool)

(assert (=> b!857652 (= e!564470 (and tp!270451 tp!270453))))

(declare-fun b!857653 () Bool)

(declare-fun tp!270455 () Bool)

(assert (=> b!857653 (= e!564470 tp!270455)))

(declare-fun b!857651 () Bool)

(assert (=> b!857651 (= e!564470 tp_is_empty!3993)))

(declare-fun b!857654 () Bool)

(declare-fun tp!270454 () Bool)

(declare-fun tp!270452 () Bool)

(assert (=> b!857654 (= e!564470 (and tp!270454 tp!270452))))

(assert (= (and b!857027 ((_ is ElementMatch!2167) (regOne!4847 (regex!1734 (h!14644 rules!2621))))) b!857651))

(assert (= (and b!857027 ((_ is Concat!3968) (regOne!4847 (regex!1734 (h!14644 rules!2621))))) b!857652))

(assert (= (and b!857027 ((_ is Star!2167) (regOne!4847 (regex!1734 (h!14644 rules!2621))))) b!857653))

(assert (= (and b!857027 ((_ is Union!2167) (regOne!4847 (regex!1734 (h!14644 rules!2621))))) b!857654))

(declare-fun e!564471 () Bool)

(assert (=> b!857027 (= tp!270325 e!564471)))

(declare-fun b!857656 () Bool)

(declare-fun tp!270456 () Bool)

(declare-fun tp!270458 () Bool)

(assert (=> b!857656 (= e!564471 (and tp!270456 tp!270458))))

(declare-fun b!857657 () Bool)

(declare-fun tp!270460 () Bool)

(assert (=> b!857657 (= e!564471 tp!270460)))

(declare-fun b!857655 () Bool)

(assert (=> b!857655 (= e!564471 tp_is_empty!3993)))

(declare-fun b!857658 () Bool)

(declare-fun tp!270459 () Bool)

(declare-fun tp!270457 () Bool)

(assert (=> b!857658 (= e!564471 (and tp!270459 tp!270457))))

(assert (= (and b!857027 ((_ is ElementMatch!2167) (regTwo!4847 (regex!1734 (h!14644 rules!2621))))) b!857655))

(assert (= (and b!857027 ((_ is Concat!3968) (regTwo!4847 (regex!1734 (h!14644 rules!2621))))) b!857656))

(assert (= (and b!857027 ((_ is Star!2167) (regTwo!4847 (regex!1734 (h!14644 rules!2621))))) b!857657))

(assert (= (and b!857027 ((_ is Union!2167) (regTwo!4847 (regex!1734 (h!14644 rules!2621))))) b!857658))

(declare-fun e!564472 () Bool)

(assert (=> b!857025 (= tp!270324 e!564472)))

(declare-fun b!857660 () Bool)

(declare-fun tp!270461 () Bool)

(declare-fun tp!270463 () Bool)

(assert (=> b!857660 (= e!564472 (and tp!270461 tp!270463))))

(declare-fun b!857661 () Bool)

(declare-fun tp!270465 () Bool)

(assert (=> b!857661 (= e!564472 tp!270465)))

(declare-fun b!857659 () Bool)

(assert (=> b!857659 (= e!564472 tp_is_empty!3993)))

(declare-fun b!857662 () Bool)

(declare-fun tp!270464 () Bool)

(declare-fun tp!270462 () Bool)

(assert (=> b!857662 (= e!564472 (and tp!270464 tp!270462))))

(assert (= (and b!857025 ((_ is ElementMatch!2167) (regOne!4846 (regex!1734 (h!14644 rules!2621))))) b!857659))

(assert (= (and b!857025 ((_ is Concat!3968) (regOne!4846 (regex!1734 (h!14644 rules!2621))))) b!857660))

(assert (= (and b!857025 ((_ is Star!2167) (regOne!4846 (regex!1734 (h!14644 rules!2621))))) b!857661))

(assert (= (and b!857025 ((_ is Union!2167) (regOne!4846 (regex!1734 (h!14644 rules!2621))))) b!857662))

(declare-fun e!564473 () Bool)

(assert (=> b!857025 (= tp!270326 e!564473)))

(declare-fun b!857664 () Bool)

(declare-fun tp!270466 () Bool)

(declare-fun tp!270468 () Bool)

(assert (=> b!857664 (= e!564473 (and tp!270466 tp!270468))))

(declare-fun b!857665 () Bool)

(declare-fun tp!270470 () Bool)

(assert (=> b!857665 (= e!564473 tp!270470)))

(declare-fun b!857663 () Bool)

(assert (=> b!857663 (= e!564473 tp_is_empty!3993)))

(declare-fun b!857666 () Bool)

(declare-fun tp!270469 () Bool)

(declare-fun tp!270467 () Bool)

(assert (=> b!857666 (= e!564473 (and tp!270469 tp!270467))))

(assert (= (and b!857025 ((_ is ElementMatch!2167) (regTwo!4846 (regex!1734 (h!14644 rules!2621))))) b!857663))

(assert (= (and b!857025 ((_ is Concat!3968) (regTwo!4846 (regex!1734 (h!14644 rules!2621))))) b!857664))

(assert (= (and b!857025 ((_ is Star!2167) (regTwo!4846 (regex!1734 (h!14644 rules!2621))))) b!857665))

(assert (= (and b!857025 ((_ is Union!2167) (regTwo!4846 (regex!1734 (h!14644 rules!2621))))) b!857666))

(declare-fun b!857669 () Bool)

(declare-fun e!564476 () Bool)

(assert (=> b!857669 (= e!564476 true)))

(declare-fun b!857668 () Bool)

(declare-fun e!564475 () Bool)

(assert (=> b!857668 (= e!564475 e!564476)))

(declare-fun b!857667 () Bool)

(declare-fun e!564474 () Bool)

(assert (=> b!857667 (= e!564474 e!564475)))

(assert (=> b!856727 e!564474))

(assert (= b!857668 b!857669))

(assert (= b!857667 b!857668))

(assert (= (and b!856727 ((_ is Cons!9243) (t!96715 rules!2621))) b!857667))

(assert (=> b!857669 (< (dynLambda!4349 order!5977 (toValue!2791 (transformation!1734 (h!14644 (t!96715 rules!2621))))) (dynLambda!4350 order!5979 lambda!25693))))

(assert (=> b!857669 (< (dynLambda!4351 order!5981 (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621))))) (dynLambda!4350 order!5979 lambda!25693))))

(declare-fun e!564477 () Bool)

(assert (=> b!857026 (= tp!270328 e!564477)))

(declare-fun b!857671 () Bool)

(declare-fun tp!270471 () Bool)

(declare-fun tp!270473 () Bool)

(assert (=> b!857671 (= e!564477 (and tp!270471 tp!270473))))

(declare-fun b!857672 () Bool)

(declare-fun tp!270475 () Bool)

(assert (=> b!857672 (= e!564477 tp!270475)))

(declare-fun b!857670 () Bool)

(assert (=> b!857670 (= e!564477 tp_is_empty!3993)))

(declare-fun b!857673 () Bool)

(declare-fun tp!270474 () Bool)

(declare-fun tp!270472 () Bool)

(assert (=> b!857673 (= e!564477 (and tp!270474 tp!270472))))

(assert (= (and b!857026 ((_ is ElementMatch!2167) (reg!2496 (regex!1734 (h!14644 rules!2621))))) b!857670))

(assert (= (and b!857026 ((_ is Concat!3968) (reg!2496 (regex!1734 (h!14644 rules!2621))))) b!857671))

(assert (= (and b!857026 ((_ is Star!2167) (reg!2496 (regex!1734 (h!14644 rules!2621))))) b!857672))

(assert (= (and b!857026 ((_ is Union!2167) (reg!2496 (regex!1734 (h!14644 rules!2621))))) b!857673))

(declare-fun b_lambda!28897 () Bool)

(assert (= b_lambda!28863 (or (and b!857041 b_free!26035) (and b!857576 b_free!26039 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))))) (and b!857582 b_free!26043 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))))) (and b!856610 b_free!26015 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))))) (and b!856616 b_free!26019 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))))) (and b!857008 b_free!26031 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))))) (and b!856609 b_free!26011 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))))) b_lambda!28897)))

(declare-fun b_lambda!28899 () Bool)

(assert (= b_lambda!28887 (or d!268037 b_lambda!28899)))

(declare-fun bs!232064 () Bool)

(declare-fun d!268605 () Bool)

(assert (= bs!232064 (and d!268605 d!268037)))

(assert (=> bs!232064 (= (dynLambda!4347 lambda!25693 (h!14643 lt!323878)) (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323878)))))

(assert (=> bs!232064 m!1098317))

(assert (=> b!857520 d!268605))

(declare-fun b_lambda!28901 () Bool)

(assert (= b_lambda!28875 (or (and b!857582 b_free!26043 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!856609 b_free!26011 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!857576 b_free!26039 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!857041 b_free!26035 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!857008 b_free!26031 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!856610 b_free!26015 (= (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))) (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))))) (and b!856616 b_free!26019) b_lambda!28901)))

(declare-fun b_lambda!28903 () Bool)

(assert (= b_lambda!28865 (or d!268091 b_lambda!28903)))

(declare-fun bs!232066 () Bool)

(declare-fun d!268609 () Bool)

(assert (= bs!232066 (and d!268609 d!268091)))

(assert (=> bs!232066 (= (dynLambda!4347 lambda!25699 (h!14643 l!5107)) (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 l!5107)))))

(assert (=> bs!232066 m!1098513))

(assert (=> b!857365 d!268609))

(declare-fun b_lambda!28905 () Bool)

(assert (= b_lambda!28879 (or b!856620 b_lambda!28905)))

(declare-fun bs!232067 () Bool)

(declare-fun d!268611 () Bool)

(assert (= bs!232067 (and d!268611 b!856620)))

(assert (=> bs!232067 (= (dynLambda!4347 lambda!25690 (h!14643 (t!96714 l!5107))) (not (isSeparator!1734 (rule!3157 (h!14643 (t!96714 l!5107))))))))

(assert (=> b!857488 d!268611))

(declare-fun b_lambda!28907 () Bool)

(assert (= b_lambda!28845 (or (and b!857008 b_free!26031 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 rules!2621)))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!856610 b_free!26015) (and b!857576 b_free!26039 (= (toChars!2650 (transformation!1734 (h!14644 (t!96715 (t!96715 rules!2621))))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!857582 b_free!26043 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 (t!96714 l!5107)))))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!857041 b_free!26035 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 (t!96714 l!5107))))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!856609 b_free!26011 (= (toChars!2650 (transformation!1734 (h!14644 rules!2621))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) (and b!856616 b_free!26019 (= (toChars!2650 (transformation!1734 (rule!3157 (h!14643 l!5107)))) (toChars!2650 (transformation!1734 (rule!3157 separatorToken!297))))) b_lambda!28907)))

(declare-fun b_lambda!28909 () Bool)

(assert (= b_lambda!28839 (or d!268093 b_lambda!28909)))

(declare-fun bs!232068 () Bool)

(declare-fun d!268615 () Bool)

(assert (= bs!232068 (and d!268615 d!268093)))

(assert (=> bs!232068 (= (dynLambda!4347 lambda!25700 (h!14643 lt!323881)) (rulesProduceIndividualToken!600 thiss!20117 rules!2621 (h!14643 lt!323881)))))

(assert (=> bs!232068 m!1098389))

(assert (=> b!857046 d!268615))

(check-sat (not b!857266) (not b!857634) (not b!857619) (not b_next!26105) (not b!857114) (not d!268233) (not b!857362) (not b!857456) (not b!857088) (not b_lambda!28889) (not d!268369) (not b!857560) (not d!268347) (not tb!60887) (not b!857063) (not b_lambda!28905) (not b!857333) (not b!857525) (not b!857635) (not b_lambda!28909) (not d!268453) (not b!857664) (not b!857665) (not b!857366) (not d!268379) (not b!857360) (not d!268209) (not b!857645) b_and!76029 (not d!268313) (not b!857061) (not d!268309) (not b!857656) (not bs!232068) (not b_lambda!28833) (not d!268241) (not d!268449) (not b!857601) (not b!857315) (not b!857334) (not b!857067) (not b!857627) (not d!268487) (not d!268569) (not b_next!26081) (not d!268327) (not b!857439) (not d!268145) (not b!857381) (not d!268457) (not b!857620) (not b!857341) (not d!268277) (not tb!60947) (not b!857314) (not d!268139) (not b!857379) (not b!857369) (not b!857243) (not b!857606) (not b!857141) (not b!857068) (not b!857575) (not b!857338) (not b!857638) (not d!268451) (not b!857051) (not d!268153) (not d!268473) (not b!857648) (not b!857489) (not b!857639) (not b!857245) (not b!857608) (not b!856988) (not b_next!26107) (not d!268279) (not d!268187) b_and!76035 (not b!857612) (not b!857295) (not b!857440) (not b_lambda!28843) (not b!857574) (not d!268351) (not d!268271) b_and!76059 (not b!857569) (not b!857537) (not d!268387) (not d!268359) (not b!857465) (not d!268365) (not b!857087) (not d!268427) (not b!857457) (not b!857133) (not b!857570) (not b!857120) (not d!268317) (not d!268371) (not d!268273) (not b!857192) (not b!857632) (not d!268525) (not b!857618) (not b!857477) (not d!268577) (not b!857521) (not b!857484) (not b!857580) (not b!857628) (not tb!60797) (not b!857607) (not b!857313) (not b!857573) (not b!857193) (not b!857667) (not b!857654) (not b!857080) b_and!76063 (not b!857672) (not d!268151) (not b!857453) (not b!857597) (not d!268147) (not d!268461) (not d!268469) b_and!76061 (not b!857361) (not b_next!26101) (not b!857652) (not d!268471) (not b_lambda!28877) (not b_lambda!28835) (not d!268213) (not b!857605) (not b!857661) (not tb!60817) (not bs!232064) (not d!268189) (not b!857113) (not b!857143) (not d!268363) (not b_next!26073) (not d!268177) (not b_next!26079) (not b!857559) (not b!857339) (not d!268533) (not b!857483) (not b!857616) (not b!857662) (not b!857130) (not b!857187) (not b!857189) (not b!857438) (not d!268311) (not b_lambda!28841) (not b_next!26093) (not d!268435) (not d!268149) (not b!857451) (not b!857630) (not b!857149) (not b!857171) (not b_lambda!28849) (not b!857602) (not b!857640) (not b!857289) (not b!857673) (not b!857666) (not tb!60807) (not b!857159) (not b!857337) b_and!76027 (not b!857172) (not b!857246) (not b!857603) (not b!857134) (not d!268199) (not b_lambda!28901) (not d!268459) (not b!857148) (not d!268433) (not b!857598) (not b!857626) (not b!857476) (not b!857128) (not b!857129) b_and!75829 (not b!857624) (not b!857647) (not b!857359) (not b!857140) (not b!857425) (not b!857464) (not d!268155) (not b!857660) (not b!857367) (not b!857622) (not b_lambda!28847) (not b!857308) (not b_next!26077) b_and!75789 (not b!857047) (not b!857144) (not b_next!26097) (not b!857657) (not d!268561) (not d!268181) (not b!857364) (not d!268179) (not b!857543) (not b!857415) (not tb!60877) (not b!857450) (not b!857112) (not b_next!26075) (not d!268323) (not b!857594) (not tb!60897) (not b!857595) (not b!857150) (not b!857380) (not b_next!26103) (not b!857340) (not b!857631) (not b!857418) (not b!857599) (not d!268367) (not b!857305) (not d!268289) (not b!857079) (not b!857553) (not d!268383) (not b!857371) (not b_lambda!28897) (not b!857636) (not b!857526) (not d!268381) b_and!75785 (not tb!60927) (not d!268195) (not d!268167) (not b!857307) (not d!268567) (not b!857571) tp_is_empty!3993 (not b_lambda!28867) (not b!857332) (not tb!60827) (not d!268527) (not d!268143) (not b!857310) (not d!268477) (not b!857322) (not d!268343) (not b!856640) (not b!857303) (not b_next!26095) (not b!857169) (not b!857224) (not d!268221) (not b!857581) (not d!268227) (not b_next!26083) (not b!857126) (not b!857646) (not b!857417) (not d!268429) (not b!857372) (not b!857223) (not b!857190) (not b!857111) (not d!268353) (not b_lambda!28837) (not b!857658) (not b!857671) (not b!857102) (not d!268475) (not b!857549) (not b_next!26099) (not b!857060) (not b!857374) (not d!268559) (not b!857623) (not d!268169) (not b!857375) (not d!268321) (not b!857641) (not b!857561) (not b!857168) (not d!268215) (not d!268165) (not b_lambda!28907) (not b!857119) (not d!268349) (not b!857532) (not d!268417) (not b!857048) b_and!75793 (not b!857469) (not d!268333) (not b!857615) (not b!857125) (not b_lambda!28861) (not b!857614) (not b!857244) (not d!268331) (not b!857062) (not d!268575) (not b!857427) (not d!268159) (not b!857524) (not d!268205) (not b!857064) (not d!268465) b_and!76033 (not b!857642) (not d!268207) (not bm!50529) b_and!76055 (not d!268191) (not bs!232066) (not d!268357) (not b!857579) (not b!857226) (not b!857363) (not b!857468) (not b!857419) (not b!857225) (not b!857311) (not d!268467) (not b_lambda!28899) (not b!857170) (not b!857611) b_and!76031 (not b!857069) (not b_lambda!28903) (not d!268391) (not b!857610) (not b!857188) (not b!857593) (not b!857115) (not b!857653) (not b!857191) b_and!75833 (not d!268239))
(check-sat (not b_next!26105) b_and!76029 (not b_next!26081) (not b_next!26107) b_and!76035 b_and!76059 (not b_next!26093) b_and!76027 b_and!75829 (not b_next!26097) (not b_next!26075) (not b_next!26103) b_and!75785 (not b_next!26095) (not b_next!26083) (not b_next!26099) b_and!75793 b_and!76031 b_and!75833 b_and!76063 (not b_next!26101) b_and!76061 (not b_next!26073) (not b_next!26079) (not b_next!26077) b_and!75789 b_and!76033 b_and!76055)
