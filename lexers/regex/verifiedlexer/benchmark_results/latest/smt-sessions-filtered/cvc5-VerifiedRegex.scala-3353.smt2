; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190174 () Bool)

(assert start!190174)

(declare-fun b!1896831 () Bool)

(declare-fun b_free!53045 () Bool)

(declare-fun b_next!53749 () Bool)

(assert (=> b!1896831 (= b_free!53045 (not b_next!53749))))

(declare-fun tp!541482 () Bool)

(declare-fun b_and!146439 () Bool)

(assert (=> b!1896831 (= tp!541482 b_and!146439)))

(declare-fun b_free!53047 () Bool)

(declare-fun b_next!53751 () Bool)

(assert (=> b!1896831 (= b_free!53047 (not b_next!53751))))

(declare-fun tp!541486 () Bool)

(declare-fun b_and!146441 () Bool)

(assert (=> b!1896831 (= tp!541486 b_and!146441)))

(declare-fun b!1896820 () Bool)

(declare-fun b_free!53049 () Bool)

(declare-fun b_next!53753 () Bool)

(assert (=> b!1896820 (= b_free!53049 (not b_next!53753))))

(declare-fun tp!541487 () Bool)

(declare-fun b_and!146443 () Bool)

(assert (=> b!1896820 (= tp!541487 b_and!146443)))

(declare-fun b_free!53051 () Bool)

(declare-fun b_next!53755 () Bool)

(assert (=> b!1896820 (= b_free!53051 (not b_next!53755))))

(declare-fun tp!541475 () Bool)

(declare-fun b_and!146445 () Bool)

(assert (=> b!1896820 (= tp!541475 b_and!146445)))

(declare-fun b!1896840 () Bool)

(declare-fun b_free!53053 () Bool)

(declare-fun b_next!53757 () Bool)

(assert (=> b!1896840 (= b_free!53053 (not b_next!53757))))

(declare-fun tp!541476 () Bool)

(declare-fun b_and!146447 () Bool)

(assert (=> b!1896840 (= tp!541476 b_and!146447)))

(declare-fun b_free!53055 () Bool)

(declare-fun b_next!53759 () Bool)

(assert (=> b!1896840 (= b_free!53055 (not b_next!53759))))

(declare-fun tp!541479 () Bool)

(declare-fun b_and!146449 () Bool)

(assert (=> b!1896840 (= tp!541479 b_and!146449)))

(declare-fun b!1896819 () Bool)

(declare-fun res!846618 () Bool)

(declare-fun e!1211060 () Bool)

(assert (=> b!1896819 (=> (not res!846618) (not e!1211060))))

(declare-datatypes ((List!21370 0))(
  ( (Nil!21288) (Cons!21288 (h!26689 (_ BitVec 16)) (t!176319 List!21370)) )
))
(declare-datatypes ((TokenValue!3917 0))(
  ( (FloatLiteralValue!7834 (text!27864 List!21370)) (TokenValueExt!3916 (__x!13332 Int)) (Broken!19585 (value!119325 List!21370)) (Object!3998) (End!3917) (Def!3917) (Underscore!3917) (Match!3917) (Else!3917) (Error!3917) (Case!3917) (If!3917) (Extends!3917) (Abstract!3917) (Class!3917) (Val!3917) (DelimiterValue!7834 (del!3977 List!21370)) (KeywordValue!3923 (value!119326 List!21370)) (CommentValue!7834 (value!119327 List!21370)) (WhitespaceValue!7834 (value!119328 List!21370)) (IndentationValue!3917 (value!119329 List!21370)) (String!24704) (Int32!3917) (Broken!19586 (value!119330 List!21370)) (Boolean!3918) (Unit!35638) (OperatorValue!3920 (op!3977 List!21370)) (IdentifierValue!7834 (value!119331 List!21370)) (IdentifierValue!7835 (value!119332 List!21370)) (WhitespaceValue!7835 (value!119333 List!21370)) (True!7834) (False!7834) (Broken!19587 (value!119334 List!21370)) (Broken!19588 (value!119335 List!21370)) (True!7835) (RightBrace!3917) (RightBracket!3917) (Colon!3917) (Null!3917) (Comma!3917) (LeftBracket!3917) (False!7835) (LeftBrace!3917) (ImaginaryLiteralValue!3917 (text!27865 List!21370)) (StringLiteralValue!11751 (value!119336 List!21370)) (EOFValue!3917 (value!119337 List!21370)) (IdentValue!3917 (value!119338 List!21370)) (DelimiterValue!7835 (value!119339 List!21370)) (DedentValue!3917 (value!119340 List!21370)) (NewLineValue!3917 (value!119341 List!21370)) (IntegerValue!11751 (value!119342 (_ BitVec 32)) (text!27866 List!21370)) (IntegerValue!11752 (value!119343 Int) (text!27867 List!21370)) (Times!3917) (Or!3917) (Equal!3917) (Minus!3917) (Broken!19589 (value!119344 List!21370)) (And!3917) (Div!3917) (LessEqual!3917) (Mod!3917) (Concat!9123) (Not!3917) (Plus!3917) (SpaceValue!3917 (value!119345 List!21370)) (IntegerValue!11753 (value!119346 Int) (text!27868 List!21370)) (StringLiteralValue!11752 (text!27869 List!21370)) (FloatLiteralValue!7835 (text!27870 List!21370)) (BytesLiteralValue!3917 (value!119347 List!21370)) (CommentValue!7835 (value!119348 List!21370)) (StringLiteralValue!11753 (value!119349 List!21370)) (ErrorTokenValue!3917 (msg!3978 List!21370)) )
))
(declare-datatypes ((C!10558 0))(
  ( (C!10559 (val!6231 Int)) )
))
(declare-datatypes ((List!21371 0))(
  ( (Nil!21289) (Cons!21289 (h!26690 C!10558) (t!176320 List!21371)) )
))
(declare-datatypes ((IArray!14177 0))(
  ( (IArray!14178 (innerList!7146 List!21371)) )
))
(declare-datatypes ((Conc!7086 0))(
  ( (Node!7086 (left!17067 Conc!7086) (right!17397 Conc!7086) (csize!14402 Int) (cheight!7297 Int)) (Leaf!10440 (xs!9980 IArray!14177) (csize!14403 Int)) (Empty!7086) )
))
(declare-datatypes ((BalanceConc!13988 0))(
  ( (BalanceConc!13989 (c!309346 Conc!7086)) )
))
(declare-datatypes ((TokenValueInjection!7418 0))(
  ( (TokenValueInjection!7419 (toValue!5398 Int) (toChars!5257 Int)) )
))
(declare-datatypes ((Regex!5206 0))(
  ( (ElementMatch!5206 (c!309347 C!10558)) (Concat!9124 (regOne!10924 Regex!5206) (regTwo!10924 Regex!5206)) (EmptyExpr!5206) (Star!5206 (reg!5535 Regex!5206)) (EmptyLang!5206) (Union!5206 (regOne!10925 Regex!5206) (regTwo!10925 Regex!5206)) )
))
(declare-datatypes ((String!24705 0))(
  ( (String!24706 (value!119350 String)) )
))
(declare-datatypes ((Rule!7362 0))(
  ( (Rule!7363 (regex!3781 Regex!5206) (tag!4199 String!24705) (isSeparator!3781 Bool) (transformation!3781 TokenValueInjection!7418)) )
))
(declare-datatypes ((Token!7114 0))(
  ( (Token!7115 (value!119351 TokenValue!3917) (rule!5974 Rule!7362) (size!16859 Int) (originalCharacters!4588 List!21371)) )
))
(declare-fun separatorToken!354 () Token!7114)

(declare-datatypes ((LexerInterface!3394 0))(
  ( (LexerInterfaceExt!3391 (__x!13333 Int)) (Lexer!3392) )
))
(declare-fun thiss!23328 () LexerInterface!3394)

(declare-datatypes ((List!21372 0))(
  ( (Nil!21290) (Cons!21290 (h!26691 Rule!7362) (t!176321 List!21372)) )
))
(declare-fun rules!3198 () List!21372)

(declare-fun rulesProduceIndividualToken!1566 (LexerInterface!3394 List!21372 Token!7114) Bool)

(assert (=> b!1896819 (= res!846618 (rulesProduceIndividualToken!1566 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1211071 () Bool)

(assert (=> b!1896820 (= e!1211071 (and tp!541487 tp!541475))))

(declare-fun e!1211057 () Bool)

(declare-fun tp!541477 () Bool)

(declare-fun b!1896821 () Bool)

(declare-fun inv!28388 (String!24705) Bool)

(declare-fun inv!28391 (TokenValueInjection!7418) Bool)

(assert (=> b!1896821 (= e!1211057 (and tp!541477 (inv!28388 (tag!4199 (rule!5974 separatorToken!354))) (inv!28391 (transformation!3781 (rule!5974 separatorToken!354))) e!1211071))))

(declare-fun b!1896822 () Bool)

(declare-fun e!1211073 () Bool)

(declare-fun e!1211074 () Bool)

(assert (=> b!1896822 (= e!1211073 e!1211074)))

(declare-fun res!846623 () Bool)

(assert (=> b!1896822 (=> (not res!846623) (not e!1211074))))

(declare-fun lt!725458 () Rule!7362)

(declare-fun lt!725455 () List!21371)

(declare-fun matchR!2492 (Regex!5206 List!21371) Bool)

(assert (=> b!1896822 (= res!846623 (matchR!2492 (regex!3781 lt!725458) lt!725455))))

(declare-datatypes ((Option!4267 0))(
  ( (None!4266) (Some!4266 (v!26295 Rule!7362)) )
))
(declare-fun lt!725466 () Option!4267)

(declare-fun get!6565 (Option!4267) Rule!7362)

(assert (=> b!1896822 (= lt!725458 (get!6565 lt!725466))))

(declare-fun b!1896823 () Bool)

(declare-fun res!846624 () Bool)

(assert (=> b!1896823 (=> (not res!846624) (not e!1211060))))

(declare-fun isEmpty!13063 (List!21372) Bool)

(assert (=> b!1896823 (= res!846624 (not (isEmpty!13063 rules!3198)))))

(declare-fun e!1211061 () Bool)

(declare-fun tp!541480 () Bool)

(declare-fun e!1211072 () Bool)

(declare-fun b!1896824 () Bool)

(declare-datatypes ((List!21373 0))(
  ( (Nil!21291) (Cons!21291 (h!26692 Token!7114) (t!176322 List!21373)) )
))
(declare-fun tokens!598 () List!21373)

(declare-fun inv!28392 (Token!7114) Bool)

(assert (=> b!1896824 (= e!1211072 (and (inv!28392 (h!26692 tokens!598)) e!1211061 tp!541480))))

(declare-fun e!1211066 () Bool)

(declare-fun b!1896825 () Bool)

(declare-fun tp!541483 () Bool)

(declare-fun inv!21 (TokenValue!3917) Bool)

(assert (=> b!1896825 (= e!1211061 (and (inv!21 (value!119351 (h!26692 tokens!598))) e!1211066 tp!541483))))

(declare-fun b!1896826 () Bool)

(declare-fun e!1211062 () Bool)

(declare-fun e!1211069 () Bool)

(declare-fun tp!541484 () Bool)

(assert (=> b!1896826 (= e!1211062 (and e!1211069 tp!541484))))

(declare-fun b!1896827 () Bool)

(declare-fun res!846619 () Bool)

(assert (=> b!1896827 (=> (not res!846619) (not e!1211060))))

(declare-fun sepAndNonSepRulesDisjointChars!879 (List!21372 List!21372) Bool)

(assert (=> b!1896827 (= res!846619 (sepAndNonSepRulesDisjointChars!879 rules!3198 rules!3198))))

(declare-fun e!1211059 () Bool)

(declare-fun b!1896828 () Bool)

(declare-fun tp!541478 () Bool)

(assert (=> b!1896828 (= e!1211069 (and tp!541478 (inv!28388 (tag!4199 (h!26691 rules!3198))) (inv!28391 (transformation!3781 (h!26691 rules!3198))) e!1211059))))

(declare-fun b!1896829 () Bool)

(declare-fun res!846617 () Bool)

(assert (=> b!1896829 (=> (not res!846617) (not e!1211060))))

(declare-fun rulesProduceEachTokenIndividuallyList!1125 (LexerInterface!3394 List!21372 List!21373) Bool)

(assert (=> b!1896829 (= res!846617 (rulesProduceEachTokenIndividuallyList!1125 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1896830 () Bool)

(declare-fun res!846613 () Bool)

(assert (=> b!1896830 (=> (not res!846613) (not e!1211060))))

(declare-fun rulesInvariant!3001 (LexerInterface!3394 List!21372) Bool)

(assert (=> b!1896830 (= res!846613 (rulesInvariant!3001 thiss!23328 rules!3198))))

(declare-fun res!846614 () Bool)

(assert (=> start!190174 (=> (not res!846614) (not e!1211060))))

(assert (=> start!190174 (= res!846614 (is-Lexer!3392 thiss!23328))))

(assert (=> start!190174 e!1211060))

(assert (=> start!190174 true))

(assert (=> start!190174 e!1211062))

(assert (=> start!190174 e!1211072))

(declare-fun e!1211077 () Bool)

(assert (=> start!190174 (and (inv!28392 separatorToken!354) e!1211077)))

(declare-fun e!1211075 () Bool)

(assert (=> b!1896831 (= e!1211075 (and tp!541482 tp!541486))))

(declare-fun b!1896832 () Bool)

(declare-fun tp!541481 () Bool)

(assert (=> b!1896832 (= e!1211077 (and (inv!21 (value!119351 separatorToken!354)) e!1211057 tp!541481))))

(declare-fun b!1896833 () Bool)

(declare-fun e!1211058 () Bool)

(declare-datatypes ((tuple2!20086 0))(
  ( (tuple2!20087 (_1!11512 Token!7114) (_2!11512 List!21371)) )
))
(declare-datatypes ((Option!4268 0))(
  ( (None!4267) (Some!4267 (v!26296 tuple2!20086)) )
))
(declare-fun lt!725461 () Option!4268)

(declare-fun get!6566 (Option!4268) tuple2!20086)

(assert (=> b!1896833 (= e!1211058 (= (_1!11512 (get!6566 lt!725461)) (h!26692 tokens!598)))))

(declare-fun b!1896834 () Bool)

(declare-fun e!1211068 () Bool)

(declare-fun lt!725457 () Rule!7362)

(assert (=> b!1896834 (= e!1211068 (= (rule!5974 (h!26692 tokens!598)) lt!725457))))

(declare-fun tp!541485 () Bool)

(declare-fun b!1896835 () Bool)

(assert (=> b!1896835 (= e!1211066 (and tp!541485 (inv!28388 (tag!4199 (rule!5974 (h!26692 tokens!598)))) (inv!28391 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) e!1211075))))

(declare-fun b!1896836 () Bool)

(declare-fun e!1211070 () Bool)

(assert (=> b!1896836 (= e!1211070 e!1211068)))

(declare-fun res!846616 () Bool)

(assert (=> b!1896836 (=> (not res!846616) (not e!1211068))))

(declare-fun lt!725463 () List!21371)

(assert (=> b!1896836 (= res!846616 (matchR!2492 (regex!3781 lt!725457) lt!725463))))

(declare-fun lt!725460 () Option!4267)

(assert (=> b!1896836 (= lt!725457 (get!6565 lt!725460))))

(declare-fun b!1896837 () Bool)

(assert (=> b!1896837 (= e!1211060 (not (rulesProduceEachTokenIndividuallyList!1125 thiss!23328 rules!3198 (t!176322 tokens!598))))))

(assert (=> b!1896837 e!1211070))

(declare-fun res!846615 () Bool)

(assert (=> b!1896837 (=> (not res!846615) (not e!1211070))))

(declare-fun isDefined!3565 (Option!4267) Bool)

(assert (=> b!1896837 (= res!846615 (isDefined!3565 lt!725460))))

(declare-fun getRuleFromTag!624 (LexerInterface!3394 List!21372 String!24705) Option!4267)

(assert (=> b!1896837 (= lt!725460 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 (h!26692 tokens!598)))))))

(declare-datatypes ((Unit!35639 0))(
  ( (Unit!35640) )
))
(declare-fun lt!725462 () Unit!35639)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!624 (LexerInterface!3394 List!21372 List!21371 Token!7114) Unit!35639)

(assert (=> b!1896837 (= lt!725462 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!624 thiss!23328 rules!3198 lt!725463 (h!26692 tokens!598)))))

(assert (=> b!1896837 e!1211058))

(declare-fun res!846625 () Bool)

(assert (=> b!1896837 (=> (not res!846625) (not e!1211058))))

(declare-fun isDefined!3566 (Option!4268) Bool)

(assert (=> b!1896837 (= res!846625 (isDefined!3566 lt!725461))))

(declare-fun maxPrefix!1840 (LexerInterface!3394 List!21372 List!21371) Option!4268)

(assert (=> b!1896837 (= lt!725461 (maxPrefix!1840 thiss!23328 rules!3198 lt!725463))))

(declare-fun lt!725456 () BalanceConc!13988)

(declare-fun list!8657 (BalanceConc!13988) List!21371)

(assert (=> b!1896837 (= lt!725463 (list!8657 lt!725456))))

(assert (=> b!1896837 e!1211073))

(declare-fun res!846621 () Bool)

(assert (=> b!1896837 (=> (not res!846621) (not e!1211073))))

(assert (=> b!1896837 (= res!846621 (isDefined!3565 lt!725466))))

(assert (=> b!1896837 (= lt!725466 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 separatorToken!354))))))

(declare-fun lt!725459 () Unit!35639)

(assert (=> b!1896837 (= lt!725459 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!624 thiss!23328 rules!3198 lt!725455 separatorToken!354))))

(declare-fun charsOf!2337 (Token!7114) BalanceConc!13988)

(assert (=> b!1896837 (= lt!725455 (list!8657 (charsOf!2337 separatorToken!354)))))

(declare-fun lt!725464 () Unit!35639)

(declare-fun lemmaEqSameImage!489 (TokenValueInjection!7418 BalanceConc!13988 BalanceConc!13988) Unit!35639)

(declare-fun seqFromList!2653 (List!21371) BalanceConc!13988)

(assert (=> b!1896837 (= lt!725464 (lemmaEqSameImage!489 (transformation!3781 (rule!5974 (h!26692 tokens!598))) lt!725456 (seqFromList!2653 (originalCharacters!4588 (h!26692 tokens!598)))))))

(declare-fun lt!725465 () Unit!35639)

(declare-fun lemmaSemiInverse!760 (TokenValueInjection!7418 BalanceConc!13988) Unit!35639)

(assert (=> b!1896837 (= lt!725465 (lemmaSemiInverse!760 (transformation!3781 (rule!5974 (h!26692 tokens!598))) lt!725456))))

(assert (=> b!1896837 (= lt!725456 (charsOf!2337 (h!26692 tokens!598)))))

(declare-fun b!1896838 () Bool)

(declare-fun res!846620 () Bool)

(assert (=> b!1896838 (=> (not res!846620) (not e!1211060))))

(declare-fun lambda!74114 () Int)

(declare-fun forall!4459 (List!21373 Int) Bool)

(assert (=> b!1896838 (= res!846620 (forall!4459 tokens!598 lambda!74114))))

(declare-fun b!1896839 () Bool)

(declare-fun res!846622 () Bool)

(assert (=> b!1896839 (=> (not res!846622) (not e!1211060))))

(assert (=> b!1896839 (= res!846622 (isSeparator!3781 (rule!5974 separatorToken!354)))))

(assert (=> b!1896840 (= e!1211059 (and tp!541476 tp!541479))))

(declare-fun b!1896841 () Bool)

(declare-fun res!846612 () Bool)

(assert (=> b!1896841 (=> (not res!846612) (not e!1211060))))

(assert (=> b!1896841 (= res!846612 (is-Cons!21291 tokens!598))))

(declare-fun b!1896842 () Bool)

(assert (=> b!1896842 (= e!1211074 (= (rule!5974 separatorToken!354) lt!725458))))

(assert (= (and start!190174 res!846614) b!1896823))

(assert (= (and b!1896823 res!846624) b!1896830))

(assert (= (and b!1896830 res!846613) b!1896829))

(assert (= (and b!1896829 res!846617) b!1896819))

(assert (= (and b!1896819 res!846618) b!1896839))

(assert (= (and b!1896839 res!846622) b!1896838))

(assert (= (and b!1896838 res!846620) b!1896827))

(assert (= (and b!1896827 res!846619) b!1896841))

(assert (= (and b!1896841 res!846612) b!1896837))

(assert (= (and b!1896837 res!846621) b!1896822))

(assert (= (and b!1896822 res!846623) b!1896842))

(assert (= (and b!1896837 res!846625) b!1896833))

(assert (= (and b!1896837 res!846615) b!1896836))

(assert (= (and b!1896836 res!846616) b!1896834))

(assert (= b!1896828 b!1896840))

(assert (= b!1896826 b!1896828))

(assert (= (and start!190174 (is-Cons!21290 rules!3198)) b!1896826))

(assert (= b!1896835 b!1896831))

(assert (= b!1896825 b!1896835))

(assert (= b!1896824 b!1896825))

(assert (= (and start!190174 (is-Cons!21291 tokens!598)) b!1896824))

(assert (= b!1896821 b!1896820))

(assert (= b!1896832 b!1896821))

(assert (= start!190174 b!1896832))

(declare-fun m!2328027 () Bool)

(assert (=> b!1896827 m!2328027))

(declare-fun m!2328029 () Bool)

(assert (=> b!1896833 m!2328029))

(declare-fun m!2328031 () Bool)

(assert (=> b!1896830 m!2328031))

(declare-fun m!2328033 () Bool)

(assert (=> b!1896838 m!2328033))

(declare-fun m!2328035 () Bool)

(assert (=> b!1896819 m!2328035))

(declare-fun m!2328037 () Bool)

(assert (=> b!1896822 m!2328037))

(declare-fun m!2328039 () Bool)

(assert (=> b!1896822 m!2328039))

(declare-fun m!2328041 () Bool)

(assert (=> b!1896821 m!2328041))

(declare-fun m!2328043 () Bool)

(assert (=> b!1896821 m!2328043))

(declare-fun m!2328045 () Bool)

(assert (=> b!1896836 m!2328045))

(declare-fun m!2328047 () Bool)

(assert (=> b!1896836 m!2328047))

(declare-fun m!2328049 () Bool)

(assert (=> b!1896835 m!2328049))

(declare-fun m!2328051 () Bool)

(assert (=> b!1896835 m!2328051))

(declare-fun m!2328053 () Bool)

(assert (=> start!190174 m!2328053))

(declare-fun m!2328055 () Bool)

(assert (=> b!1896828 m!2328055))

(declare-fun m!2328057 () Bool)

(assert (=> b!1896828 m!2328057))

(declare-fun m!2328059 () Bool)

(assert (=> b!1896837 m!2328059))

(declare-fun m!2328061 () Bool)

(assert (=> b!1896837 m!2328061))

(declare-fun m!2328063 () Bool)

(assert (=> b!1896837 m!2328063))

(declare-fun m!2328065 () Bool)

(assert (=> b!1896837 m!2328065))

(declare-fun m!2328067 () Bool)

(assert (=> b!1896837 m!2328067))

(declare-fun m!2328069 () Bool)

(assert (=> b!1896837 m!2328069))

(declare-fun m!2328071 () Bool)

(assert (=> b!1896837 m!2328071))

(declare-fun m!2328073 () Bool)

(assert (=> b!1896837 m!2328073))

(declare-fun m!2328075 () Bool)

(assert (=> b!1896837 m!2328075))

(declare-fun m!2328077 () Bool)

(assert (=> b!1896837 m!2328077))

(assert (=> b!1896837 m!2328067))

(declare-fun m!2328079 () Bool)

(assert (=> b!1896837 m!2328079))

(declare-fun m!2328081 () Bool)

(assert (=> b!1896837 m!2328081))

(declare-fun m!2328083 () Bool)

(assert (=> b!1896837 m!2328083))

(declare-fun m!2328085 () Bool)

(assert (=> b!1896837 m!2328085))

(declare-fun m!2328087 () Bool)

(assert (=> b!1896837 m!2328087))

(assert (=> b!1896837 m!2328077))

(declare-fun m!2328089 () Bool)

(assert (=> b!1896837 m!2328089))

(declare-fun m!2328091 () Bool)

(assert (=> b!1896832 m!2328091))

(declare-fun m!2328093 () Bool)

(assert (=> b!1896823 m!2328093))

(declare-fun m!2328095 () Bool)

(assert (=> b!1896824 m!2328095))

(declare-fun m!2328097 () Bool)

(assert (=> b!1896825 m!2328097))

(declare-fun m!2328099 () Bool)

(assert (=> b!1896829 m!2328099))

(push 1)

(assert b_and!146439)

(assert (not b!1896827))

(assert (not b_next!53759))

(assert (not b!1896828))

(assert b_and!146443)

(assert (not start!190174))

(assert (not b_next!53751))

(assert (not b!1896821))

(assert b_and!146441)

(assert (not b!1896822))

(assert b_and!146449)

(assert (not b!1896838))

(assert (not b!1896824))

(assert (not b!1896825))

(assert (not b_next!53755))

(assert (not b_next!53749))

(assert b_and!146447)

(assert (not b_next!53757))

(assert (not b!1896819))

(assert (not b!1896826))

(assert (not b_next!53753))

(assert (not b!1896833))

(assert (not b!1896837))

(assert b_and!146445)

(assert (not b!1896832))

(assert (not b!1896829))

(assert (not b!1896836))

(assert (not b!1896835))

(assert (not b!1896830))

(assert (not b!1896823))

(check-sat)

(pop 1)

(push 1)

(assert b_and!146439)

(assert (not b_next!53759))

(assert (not b_next!53757))

(assert b_and!146443)

(assert (not b_next!53751))

(assert (not b_next!53753))

(assert b_and!146445)

(assert b_and!146441)

(assert b_and!146449)

(assert (not b_next!53755))

(assert (not b_next!53749))

(assert b_and!146447)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!580866 () Bool)

(assert (=> d!580866 (= (isEmpty!13063 rules!3198) (is-Nil!21290 rules!3198))))

(assert (=> b!1896823 d!580866))

(declare-fun b!1896943 () Bool)

(declare-fun res!846695 () Bool)

(declare-fun e!1211157 () Bool)

(assert (=> b!1896943 (=> res!846695 e!1211157)))

(declare-fun isEmpty!13065 (List!21371) Bool)

(declare-fun tail!2933 (List!21371) List!21371)

(assert (=> b!1896943 (= res!846695 (not (isEmpty!13065 (tail!2933 lt!725455))))))

(declare-fun b!1896944 () Bool)

(declare-fun e!1211160 () Bool)

(assert (=> b!1896944 (= e!1211160 e!1211157)))

(declare-fun res!846690 () Bool)

(assert (=> b!1896944 (=> res!846690 e!1211157)))

(declare-fun call!116969 () Bool)

(assert (=> b!1896944 (= res!846690 call!116969)))

(declare-fun d!580868 () Bool)

(declare-fun e!1211155 () Bool)

(assert (=> d!580868 e!1211155))

(declare-fun c!309358 () Bool)

(assert (=> d!580868 (= c!309358 (is-EmptyExpr!5206 (regex!3781 lt!725458)))))

(declare-fun lt!725505 () Bool)

(declare-fun e!1211156 () Bool)

(assert (=> d!580868 (= lt!725505 e!1211156)))

(declare-fun c!309359 () Bool)

(assert (=> d!580868 (= c!309359 (isEmpty!13065 lt!725455))))

(declare-fun validRegex!2104 (Regex!5206) Bool)

(assert (=> d!580868 (validRegex!2104 (regex!3781 lt!725458))))

(assert (=> d!580868 (= (matchR!2492 (regex!3781 lt!725458) lt!725455) lt!725505)))

(declare-fun b!1896945 () Bool)

(declare-fun e!1211158 () Bool)

(assert (=> b!1896945 (= e!1211158 (not lt!725505))))

(declare-fun b!1896946 () Bool)

(declare-fun res!846692 () Bool)

(declare-fun e!1211159 () Bool)

(assert (=> b!1896946 (=> (not res!846692) (not e!1211159))))

(assert (=> b!1896946 (= res!846692 (isEmpty!13065 (tail!2933 lt!725455)))))

(declare-fun b!1896947 () Bool)

(declare-fun res!846689 () Bool)

(declare-fun e!1211161 () Bool)

(assert (=> b!1896947 (=> res!846689 e!1211161)))

(assert (=> b!1896947 (= res!846689 (not (is-ElementMatch!5206 (regex!3781 lt!725458))))))

(assert (=> b!1896947 (= e!1211158 e!1211161)))

(declare-fun b!1896948 () Bool)

(declare-fun res!846691 () Bool)

(assert (=> b!1896948 (=> res!846691 e!1211161)))

(assert (=> b!1896948 (= res!846691 e!1211159)))

(declare-fun res!846694 () Bool)

(assert (=> b!1896948 (=> (not res!846694) (not e!1211159))))

(assert (=> b!1896948 (= res!846694 lt!725505)))

(declare-fun b!1896949 () Bool)

(declare-fun head!4407 (List!21371) C!10558)

(assert (=> b!1896949 (= e!1211159 (= (head!4407 lt!725455) (c!309347 (regex!3781 lt!725458))))))

(declare-fun b!1896950 () Bool)

(declare-fun nullable!1580 (Regex!5206) Bool)

(assert (=> b!1896950 (= e!1211156 (nullable!1580 (regex!3781 lt!725458)))))

(declare-fun b!1896951 () Bool)

(declare-fun derivativeStep!1339 (Regex!5206 C!10558) Regex!5206)

(assert (=> b!1896951 (= e!1211156 (matchR!2492 (derivativeStep!1339 (regex!3781 lt!725458) (head!4407 lt!725455)) (tail!2933 lt!725455)))))

(declare-fun b!1896952 () Bool)

(assert (=> b!1896952 (= e!1211161 e!1211160)))

(declare-fun res!846693 () Bool)

(assert (=> b!1896952 (=> (not res!846693) (not e!1211160))))

(assert (=> b!1896952 (= res!846693 (not lt!725505))))

(declare-fun b!1896953 () Bool)

(assert (=> b!1896953 (= e!1211155 e!1211158)))

(declare-fun c!309357 () Bool)

(assert (=> b!1896953 (= c!309357 (is-EmptyLang!5206 (regex!3781 lt!725458)))))

(declare-fun b!1896954 () Bool)

(assert (=> b!1896954 (= e!1211155 (= lt!725505 call!116969))))

(declare-fun b!1896955 () Bool)

(declare-fun res!846696 () Bool)

(assert (=> b!1896955 (=> (not res!846696) (not e!1211159))))

(assert (=> b!1896955 (= res!846696 (not call!116969))))

(declare-fun bm!116964 () Bool)

(assert (=> bm!116964 (= call!116969 (isEmpty!13065 lt!725455))))

(declare-fun b!1896956 () Bool)

(assert (=> b!1896956 (= e!1211157 (not (= (head!4407 lt!725455) (c!309347 (regex!3781 lt!725458)))))))

(assert (= (and d!580868 c!309359) b!1896950))

(assert (= (and d!580868 (not c!309359)) b!1896951))

(assert (= (and d!580868 c!309358) b!1896954))

(assert (= (and d!580868 (not c!309358)) b!1896953))

(assert (= (and b!1896953 c!309357) b!1896945))

(assert (= (and b!1896953 (not c!309357)) b!1896947))

(assert (= (and b!1896947 (not res!846689)) b!1896948))

(assert (= (and b!1896948 res!846694) b!1896955))

(assert (= (and b!1896955 res!846696) b!1896946))

(assert (= (and b!1896946 res!846692) b!1896949))

(assert (= (and b!1896948 (not res!846691)) b!1896952))

(assert (= (and b!1896952 res!846693) b!1896944))

(assert (= (and b!1896944 (not res!846690)) b!1896943))

(assert (= (and b!1896943 (not res!846695)) b!1896956))

(assert (= (or b!1896954 b!1896944 b!1896955) bm!116964))

(declare-fun m!2328175 () Bool)

(assert (=> b!1896943 m!2328175))

(assert (=> b!1896943 m!2328175))

(declare-fun m!2328177 () Bool)

(assert (=> b!1896943 m!2328177))

(assert (=> b!1896946 m!2328175))

(assert (=> b!1896946 m!2328175))

(assert (=> b!1896946 m!2328177))

(declare-fun m!2328179 () Bool)

(assert (=> bm!116964 m!2328179))

(declare-fun m!2328181 () Bool)

(assert (=> b!1896949 m!2328181))

(assert (=> d!580868 m!2328179))

(declare-fun m!2328183 () Bool)

(assert (=> d!580868 m!2328183))

(assert (=> b!1896956 m!2328181))

(assert (=> b!1896951 m!2328181))

(assert (=> b!1896951 m!2328181))

(declare-fun m!2328185 () Bool)

(assert (=> b!1896951 m!2328185))

(assert (=> b!1896951 m!2328175))

(assert (=> b!1896951 m!2328185))

(assert (=> b!1896951 m!2328175))

(declare-fun m!2328187 () Bool)

(assert (=> b!1896951 m!2328187))

(declare-fun m!2328189 () Bool)

(assert (=> b!1896950 m!2328189))

(assert (=> b!1896822 d!580868))

(declare-fun d!580870 () Bool)

(assert (=> d!580870 (= (get!6565 lt!725466) (v!26295 lt!725466))))

(assert (=> b!1896822 d!580870))

(declare-fun d!580872 () Bool)

(assert (=> d!580872 (= (get!6566 lt!725461) (v!26296 lt!725461))))

(assert (=> b!1896833 d!580872))

(declare-fun b!1896967 () Bool)

(declare-fun e!1211168 () Bool)

(declare-fun e!1211170 () Bool)

(assert (=> b!1896967 (= e!1211168 e!1211170)))

(declare-fun c!309365 () Bool)

(assert (=> b!1896967 (= c!309365 (is-IntegerValue!11752 (value!119351 separatorToken!354)))))

(declare-fun b!1896968 () Bool)

(declare-fun inv!17 (TokenValue!3917) Bool)

(assert (=> b!1896968 (= e!1211170 (inv!17 (value!119351 separatorToken!354)))))

(declare-fun b!1896969 () Bool)

(declare-fun e!1211169 () Bool)

(declare-fun inv!15 (TokenValue!3917) Bool)

(assert (=> b!1896969 (= e!1211169 (inv!15 (value!119351 separatorToken!354)))))

(declare-fun b!1896970 () Bool)

(declare-fun res!846701 () Bool)

(assert (=> b!1896970 (=> res!846701 e!1211169)))

(assert (=> b!1896970 (= res!846701 (not (is-IntegerValue!11753 (value!119351 separatorToken!354))))))

(assert (=> b!1896970 (= e!1211170 e!1211169)))

(declare-fun b!1896971 () Bool)

(declare-fun inv!16 (TokenValue!3917) Bool)

(assert (=> b!1896971 (= e!1211168 (inv!16 (value!119351 separatorToken!354)))))

(declare-fun d!580874 () Bool)

(declare-fun c!309364 () Bool)

(assert (=> d!580874 (= c!309364 (is-IntegerValue!11751 (value!119351 separatorToken!354)))))

(assert (=> d!580874 (= (inv!21 (value!119351 separatorToken!354)) e!1211168)))

(assert (= (and d!580874 c!309364) b!1896971))

(assert (= (and d!580874 (not c!309364)) b!1896967))

(assert (= (and b!1896967 c!309365) b!1896968))

(assert (= (and b!1896967 (not c!309365)) b!1896970))

(assert (= (and b!1896970 (not res!846701)) b!1896969))

(declare-fun m!2328191 () Bool)

(assert (=> b!1896968 m!2328191))

(declare-fun m!2328193 () Bool)

(assert (=> b!1896969 m!2328193))

(declare-fun m!2328195 () Bool)

(assert (=> b!1896971 m!2328195))

(assert (=> b!1896832 d!580874))

(declare-fun d!580876 () Bool)

(assert (=> d!580876 (= (inv!28388 (tag!4199 (rule!5974 separatorToken!354))) (= (mod (str.len (value!119350 (tag!4199 (rule!5974 separatorToken!354)))) 2) 0))))

(assert (=> b!1896821 d!580876))

(declare-fun d!580878 () Bool)

(declare-fun res!846706 () Bool)

(declare-fun e!1211173 () Bool)

(assert (=> d!580878 (=> (not res!846706) (not e!1211173))))

(declare-fun semiInverseModEq!1530 (Int Int) Bool)

(assert (=> d!580878 (= res!846706 (semiInverseModEq!1530 (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toValue!5398 (transformation!3781 (rule!5974 separatorToken!354)))))))

(assert (=> d!580878 (= (inv!28391 (transformation!3781 (rule!5974 separatorToken!354))) e!1211173)))

(declare-fun b!1896974 () Bool)

(declare-fun equivClasses!1457 (Int Int) Bool)

(assert (=> b!1896974 (= e!1211173 (equivClasses!1457 (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toValue!5398 (transformation!3781 (rule!5974 separatorToken!354)))))))

(assert (= (and d!580878 res!846706) b!1896974))

(declare-fun m!2328197 () Bool)

(assert (=> d!580878 m!2328197))

(declare-fun m!2328199 () Bool)

(assert (=> b!1896974 m!2328199))

(assert (=> b!1896821 d!580878))

(declare-fun d!580880 () Bool)

(declare-fun res!846710 () Bool)

(declare-fun e!1211176 () Bool)

(assert (=> d!580880 (=> (not res!846710) (not e!1211176))))

(declare-fun rulesValid!1417 (LexerInterface!3394 List!21372) Bool)

(assert (=> d!580880 (= res!846710 (rulesValid!1417 thiss!23328 rules!3198))))

(assert (=> d!580880 (= (rulesInvariant!3001 thiss!23328 rules!3198) e!1211176)))

(declare-fun b!1896977 () Bool)

(declare-datatypes ((List!21378 0))(
  ( (Nil!21296) (Cons!21296 (h!26697 String!24705) (t!176406 List!21378)) )
))
(declare-fun noDuplicateTag!1415 (LexerInterface!3394 List!21372 List!21378) Bool)

(assert (=> b!1896977 (= e!1211176 (noDuplicateTag!1415 thiss!23328 rules!3198 Nil!21296))))

(assert (= (and d!580880 res!846710) b!1896977))

(declare-fun m!2328201 () Bool)

(assert (=> d!580880 m!2328201))

(declare-fun m!2328203 () Bool)

(assert (=> b!1896977 m!2328203))

(assert (=> b!1896830 d!580880))

(declare-fun d!580882 () Bool)

(declare-fun lt!725510 () Bool)

(declare-fun e!1211193 () Bool)

(assert (=> d!580882 (= lt!725510 e!1211193)))

(declare-fun res!846729 () Bool)

(assert (=> d!580882 (=> (not res!846729) (not e!1211193))))

(declare-datatypes ((IArray!14181 0))(
  ( (IArray!14182 (innerList!7148 List!21373)) )
))
(declare-datatypes ((Conc!7088 0))(
  ( (Node!7088 (left!17073 Conc!7088) (right!17403 Conc!7088) (csize!14406 Int) (cheight!7299 Int)) (Leaf!10442 (xs!9982 IArray!14181) (csize!14407 Int)) (Empty!7088) )
))
(declare-datatypes ((BalanceConc!13992 0))(
  ( (BalanceConc!13993 (c!309396 Conc!7088)) )
))
(declare-fun list!8659 (BalanceConc!13992) List!21373)

(declare-datatypes ((tuple2!20090 0))(
  ( (tuple2!20091 (_1!11514 BalanceConc!13992) (_2!11514 BalanceConc!13988)) )
))
(declare-fun lex!1509 (LexerInterface!3394 List!21372 BalanceConc!13988) tuple2!20090)

(declare-fun print!1438 (LexerInterface!3394 BalanceConc!13992) BalanceConc!13988)

(declare-fun singletonSeq!1836 (Token!7114) BalanceConc!13992)

(assert (=> d!580882 (= res!846729 (= (list!8659 (_1!11514 (lex!1509 thiss!23328 rules!3198 (print!1438 thiss!23328 (singletonSeq!1836 separatorToken!354))))) (list!8659 (singletonSeq!1836 separatorToken!354))))))

(declare-fun e!1211194 () Bool)

(assert (=> d!580882 (= lt!725510 e!1211194)))

(declare-fun res!846730 () Bool)

(assert (=> d!580882 (=> (not res!846730) (not e!1211194))))

(declare-fun lt!725511 () tuple2!20090)

(declare-fun size!16861 (BalanceConc!13992) Int)

(assert (=> d!580882 (= res!846730 (= (size!16861 (_1!11514 lt!725511)) 1))))

(assert (=> d!580882 (= lt!725511 (lex!1509 thiss!23328 rules!3198 (print!1438 thiss!23328 (singletonSeq!1836 separatorToken!354))))))

(assert (=> d!580882 (not (isEmpty!13063 rules!3198))))

(assert (=> d!580882 (= (rulesProduceIndividualToken!1566 thiss!23328 rules!3198 separatorToken!354) lt!725510)))

(declare-fun b!1897001 () Bool)

(declare-fun res!846731 () Bool)

(assert (=> b!1897001 (=> (not res!846731) (not e!1211194))))

(declare-fun apply!5601 (BalanceConc!13992 Int) Token!7114)

(assert (=> b!1897001 (= res!846731 (= (apply!5601 (_1!11514 lt!725511) 0) separatorToken!354))))

(declare-fun b!1897002 () Bool)

(declare-fun isEmpty!13066 (BalanceConc!13988) Bool)

(assert (=> b!1897002 (= e!1211194 (isEmpty!13066 (_2!11514 lt!725511)))))

(declare-fun b!1897003 () Bool)

(assert (=> b!1897003 (= e!1211193 (isEmpty!13066 (_2!11514 (lex!1509 thiss!23328 rules!3198 (print!1438 thiss!23328 (singletonSeq!1836 separatorToken!354))))))))

(assert (= (and d!580882 res!846730) b!1897001))

(assert (= (and b!1897001 res!846731) b!1897002))

(assert (= (and d!580882 res!846729) b!1897003))

(declare-fun m!2328225 () Bool)

(assert (=> d!580882 m!2328225))

(declare-fun m!2328227 () Bool)

(assert (=> d!580882 m!2328227))

(declare-fun m!2328229 () Bool)

(assert (=> d!580882 m!2328229))

(assert (=> d!580882 m!2328093))

(assert (=> d!580882 m!2328225))

(declare-fun m!2328231 () Bool)

(assert (=> d!580882 m!2328231))

(assert (=> d!580882 m!2328225))

(assert (=> d!580882 m!2328227))

(declare-fun m!2328233 () Bool)

(assert (=> d!580882 m!2328233))

(declare-fun m!2328235 () Bool)

(assert (=> d!580882 m!2328235))

(declare-fun m!2328237 () Bool)

(assert (=> b!1897001 m!2328237))

(declare-fun m!2328239 () Bool)

(assert (=> b!1897002 m!2328239))

(assert (=> b!1897003 m!2328225))

(assert (=> b!1897003 m!2328225))

(assert (=> b!1897003 m!2328227))

(assert (=> b!1897003 m!2328227))

(assert (=> b!1897003 m!2328229))

(declare-fun m!2328241 () Bool)

(assert (=> b!1897003 m!2328241))

(assert (=> b!1896819 d!580882))

(declare-fun bs!413475 () Bool)

(declare-fun d!580896 () Bool)

(assert (= bs!413475 (and d!580896 b!1896838)))

(declare-fun lambda!74120 () Int)

(assert (=> bs!413475 (not (= lambda!74120 lambda!74114))))

(declare-fun b!1897098 () Bool)

(declare-fun e!1211247 () Bool)

(assert (=> b!1897098 (= e!1211247 true)))

(declare-fun b!1897097 () Bool)

(declare-fun e!1211246 () Bool)

(assert (=> b!1897097 (= e!1211246 e!1211247)))

(declare-fun b!1897096 () Bool)

(declare-fun e!1211245 () Bool)

(assert (=> b!1897096 (= e!1211245 e!1211246)))

(assert (=> d!580896 e!1211245))

(assert (= b!1897097 b!1897098))

(assert (= b!1897096 b!1897097))

(assert (= (and d!580896 (is-Cons!21290 rules!3198)) b!1897096))

(declare-fun order!13443 () Int)

(declare-fun order!13441 () Int)

(declare-fun dynLambda!10350 (Int Int) Int)

(declare-fun dynLambda!10351 (Int Int) Int)

(assert (=> b!1897098 (< (dynLambda!10350 order!13441 (toValue!5398 (transformation!3781 (h!26691 rules!3198)))) (dynLambda!10351 order!13443 lambda!74120))))

(declare-fun order!13445 () Int)

(declare-fun dynLambda!10352 (Int Int) Int)

(assert (=> b!1897098 (< (dynLambda!10352 order!13445 (toChars!5257 (transformation!3781 (h!26691 rules!3198)))) (dynLambda!10351 order!13443 lambda!74120))))

(assert (=> d!580896 true))

(declare-fun lt!725534 () Bool)

(assert (=> d!580896 (= lt!725534 (forall!4459 tokens!598 lambda!74120))))

(declare-fun e!1211237 () Bool)

(assert (=> d!580896 (= lt!725534 e!1211237)))

(declare-fun res!846790 () Bool)

(assert (=> d!580896 (=> res!846790 e!1211237)))

(assert (=> d!580896 (= res!846790 (not (is-Cons!21291 tokens!598)))))

(assert (=> d!580896 (not (isEmpty!13063 rules!3198))))

(assert (=> d!580896 (= (rulesProduceEachTokenIndividuallyList!1125 thiss!23328 rules!3198 tokens!598) lt!725534)))

(declare-fun b!1897086 () Bool)

(declare-fun e!1211238 () Bool)

(assert (=> b!1897086 (= e!1211237 e!1211238)))

(declare-fun res!846789 () Bool)

(assert (=> b!1897086 (=> (not res!846789) (not e!1211238))))

(assert (=> b!1897086 (= res!846789 (rulesProduceIndividualToken!1566 thiss!23328 rules!3198 (h!26692 tokens!598)))))

(declare-fun b!1897087 () Bool)

(assert (=> b!1897087 (= e!1211238 (rulesProduceEachTokenIndividuallyList!1125 thiss!23328 rules!3198 (t!176322 tokens!598)))))

(assert (= (and d!580896 (not res!846790)) b!1897086))

(assert (= (and b!1897086 res!846789) b!1897087))

(declare-fun m!2328313 () Bool)

(assert (=> d!580896 m!2328313))

(assert (=> d!580896 m!2328093))

(declare-fun m!2328315 () Bool)

(assert (=> b!1897086 m!2328315))

(assert (=> b!1897087 m!2328075))

(assert (=> b!1896829 d!580896))

(declare-fun d!580912 () Bool)

(assert (=> d!580912 (= (inv!28388 (tag!4199 (h!26691 rules!3198))) (= (mod (str.len (value!119350 (tag!4199 (h!26691 rules!3198)))) 2) 0))))

(assert (=> b!1896828 d!580912))

(declare-fun d!580914 () Bool)

(declare-fun res!846791 () Bool)

(declare-fun e!1211248 () Bool)

(assert (=> d!580914 (=> (not res!846791) (not e!1211248))))

(assert (=> d!580914 (= res!846791 (semiInverseModEq!1530 (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toValue!5398 (transformation!3781 (h!26691 rules!3198)))))))

(assert (=> d!580914 (= (inv!28391 (transformation!3781 (h!26691 rules!3198))) e!1211248)))

(declare-fun b!1897101 () Bool)

(assert (=> b!1897101 (= e!1211248 (equivClasses!1457 (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toValue!5398 (transformation!3781 (h!26691 rules!3198)))))))

(assert (= (and d!580914 res!846791) b!1897101))

(declare-fun m!2328317 () Bool)

(assert (=> d!580914 m!2328317))

(declare-fun m!2328319 () Bool)

(assert (=> b!1897101 m!2328319))

(assert (=> b!1896828 d!580914))

(declare-fun d!580916 () Bool)

(declare-fun res!846796 () Bool)

(declare-fun e!1211253 () Bool)

(assert (=> d!580916 (=> res!846796 e!1211253)))

(assert (=> d!580916 (= res!846796 (is-Nil!21291 tokens!598))))

(assert (=> d!580916 (= (forall!4459 tokens!598 lambda!74114) e!1211253)))

(declare-fun b!1897106 () Bool)

(declare-fun e!1211254 () Bool)

(assert (=> b!1897106 (= e!1211253 e!1211254)))

(declare-fun res!846797 () Bool)

(assert (=> b!1897106 (=> (not res!846797) (not e!1211254))))

(declare-fun dynLambda!10353 (Int Token!7114) Bool)

(assert (=> b!1897106 (= res!846797 (dynLambda!10353 lambda!74114 (h!26692 tokens!598)))))

(declare-fun b!1897107 () Bool)

(assert (=> b!1897107 (= e!1211254 (forall!4459 (t!176322 tokens!598) lambda!74114))))

(assert (= (and d!580916 (not res!846796)) b!1897106))

(assert (= (and b!1897106 res!846797) b!1897107))

(declare-fun b_lambda!62355 () Bool)

(assert (=> (not b_lambda!62355) (not b!1897106)))

(declare-fun m!2328321 () Bool)

(assert (=> b!1897106 m!2328321))

(declare-fun m!2328323 () Bool)

(assert (=> b!1897107 m!2328323))

(assert (=> b!1896838 d!580916))

(declare-fun d!580918 () Bool)

(declare-fun res!846802 () Bool)

(declare-fun e!1211259 () Bool)

(assert (=> d!580918 (=> res!846802 e!1211259)))

(assert (=> d!580918 (= res!846802 (not (is-Cons!21290 rules!3198)))))

(assert (=> d!580918 (= (sepAndNonSepRulesDisjointChars!879 rules!3198 rules!3198) e!1211259)))

(declare-fun b!1897112 () Bool)

(declare-fun e!1211260 () Bool)

(assert (=> b!1897112 (= e!1211259 e!1211260)))

(declare-fun res!846803 () Bool)

(assert (=> b!1897112 (=> (not res!846803) (not e!1211260))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!415 (Rule!7362 List!21372) Bool)

(assert (=> b!1897112 (= res!846803 (ruleDisjointCharsFromAllFromOtherType!415 (h!26691 rules!3198) rules!3198))))

(declare-fun b!1897113 () Bool)

(assert (=> b!1897113 (= e!1211260 (sepAndNonSepRulesDisjointChars!879 rules!3198 (t!176321 rules!3198)))))

(assert (= (and d!580918 (not res!846802)) b!1897112))

(assert (= (and b!1897112 res!846803) b!1897113))

(declare-fun m!2328325 () Bool)

(assert (=> b!1897112 m!2328325))

(declare-fun m!2328327 () Bool)

(assert (=> b!1897113 m!2328327))

(assert (=> b!1896827 d!580918))

(declare-fun d!580920 () Bool)

(declare-fun res!846808 () Bool)

(declare-fun e!1211263 () Bool)

(assert (=> d!580920 (=> (not res!846808) (not e!1211263))))

(assert (=> d!580920 (= res!846808 (not (isEmpty!13065 (originalCharacters!4588 separatorToken!354))))))

(assert (=> d!580920 (= (inv!28392 separatorToken!354) e!1211263)))

(declare-fun b!1897118 () Bool)

(declare-fun res!846809 () Bool)

(assert (=> b!1897118 (=> (not res!846809) (not e!1211263))))

(declare-fun dynLambda!10354 (Int TokenValue!3917) BalanceConc!13988)

(assert (=> b!1897118 (= res!846809 (= (originalCharacters!4588 separatorToken!354) (list!8657 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (value!119351 separatorToken!354)))))))

(declare-fun b!1897119 () Bool)

(declare-fun size!16862 (List!21371) Int)

(assert (=> b!1897119 (= e!1211263 (= (size!16859 separatorToken!354) (size!16862 (originalCharacters!4588 separatorToken!354))))))

(assert (= (and d!580920 res!846808) b!1897118))

(assert (= (and b!1897118 res!846809) b!1897119))

(declare-fun b_lambda!62357 () Bool)

(assert (=> (not b_lambda!62357) (not b!1897118)))

(declare-fun t!176343 () Bool)

(declare-fun tb!115561 () Bool)

(assert (=> (and b!1896831 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354)))) t!176343) tb!115561))

(declare-fun b!1897124 () Bool)

(declare-fun e!1211266 () Bool)

(declare-fun tp!541533 () Bool)

(declare-fun inv!28395 (Conc!7086) Bool)

(assert (=> b!1897124 (= e!1211266 (and (inv!28395 (c!309346 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (value!119351 separatorToken!354)))) tp!541533))))

(declare-fun result!139718 () Bool)

(declare-fun inv!28396 (BalanceConc!13988) Bool)

(assert (=> tb!115561 (= result!139718 (and (inv!28396 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (value!119351 separatorToken!354))) e!1211266))))

(assert (= tb!115561 b!1897124))

(declare-fun m!2328329 () Bool)

(assert (=> b!1897124 m!2328329))

(declare-fun m!2328331 () Bool)

(assert (=> tb!115561 m!2328331))

(assert (=> b!1897118 t!176343))

(declare-fun b_and!146475 () Bool)

(assert (= b_and!146441 (and (=> t!176343 result!139718) b_and!146475)))

(declare-fun t!176345 () Bool)

(declare-fun tb!115563 () Bool)

(assert (=> (and b!1896820 (= (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354)))) t!176345) tb!115563))

(declare-fun result!139722 () Bool)

(assert (= result!139722 result!139718))

(assert (=> b!1897118 t!176345))

(declare-fun b_and!146477 () Bool)

(assert (= b_and!146445 (and (=> t!176345 result!139722) b_and!146477)))

(declare-fun tb!115565 () Bool)

(declare-fun t!176347 () Bool)

(assert (=> (and b!1896840 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354)))) t!176347) tb!115565))

(declare-fun result!139724 () Bool)

(assert (= result!139724 result!139718))

(assert (=> b!1897118 t!176347))

(declare-fun b_and!146479 () Bool)

(assert (= b_and!146449 (and (=> t!176347 result!139724) b_and!146479)))

(declare-fun m!2328333 () Bool)

(assert (=> d!580920 m!2328333))

(declare-fun m!2328335 () Bool)

(assert (=> b!1897118 m!2328335))

(assert (=> b!1897118 m!2328335))

(declare-fun m!2328337 () Bool)

(assert (=> b!1897118 m!2328337))

(declare-fun m!2328339 () Bool)

(assert (=> b!1897119 m!2328339))

(assert (=> start!190174 d!580920))

(declare-fun b!1897129 () Bool)

(declare-fun e!1211269 () Bool)

(assert (=> b!1897129 (= e!1211269 true)))

(declare-fun d!580922 () Bool)

(assert (=> d!580922 e!1211269))

(assert (= d!580922 b!1897129))

(declare-fun order!13447 () Int)

(declare-fun lambda!74123 () Int)

(declare-fun dynLambda!10355 (Int Int) Int)

(assert (=> b!1897129 (< (dynLambda!10350 order!13441 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) (dynLambda!10355 order!13447 lambda!74123))))

(assert (=> b!1897129 (< (dynLambda!10352 order!13445 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) (dynLambda!10355 order!13447 lambda!74123))))

(declare-fun dynLambda!10356 (Int BalanceConc!13988) TokenValue!3917)

(assert (=> d!580922 (= (list!8657 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (dynLambda!10356 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) lt!725456))) (list!8657 lt!725456))))

(declare-fun lt!725537 () Unit!35639)

(declare-fun ForallOf!376 (Int BalanceConc!13988) Unit!35639)

(assert (=> d!580922 (= lt!725537 (ForallOf!376 lambda!74123 lt!725456))))

(assert (=> d!580922 (= (lemmaSemiInverse!760 (transformation!3781 (rule!5974 (h!26692 tokens!598))) lt!725456) lt!725537)))

(declare-fun b_lambda!62359 () Bool)

(assert (=> (not b_lambda!62359) (not d!580922)))

(declare-fun t!176349 () Bool)

(declare-fun tb!115567 () Bool)

(assert (=> (and b!1896831 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176349) tb!115567))

(declare-fun tp!541534 () Bool)

(declare-fun b!1897130 () Bool)

(declare-fun e!1211270 () Bool)

(assert (=> b!1897130 (= e!1211270 (and (inv!28395 (c!309346 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (dynLambda!10356 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) lt!725456)))) tp!541534))))

(declare-fun result!139726 () Bool)

(assert (=> tb!115567 (= result!139726 (and (inv!28396 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (dynLambda!10356 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) lt!725456))) e!1211270))))

(assert (= tb!115567 b!1897130))

(declare-fun m!2328341 () Bool)

(assert (=> b!1897130 m!2328341))

(declare-fun m!2328343 () Bool)

(assert (=> tb!115567 m!2328343))

(assert (=> d!580922 t!176349))

(declare-fun b_and!146481 () Bool)

(assert (= b_and!146475 (and (=> t!176349 result!139726) b_and!146481)))

(declare-fun t!176351 () Bool)

(declare-fun tb!115569 () Bool)

(assert (=> (and b!1896820 (= (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176351) tb!115569))

(declare-fun result!139728 () Bool)

(assert (= result!139728 result!139726))

(assert (=> d!580922 t!176351))

(declare-fun b_and!146483 () Bool)

(assert (= b_and!146477 (and (=> t!176351 result!139728) b_and!146483)))

(declare-fun t!176353 () Bool)

(declare-fun tb!115571 () Bool)

(assert (=> (and b!1896840 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176353) tb!115571))

(declare-fun result!139730 () Bool)

(assert (= result!139730 result!139726))

(assert (=> d!580922 t!176353))

(declare-fun b_and!146485 () Bool)

(assert (= b_and!146479 (and (=> t!176353 result!139730) b_and!146485)))

(declare-fun b_lambda!62361 () Bool)

(assert (=> (not b_lambda!62361) (not d!580922)))

(declare-fun t!176355 () Bool)

(declare-fun tb!115573 () Bool)

(assert (=> (and b!1896831 (= (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176355) tb!115573))

(declare-fun result!139732 () Bool)

(assert (=> tb!115573 (= result!139732 (inv!21 (dynLambda!10356 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) lt!725456)))))

(declare-fun m!2328345 () Bool)

(assert (=> tb!115573 m!2328345))

(assert (=> d!580922 t!176355))

(declare-fun b_and!146487 () Bool)

(assert (= b_and!146439 (and (=> t!176355 result!139732) b_and!146487)))

(declare-fun t!176357 () Bool)

(declare-fun tb!115575 () Bool)

(assert (=> (and b!1896820 (= (toValue!5398 (transformation!3781 (rule!5974 separatorToken!354))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176357) tb!115575))

(declare-fun result!139736 () Bool)

(assert (= result!139736 result!139732))

(assert (=> d!580922 t!176357))

(declare-fun b_and!146489 () Bool)

(assert (= b_and!146443 (and (=> t!176357 result!139736) b_and!146489)))

(declare-fun t!176359 () Bool)

(declare-fun tb!115577 () Bool)

(assert (=> (and b!1896840 (= (toValue!5398 (transformation!3781 (h!26691 rules!3198))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176359) tb!115577))

(declare-fun result!139738 () Bool)

(assert (= result!139738 result!139732))

(assert (=> d!580922 t!176359))

(declare-fun b_and!146491 () Bool)

(assert (= b_and!146447 (and (=> t!176359 result!139738) b_and!146491)))

(assert (=> d!580922 m!2328071))

(declare-fun m!2328347 () Bool)

(assert (=> d!580922 m!2328347))

(declare-fun m!2328349 () Bool)

(assert (=> d!580922 m!2328349))

(assert (=> d!580922 m!2328347))

(declare-fun m!2328351 () Bool)

(assert (=> d!580922 m!2328351))

(assert (=> d!580922 m!2328351))

(declare-fun m!2328353 () Bool)

(assert (=> d!580922 m!2328353))

(assert (=> b!1896837 d!580922))

(declare-fun d!580924 () Bool)

(declare-fun e!1211284 () Bool)

(assert (=> d!580924 e!1211284))

(declare-fun res!846824 () Bool)

(assert (=> d!580924 (=> res!846824 e!1211284)))

(declare-fun lt!725552 () Option!4268)

(declare-fun isEmpty!13067 (Option!4268) Bool)

(assert (=> d!580924 (= res!846824 (isEmpty!13067 lt!725552))))

(declare-fun e!1211286 () Option!4268)

(assert (=> d!580924 (= lt!725552 e!1211286)))

(declare-fun c!309382 () Bool)

(assert (=> d!580924 (= c!309382 (and (is-Cons!21290 rules!3198) (is-Nil!21290 (t!176321 rules!3198))))))

(declare-fun lt!725553 () Unit!35639)

(declare-fun lt!725550 () Unit!35639)

(assert (=> d!580924 (= lt!725553 lt!725550)))

(declare-fun isPrefix!1908 (List!21371 List!21371) Bool)

(assert (=> d!580924 (isPrefix!1908 lt!725463 lt!725463)))

(declare-fun lemmaIsPrefixRefl!1226 (List!21371 List!21371) Unit!35639)

(assert (=> d!580924 (= lt!725550 (lemmaIsPrefixRefl!1226 lt!725463 lt!725463))))

(declare-fun rulesValidInductive!1281 (LexerInterface!3394 List!21372) Bool)

(assert (=> d!580924 (rulesValidInductive!1281 thiss!23328 rules!3198)))

(assert (=> d!580924 (= (maxPrefix!1840 thiss!23328 rules!3198 lt!725463) lt!725552)))

(declare-fun b!1897157 () Bool)

(declare-fun res!846828 () Bool)

(declare-fun e!1211285 () Bool)

(assert (=> b!1897157 (=> (not res!846828) (not e!1211285))))

(declare-fun ++!5728 (List!21371 List!21371) List!21371)

(assert (=> b!1897157 (= res!846828 (= (++!5728 (list!8657 (charsOf!2337 (_1!11512 (get!6566 lt!725552)))) (_2!11512 (get!6566 lt!725552))) lt!725463))))

(declare-fun b!1897158 () Bool)

(declare-fun contains!3836 (List!21372 Rule!7362) Bool)

(assert (=> b!1897158 (= e!1211285 (contains!3836 rules!3198 (rule!5974 (_1!11512 (get!6566 lt!725552)))))))

(declare-fun b!1897159 () Bool)

(declare-fun lt!725551 () Option!4268)

(declare-fun lt!725549 () Option!4268)

(assert (=> b!1897159 (= e!1211286 (ite (and (is-None!4267 lt!725551) (is-None!4267 lt!725549)) None!4267 (ite (is-None!4267 lt!725549) lt!725551 (ite (is-None!4267 lt!725551) lt!725549 (ite (>= (size!16859 (_1!11512 (v!26296 lt!725551))) (size!16859 (_1!11512 (v!26296 lt!725549)))) lt!725551 lt!725549)))))))

(declare-fun call!116978 () Option!4268)

(assert (=> b!1897159 (= lt!725551 call!116978)))

(assert (=> b!1897159 (= lt!725549 (maxPrefix!1840 thiss!23328 (t!176321 rules!3198) lt!725463))))

(declare-fun bm!116973 () Bool)

(declare-fun maxPrefixOneRule!1190 (LexerInterface!3394 Rule!7362 List!21371) Option!4268)

(assert (=> bm!116973 (= call!116978 (maxPrefixOneRule!1190 thiss!23328 (h!26691 rules!3198) lt!725463))))

(declare-fun b!1897160 () Bool)

(assert (=> b!1897160 (= e!1211284 e!1211285)))

(declare-fun res!846825 () Bool)

(assert (=> b!1897160 (=> (not res!846825) (not e!1211285))))

(assert (=> b!1897160 (= res!846825 (isDefined!3566 lt!725552))))

(declare-fun b!1897161 () Bool)

(assert (=> b!1897161 (= e!1211286 call!116978)))

(declare-fun b!1897162 () Bool)

(declare-fun res!846829 () Bool)

(assert (=> b!1897162 (=> (not res!846829) (not e!1211285))))

(declare-fun apply!5602 (TokenValueInjection!7418 BalanceConc!13988) TokenValue!3917)

(assert (=> b!1897162 (= res!846829 (= (value!119351 (_1!11512 (get!6566 lt!725552))) (apply!5602 (transformation!3781 (rule!5974 (_1!11512 (get!6566 lt!725552)))) (seqFromList!2653 (originalCharacters!4588 (_1!11512 (get!6566 lt!725552)))))))))

(declare-fun b!1897163 () Bool)

(declare-fun res!846830 () Bool)

(assert (=> b!1897163 (=> (not res!846830) (not e!1211285))))

(assert (=> b!1897163 (= res!846830 (< (size!16862 (_2!11512 (get!6566 lt!725552))) (size!16862 lt!725463)))))

(declare-fun b!1897164 () Bool)

(declare-fun res!846826 () Bool)

(assert (=> b!1897164 (=> (not res!846826) (not e!1211285))))

(assert (=> b!1897164 (= res!846826 (= (list!8657 (charsOf!2337 (_1!11512 (get!6566 lt!725552)))) (originalCharacters!4588 (_1!11512 (get!6566 lt!725552)))))))

(declare-fun b!1897165 () Bool)

(declare-fun res!846827 () Bool)

(assert (=> b!1897165 (=> (not res!846827) (not e!1211285))))

(assert (=> b!1897165 (= res!846827 (matchR!2492 (regex!3781 (rule!5974 (_1!11512 (get!6566 lt!725552)))) (list!8657 (charsOf!2337 (_1!11512 (get!6566 lt!725552))))))))

(assert (= (and d!580924 c!309382) b!1897161))

(assert (= (and d!580924 (not c!309382)) b!1897159))

(assert (= (or b!1897161 b!1897159) bm!116973))

(assert (= (and d!580924 (not res!846824)) b!1897160))

(assert (= (and b!1897160 res!846825) b!1897164))

(assert (= (and b!1897164 res!846826) b!1897163))

(assert (= (and b!1897163 res!846830) b!1897157))

(assert (= (and b!1897157 res!846828) b!1897162))

(assert (= (and b!1897162 res!846829) b!1897165))

(assert (= (and b!1897165 res!846827) b!1897158))

(declare-fun m!2328369 () Bool)

(assert (=> b!1897159 m!2328369))

(declare-fun m!2328371 () Bool)

(assert (=> b!1897158 m!2328371))

(declare-fun m!2328373 () Bool)

(assert (=> b!1897158 m!2328373))

(assert (=> b!1897157 m!2328371))

(declare-fun m!2328375 () Bool)

(assert (=> b!1897157 m!2328375))

(assert (=> b!1897157 m!2328375))

(declare-fun m!2328377 () Bool)

(assert (=> b!1897157 m!2328377))

(assert (=> b!1897157 m!2328377))

(declare-fun m!2328379 () Bool)

(assert (=> b!1897157 m!2328379))

(assert (=> b!1897164 m!2328371))

(assert (=> b!1897164 m!2328375))

(assert (=> b!1897164 m!2328375))

(assert (=> b!1897164 m!2328377))

(assert (=> b!1897165 m!2328371))

(assert (=> b!1897165 m!2328375))

(assert (=> b!1897165 m!2328375))

(assert (=> b!1897165 m!2328377))

(assert (=> b!1897165 m!2328377))

(declare-fun m!2328381 () Bool)

(assert (=> b!1897165 m!2328381))

(assert (=> b!1897163 m!2328371))

(declare-fun m!2328383 () Bool)

(assert (=> b!1897163 m!2328383))

(declare-fun m!2328385 () Bool)

(assert (=> b!1897163 m!2328385))

(declare-fun m!2328387 () Bool)

(assert (=> bm!116973 m!2328387))

(declare-fun m!2328389 () Bool)

(assert (=> b!1897160 m!2328389))

(declare-fun m!2328391 () Bool)

(assert (=> d!580924 m!2328391))

(declare-fun m!2328393 () Bool)

(assert (=> d!580924 m!2328393))

(declare-fun m!2328395 () Bool)

(assert (=> d!580924 m!2328395))

(declare-fun m!2328397 () Bool)

(assert (=> d!580924 m!2328397))

(assert (=> b!1897162 m!2328371))

(declare-fun m!2328399 () Bool)

(assert (=> b!1897162 m!2328399))

(assert (=> b!1897162 m!2328399))

(declare-fun m!2328401 () Bool)

(assert (=> b!1897162 m!2328401))

(assert (=> b!1896837 d!580924))

(declare-fun d!580928 () Bool)

(declare-fun list!8660 (Conc!7086) List!21371)

(assert (=> d!580928 (= (list!8657 lt!725456) (list!8660 (c!309346 lt!725456)))))

(declare-fun bs!413476 () Bool)

(assert (= bs!413476 d!580928))

(declare-fun m!2328403 () Bool)

(assert (=> bs!413476 m!2328403))

(assert (=> b!1896837 d!580928))

(declare-fun b!1897174 () Bool)

(declare-fun e!1211294 () Bool)

(assert (=> b!1897174 (= e!1211294 true)))

(declare-fun d!580930 () Bool)

(assert (=> d!580930 e!1211294))

(assert (= d!580930 b!1897174))

(declare-fun lambda!74129 () Int)

(declare-fun order!13455 () Int)

(declare-fun dynLambda!10357 (Int Int) Int)

(assert (=> b!1897174 (< (dynLambda!10350 order!13441 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) (dynLambda!10357 order!13455 lambda!74129))))

(assert (=> b!1897174 (< (dynLambda!10352 order!13445 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) (dynLambda!10357 order!13455 lambda!74129))))

(assert (=> d!580930 (= (dynLambda!10356 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) lt!725456) (dynLambda!10356 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (seqFromList!2653 (originalCharacters!4588 (h!26692 tokens!598)))))))

(declare-fun lt!725556 () Unit!35639)

(declare-fun Forall2of!172 (Int BalanceConc!13988 BalanceConc!13988) Unit!35639)

(assert (=> d!580930 (= lt!725556 (Forall2of!172 lambda!74129 lt!725456 (seqFromList!2653 (originalCharacters!4588 (h!26692 tokens!598)))))))

(assert (=> d!580930 (= (list!8657 lt!725456) (list!8657 (seqFromList!2653 (originalCharacters!4588 (h!26692 tokens!598)))))))

(assert (=> d!580930 (= (lemmaEqSameImage!489 (transformation!3781 (rule!5974 (h!26692 tokens!598))) lt!725456 (seqFromList!2653 (originalCharacters!4588 (h!26692 tokens!598)))) lt!725556)))

(declare-fun b_lambda!62367 () Bool)

(assert (=> (not b_lambda!62367) (not d!580930)))

(assert (=> d!580930 t!176355))

(declare-fun b_and!146505 () Bool)

(assert (= b_and!146487 (and (=> t!176355 result!139732) b_and!146505)))

(assert (=> d!580930 t!176357))

(declare-fun b_and!146507 () Bool)

(assert (= b_and!146489 (and (=> t!176357 result!139736) b_and!146507)))

(assert (=> d!580930 t!176359))

(declare-fun b_and!146509 () Bool)

(assert (= b_and!146491 (and (=> t!176359 result!139738) b_and!146509)))

(declare-fun b_lambda!62369 () Bool)

(assert (=> (not b_lambda!62369) (not d!580930)))

(declare-fun t!176373 () Bool)

(declare-fun tb!115591 () Bool)

(assert (=> (and b!1896831 (= (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176373) tb!115591))

(declare-fun result!139754 () Bool)

(assert (=> tb!115591 (= result!139754 (inv!21 (dynLambda!10356 (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (seqFromList!2653 (originalCharacters!4588 (h!26692 tokens!598))))))))

(declare-fun m!2328405 () Bool)

(assert (=> tb!115591 m!2328405))

(assert (=> d!580930 t!176373))

(declare-fun b_and!146511 () Bool)

(assert (= b_and!146505 (and (=> t!176373 result!139754) b_and!146511)))

(declare-fun t!176375 () Bool)

(declare-fun tb!115593 () Bool)

(assert (=> (and b!1896820 (= (toValue!5398 (transformation!3781 (rule!5974 separatorToken!354))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176375) tb!115593))

(declare-fun result!139756 () Bool)

(assert (= result!139756 result!139754))

(assert (=> d!580930 t!176375))

(declare-fun b_and!146513 () Bool)

(assert (= b_and!146507 (and (=> t!176375 result!139756) b_and!146513)))

(declare-fun t!176377 () Bool)

(declare-fun tb!115595 () Bool)

(assert (=> (and b!1896840 (= (toValue!5398 (transformation!3781 (h!26691 rules!3198))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176377) tb!115595))

(declare-fun result!139758 () Bool)

(assert (= result!139758 result!139754))

(assert (=> d!580930 t!176377))

(declare-fun b_and!146515 () Bool)

(assert (= b_and!146509 (and (=> t!176377 result!139758) b_and!146515)))

(assert (=> d!580930 m!2328067))

(declare-fun m!2328407 () Bool)

(assert (=> d!580930 m!2328407))

(assert (=> d!580930 m!2328067))

(declare-fun m!2328409 () Bool)

(assert (=> d!580930 m!2328409))

(assert (=> d!580930 m!2328347))

(assert (=> d!580930 m!2328071))

(assert (=> d!580930 m!2328067))

(declare-fun m!2328411 () Bool)

(assert (=> d!580930 m!2328411))

(assert (=> b!1896837 d!580930))

(declare-fun d!580932 () Bool)

(assert (=> d!580932 (= (list!8657 (charsOf!2337 separatorToken!354)) (list!8660 (c!309346 (charsOf!2337 separatorToken!354))))))

(declare-fun bs!413477 () Bool)

(assert (= bs!413477 d!580932))

(declare-fun m!2328413 () Bool)

(assert (=> bs!413477 m!2328413))

(assert (=> b!1896837 d!580932))

(declare-fun d!580934 () Bool)

(assert (=> d!580934 (= (isDefined!3566 lt!725461) (not (isEmpty!13067 lt!725461)))))

(declare-fun bs!413478 () Bool)

(assert (= bs!413478 d!580934))

(declare-fun m!2328415 () Bool)

(assert (=> bs!413478 m!2328415))

(assert (=> b!1896837 d!580934))

(declare-fun d!580936 () Bool)

(declare-fun lt!725559 () BalanceConc!13988)

(assert (=> d!580936 (= (list!8657 lt!725559) (originalCharacters!4588 separatorToken!354))))

(assert (=> d!580936 (= lt!725559 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (value!119351 separatorToken!354)))))

(assert (=> d!580936 (= (charsOf!2337 separatorToken!354) lt!725559)))

(declare-fun b_lambda!62371 () Bool)

(assert (=> (not b_lambda!62371) (not d!580936)))

(assert (=> d!580936 t!176343))

(declare-fun b_and!146517 () Bool)

(assert (= b_and!146481 (and (=> t!176343 result!139718) b_and!146517)))

(assert (=> d!580936 t!176345))

(declare-fun b_and!146519 () Bool)

(assert (= b_and!146483 (and (=> t!176345 result!139722) b_and!146519)))

(assert (=> d!580936 t!176347))

(declare-fun b_and!146521 () Bool)

(assert (= b_and!146485 (and (=> t!176347 result!139724) b_and!146521)))

(declare-fun m!2328417 () Bool)

(assert (=> d!580936 m!2328417))

(assert (=> d!580936 m!2328335))

(assert (=> b!1896837 d!580936))

(declare-fun d!580938 () Bool)

(declare-fun e!1211298 () Bool)

(assert (=> d!580938 e!1211298))

(declare-fun res!846837 () Bool)

(assert (=> d!580938 (=> (not res!846837) (not e!1211298))))

(assert (=> d!580938 (= res!846837 (isDefined!3565 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 separatorToken!354)))))))

(declare-fun lt!725562 () Unit!35639)

(declare-fun choose!11839 (LexerInterface!3394 List!21372 List!21371 Token!7114) Unit!35639)

(assert (=> d!580938 (= lt!725562 (choose!11839 thiss!23328 rules!3198 lt!725455 separatorToken!354))))

(assert (=> d!580938 (rulesInvariant!3001 thiss!23328 rules!3198)))

(assert (=> d!580938 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!624 thiss!23328 rules!3198 lt!725455 separatorToken!354) lt!725562)))

(declare-fun b!1897179 () Bool)

(declare-fun res!846838 () Bool)

(assert (=> b!1897179 (=> (not res!846838) (not e!1211298))))

(assert (=> b!1897179 (= res!846838 (matchR!2492 (regex!3781 (get!6565 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 separatorToken!354))))) (list!8657 (charsOf!2337 separatorToken!354))))))

(declare-fun b!1897180 () Bool)

(assert (=> b!1897180 (= e!1211298 (= (rule!5974 separatorToken!354) (get!6565 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 separatorToken!354))))))))

(assert (= (and d!580938 res!846837) b!1897179))

(assert (= (and b!1897179 res!846838) b!1897180))

(assert (=> d!580938 m!2328073))

(assert (=> d!580938 m!2328073))

(declare-fun m!2328419 () Bool)

(assert (=> d!580938 m!2328419))

(declare-fun m!2328421 () Bool)

(assert (=> d!580938 m!2328421))

(assert (=> d!580938 m!2328031))

(assert (=> b!1897179 m!2328073))

(declare-fun m!2328423 () Bool)

(assert (=> b!1897179 m!2328423))

(assert (=> b!1897179 m!2328073))

(assert (=> b!1897179 m!2328077))

(assert (=> b!1897179 m!2328077))

(assert (=> b!1897179 m!2328089))

(assert (=> b!1897179 m!2328089))

(declare-fun m!2328425 () Bool)

(assert (=> b!1897179 m!2328425))

(assert (=> b!1897180 m!2328073))

(assert (=> b!1897180 m!2328073))

(assert (=> b!1897180 m!2328423))

(assert (=> b!1896837 d!580938))

(declare-fun d!580940 () Bool)

(declare-fun isEmpty!13068 (Option!4267) Bool)

(assert (=> d!580940 (= (isDefined!3565 lt!725460) (not (isEmpty!13068 lt!725460)))))

(declare-fun bs!413479 () Bool)

(assert (= bs!413479 d!580940))

(declare-fun m!2328427 () Bool)

(assert (=> bs!413479 m!2328427))

(assert (=> b!1896837 d!580940))

(declare-fun b!1897193 () Bool)

(declare-fun e!1211307 () Bool)

(declare-fun e!1211310 () Bool)

(assert (=> b!1897193 (= e!1211307 e!1211310)))

(declare-fun res!846844 () Bool)

(assert (=> b!1897193 (=> (not res!846844) (not e!1211310))))

(declare-fun lt!725571 () Option!4267)

(assert (=> b!1897193 (= res!846844 (contains!3836 rules!3198 (get!6565 lt!725571)))))

(declare-fun b!1897194 () Bool)

(assert (=> b!1897194 (= e!1211310 (= (tag!4199 (get!6565 lt!725571)) (tag!4199 (rule!5974 separatorToken!354))))))

(declare-fun b!1897196 () Bool)

(declare-fun e!1211309 () Option!4267)

(assert (=> b!1897196 (= e!1211309 (Some!4266 (h!26691 rules!3198)))))

(declare-fun b!1897197 () Bool)

(declare-fun e!1211308 () Option!4267)

(assert (=> b!1897197 (= e!1211308 None!4266)))

(declare-fun b!1897198 () Bool)

(declare-fun lt!725570 () Unit!35639)

(declare-fun lt!725569 () Unit!35639)

(assert (=> b!1897198 (= lt!725570 lt!725569)))

(assert (=> b!1897198 (rulesInvariant!3001 thiss!23328 (t!176321 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!241 (LexerInterface!3394 Rule!7362 List!21372) Unit!35639)

(assert (=> b!1897198 (= lt!725569 (lemmaInvariantOnRulesThenOnTail!241 thiss!23328 (h!26691 rules!3198) (t!176321 rules!3198)))))

(assert (=> b!1897198 (= e!1211308 (getRuleFromTag!624 thiss!23328 (t!176321 rules!3198) (tag!4199 (rule!5974 separatorToken!354))))))

(declare-fun d!580942 () Bool)

(assert (=> d!580942 e!1211307))

(declare-fun res!846843 () Bool)

(assert (=> d!580942 (=> res!846843 e!1211307)))

(assert (=> d!580942 (= res!846843 (isEmpty!13068 lt!725571))))

(assert (=> d!580942 (= lt!725571 e!1211309)))

(declare-fun c!309387 () Bool)

(assert (=> d!580942 (= c!309387 (and (is-Cons!21290 rules!3198) (= (tag!4199 (h!26691 rules!3198)) (tag!4199 (rule!5974 separatorToken!354)))))))

(assert (=> d!580942 (rulesInvariant!3001 thiss!23328 rules!3198)))

(assert (=> d!580942 (= (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 separatorToken!354))) lt!725571)))

(declare-fun b!1897195 () Bool)

(assert (=> b!1897195 (= e!1211309 e!1211308)))

(declare-fun c!309388 () Bool)

(assert (=> b!1897195 (= c!309388 (and (is-Cons!21290 rules!3198) (not (= (tag!4199 (h!26691 rules!3198)) (tag!4199 (rule!5974 separatorToken!354))))))))

(assert (= (and d!580942 c!309387) b!1897196))

(assert (= (and d!580942 (not c!309387)) b!1897195))

(assert (= (and b!1897195 c!309388) b!1897198))

(assert (= (and b!1897195 (not c!309388)) b!1897197))

(assert (= (and d!580942 (not res!846843)) b!1897193))

(assert (= (and b!1897193 res!846844) b!1897194))

(declare-fun m!2328429 () Bool)

(assert (=> b!1897193 m!2328429))

(assert (=> b!1897193 m!2328429))

(declare-fun m!2328431 () Bool)

(assert (=> b!1897193 m!2328431))

(assert (=> b!1897194 m!2328429))

(declare-fun m!2328433 () Bool)

(assert (=> b!1897198 m!2328433))

(declare-fun m!2328435 () Bool)

(assert (=> b!1897198 m!2328435))

(declare-fun m!2328437 () Bool)

(assert (=> b!1897198 m!2328437))

(declare-fun m!2328439 () Bool)

(assert (=> d!580942 m!2328439))

(assert (=> d!580942 m!2328031))

(assert (=> b!1896837 d!580942))

(declare-fun b!1897199 () Bool)

(declare-fun e!1211311 () Bool)

(declare-fun e!1211314 () Bool)

(assert (=> b!1897199 (= e!1211311 e!1211314)))

(declare-fun res!846846 () Bool)

(assert (=> b!1897199 (=> (not res!846846) (not e!1211314))))

(declare-fun lt!725574 () Option!4267)

(assert (=> b!1897199 (= res!846846 (contains!3836 rules!3198 (get!6565 lt!725574)))))

(declare-fun b!1897200 () Bool)

(assert (=> b!1897200 (= e!1211314 (= (tag!4199 (get!6565 lt!725574)) (tag!4199 (rule!5974 (h!26692 tokens!598)))))))

(declare-fun b!1897202 () Bool)

(declare-fun e!1211313 () Option!4267)

(assert (=> b!1897202 (= e!1211313 (Some!4266 (h!26691 rules!3198)))))

(declare-fun b!1897203 () Bool)

(declare-fun e!1211312 () Option!4267)

(assert (=> b!1897203 (= e!1211312 None!4266)))

(declare-fun b!1897204 () Bool)

(declare-fun lt!725573 () Unit!35639)

(declare-fun lt!725572 () Unit!35639)

(assert (=> b!1897204 (= lt!725573 lt!725572)))

(assert (=> b!1897204 (rulesInvariant!3001 thiss!23328 (t!176321 rules!3198))))

(assert (=> b!1897204 (= lt!725572 (lemmaInvariantOnRulesThenOnTail!241 thiss!23328 (h!26691 rules!3198) (t!176321 rules!3198)))))

(assert (=> b!1897204 (= e!1211312 (getRuleFromTag!624 thiss!23328 (t!176321 rules!3198) (tag!4199 (rule!5974 (h!26692 tokens!598)))))))

(declare-fun d!580944 () Bool)

(assert (=> d!580944 e!1211311))

(declare-fun res!846845 () Bool)

(assert (=> d!580944 (=> res!846845 e!1211311)))

(assert (=> d!580944 (= res!846845 (isEmpty!13068 lt!725574))))

(assert (=> d!580944 (= lt!725574 e!1211313)))

(declare-fun c!309389 () Bool)

(assert (=> d!580944 (= c!309389 (and (is-Cons!21290 rules!3198) (= (tag!4199 (h!26691 rules!3198)) (tag!4199 (rule!5974 (h!26692 tokens!598))))))))

(assert (=> d!580944 (rulesInvariant!3001 thiss!23328 rules!3198)))

(assert (=> d!580944 (= (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 (h!26692 tokens!598)))) lt!725574)))

(declare-fun b!1897201 () Bool)

(assert (=> b!1897201 (= e!1211313 e!1211312)))

(declare-fun c!309390 () Bool)

(assert (=> b!1897201 (= c!309390 (and (is-Cons!21290 rules!3198) (not (= (tag!4199 (h!26691 rules!3198)) (tag!4199 (rule!5974 (h!26692 tokens!598)))))))))

(assert (= (and d!580944 c!309389) b!1897202))

(assert (= (and d!580944 (not c!309389)) b!1897201))

(assert (= (and b!1897201 c!309390) b!1897204))

(assert (= (and b!1897201 (not c!309390)) b!1897203))

(assert (= (and d!580944 (not res!846845)) b!1897199))

(assert (= (and b!1897199 res!846846) b!1897200))

(declare-fun m!2328441 () Bool)

(assert (=> b!1897199 m!2328441))

(assert (=> b!1897199 m!2328441))

(declare-fun m!2328443 () Bool)

(assert (=> b!1897199 m!2328443))

(assert (=> b!1897200 m!2328441))

(assert (=> b!1897204 m!2328433))

(assert (=> b!1897204 m!2328435))

(declare-fun m!2328445 () Bool)

(assert (=> b!1897204 m!2328445))

(declare-fun m!2328447 () Bool)

(assert (=> d!580944 m!2328447))

(assert (=> d!580944 m!2328031))

(assert (=> b!1896837 d!580944))

(declare-fun bs!413480 () Bool)

(declare-fun d!580946 () Bool)

(assert (= bs!413480 (and d!580946 b!1896838)))

(declare-fun lambda!74130 () Int)

(assert (=> bs!413480 (not (= lambda!74130 lambda!74114))))

(declare-fun bs!413481 () Bool)

(assert (= bs!413481 (and d!580946 d!580896)))

(assert (=> bs!413481 (= lambda!74130 lambda!74120)))

(declare-fun b!1897209 () Bool)

(declare-fun e!1211319 () Bool)

(assert (=> b!1897209 (= e!1211319 true)))

(declare-fun b!1897208 () Bool)

(declare-fun e!1211318 () Bool)

(assert (=> b!1897208 (= e!1211318 e!1211319)))

(declare-fun b!1897207 () Bool)

(declare-fun e!1211317 () Bool)

(assert (=> b!1897207 (= e!1211317 e!1211318)))

(assert (=> d!580946 e!1211317))

(assert (= b!1897208 b!1897209))

(assert (= b!1897207 b!1897208))

(assert (= (and d!580946 (is-Cons!21290 rules!3198)) b!1897207))

(assert (=> b!1897209 (< (dynLambda!10350 order!13441 (toValue!5398 (transformation!3781 (h!26691 rules!3198)))) (dynLambda!10351 order!13443 lambda!74130))))

(assert (=> b!1897209 (< (dynLambda!10352 order!13445 (toChars!5257 (transformation!3781 (h!26691 rules!3198)))) (dynLambda!10351 order!13443 lambda!74130))))

(assert (=> d!580946 true))

(declare-fun lt!725575 () Bool)

(assert (=> d!580946 (= lt!725575 (forall!4459 (t!176322 tokens!598) lambda!74130))))

(declare-fun e!1211315 () Bool)

(assert (=> d!580946 (= lt!725575 e!1211315)))

(declare-fun res!846848 () Bool)

(assert (=> d!580946 (=> res!846848 e!1211315)))

(assert (=> d!580946 (= res!846848 (not (is-Cons!21291 (t!176322 tokens!598))))))

(assert (=> d!580946 (not (isEmpty!13063 rules!3198))))

(assert (=> d!580946 (= (rulesProduceEachTokenIndividuallyList!1125 thiss!23328 rules!3198 (t!176322 tokens!598)) lt!725575)))

(declare-fun b!1897205 () Bool)

(declare-fun e!1211316 () Bool)

(assert (=> b!1897205 (= e!1211315 e!1211316)))

(declare-fun res!846847 () Bool)

(assert (=> b!1897205 (=> (not res!846847) (not e!1211316))))

(assert (=> b!1897205 (= res!846847 (rulesProduceIndividualToken!1566 thiss!23328 rules!3198 (h!26692 (t!176322 tokens!598))))))

(declare-fun b!1897206 () Bool)

(assert (=> b!1897206 (= e!1211316 (rulesProduceEachTokenIndividuallyList!1125 thiss!23328 rules!3198 (t!176322 (t!176322 tokens!598))))))

(assert (= (and d!580946 (not res!846848)) b!1897205))

(assert (= (and b!1897205 res!846847) b!1897206))

(declare-fun m!2328449 () Bool)

(assert (=> d!580946 m!2328449))

(assert (=> d!580946 m!2328093))

(declare-fun m!2328451 () Bool)

(assert (=> b!1897205 m!2328451))

(declare-fun m!2328453 () Bool)

(assert (=> b!1897206 m!2328453))

(assert (=> b!1896837 d!580946))

(declare-fun d!580948 () Bool)

(declare-fun e!1211320 () Bool)

(assert (=> d!580948 e!1211320))

(declare-fun res!846849 () Bool)

(assert (=> d!580948 (=> (not res!846849) (not e!1211320))))

(assert (=> d!580948 (= res!846849 (isDefined!3565 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 (h!26692 tokens!598))))))))

(declare-fun lt!725576 () Unit!35639)

(assert (=> d!580948 (= lt!725576 (choose!11839 thiss!23328 rules!3198 lt!725463 (h!26692 tokens!598)))))

(assert (=> d!580948 (rulesInvariant!3001 thiss!23328 rules!3198)))

(assert (=> d!580948 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!624 thiss!23328 rules!3198 lt!725463 (h!26692 tokens!598)) lt!725576)))

(declare-fun b!1897210 () Bool)

(declare-fun res!846850 () Bool)

(assert (=> b!1897210 (=> (not res!846850) (not e!1211320))))

(assert (=> b!1897210 (= res!846850 (matchR!2492 (regex!3781 (get!6565 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 (h!26692 tokens!598)))))) (list!8657 (charsOf!2337 (h!26692 tokens!598)))))))

(declare-fun b!1897211 () Bool)

(assert (=> b!1897211 (= e!1211320 (= (rule!5974 (h!26692 tokens!598)) (get!6565 (getRuleFromTag!624 thiss!23328 rules!3198 (tag!4199 (rule!5974 (h!26692 tokens!598)))))))))

(assert (= (and d!580948 res!846849) b!1897210))

(assert (= (and b!1897210 res!846850) b!1897211))

(assert (=> d!580948 m!2328085))

(assert (=> d!580948 m!2328085))

(declare-fun m!2328455 () Bool)

(assert (=> d!580948 m!2328455))

(declare-fun m!2328457 () Bool)

(assert (=> d!580948 m!2328457))

(assert (=> d!580948 m!2328031))

(assert (=> b!1897210 m!2328085))

(declare-fun m!2328459 () Bool)

(assert (=> b!1897210 m!2328459))

(assert (=> b!1897210 m!2328085))

(assert (=> b!1897210 m!2328081))

(assert (=> b!1897210 m!2328081))

(declare-fun m!2328461 () Bool)

(assert (=> b!1897210 m!2328461))

(assert (=> b!1897210 m!2328461))

(declare-fun m!2328463 () Bool)

(assert (=> b!1897210 m!2328463))

(assert (=> b!1897211 m!2328085))

(assert (=> b!1897211 m!2328085))

(assert (=> b!1897211 m!2328459))

(assert (=> b!1896837 d!580948))

(declare-fun d!580950 () Bool)

(declare-fun lt!725577 () BalanceConc!13988)

(assert (=> d!580950 (= (list!8657 lt!725577) (originalCharacters!4588 (h!26692 tokens!598)))))

(assert (=> d!580950 (= lt!725577 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (value!119351 (h!26692 tokens!598))))))

(assert (=> d!580950 (= (charsOf!2337 (h!26692 tokens!598)) lt!725577)))

(declare-fun b_lambda!62373 () Bool)

(assert (=> (not b_lambda!62373) (not d!580950)))

(declare-fun t!176379 () Bool)

(declare-fun tb!115597 () Bool)

(assert (=> (and b!1896831 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176379) tb!115597))

(declare-fun b!1897212 () Bool)

(declare-fun e!1211321 () Bool)

(declare-fun tp!541536 () Bool)

(assert (=> b!1897212 (= e!1211321 (and (inv!28395 (c!309346 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (value!119351 (h!26692 tokens!598))))) tp!541536))))

(declare-fun result!139760 () Bool)

(assert (=> tb!115597 (= result!139760 (and (inv!28396 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (value!119351 (h!26692 tokens!598)))) e!1211321))))

(assert (= tb!115597 b!1897212))

(declare-fun m!2328465 () Bool)

(assert (=> b!1897212 m!2328465))

(declare-fun m!2328467 () Bool)

(assert (=> tb!115597 m!2328467))

(assert (=> d!580950 t!176379))

(declare-fun b_and!146523 () Bool)

(assert (= b_and!146517 (and (=> t!176379 result!139760) b_and!146523)))

(declare-fun t!176381 () Bool)

(declare-fun tb!115599 () Bool)

(assert (=> (and b!1896820 (= (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176381) tb!115599))

(declare-fun result!139762 () Bool)

(assert (= result!139762 result!139760))

(assert (=> d!580950 t!176381))

(declare-fun b_and!146525 () Bool)

(assert (= b_and!146519 (and (=> t!176381 result!139762) b_and!146525)))

(declare-fun t!176383 () Bool)

(declare-fun tb!115601 () Bool)

(assert (=> (and b!1896840 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176383) tb!115601))

(declare-fun result!139764 () Bool)

(assert (= result!139764 result!139760))

(assert (=> d!580950 t!176383))

(declare-fun b_and!146527 () Bool)

(assert (= b_and!146521 (and (=> t!176383 result!139764) b_and!146527)))

(declare-fun m!2328469 () Bool)

(assert (=> d!580950 m!2328469))

(declare-fun m!2328471 () Bool)

(assert (=> d!580950 m!2328471))

(assert (=> b!1896837 d!580950))

(declare-fun d!580952 () Bool)

(assert (=> d!580952 (= (isDefined!3565 lt!725466) (not (isEmpty!13068 lt!725466)))))

(declare-fun bs!413482 () Bool)

(assert (= bs!413482 d!580952))

(declare-fun m!2328473 () Bool)

(assert (=> bs!413482 m!2328473))

(assert (=> b!1896837 d!580952))

(declare-fun d!580954 () Bool)

(declare-fun fromListB!1209 (List!21371) BalanceConc!13988)

(assert (=> d!580954 (= (seqFromList!2653 (originalCharacters!4588 (h!26692 tokens!598))) (fromListB!1209 (originalCharacters!4588 (h!26692 tokens!598))))))

(declare-fun bs!413483 () Bool)

(assert (= bs!413483 d!580954))

(declare-fun m!2328475 () Bool)

(assert (=> bs!413483 m!2328475))

(assert (=> b!1896837 d!580954))

(declare-fun b!1897213 () Bool)

(declare-fun res!846857 () Bool)

(declare-fun e!1211324 () Bool)

(assert (=> b!1897213 (=> res!846857 e!1211324)))

(assert (=> b!1897213 (= res!846857 (not (isEmpty!13065 (tail!2933 lt!725463))))))

(declare-fun b!1897214 () Bool)

(declare-fun e!1211327 () Bool)

(assert (=> b!1897214 (= e!1211327 e!1211324)))

(declare-fun res!846852 () Bool)

(assert (=> b!1897214 (=> res!846852 e!1211324)))

(declare-fun call!116979 () Bool)

(assert (=> b!1897214 (= res!846852 call!116979)))

(declare-fun d!580956 () Bool)

(declare-fun e!1211322 () Bool)

(assert (=> d!580956 e!1211322))

(declare-fun c!309392 () Bool)

(assert (=> d!580956 (= c!309392 (is-EmptyExpr!5206 (regex!3781 lt!725457)))))

(declare-fun lt!725578 () Bool)

(declare-fun e!1211323 () Bool)

(assert (=> d!580956 (= lt!725578 e!1211323)))

(declare-fun c!309393 () Bool)

(assert (=> d!580956 (= c!309393 (isEmpty!13065 lt!725463))))

(assert (=> d!580956 (validRegex!2104 (regex!3781 lt!725457))))

(assert (=> d!580956 (= (matchR!2492 (regex!3781 lt!725457) lt!725463) lt!725578)))

(declare-fun b!1897215 () Bool)

(declare-fun e!1211325 () Bool)

(assert (=> b!1897215 (= e!1211325 (not lt!725578))))

(declare-fun b!1897216 () Bool)

(declare-fun res!846854 () Bool)

(declare-fun e!1211326 () Bool)

(assert (=> b!1897216 (=> (not res!846854) (not e!1211326))))

(assert (=> b!1897216 (= res!846854 (isEmpty!13065 (tail!2933 lt!725463)))))

(declare-fun b!1897217 () Bool)

(declare-fun res!846851 () Bool)

(declare-fun e!1211328 () Bool)

(assert (=> b!1897217 (=> res!846851 e!1211328)))

(assert (=> b!1897217 (= res!846851 (not (is-ElementMatch!5206 (regex!3781 lt!725457))))))

(assert (=> b!1897217 (= e!1211325 e!1211328)))

(declare-fun b!1897218 () Bool)

(declare-fun res!846853 () Bool)

(assert (=> b!1897218 (=> res!846853 e!1211328)))

(assert (=> b!1897218 (= res!846853 e!1211326)))

(declare-fun res!846856 () Bool)

(assert (=> b!1897218 (=> (not res!846856) (not e!1211326))))

(assert (=> b!1897218 (= res!846856 lt!725578)))

(declare-fun b!1897219 () Bool)

(assert (=> b!1897219 (= e!1211326 (= (head!4407 lt!725463) (c!309347 (regex!3781 lt!725457))))))

(declare-fun b!1897220 () Bool)

(assert (=> b!1897220 (= e!1211323 (nullable!1580 (regex!3781 lt!725457)))))

(declare-fun b!1897221 () Bool)

(assert (=> b!1897221 (= e!1211323 (matchR!2492 (derivativeStep!1339 (regex!3781 lt!725457) (head!4407 lt!725463)) (tail!2933 lt!725463)))))

(declare-fun b!1897222 () Bool)

(assert (=> b!1897222 (= e!1211328 e!1211327)))

(declare-fun res!846855 () Bool)

(assert (=> b!1897222 (=> (not res!846855) (not e!1211327))))

(assert (=> b!1897222 (= res!846855 (not lt!725578))))

(declare-fun b!1897223 () Bool)

(assert (=> b!1897223 (= e!1211322 e!1211325)))

(declare-fun c!309391 () Bool)

(assert (=> b!1897223 (= c!309391 (is-EmptyLang!5206 (regex!3781 lt!725457)))))

(declare-fun b!1897224 () Bool)

(assert (=> b!1897224 (= e!1211322 (= lt!725578 call!116979))))

(declare-fun b!1897225 () Bool)

(declare-fun res!846858 () Bool)

(assert (=> b!1897225 (=> (not res!846858) (not e!1211326))))

(assert (=> b!1897225 (= res!846858 (not call!116979))))

(declare-fun bm!116974 () Bool)

(assert (=> bm!116974 (= call!116979 (isEmpty!13065 lt!725463))))

(declare-fun b!1897226 () Bool)

(assert (=> b!1897226 (= e!1211324 (not (= (head!4407 lt!725463) (c!309347 (regex!3781 lt!725457)))))))

(assert (= (and d!580956 c!309393) b!1897220))

(assert (= (and d!580956 (not c!309393)) b!1897221))

(assert (= (and d!580956 c!309392) b!1897224))

(assert (= (and d!580956 (not c!309392)) b!1897223))

(assert (= (and b!1897223 c!309391) b!1897215))

(assert (= (and b!1897223 (not c!309391)) b!1897217))

(assert (= (and b!1897217 (not res!846851)) b!1897218))

(assert (= (and b!1897218 res!846856) b!1897225))

(assert (= (and b!1897225 res!846858) b!1897216))

(assert (= (and b!1897216 res!846854) b!1897219))

(assert (= (and b!1897218 (not res!846853)) b!1897222))

(assert (= (and b!1897222 res!846855) b!1897214))

(assert (= (and b!1897214 (not res!846852)) b!1897213))

(assert (= (and b!1897213 (not res!846857)) b!1897226))

(assert (= (or b!1897224 b!1897214 b!1897225) bm!116974))

(declare-fun m!2328477 () Bool)

(assert (=> b!1897213 m!2328477))

(assert (=> b!1897213 m!2328477))

(declare-fun m!2328479 () Bool)

(assert (=> b!1897213 m!2328479))

(assert (=> b!1897216 m!2328477))

(assert (=> b!1897216 m!2328477))

(assert (=> b!1897216 m!2328479))

(declare-fun m!2328481 () Bool)

(assert (=> bm!116974 m!2328481))

(declare-fun m!2328483 () Bool)

(assert (=> b!1897219 m!2328483))

(assert (=> d!580956 m!2328481))

(declare-fun m!2328485 () Bool)

(assert (=> d!580956 m!2328485))

(assert (=> b!1897226 m!2328483))

(assert (=> b!1897221 m!2328483))

(assert (=> b!1897221 m!2328483))

(declare-fun m!2328487 () Bool)

(assert (=> b!1897221 m!2328487))

(assert (=> b!1897221 m!2328477))

(assert (=> b!1897221 m!2328487))

(assert (=> b!1897221 m!2328477))

(declare-fun m!2328489 () Bool)

(assert (=> b!1897221 m!2328489))

(declare-fun m!2328491 () Bool)

(assert (=> b!1897220 m!2328491))

(assert (=> b!1896836 d!580956))

(declare-fun d!580958 () Bool)

(assert (=> d!580958 (= (get!6565 lt!725460) (v!26295 lt!725460))))

(assert (=> b!1896836 d!580958))

(declare-fun b!1897227 () Bool)

(declare-fun e!1211329 () Bool)

(declare-fun e!1211331 () Bool)

(assert (=> b!1897227 (= e!1211329 e!1211331)))

(declare-fun c!309395 () Bool)

(assert (=> b!1897227 (= c!309395 (is-IntegerValue!11752 (value!119351 (h!26692 tokens!598))))))

(declare-fun b!1897228 () Bool)

(assert (=> b!1897228 (= e!1211331 (inv!17 (value!119351 (h!26692 tokens!598))))))

(declare-fun b!1897229 () Bool)

(declare-fun e!1211330 () Bool)

(assert (=> b!1897229 (= e!1211330 (inv!15 (value!119351 (h!26692 tokens!598))))))

(declare-fun b!1897230 () Bool)

(declare-fun res!846859 () Bool)

(assert (=> b!1897230 (=> res!846859 e!1211330)))

(assert (=> b!1897230 (= res!846859 (not (is-IntegerValue!11753 (value!119351 (h!26692 tokens!598)))))))

(assert (=> b!1897230 (= e!1211331 e!1211330)))

(declare-fun b!1897231 () Bool)

(assert (=> b!1897231 (= e!1211329 (inv!16 (value!119351 (h!26692 tokens!598))))))

(declare-fun d!580960 () Bool)

(declare-fun c!309394 () Bool)

(assert (=> d!580960 (= c!309394 (is-IntegerValue!11751 (value!119351 (h!26692 tokens!598))))))

(assert (=> d!580960 (= (inv!21 (value!119351 (h!26692 tokens!598))) e!1211329)))

(assert (= (and d!580960 c!309394) b!1897231))

(assert (= (and d!580960 (not c!309394)) b!1897227))

(assert (= (and b!1897227 c!309395) b!1897228))

(assert (= (and b!1897227 (not c!309395)) b!1897230))

(assert (= (and b!1897230 (not res!846859)) b!1897229))

(declare-fun m!2328493 () Bool)

(assert (=> b!1897228 m!2328493))

(declare-fun m!2328495 () Bool)

(assert (=> b!1897229 m!2328495))

(declare-fun m!2328497 () Bool)

(assert (=> b!1897231 m!2328497))

(assert (=> b!1896825 d!580960))

(declare-fun d!580962 () Bool)

(declare-fun res!846860 () Bool)

(declare-fun e!1211332 () Bool)

(assert (=> d!580962 (=> (not res!846860) (not e!1211332))))

(assert (=> d!580962 (= res!846860 (not (isEmpty!13065 (originalCharacters!4588 (h!26692 tokens!598)))))))

(assert (=> d!580962 (= (inv!28392 (h!26692 tokens!598)) e!1211332)))

(declare-fun b!1897232 () Bool)

(declare-fun res!846861 () Bool)

(assert (=> b!1897232 (=> (not res!846861) (not e!1211332))))

(assert (=> b!1897232 (= res!846861 (= (originalCharacters!4588 (h!26692 tokens!598)) (list!8657 (dynLambda!10354 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (value!119351 (h!26692 tokens!598))))))))

(declare-fun b!1897233 () Bool)

(assert (=> b!1897233 (= e!1211332 (= (size!16859 (h!26692 tokens!598)) (size!16862 (originalCharacters!4588 (h!26692 tokens!598)))))))

(assert (= (and d!580962 res!846860) b!1897232))

(assert (= (and b!1897232 res!846861) b!1897233))

(declare-fun b_lambda!62375 () Bool)

(assert (=> (not b_lambda!62375) (not b!1897232)))

(assert (=> b!1897232 t!176379))

(declare-fun b_and!146529 () Bool)

(assert (= b_and!146523 (and (=> t!176379 result!139760) b_and!146529)))

(assert (=> b!1897232 t!176381))

(declare-fun b_and!146531 () Bool)

(assert (= b_and!146525 (and (=> t!176381 result!139762) b_and!146531)))

(assert (=> b!1897232 t!176383))

(declare-fun b_and!146533 () Bool)

(assert (= b_and!146527 (and (=> t!176383 result!139764) b_and!146533)))

(declare-fun m!2328499 () Bool)

(assert (=> d!580962 m!2328499))

(assert (=> b!1897232 m!2328471))

(assert (=> b!1897232 m!2328471))

(declare-fun m!2328501 () Bool)

(assert (=> b!1897232 m!2328501))

(declare-fun m!2328503 () Bool)

(assert (=> b!1897233 m!2328503))

(assert (=> b!1896824 d!580962))

(declare-fun d!580964 () Bool)

(assert (=> d!580964 (= (inv!28388 (tag!4199 (rule!5974 (h!26692 tokens!598)))) (= (mod (str.len (value!119350 (tag!4199 (rule!5974 (h!26692 tokens!598))))) 2) 0))))

(assert (=> b!1896835 d!580964))

(declare-fun d!580966 () Bool)

(declare-fun res!846862 () Bool)

(declare-fun e!1211333 () Bool)

(assert (=> d!580966 (=> (not res!846862) (not e!1211333))))

(assert (=> d!580966 (= res!846862 (semiInverseModEq!1530 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))))))

(assert (=> d!580966 (= (inv!28391 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) e!1211333)))

(declare-fun b!1897234 () Bool)

(assert (=> b!1897234 (= e!1211333 (equivClasses!1457 (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))))))

(assert (= (and d!580966 res!846862) b!1897234))

(declare-fun m!2328505 () Bool)

(assert (=> d!580966 m!2328505))

(declare-fun m!2328507 () Bool)

(assert (=> b!1897234 m!2328507))

(assert (=> b!1896835 d!580966))

(declare-fun b!1897239 () Bool)

(declare-fun e!1211336 () Bool)

(declare-fun tp_is_empty!9067 () Bool)

(declare-fun tp!541539 () Bool)

(assert (=> b!1897239 (= e!1211336 (and tp_is_empty!9067 tp!541539))))

(assert (=> b!1896832 (= tp!541481 e!1211336)))

(assert (= (and b!1896832 (is-Cons!21289 (originalCharacters!4588 separatorToken!354))) b!1897239))

(declare-fun b!1897253 () Bool)

(declare-fun e!1211339 () Bool)

(declare-fun tp!541551 () Bool)

(declare-fun tp!541554 () Bool)

(assert (=> b!1897253 (= e!1211339 (and tp!541551 tp!541554))))

(declare-fun b!1897252 () Bool)

(declare-fun tp!541553 () Bool)

(assert (=> b!1897252 (= e!1211339 tp!541553)))

(declare-fun b!1897251 () Bool)

(declare-fun tp!541552 () Bool)

(declare-fun tp!541550 () Bool)

(assert (=> b!1897251 (= e!1211339 (and tp!541552 tp!541550))))

(declare-fun b!1897250 () Bool)

(assert (=> b!1897250 (= e!1211339 tp_is_empty!9067)))

(assert (=> b!1896821 (= tp!541477 e!1211339)))

(assert (= (and b!1896821 (is-ElementMatch!5206 (regex!3781 (rule!5974 separatorToken!354)))) b!1897250))

(assert (= (and b!1896821 (is-Concat!9124 (regex!3781 (rule!5974 separatorToken!354)))) b!1897251))

(assert (= (and b!1896821 (is-Star!5206 (regex!3781 (rule!5974 separatorToken!354)))) b!1897252))

(assert (= (and b!1896821 (is-Union!5206 (regex!3781 (rule!5974 separatorToken!354)))) b!1897253))

(declare-fun b!1897257 () Bool)

(declare-fun e!1211340 () Bool)

(declare-fun tp!541556 () Bool)

(declare-fun tp!541559 () Bool)

(assert (=> b!1897257 (= e!1211340 (and tp!541556 tp!541559))))

(declare-fun b!1897256 () Bool)

(declare-fun tp!541558 () Bool)

(assert (=> b!1897256 (= e!1211340 tp!541558)))

(declare-fun b!1897255 () Bool)

(declare-fun tp!541557 () Bool)

(declare-fun tp!541555 () Bool)

(assert (=> b!1897255 (= e!1211340 (and tp!541557 tp!541555))))

(declare-fun b!1897254 () Bool)

(assert (=> b!1897254 (= e!1211340 tp_is_empty!9067)))

(assert (=> b!1896828 (= tp!541478 e!1211340)))

(assert (= (and b!1896828 (is-ElementMatch!5206 (regex!3781 (h!26691 rules!3198)))) b!1897254))

(assert (= (and b!1896828 (is-Concat!9124 (regex!3781 (h!26691 rules!3198)))) b!1897255))

(assert (= (and b!1896828 (is-Star!5206 (regex!3781 (h!26691 rules!3198)))) b!1897256))

(assert (= (and b!1896828 (is-Union!5206 (regex!3781 (h!26691 rules!3198)))) b!1897257))

(declare-fun b!1897268 () Bool)

(declare-fun b_free!53069 () Bool)

(declare-fun b_next!53773 () Bool)

(assert (=> b!1897268 (= b_free!53069 (not b_next!53773))))

(declare-fun t!176385 () Bool)

(declare-fun tb!115603 () Bool)

(assert (=> (and b!1897268 (= (toValue!5398 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176385) tb!115603))

(declare-fun result!139772 () Bool)

(assert (= result!139772 result!139732))

(assert (=> d!580922 t!176385))

(assert (=> d!580930 t!176385))

(declare-fun tb!115605 () Bool)

(declare-fun t!176387 () Bool)

(assert (=> (and b!1897268 (= (toValue!5398 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176387) tb!115605))

(declare-fun result!139774 () Bool)

(assert (= result!139774 result!139754))

(assert (=> d!580930 t!176387))

(declare-fun b_and!146535 () Bool)

(declare-fun tp!541568 () Bool)

(assert (=> b!1897268 (= tp!541568 (and (=> t!176385 result!139772) (=> t!176387 result!139774) b_and!146535))))

(declare-fun b_free!53071 () Bool)

(declare-fun b_next!53775 () Bool)

(assert (=> b!1897268 (= b_free!53071 (not b_next!53775))))

(declare-fun tb!115607 () Bool)

(declare-fun t!176389 () Bool)

(assert (=> (and b!1897268 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354)))) t!176389) tb!115607))

(declare-fun result!139776 () Bool)

(assert (= result!139776 result!139718))

(assert (=> d!580936 t!176389))

(declare-fun tb!115609 () Bool)

(declare-fun t!176391 () Bool)

(assert (=> (and b!1897268 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176391) tb!115609))

(declare-fun result!139778 () Bool)

(assert (= result!139778 result!139726))

(assert (=> d!580922 t!176391))

(declare-fun tb!115611 () Bool)

(declare-fun t!176393 () Bool)

(assert (=> (and b!1897268 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176393) tb!115611))

(declare-fun result!139780 () Bool)

(assert (= result!139780 result!139760))

(assert (=> b!1897232 t!176393))

(assert (=> b!1897118 t!176389))

(assert (=> d!580950 t!176393))

(declare-fun b_and!146537 () Bool)

(declare-fun tp!541570 () Bool)

(assert (=> b!1897268 (= tp!541570 (and (=> t!176393 result!139780) (=> t!176389 result!139776) (=> t!176391 result!139778) b_and!146537))))

(declare-fun e!1211350 () Bool)

(assert (=> b!1897268 (= e!1211350 (and tp!541568 tp!541570))))

(declare-fun b!1897267 () Bool)

(declare-fun e!1211349 () Bool)

(declare-fun tp!541569 () Bool)

(assert (=> b!1897267 (= e!1211349 (and tp!541569 (inv!28388 (tag!4199 (h!26691 (t!176321 rules!3198)))) (inv!28391 (transformation!3781 (h!26691 (t!176321 rules!3198)))) e!1211350))))

(declare-fun b!1897266 () Bool)

(declare-fun e!1211352 () Bool)

(declare-fun tp!541571 () Bool)

(assert (=> b!1897266 (= e!1211352 (and e!1211349 tp!541571))))

(assert (=> b!1896826 (= tp!541484 e!1211352)))

(assert (= b!1897267 b!1897268))

(assert (= b!1897266 b!1897267))

(assert (= (and b!1896826 (is-Cons!21290 (t!176321 rules!3198))) b!1897266))

(declare-fun m!2328509 () Bool)

(assert (=> b!1897267 m!2328509))

(declare-fun m!2328511 () Bool)

(assert (=> b!1897267 m!2328511))

(declare-fun b!1897269 () Bool)

(declare-fun e!1211353 () Bool)

(declare-fun tp!541572 () Bool)

(assert (=> b!1897269 (= e!1211353 (and tp_is_empty!9067 tp!541572))))

(assert (=> b!1896825 (= tp!541483 e!1211353)))

(assert (= (and b!1896825 (is-Cons!21289 (originalCharacters!4588 (h!26692 tokens!598)))) b!1897269))

(declare-fun b!1897283 () Bool)

(declare-fun b_free!53073 () Bool)

(declare-fun b_next!53777 () Bool)

(assert (=> b!1897283 (= b_free!53073 (not b_next!53777))))

(declare-fun t!176395 () Bool)

(declare-fun tb!115613 () Bool)

(assert (=> (and b!1897283 (= (toValue!5398 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176395) tb!115613))

(declare-fun result!139784 () Bool)

(assert (= result!139784 result!139732))

(assert (=> d!580922 t!176395))

(assert (=> d!580930 t!176395))

(declare-fun t!176397 () Bool)

(declare-fun tb!115615 () Bool)

(assert (=> (and b!1897283 (= (toValue!5398 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176397) tb!115615))

(declare-fun result!139786 () Bool)

(assert (= result!139786 result!139754))

(assert (=> d!580930 t!176397))

(declare-fun b_and!146539 () Bool)

(declare-fun tp!541583 () Bool)

(assert (=> b!1897283 (= tp!541583 (and (=> t!176395 result!139784) (=> t!176397 result!139786) b_and!146539))))

(declare-fun b_free!53075 () Bool)

(declare-fun b_next!53779 () Bool)

(assert (=> b!1897283 (= b_free!53075 (not b_next!53779))))

(declare-fun tb!115617 () Bool)

(declare-fun t!176399 () Bool)

(assert (=> (and b!1897283 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354)))) t!176399) tb!115617))

(declare-fun result!139788 () Bool)

(assert (= result!139788 result!139718))

(assert (=> d!580936 t!176399))

(declare-fun t!176401 () Bool)

(declare-fun tb!115619 () Bool)

(assert (=> (and b!1897283 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176401) tb!115619))

(declare-fun result!139790 () Bool)

(assert (= result!139790 result!139726))

(assert (=> d!580922 t!176401))

(declare-fun t!176403 () Bool)

(declare-fun tb!115621 () Bool)

(assert (=> (and b!1897283 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598))))) t!176403) tb!115621))

(declare-fun result!139792 () Bool)

(assert (= result!139792 result!139760))

(assert (=> b!1897232 t!176403))

(assert (=> b!1897118 t!176399))

(assert (=> d!580950 t!176403))

(declare-fun b_and!146541 () Bool)

(declare-fun tp!541584 () Bool)

(assert (=> b!1897283 (= tp!541584 (and (=> t!176399 result!139788) (=> t!176403 result!139792) (=> t!176401 result!139790) b_and!146541))))

(declare-fun b!1897281 () Bool)

(declare-fun e!1211367 () Bool)

(declare-fun tp!541585 () Bool)

(declare-fun e!1211371 () Bool)

(assert (=> b!1897281 (= e!1211371 (and (inv!21 (value!119351 (h!26692 (t!176322 tokens!598)))) e!1211367 tp!541585))))

(declare-fun e!1211369 () Bool)

(declare-fun tp!541586 () Bool)

(declare-fun b!1897282 () Bool)

(assert (=> b!1897282 (= e!1211367 (and tp!541586 (inv!28388 (tag!4199 (rule!5974 (h!26692 (t!176322 tokens!598))))) (inv!28391 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) e!1211369))))

(assert (=> b!1897283 (= e!1211369 (and tp!541583 tp!541584))))

(declare-fun tp!541587 () Bool)

(declare-fun b!1897280 () Bool)

(declare-fun e!1211368 () Bool)

(assert (=> b!1897280 (= e!1211368 (and (inv!28392 (h!26692 (t!176322 tokens!598))) e!1211371 tp!541587))))

(assert (=> b!1896824 (= tp!541480 e!1211368)))

(assert (= b!1897282 b!1897283))

(assert (= b!1897281 b!1897282))

(assert (= b!1897280 b!1897281))

(assert (= (and b!1896824 (is-Cons!21291 (t!176322 tokens!598))) b!1897280))

(declare-fun m!2328513 () Bool)

(assert (=> b!1897281 m!2328513))

(declare-fun m!2328515 () Bool)

(assert (=> b!1897282 m!2328515))

(declare-fun m!2328517 () Bool)

(assert (=> b!1897282 m!2328517))

(declare-fun m!2328519 () Bool)

(assert (=> b!1897280 m!2328519))

(declare-fun b!1897287 () Bool)

(declare-fun e!1211372 () Bool)

(declare-fun tp!541589 () Bool)

(declare-fun tp!541592 () Bool)

(assert (=> b!1897287 (= e!1211372 (and tp!541589 tp!541592))))

(declare-fun b!1897286 () Bool)

(declare-fun tp!541591 () Bool)

(assert (=> b!1897286 (= e!1211372 tp!541591)))

(declare-fun b!1897285 () Bool)

(declare-fun tp!541590 () Bool)

(declare-fun tp!541588 () Bool)

(assert (=> b!1897285 (= e!1211372 (and tp!541590 tp!541588))))

(declare-fun b!1897284 () Bool)

(assert (=> b!1897284 (= e!1211372 tp_is_empty!9067)))

(assert (=> b!1896835 (= tp!541485 e!1211372)))

(assert (= (and b!1896835 (is-ElementMatch!5206 (regex!3781 (rule!5974 (h!26692 tokens!598))))) b!1897284))

(assert (= (and b!1896835 (is-Concat!9124 (regex!3781 (rule!5974 (h!26692 tokens!598))))) b!1897285))

(assert (= (and b!1896835 (is-Star!5206 (regex!3781 (rule!5974 (h!26692 tokens!598))))) b!1897286))

(assert (= (and b!1896835 (is-Union!5206 (regex!3781 (rule!5974 (h!26692 tokens!598))))) b!1897287))

(declare-fun b_lambda!62377 () Bool)

(assert (= b_lambda!62359 (or (and b!1897283 b_free!53075 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896831 b_free!53047) (and b!1896820 b_free!53051 (= (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896840 b_free!53055 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1897268 b_free!53071 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) b_lambda!62377)))

(declare-fun b_lambda!62379 () Bool)

(assert (= b_lambda!62361 (or (and b!1896831 b_free!53045) (and b!1897283 b_free!53073 (= (toValue!5398 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896820 b_free!53049 (= (toValue!5398 (transformation!3781 (rule!5974 separatorToken!354))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1897268 b_free!53069 (= (toValue!5398 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896840 b_free!53053 (= (toValue!5398 (transformation!3781 (h!26691 rules!3198))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) b_lambda!62379)))

(declare-fun b_lambda!62381 () Bool)

(assert (= b_lambda!62367 (or (and b!1896831 b_free!53045) (and b!1897283 b_free!53073 (= (toValue!5398 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896820 b_free!53049 (= (toValue!5398 (transformation!3781 (rule!5974 separatorToken!354))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1897268 b_free!53069 (= (toValue!5398 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896840 b_free!53053 (= (toValue!5398 (transformation!3781 (h!26691 rules!3198))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) b_lambda!62381)))

(declare-fun b_lambda!62383 () Bool)

(assert (= b_lambda!62375 (or (and b!1897283 b_free!53075 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896831 b_free!53047) (and b!1896820 b_free!53051 (= (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896840 b_free!53055 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1897268 b_free!53071 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) b_lambda!62383)))

(declare-fun b_lambda!62385 () Bool)

(assert (= b_lambda!62355 (or b!1896838 b_lambda!62385)))

(declare-fun bs!413484 () Bool)

(declare-fun d!580968 () Bool)

(assert (= bs!413484 (and d!580968 b!1896838)))

(assert (=> bs!413484 (= (dynLambda!10353 lambda!74114 (h!26692 tokens!598)) (not (isSeparator!3781 (rule!5974 (h!26692 tokens!598)))))))

(assert (=> b!1897106 d!580968))

(declare-fun b_lambda!62387 () Bool)

(assert (= b_lambda!62357 (or (and b!1896840 b_free!53055 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) (and b!1896831 b_free!53047 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) (and b!1896820 b_free!53051) (and b!1897283 b_free!53075 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) (and b!1897268 b_free!53071 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) b_lambda!62387)))

(declare-fun b_lambda!62389 () Bool)

(assert (= b_lambda!62369 (or (and b!1896831 b_free!53045) (and b!1897283 b_free!53073 (= (toValue!5398 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896820 b_free!53049 (= (toValue!5398 (transformation!3781 (rule!5974 separatorToken!354))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1897268 b_free!53069 (= (toValue!5398 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896840 b_free!53053 (= (toValue!5398 (transformation!3781 (h!26691 rules!3198))) (toValue!5398 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) b_lambda!62389)))

(declare-fun b_lambda!62391 () Bool)

(assert (= b_lambda!62371 (or (and b!1896840 b_free!53055 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) (and b!1896831 b_free!53047 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) (and b!1896820 b_free!53051) (and b!1897283 b_free!53075 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) (and b!1897268 b_free!53071 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))))) b_lambda!62391)))

(declare-fun b_lambda!62393 () Bool)

(assert (= b_lambda!62373 (or (and b!1897283 b_free!53075 (= (toChars!5257 (transformation!3781 (rule!5974 (h!26692 (t!176322 tokens!598))))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896831 b_free!53047) (and b!1896820 b_free!53051 (= (toChars!5257 (transformation!3781 (rule!5974 separatorToken!354))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1896840 b_free!53055 (= (toChars!5257 (transformation!3781 (h!26691 rules!3198))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) (and b!1897268 b_free!53071 (= (toChars!5257 (transformation!3781 (h!26691 (t!176321 rules!3198)))) (toChars!5257 (transformation!3781 (rule!5974 (h!26692 tokens!598)))))) b_lambda!62393)))

(push 1)

(assert (not b!1897130))

(assert (not b!1897113))

(assert (not tb!115567))

(assert (not b!1897165))

(assert (not d!580946))

(assert (not b_lambda!62389))

(assert (not b!1897231))

(assert (not tb!115597))

(assert (not b!1897251))

(assert (not b!1897162))

(assert (not b!1897220))

(assert (not d!580948))

(assert (not b!1897287))

(assert (not b!1897157))

(assert (not b!1896946))

(assert (not b!1897232))

(assert b_and!146541)

(assert (not b_next!53749))

(assert (not b!1897282))

(assert (not b!1897158))

(assert (not bm!116964))

(assert (not b_next!53755))

(assert (not b!1897180))

(assert (not b!1897213))

(assert b_and!146511)

(assert (not d!580938))

(assert (not b!1897086))

(assert (not b_lambda!62393))

(assert (not d!580930))

(assert (not b_next!53759))

(assert (not d!580944))

(assert (not b!1897205))

(assert b_and!146515)

(assert (not b_next!53757))

(assert (not b!1897119))

(assert (not d!580896))

(assert (not b_lambda!62383))

(assert (not b!1897212))

(assert (not b!1897096))

(assert b_and!146529)

(assert (not b!1897204))

(assert (not d!580936))

(assert (not d!580952))

(assert (not b!1897216))

(assert (not b!1897112))

(assert b_and!146537)

(assert (not tb!115573))

(assert (not b!1896969))

(assert (not b!1896977))

(assert (not b_next!53751))

(assert (not b!1897281))

(assert (not d!580932))

(assert (not d!580920))

(assert (not b_next!53753))

(assert (not b!1897160))

(assert (not b!1897256))

(assert (not b!1897219))

(assert (not b!1897286))

(assert (not d!580942))

(assert (not b!1896951))

(assert (not d!580914))

(assert (not d!580868))

(assert (not b!1897267))

(assert (not b!1897207))

(assert (not b!1897118))

(assert (not b!1896943))

(assert (not b!1897003))

(assert (not b!1897179))

(assert (not d!580882))

(assert (not bm!116973))

(assert (not b!1897210))

(assert b_and!146539)

(assert (not b!1897159))

(assert (not b!1897255))

(assert (not b!1897229))

(assert (not b_lambda!62379))

(assert (not b!1896949))

(assert (not b!1897252))

(assert (not b!1897206))

(assert (not bm!116974))

(assert (not d!580966))

(assert tp_is_empty!9067)

(assert (not d!580940))

(assert (not b!1897211))

(assert (not d!580878))

(assert (not d!580922))

(assert (not b!1897101))

(assert (not b_next!53775))

(assert (not b!1896950))

(assert (not b!1896971))

(assert (not b!1897199))

(assert (not b!1897200))

(assert (not b_lambda!62385))

(assert (not b!1897001))

(assert (not b!1897266))

(assert (not b!1896974))

(assert (not d!580950))

(assert (not tb!115561))

(assert (not b!1897257))

(assert (not d!580928))

(assert (not b!1897198))

(assert (not d!580956))

(assert (not b_next!53773))

(assert (not d!580962))

(assert (not b!1897193))

(assert (not b_lambda!62387))

(assert (not b!1897087))

(assert (not b!1897239))

(assert (not tb!115591))

(assert (not d!580934))

(assert (not d!580924))

(assert (not b!1897163))

(assert (not b!1896968))

(assert (not b!1897002))

(assert (not b!1897228))

(assert (not b!1897124))

(assert (not b!1897280))

(assert (not b_lambda!62381))

(assert (not d!580954))

(assert (not b_next!53779))

(assert b_and!146535)

(assert (not b!1897253))

(assert (not b_lambda!62391))

(assert (not b!1896956))

(assert (not b!1897269))

(assert (not b!1897234))

(assert (not b!1897233))

(assert b_and!146531)

(assert (not b!1897107))

(assert (not b!1897194))

(assert (not b!1897285))

(assert (not b_lambda!62377))

(assert (not b!1897164))

(assert (not b_next!53777))

(assert (not b!1897226))

(assert b_and!146513)

(assert (not b!1897221))

(assert (not d!580880))

(assert b_and!146533)

(check-sat)

(pop 1)

(push 1)

(assert b_and!146511)

(assert (not b_next!53759))

(assert (not b_next!53751))

(assert (not b_next!53753))

(assert b_and!146539)

(assert (not b_next!53775))

(assert (not b_next!53773))

(assert b_and!146531)

(assert b_and!146541)

(assert (not b_next!53755))

(assert (not b_next!53749))

(assert b_and!146515)

(assert (not b_next!53757))

(assert b_and!146529)

(assert b_and!146537)

(assert (not b_next!53779))

(assert b_and!146535)

(assert (not b_next!53777))

(assert b_and!146533)

(assert b_and!146513)

(check-sat)

(pop 1)

