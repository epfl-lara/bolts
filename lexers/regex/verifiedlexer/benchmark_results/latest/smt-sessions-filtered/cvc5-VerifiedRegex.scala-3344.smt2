; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189826 () Bool)

(assert start!189826)

(declare-fun b!1894017 () Bool)

(declare-fun b_free!52781 () Bool)

(declare-fun b_next!53485 () Bool)

(assert (=> b!1894017 (= b_free!52781 (not b_next!53485))))

(declare-fun tp!540315 () Bool)

(declare-fun b_and!145851 () Bool)

(assert (=> b!1894017 (= tp!540315 b_and!145851)))

(declare-fun b_free!52783 () Bool)

(declare-fun b_next!53487 () Bool)

(assert (=> b!1894017 (= b_free!52783 (not b_next!53487))))

(declare-fun tp!540310 () Bool)

(declare-fun b_and!145853 () Bool)

(assert (=> b!1894017 (= tp!540310 b_and!145853)))

(declare-fun b!1894018 () Bool)

(declare-fun b_free!52785 () Bool)

(declare-fun b_next!53489 () Bool)

(assert (=> b!1894018 (= b_free!52785 (not b_next!53489))))

(declare-fun tp!540305 () Bool)

(declare-fun b_and!145855 () Bool)

(assert (=> b!1894018 (= tp!540305 b_and!145855)))

(declare-fun b_free!52787 () Bool)

(declare-fun b_next!53491 () Bool)

(assert (=> b!1894018 (= b_free!52787 (not b_next!53491))))

(declare-fun tp!540313 () Bool)

(declare-fun b_and!145857 () Bool)

(assert (=> b!1894018 (= tp!540313 b_and!145857)))

(declare-fun b!1894023 () Bool)

(declare-fun b_free!52789 () Bool)

(declare-fun b_next!53493 () Bool)

(assert (=> b!1894023 (= b_free!52789 (not b_next!53493))))

(declare-fun tp!540307 () Bool)

(declare-fun b_and!145859 () Bool)

(assert (=> b!1894023 (= tp!540307 b_and!145859)))

(declare-fun b_free!52791 () Bool)

(declare-fun b_next!53495 () Bool)

(assert (=> b!1894023 (= b_free!52791 (not b_next!53495))))

(declare-fun tp!540308 () Bool)

(declare-fun b_and!145861 () Bool)

(assert (=> b!1894023 (= tp!540308 b_and!145861)))

(declare-fun b!1894013 () Bool)

(declare-fun res!845326 () Bool)

(declare-fun e!1209029 () Bool)

(assert (=> b!1894013 (=> (not res!845326) (not e!1209029))))

(declare-datatypes ((LexerInterface!3376 0))(
  ( (LexerInterfaceExt!3373 (__x!13296 Int)) (Lexer!3374) )
))
(declare-fun thiss!23328 () LexerInterface!3376)

(declare-datatypes ((List!21294 0))(
  ( (Nil!21212) (Cons!21212 (h!26613 (_ BitVec 16)) (t!175959 List!21294)) )
))
(declare-datatypes ((TokenValue!3899 0))(
  ( (FloatLiteralValue!7798 (text!27738 List!21294)) (TokenValueExt!3898 (__x!13297 Int)) (Broken!19495 (value!118812 List!21294)) (Object!3980) (End!3899) (Def!3899) (Underscore!3899) (Match!3899) (Else!3899) (Error!3899) (Case!3899) (If!3899) (Extends!3899) (Abstract!3899) (Class!3899) (Val!3899) (DelimiterValue!7798 (del!3959 List!21294)) (KeywordValue!3905 (value!118813 List!21294)) (CommentValue!7798 (value!118814 List!21294)) (WhitespaceValue!7798 (value!118815 List!21294)) (IndentationValue!3899 (value!118816 List!21294)) (String!24614) (Int32!3899) (Broken!19496 (value!118817 List!21294)) (Boolean!3900) (Unit!35584) (OperatorValue!3902 (op!3959 List!21294)) (IdentifierValue!7798 (value!118818 List!21294)) (IdentifierValue!7799 (value!118819 List!21294)) (WhitespaceValue!7799 (value!118820 List!21294)) (True!7798) (False!7798) (Broken!19497 (value!118821 List!21294)) (Broken!19498 (value!118822 List!21294)) (True!7799) (RightBrace!3899) (RightBracket!3899) (Colon!3899) (Null!3899) (Comma!3899) (LeftBracket!3899) (False!7799) (LeftBrace!3899) (ImaginaryLiteralValue!3899 (text!27739 List!21294)) (StringLiteralValue!11697 (value!118823 List!21294)) (EOFValue!3899 (value!118824 List!21294)) (IdentValue!3899 (value!118825 List!21294)) (DelimiterValue!7799 (value!118826 List!21294)) (DedentValue!3899 (value!118827 List!21294)) (NewLineValue!3899 (value!118828 List!21294)) (IntegerValue!11697 (value!118829 (_ BitVec 32)) (text!27740 List!21294)) (IntegerValue!11698 (value!118830 Int) (text!27741 List!21294)) (Times!3899) (Or!3899) (Equal!3899) (Minus!3899) (Broken!19499 (value!118831 List!21294)) (And!3899) (Div!3899) (LessEqual!3899) (Mod!3899) (Concat!9087) (Not!3899) (Plus!3899) (SpaceValue!3899 (value!118832 List!21294)) (IntegerValue!11699 (value!118833 Int) (text!27742 List!21294)) (StringLiteralValue!11698 (text!27743 List!21294)) (FloatLiteralValue!7799 (text!27744 List!21294)) (BytesLiteralValue!3899 (value!118834 List!21294)) (CommentValue!7799 (value!118835 List!21294)) (StringLiteralValue!11699 (value!118836 List!21294)) (ErrorTokenValue!3899 (msg!3960 List!21294)) )
))
(declare-datatypes ((C!10522 0))(
  ( (C!10523 (val!6213 Int)) )
))
(declare-datatypes ((List!21295 0))(
  ( (Nil!21213) (Cons!21213 (h!26614 C!10522) (t!175960 List!21295)) )
))
(declare-datatypes ((String!24615 0))(
  ( (String!24616 (value!118837 String)) )
))
(declare-datatypes ((IArray!14133 0))(
  ( (IArray!14134 (innerList!7124 List!21295)) )
))
(declare-datatypes ((Conc!7064 0))(
  ( (Node!7064 (left!17028 Conc!7064) (right!17358 Conc!7064) (csize!14358 Int) (cheight!7275 Int)) (Leaf!10409 (xs!9958 IArray!14133) (csize!14359 Int)) (Empty!7064) )
))
(declare-datatypes ((BalanceConc!13944 0))(
  ( (BalanceConc!13945 (c!309068 Conc!7064)) )
))
(declare-datatypes ((TokenValueInjection!7382 0))(
  ( (TokenValueInjection!7383 (toValue!5376 Int) (toChars!5235 Int)) )
))
(declare-datatypes ((Regex!5188 0))(
  ( (ElementMatch!5188 (c!309069 C!10522)) (Concat!9088 (regOne!10888 Regex!5188) (regTwo!10888 Regex!5188)) (EmptyExpr!5188) (Star!5188 (reg!5517 Regex!5188)) (EmptyLang!5188) (Union!5188 (regOne!10889 Regex!5188) (regTwo!10889 Regex!5188)) )
))
(declare-datatypes ((Rule!7326 0))(
  ( (Rule!7327 (regex!3763 Regex!5188) (tag!4177 String!24615) (isSeparator!3763 Bool) (transformation!3763 TokenValueInjection!7382)) )
))
(declare-datatypes ((List!21296 0))(
  ( (Nil!21214) (Cons!21214 (h!26615 Rule!7326) (t!175961 List!21296)) )
))
(declare-fun rules!3198 () List!21296)

(declare-datatypes ((Token!7078 0))(
  ( (Token!7079 (value!118838 TokenValue!3899) (rule!5956 Rule!7326) (size!16827 Int) (originalCharacters!4570 List!21295)) )
))
(declare-datatypes ((List!21297 0))(
  ( (Nil!21215) (Cons!21215 (h!26616 Token!7078) (t!175962 List!21297)) )
))
(declare-fun tokens!598 () List!21297)

(declare-fun rulesProduceEachTokenIndividuallyList!1107 (LexerInterface!3376 List!21296 List!21297) Bool)

(assert (=> b!1894013 (= res!845326 (rulesProduceEachTokenIndividuallyList!1107 thiss!23328 rules!3198 tokens!598))))

(declare-fun tp!540309 () Bool)

(declare-fun e!1209023 () Bool)

(declare-fun b!1894014 () Bool)

(declare-fun e!1209033 () Bool)

(declare-fun inv!28311 (String!24615) Bool)

(declare-fun inv!28314 (TokenValueInjection!7382) Bool)

(assert (=> b!1894014 (= e!1209023 (and tp!540309 (inv!28311 (tag!4177 (h!26615 rules!3198))) (inv!28314 (transformation!3763 (h!26615 rules!3198))) e!1209033))))

(declare-fun separatorToken!354 () Token!7078)

(declare-fun b!1894015 () Bool)

(declare-fun e!1209035 () Bool)

(declare-fun e!1209025 () Bool)

(declare-fun tp!540311 () Bool)

(assert (=> b!1894015 (= e!1209025 (and tp!540311 (inv!28311 (tag!4177 (rule!5956 separatorToken!354))) (inv!28314 (transformation!3763 (rule!5956 separatorToken!354))) e!1209035))))

(declare-fun b!1894016 () Bool)

(declare-fun res!845329 () Bool)

(assert (=> b!1894016 (=> (not res!845329) (not e!1209029))))

(declare-fun lambda!73982 () Int)

(declare-fun forall!4437 (List!21297 Int) Bool)

(assert (=> b!1894016 (= res!845329 (forall!4437 tokens!598 lambda!73982))))

(assert (=> b!1894017 (= e!1209035 (and tp!540315 tp!540310))))

(assert (=> b!1894018 (= e!1209033 (and tp!540305 tp!540313))))

(declare-fun e!1209026 () Bool)

(declare-fun b!1894019 () Bool)

(declare-fun tp!540306 () Bool)

(declare-fun e!1209031 () Bool)

(declare-fun inv!21 (TokenValue!3899) Bool)

(assert (=> b!1894019 (= e!1209031 (and (inv!21 (value!118838 (h!26616 tokens!598))) e!1209026 tp!540306))))

(declare-fun b!1894020 () Bool)

(declare-fun res!845327 () Bool)

(assert (=> b!1894020 (=> (not res!845327) (not e!1209029))))

(declare-fun rulesInvariant!2983 (LexerInterface!3376 List!21296) Bool)

(assert (=> b!1894020 (= res!845327 (rulesInvariant!2983 thiss!23328 rules!3198))))

(declare-fun b!1894021 () Bool)

(declare-fun res!845328 () Bool)

(assert (=> b!1894021 (=> (not res!845328) (not e!1209029))))

(declare-fun sepAndNonSepRulesDisjointChars!861 (List!21296 List!21296) Bool)

(assert (=> b!1894021 (= res!845328 (sepAndNonSepRulesDisjointChars!861 rules!3198 rules!3198))))

(declare-fun tp!540312 () Bool)

(declare-fun e!1209024 () Bool)

(declare-fun b!1894022 () Bool)

(assert (=> b!1894022 (= e!1209024 (and (inv!21 (value!118838 separatorToken!354)) e!1209025 tp!540312))))

(declare-fun e!1209028 () Bool)

(assert (=> b!1894023 (= e!1209028 (and tp!540307 tp!540308))))

(declare-fun b!1894024 () Bool)

(declare-fun res!845331 () Bool)

(assert (=> b!1894024 (=> (not res!845331) (not e!1209029))))

(assert (=> b!1894024 (= res!845331 (is-Cons!21215 tokens!598))))

(declare-fun b!1894025 () Bool)

(declare-fun res!845332 () Bool)

(assert (=> b!1894025 (=> (not res!845332) (not e!1209029))))

(declare-fun rulesProduceIndividualToken!1548 (LexerInterface!3376 List!21296 Token!7078) Bool)

(assert (=> b!1894025 (= res!845332 (rulesProduceIndividualToken!1548 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun res!845330 () Bool)

(assert (=> start!189826 (=> (not res!845330) (not e!1209029))))

(assert (=> start!189826 (= res!845330 (is-Lexer!3374 thiss!23328))))

(assert (=> start!189826 e!1209029))

(assert (=> start!189826 true))

(declare-fun e!1209034 () Bool)

(assert (=> start!189826 e!1209034))

(declare-fun e!1209032 () Bool)

(assert (=> start!189826 e!1209032))

(declare-fun inv!28315 (Token!7078) Bool)

(assert (=> start!189826 (and (inv!28315 separatorToken!354) e!1209024)))

(declare-fun b!1894026 () Bool)

(declare-fun tp!540314 () Bool)

(assert (=> b!1894026 (= e!1209034 (and e!1209023 tp!540314))))

(declare-fun tp!540304 () Bool)

(declare-fun b!1894027 () Bool)

(assert (=> b!1894027 (= e!1209026 (and tp!540304 (inv!28311 (tag!4177 (rule!5956 (h!26616 tokens!598)))) (inv!28314 (transformation!3763 (rule!5956 (h!26616 tokens!598)))) e!1209028))))

(declare-fun b!1894028 () Bool)

(declare-fun res!845324 () Bool)

(assert (=> b!1894028 (=> (not res!845324) (not e!1209029))))

(declare-fun isEmpty!13027 (List!21296) Bool)

(assert (=> b!1894028 (= res!845324 (not (isEmpty!13027 rules!3198)))))

(declare-fun b!1894029 () Bool)

(assert (=> b!1894029 (= e!1209029 false)))

(declare-datatypes ((tuple2!20050 0))(
  ( (tuple2!20051 (_1!11494 Token!7078) (_2!11494 List!21295)) )
))
(declare-datatypes ((Option!4239 0))(
  ( (None!4238) (Some!4238 (v!26263 tuple2!20050)) )
))
(declare-fun lt!724731 () Option!4239)

(declare-fun maxPrefix!1828 (LexerInterface!3376 List!21296 List!21295) Option!4239)

(declare-fun list!8627 (BalanceConc!13944) List!21295)

(declare-fun charsOf!2319 (Token!7078) BalanceConc!13944)

(assert (=> b!1894029 (= lt!724731 (maxPrefix!1828 thiss!23328 rules!3198 (list!8627 (charsOf!2319 separatorToken!354))))))

(declare-datatypes ((Unit!35585 0))(
  ( (Unit!35586) )
))
(declare-fun lt!724730 () Unit!35585)

(declare-fun lt!724729 () BalanceConc!13944)

(declare-fun lemmaEqSameImage!471 (TokenValueInjection!7382 BalanceConc!13944 BalanceConc!13944) Unit!35585)

(declare-fun seqFromList!2635 (List!21295) BalanceConc!13944)

(assert (=> b!1894029 (= lt!724730 (lemmaEqSameImage!471 (transformation!3763 (rule!5956 (h!26616 tokens!598))) lt!724729 (seqFromList!2635 (originalCharacters!4570 (h!26616 tokens!598)))))))

(declare-fun lt!724732 () Unit!35585)

(declare-fun lemmaSemiInverse!742 (TokenValueInjection!7382 BalanceConc!13944) Unit!35585)

(assert (=> b!1894029 (= lt!724732 (lemmaSemiInverse!742 (transformation!3763 (rule!5956 (h!26616 tokens!598))) lt!724729))))

(assert (=> b!1894029 (= lt!724729 (charsOf!2319 (h!26616 tokens!598)))))

(declare-fun b!1894030 () Bool)

(declare-fun res!845325 () Bool)

(assert (=> b!1894030 (=> (not res!845325) (not e!1209029))))

(assert (=> b!1894030 (= res!845325 (isSeparator!3763 (rule!5956 separatorToken!354)))))

(declare-fun b!1894031 () Bool)

(declare-fun tp!540303 () Bool)

(assert (=> b!1894031 (= e!1209032 (and (inv!28315 (h!26616 tokens!598)) e!1209031 tp!540303))))

(assert (= (and start!189826 res!845330) b!1894028))

(assert (= (and b!1894028 res!845324) b!1894020))

(assert (= (and b!1894020 res!845327) b!1894013))

(assert (= (and b!1894013 res!845326) b!1894025))

(assert (= (and b!1894025 res!845332) b!1894030))

(assert (= (and b!1894030 res!845325) b!1894016))

(assert (= (and b!1894016 res!845329) b!1894021))

(assert (= (and b!1894021 res!845328) b!1894024))

(assert (= (and b!1894024 res!845331) b!1894029))

(assert (= b!1894014 b!1894018))

(assert (= b!1894026 b!1894014))

(assert (= (and start!189826 (is-Cons!21214 rules!3198)) b!1894026))

(assert (= b!1894027 b!1894023))

(assert (= b!1894019 b!1894027))

(assert (= b!1894031 b!1894019))

(assert (= (and start!189826 (is-Cons!21215 tokens!598)) b!1894031))

(assert (= b!1894015 b!1894017))

(assert (= b!1894022 b!1894015))

(assert (= start!189826 b!1894022))

(declare-fun m!2325499 () Bool)

(assert (=> b!1894020 m!2325499))

(declare-fun m!2325501 () Bool)

(assert (=> b!1894028 m!2325501))

(declare-fun m!2325503 () Bool)

(assert (=> b!1894031 m!2325503))

(declare-fun m!2325505 () Bool)

(assert (=> b!1894015 m!2325505))

(declare-fun m!2325507 () Bool)

(assert (=> b!1894015 m!2325507))

(declare-fun m!2325509 () Bool)

(assert (=> b!1894016 m!2325509))

(declare-fun m!2325511 () Bool)

(assert (=> b!1894025 m!2325511))

(declare-fun m!2325513 () Bool)

(assert (=> b!1894027 m!2325513))

(declare-fun m!2325515 () Bool)

(assert (=> b!1894027 m!2325515))

(declare-fun m!2325517 () Bool)

(assert (=> b!1894013 m!2325517))

(declare-fun m!2325519 () Bool)

(assert (=> b!1894019 m!2325519))

(declare-fun m!2325521 () Bool)

(assert (=> b!1894022 m!2325521))

(declare-fun m!2325523 () Bool)

(assert (=> b!1894014 m!2325523))

(declare-fun m!2325525 () Bool)

(assert (=> b!1894014 m!2325525))

(declare-fun m!2325527 () Bool)

(assert (=> start!189826 m!2325527))

(declare-fun m!2325529 () Bool)

(assert (=> b!1894021 m!2325529))

(declare-fun m!2325531 () Bool)

(assert (=> b!1894029 m!2325531))

(declare-fun m!2325533 () Bool)

(assert (=> b!1894029 m!2325533))

(declare-fun m!2325535 () Bool)

(assert (=> b!1894029 m!2325535))

(assert (=> b!1894029 m!2325535))

(declare-fun m!2325537 () Bool)

(assert (=> b!1894029 m!2325537))

(declare-fun m!2325539 () Bool)

(assert (=> b!1894029 m!2325539))

(declare-fun m!2325541 () Bool)

(assert (=> b!1894029 m!2325541))

(assert (=> b!1894029 m!2325531))

(assert (=> b!1894029 m!2325541))

(declare-fun m!2325543 () Bool)

(assert (=> b!1894029 m!2325543))

(push 1)

(assert (not b_next!53487))

(assert b_and!145861)

(assert (not b_next!53489))

(assert (not start!189826))

(assert (not b!1894028))

(assert b_and!145857)

(assert (not b!1894015))

(assert (not b!1894025))

(assert (not b!1894014))

(assert (not b!1894013))

(assert (not b!1894022))

(assert (not b_next!53493))

(assert b_and!145855)

(assert (not b_next!53495))

(assert b_and!145853)

(assert (not b_next!53491))

(assert b_and!145851)

(assert (not b!1894020))

(assert (not b!1894021))

(assert (not b!1894031))

(assert (not b!1894016))

(assert b_and!145859)

(assert (not b_next!53485))

(assert (not b!1894027))

(assert (not b!1894026))

(assert (not b!1894019))

(assert (not b!1894029))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!53487))

(assert b_and!145861)

(assert (not b_next!53489))

(assert b_and!145857)

(assert (not b_next!53493))

(assert b_and!145855)

(assert (not b_next!53495))

(assert b_and!145853)

(assert (not b_next!53491))

(assert b_and!145851)

(assert b_and!145859)

(assert (not b_next!53485))

(check-sat)

(pop 1)

