; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190380 () Bool)

(assert start!190380)

(declare-fun b!1898716 () Bool)

(declare-fun b_free!53209 () Bool)

(declare-fun b_next!53913 () Bool)

(assert (=> b!1898716 (= b_free!53209 (not b_next!53913))))

(declare-fun tp!542160 () Bool)

(declare-fun b_and!146795 () Bool)

(assert (=> b!1898716 (= tp!542160 b_and!146795)))

(declare-fun b_free!53211 () Bool)

(declare-fun b_next!53915 () Bool)

(assert (=> b!1898716 (= b_free!53211 (not b_next!53915))))

(declare-fun tp!542149 () Bool)

(declare-fun b_and!146797 () Bool)

(assert (=> b!1898716 (= tp!542149 b_and!146797)))

(declare-fun b!1898715 () Bool)

(declare-fun b_free!53213 () Bool)

(declare-fun b_next!53917 () Bool)

(assert (=> b!1898715 (= b_free!53213 (not b_next!53917))))

(declare-fun tp!542152 () Bool)

(declare-fun b_and!146799 () Bool)

(assert (=> b!1898715 (= tp!542152 b_and!146799)))

(declare-fun b_free!53215 () Bool)

(declare-fun b_next!53919 () Bool)

(assert (=> b!1898715 (= b_free!53215 (not b_next!53919))))

(declare-fun tp!542159 () Bool)

(declare-fun b_and!146801 () Bool)

(assert (=> b!1898715 (= tp!542159 b_and!146801)))

(declare-fun b!1898710 () Bool)

(declare-fun b_free!53217 () Bool)

(declare-fun b_next!53921 () Bool)

(assert (=> b!1898710 (= b_free!53217 (not b_next!53921))))

(declare-fun tp!542151 () Bool)

(declare-fun b_and!146803 () Bool)

(assert (=> b!1898710 (= tp!542151 b_and!146803)))

(declare-fun b_free!53219 () Bool)

(declare-fun b_next!53923 () Bool)

(assert (=> b!1898710 (= b_free!53219 (not b_next!53923))))

(declare-fun tp!542155 () Bool)

(declare-fun b_and!146805 () Bool)

(assert (=> b!1898710 (= tp!542155 b_and!146805)))

(declare-fun tp!542158 () Bool)

(declare-fun e!1212471 () Bool)

(declare-fun b!1898707 () Bool)

(declare-datatypes ((List!21418 0))(
  ( (Nil!21336) (Cons!21336 (h!26737 (_ BitVec 16)) (t!176579 List!21418)) )
))
(declare-datatypes ((TokenValue!3928 0))(
  ( (FloatLiteralValue!7856 (text!27941 List!21418)) (TokenValueExt!3927 (__x!13354 Int)) (Broken!19640 (value!119637 List!21418)) (Object!4009) (End!3928) (Def!3928) (Underscore!3928) (Match!3928) (Else!3928) (Error!3928) (Case!3928) (If!3928) (Extends!3928) (Abstract!3928) (Class!3928) (Val!3928) (DelimiterValue!7856 (del!3988 List!21418)) (KeywordValue!3934 (value!119638 List!21418)) (CommentValue!7856 (value!119639 List!21418)) (WhitespaceValue!7856 (value!119640 List!21418)) (IndentationValue!3928 (value!119641 List!21418)) (String!24757) (Int32!3928) (Broken!19641 (value!119642 List!21418)) (Boolean!3929) (Unit!35671) (OperatorValue!3931 (op!3988 List!21418)) (IdentifierValue!7856 (value!119643 List!21418)) (IdentifierValue!7857 (value!119644 List!21418)) (WhitespaceValue!7857 (value!119645 List!21418)) (True!7856) (False!7856) (Broken!19642 (value!119646 List!21418)) (Broken!19643 (value!119647 List!21418)) (True!7857) (RightBrace!3928) (RightBracket!3928) (Colon!3928) (Null!3928) (Comma!3928) (LeftBracket!3928) (False!7857) (LeftBrace!3928) (ImaginaryLiteralValue!3928 (text!27942 List!21418)) (StringLiteralValue!11784 (value!119648 List!21418)) (EOFValue!3928 (value!119649 List!21418)) (IdentValue!3928 (value!119650 List!21418)) (DelimiterValue!7857 (value!119651 List!21418)) (DedentValue!3928 (value!119652 List!21418)) (NewLineValue!3928 (value!119653 List!21418)) (IntegerValue!11784 (value!119654 (_ BitVec 32)) (text!27943 List!21418)) (IntegerValue!11785 (value!119655 Int) (text!27944 List!21418)) (Times!3928) (Or!3928) (Equal!3928) (Minus!3928) (Broken!19644 (value!119656 List!21418)) (And!3928) (Div!3928) (LessEqual!3928) (Mod!3928) (Concat!9145) (Not!3928) (Plus!3928) (SpaceValue!3928 (value!119657 List!21418)) (IntegerValue!11786 (value!119658 Int) (text!27945 List!21418)) (StringLiteralValue!11785 (text!27946 List!21418)) (FloatLiteralValue!7857 (text!27947 List!21418)) (BytesLiteralValue!3928 (value!119659 List!21418)) (CommentValue!7857 (value!119660 List!21418)) (StringLiteralValue!11786 (value!119661 List!21418)) (ErrorTokenValue!3928 (msg!3989 List!21418)) )
))
(declare-datatypes ((C!10580 0))(
  ( (C!10581 (val!6242 Int)) )
))
(declare-datatypes ((List!21419 0))(
  ( (Nil!21337) (Cons!21337 (h!26738 C!10580) (t!176580 List!21419)) )
))
(declare-datatypes ((Regex!5217 0))(
  ( (ElementMatch!5217 (c!309511 C!10580)) (Concat!9146 (regOne!10946 Regex!5217) (regTwo!10946 Regex!5217)) (EmptyExpr!5217) (Star!5217 (reg!5546 Regex!5217)) (EmptyLang!5217) (Union!5217 (regOne!10947 Regex!5217) (regTwo!10947 Regex!5217)) )
))
(declare-datatypes ((String!24758 0))(
  ( (String!24759 (value!119662 String)) )
))
(declare-datatypes ((IArray!14207 0))(
  ( (IArray!14208 (innerList!7161 List!21419)) )
))
(declare-datatypes ((Conc!7101 0))(
  ( (Node!7101 (left!17095 Conc!7101) (right!17425 Conc!7101) (csize!14432 Int) (cheight!7312 Int)) (Leaf!10460 (xs!9995 IArray!14207) (csize!14433 Int)) (Empty!7101) )
))
(declare-datatypes ((BalanceConc!14018 0))(
  ( (BalanceConc!14019 (c!309512 Conc!7101)) )
))
(declare-datatypes ((TokenValueInjection!7440 0))(
  ( (TokenValueInjection!7441 (toValue!5409 Int) (toChars!5268 Int)) )
))
(declare-datatypes ((Rule!7384 0))(
  ( (Rule!7385 (regex!3792 Regex!5217) (tag!4214 String!24758) (isSeparator!3792 Bool) (transformation!3792 TokenValueInjection!7440)) )
))
(declare-datatypes ((Token!7136 0))(
  ( (Token!7137 (value!119663 TokenValue!3928) (rule!5985 Rule!7384) (size!16878 Int) (originalCharacters!4599 List!21419)) )
))
(declare-datatypes ((List!21420 0))(
  ( (Nil!21338) (Cons!21338 (h!26739 Token!7136) (t!176581 List!21420)) )
))
(declare-fun tokens!598 () List!21420)

(declare-fun e!1212470 () Bool)

(declare-fun inv!28436 (Token!7136) Bool)

(assert (=> b!1898707 (= e!1212471 (and (inv!28436 (h!26739 tokens!598)) e!1212470 tp!542158))))

(declare-fun separatorToken!354 () Token!7136)

(declare-fun b!1898708 () Bool)

(declare-fun e!1212483 () Bool)

(declare-fun e!1212469 () Bool)

(declare-fun tp!542153 () Bool)

(declare-fun inv!21 (TokenValue!3928) Bool)

(assert (=> b!1898708 (= e!1212483 (and (inv!21 (value!119663 separatorToken!354)) e!1212469 tp!542153))))

(declare-fun b!1898709 () Bool)

(declare-fun res!847591 () Bool)

(declare-fun e!1212486 () Bool)

(assert (=> b!1898709 (=> (not res!847591) (not e!1212486))))

(declare-datatypes ((LexerInterface!3405 0))(
  ( (LexerInterfaceExt!3402 (__x!13355 Int)) (Lexer!3403) )
))
(declare-fun thiss!23328 () LexerInterface!3405)

(declare-datatypes ((List!21421 0))(
  ( (Nil!21339) (Cons!21339 (h!26740 Rule!7384) (t!176582 List!21421)) )
))
(declare-fun rules!3198 () List!21421)

(declare-fun rulesProduceIndividualToken!1577 (LexerInterface!3405 List!21421 Token!7136) Bool)

(assert (=> b!1898709 (= res!847591 (rulesProduceIndividualToken!1577 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1212467 () Bool)

(assert (=> b!1898710 (= e!1212467 (and tp!542151 tp!542155))))

(declare-fun b!1898711 () Bool)

(declare-fun res!847590 () Bool)

(assert (=> b!1898711 (=> (not res!847590) (not e!1212486))))

(declare-fun lambda!74191 () Int)

(declare-fun forall!4470 (List!21420 Int) Bool)

(assert (=> b!1898711 (= res!847590 (forall!4470 tokens!598 lambda!74191))))

(declare-fun b!1898712 () Bool)

(declare-fun e!1212473 () Bool)

(declare-fun e!1212472 () Bool)

(declare-fun tp!542148 () Bool)

(assert (=> b!1898712 (= e!1212473 (and e!1212472 tp!542148))))

(declare-fun b!1898713 () Bool)

(declare-fun e!1212476 () Bool)

(declare-datatypes ((tuple2!20116 0))(
  ( (tuple2!20117 (_1!11527 Token!7136) (_2!11527 List!21419)) )
))
(declare-datatypes ((Option!4289 0))(
  ( (None!4288) (Some!4288 (v!26317 tuple2!20116)) )
))
(declare-fun lt!726094 () Option!4289)

(declare-fun get!6592 (Option!4289) tuple2!20116)

(assert (=> b!1898713 (= e!1212476 (= (_1!11527 (get!6592 lt!726094)) (h!26739 tokens!598)))))

(declare-fun b!1898714 () Bool)

(declare-fun res!847592 () Bool)

(assert (=> b!1898714 (=> (not res!847592) (not e!1212486))))

(get-info :version)

(assert (=> b!1898714 (= res!847592 ((_ is Cons!21338) tokens!598))))

(declare-fun e!1212466 () Bool)

(assert (=> b!1898715 (= e!1212466 (and tp!542152 tp!542159))))

(declare-fun e!1212481 () Bool)

(assert (=> b!1898716 (= e!1212481 (and tp!542160 tp!542149))))

(declare-fun b!1898717 () Bool)

(declare-fun e!1212479 () Bool)

(declare-fun tp!542157 () Bool)

(declare-fun inv!28433 (String!24758) Bool)

(declare-fun inv!28437 (TokenValueInjection!7440) Bool)

(assert (=> b!1898717 (= e!1212479 (and tp!542157 (inv!28433 (tag!4214 (rule!5985 (h!26739 tokens!598)))) (inv!28437 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) e!1212467))))

(declare-fun tp!542154 () Bool)

(declare-fun b!1898718 () Bool)

(assert (=> b!1898718 (= e!1212472 (and tp!542154 (inv!28433 (tag!4214 (h!26740 rules!3198))) (inv!28437 (transformation!3792 (h!26740 rules!3198))) e!1212466))))

(declare-fun b!1898719 () Bool)

(declare-fun res!847599 () Bool)

(assert (=> b!1898719 (=> (not res!847599) (not e!1212486))))

(declare-fun isEmpty!13090 (List!21421) Bool)

(assert (=> b!1898719 (= res!847599 (not (isEmpty!13090 rules!3198)))))

(declare-fun b!1898721 () Bool)

(declare-fun e!1212480 () Bool)

(declare-fun lt!726090 () Rule!7384)

(assert (=> b!1898721 (= e!1212480 (= (rule!5985 (h!26739 tokens!598)) lt!726090))))

(declare-fun b!1898722 () Bool)

(declare-fun rulesValidInductive!1286 (LexerInterface!3405 List!21421) Bool)

(assert (=> b!1898722 (= e!1212486 (not (rulesValidInductive!1286 thiss!23328 rules!3198)))))

(declare-fun lt!726099 () List!21419)

(declare-fun lt!726098 () List!21419)

(declare-fun ++!5735 (List!21419 List!21419) List!21419)

(declare-fun printWithSeparatorTokenWhenNeededList!448 (LexerInterface!3405 List!21421 List!21420 Token!7136) List!21419)

(assert (=> b!1898722 (= lt!726098 (++!5735 lt!726099 (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354)))))

(declare-fun e!1212478 () Bool)

(assert (=> b!1898722 e!1212478))

(declare-fun res!847589 () Bool)

(assert (=> b!1898722 (=> (not res!847589) (not e!1212478))))

(declare-datatypes ((Option!4290 0))(
  ( (None!4289) (Some!4289 (v!26318 Rule!7384)) )
))
(declare-fun lt!726097 () Option!4290)

(declare-fun isDefined!3587 (Option!4290) Bool)

(assert (=> b!1898722 (= res!847589 (isDefined!3587 lt!726097))))

(declare-fun getRuleFromTag!635 (LexerInterface!3405 List!21421 String!24758) Option!4290)

(assert (=> b!1898722 (= lt!726097 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 (h!26739 tokens!598)))))))

(declare-datatypes ((Unit!35672 0))(
  ( (Unit!35673) )
))
(declare-fun lt!726092 () Unit!35672)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!635 (LexerInterface!3405 List!21421 List!21419 Token!7136) Unit!35672)

(assert (=> b!1898722 (= lt!726092 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!635 thiss!23328 rules!3198 lt!726099 (h!26739 tokens!598)))))

(assert (=> b!1898722 e!1212476))

(declare-fun res!847596 () Bool)

(assert (=> b!1898722 (=> (not res!847596) (not e!1212476))))

(declare-fun isDefined!3588 (Option!4289) Bool)

(assert (=> b!1898722 (= res!847596 (isDefined!3588 lt!726094))))

(declare-fun maxPrefix!1851 (LexerInterface!3405 List!21421 List!21419) Option!4289)

(assert (=> b!1898722 (= lt!726094 (maxPrefix!1851 thiss!23328 rules!3198 lt!726099))))

(declare-fun lt!726095 () BalanceConc!14018)

(declare-fun list!8676 (BalanceConc!14018) List!21419)

(assert (=> b!1898722 (= lt!726099 (list!8676 lt!726095))))

(declare-fun e!1212468 () Bool)

(assert (=> b!1898722 e!1212468))

(declare-fun res!847601 () Bool)

(assert (=> b!1898722 (=> (not res!847601) (not e!1212468))))

(declare-fun lt!726089 () Option!4290)

(assert (=> b!1898722 (= res!847601 (isDefined!3587 lt!726089))))

(assert (=> b!1898722 (= lt!726089 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 separatorToken!354))))))

(declare-fun lt!726091 () List!21419)

(declare-fun lt!726093 () Unit!35672)

(assert (=> b!1898722 (= lt!726093 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!635 thiss!23328 rules!3198 lt!726091 separatorToken!354))))

(declare-fun charsOf!2348 (Token!7136) BalanceConc!14018)

(assert (=> b!1898722 (= lt!726091 (list!8676 (charsOf!2348 separatorToken!354)))))

(declare-fun lt!726096 () Unit!35672)

(declare-fun lemmaEqSameImage!500 (TokenValueInjection!7440 BalanceConc!14018 BalanceConc!14018) Unit!35672)

(declare-fun seqFromList!2664 (List!21419) BalanceConc!14018)

(assert (=> b!1898722 (= lt!726096 (lemmaEqSameImage!500 (transformation!3792 (rule!5985 (h!26739 tokens!598))) lt!726095 (seqFromList!2664 (originalCharacters!4599 (h!26739 tokens!598)))))))

(declare-fun lt!726088 () Unit!35672)

(declare-fun lemmaSemiInverse!771 (TokenValueInjection!7440 BalanceConc!14018) Unit!35672)

(assert (=> b!1898722 (= lt!726088 (lemmaSemiInverse!771 (transformation!3792 (rule!5985 (h!26739 tokens!598))) lt!726095))))

(assert (=> b!1898722 (= lt!726095 (charsOf!2348 (h!26739 tokens!598)))))

(declare-fun b!1898723 () Bool)

(declare-fun e!1212475 () Bool)

(declare-fun lt!726100 () Rule!7384)

(assert (=> b!1898723 (= e!1212475 (= (rule!5985 separatorToken!354) lt!726100))))

(declare-fun b!1898724 () Bool)

(declare-fun res!847602 () Bool)

(assert (=> b!1898724 (=> (not res!847602) (not e!1212486))))

(declare-fun sepAndNonSepRulesDisjointChars!890 (List!21421 List!21421) Bool)

(assert (=> b!1898724 (= res!847602 (sepAndNonSepRulesDisjointChars!890 rules!3198 rules!3198))))

(declare-fun b!1898725 () Bool)

(declare-fun res!847593 () Bool)

(assert (=> b!1898725 (=> (not res!847593) (not e!1212486))))

(declare-fun rulesInvariant!3012 (LexerInterface!3405 List!21421) Bool)

(assert (=> b!1898725 (= res!847593 (rulesInvariant!3012 thiss!23328 rules!3198))))

(declare-fun b!1898726 () Bool)

(declare-fun res!847595 () Bool)

(assert (=> b!1898726 (=> (not res!847595) (not e!1212486))))

(assert (=> b!1898726 (= res!847595 (isSeparator!3792 (rule!5985 separatorToken!354)))))

(declare-fun b!1898727 () Bool)

(declare-fun tp!542150 () Bool)

(assert (=> b!1898727 (= e!1212469 (and tp!542150 (inv!28433 (tag!4214 (rule!5985 separatorToken!354))) (inv!28437 (transformation!3792 (rule!5985 separatorToken!354))) e!1212481))))

(declare-fun b!1898728 () Bool)

(assert (=> b!1898728 (= e!1212468 e!1212475)))

(declare-fun res!847597 () Bool)

(assert (=> b!1898728 (=> (not res!847597) (not e!1212475))))

(declare-fun matchR!2503 (Regex!5217 List!21419) Bool)

(assert (=> b!1898728 (= res!847597 (matchR!2503 (regex!3792 lt!726100) lt!726091))))

(declare-fun get!6593 (Option!4290) Rule!7384)

(assert (=> b!1898728 (= lt!726100 (get!6593 lt!726089))))

(declare-fun b!1898729 () Bool)

(assert (=> b!1898729 (= e!1212478 e!1212480)))

(declare-fun res!847600 () Bool)

(assert (=> b!1898729 (=> (not res!847600) (not e!1212480))))

(assert (=> b!1898729 (= res!847600 (matchR!2503 (regex!3792 lt!726090) lt!726099))))

(assert (=> b!1898729 (= lt!726090 (get!6593 lt!726097))))

(declare-fun b!1898730 () Bool)

(declare-fun res!847598 () Bool)

(assert (=> b!1898730 (=> (not res!847598) (not e!1212486))))

(declare-fun rulesProduceEachTokenIndividuallyList!1136 (LexerInterface!3405 List!21421 List!21420) Bool)

(assert (=> b!1898730 (= res!847598 (rulesProduceEachTokenIndividuallyList!1136 thiss!23328 rules!3198 tokens!598))))

(declare-fun res!847594 () Bool)

(assert (=> start!190380 (=> (not res!847594) (not e!1212486))))

(assert (=> start!190380 (= res!847594 ((_ is Lexer!3403) thiss!23328))))

(assert (=> start!190380 e!1212486))

(assert (=> start!190380 true))

(assert (=> start!190380 e!1212473))

(assert (=> start!190380 e!1212471))

(assert (=> start!190380 (and (inv!28436 separatorToken!354) e!1212483)))

(declare-fun tp!542156 () Bool)

(declare-fun b!1898720 () Bool)

(assert (=> b!1898720 (= e!1212470 (and (inv!21 (value!119663 (h!26739 tokens!598))) e!1212479 tp!542156))))

(assert (= (and start!190380 res!847594) b!1898719))

(assert (= (and b!1898719 res!847599) b!1898725))

(assert (= (and b!1898725 res!847593) b!1898730))

(assert (= (and b!1898730 res!847598) b!1898709))

(assert (= (and b!1898709 res!847591) b!1898726))

(assert (= (and b!1898726 res!847595) b!1898711))

(assert (= (and b!1898711 res!847590) b!1898724))

(assert (= (and b!1898724 res!847602) b!1898714))

(assert (= (and b!1898714 res!847592) b!1898722))

(assert (= (and b!1898722 res!847601) b!1898728))

(assert (= (and b!1898728 res!847597) b!1898723))

(assert (= (and b!1898722 res!847596) b!1898713))

(assert (= (and b!1898722 res!847589) b!1898729))

(assert (= (and b!1898729 res!847600) b!1898721))

(assert (= b!1898718 b!1898715))

(assert (= b!1898712 b!1898718))

(assert (= (and start!190380 ((_ is Cons!21339) rules!3198)) b!1898712))

(assert (= b!1898717 b!1898710))

(assert (= b!1898720 b!1898717))

(assert (= b!1898707 b!1898720))

(assert (= (and start!190380 ((_ is Cons!21338) tokens!598)) b!1898707))

(assert (= b!1898727 b!1898716))

(assert (= b!1898708 b!1898727))

(assert (= start!190380 b!1898708))

(declare-fun m!2329825 () Bool)

(assert (=> b!1898707 m!2329825))

(declare-fun m!2329827 () Bool)

(assert (=> start!190380 m!2329827))

(declare-fun m!2329829 () Bool)

(assert (=> b!1898711 m!2329829))

(declare-fun m!2329831 () Bool)

(assert (=> b!1898718 m!2329831))

(declare-fun m!2329833 () Bool)

(assert (=> b!1898718 m!2329833))

(declare-fun m!2329835 () Bool)

(assert (=> b!1898724 m!2329835))

(declare-fun m!2329837 () Bool)

(assert (=> b!1898713 m!2329837))

(declare-fun m!2329839 () Bool)

(assert (=> b!1898728 m!2329839))

(declare-fun m!2329841 () Bool)

(assert (=> b!1898728 m!2329841))

(declare-fun m!2329843 () Bool)

(assert (=> b!1898709 m!2329843))

(declare-fun m!2329845 () Bool)

(assert (=> b!1898722 m!2329845))

(declare-fun m!2329847 () Bool)

(assert (=> b!1898722 m!2329847))

(declare-fun m!2329849 () Bool)

(assert (=> b!1898722 m!2329849))

(declare-fun m!2329851 () Bool)

(assert (=> b!1898722 m!2329851))

(assert (=> b!1898722 m!2329845))

(declare-fun m!2329853 () Bool)

(assert (=> b!1898722 m!2329853))

(declare-fun m!2329855 () Bool)

(assert (=> b!1898722 m!2329855))

(declare-fun m!2329857 () Bool)

(assert (=> b!1898722 m!2329857))

(declare-fun m!2329859 () Bool)

(assert (=> b!1898722 m!2329859))

(declare-fun m!2329861 () Bool)

(assert (=> b!1898722 m!2329861))

(declare-fun m!2329863 () Bool)

(assert (=> b!1898722 m!2329863))

(declare-fun m!2329865 () Bool)

(assert (=> b!1898722 m!2329865))

(assert (=> b!1898722 m!2329863))

(declare-fun m!2329867 () Bool)

(assert (=> b!1898722 m!2329867))

(declare-fun m!2329869 () Bool)

(assert (=> b!1898722 m!2329869))

(declare-fun m!2329871 () Bool)

(assert (=> b!1898722 m!2329871))

(declare-fun m!2329873 () Bool)

(assert (=> b!1898722 m!2329873))

(declare-fun m!2329875 () Bool)

(assert (=> b!1898722 m!2329875))

(assert (=> b!1898722 m!2329861))

(declare-fun m!2329877 () Bool)

(assert (=> b!1898722 m!2329877))

(declare-fun m!2329879 () Bool)

(assert (=> b!1898722 m!2329879))

(declare-fun m!2329881 () Bool)

(assert (=> b!1898725 m!2329881))

(declare-fun m!2329883 () Bool)

(assert (=> b!1898708 m!2329883))

(declare-fun m!2329885 () Bool)

(assert (=> b!1898729 m!2329885))

(declare-fun m!2329887 () Bool)

(assert (=> b!1898729 m!2329887))

(declare-fun m!2329889 () Bool)

(assert (=> b!1898717 m!2329889))

(declare-fun m!2329891 () Bool)

(assert (=> b!1898717 m!2329891))

(declare-fun m!2329893 () Bool)

(assert (=> b!1898727 m!2329893))

(declare-fun m!2329895 () Bool)

(assert (=> b!1898727 m!2329895))

(declare-fun m!2329897 () Bool)

(assert (=> b!1898719 m!2329897))

(declare-fun m!2329899 () Bool)

(assert (=> b!1898730 m!2329899))

(declare-fun m!2329901 () Bool)

(assert (=> b!1898720 m!2329901))

(check-sat b_and!146799 (not b!1898718) (not b!1898720) (not b!1898709) (not b!1898729) b_and!146797 b_and!146801 (not b!1898713) (not b_next!53917) (not b!1898708) b_and!146803 (not b!1898725) (not b_next!53921) (not b!1898711) (not b!1898730) (not b_next!53919) (not b_next!53915) (not b!1898727) (not b!1898712) (not b_next!53923) b_and!146795 (not b!1898707) (not b!1898719) (not b!1898728) (not b!1898717) (not start!190380) (not b!1898722) (not b_next!53913) b_and!146805 (not b!1898724))
(check-sat b_and!146799 (not b_next!53921) (not b_next!53919) (not b_next!53915) (not b_next!53923) b_and!146797 b_and!146795 b_and!146801 (not b_next!53917) b_and!146803 (not b_next!53913) b_and!146805)
(get-model)

(declare-fun d!581187 () Bool)

(declare-fun res!847617 () Bool)

(declare-fun e!1212491 () Bool)

(assert (=> d!581187 (=> res!847617 e!1212491)))

(assert (=> d!581187 (= res!847617 (not ((_ is Cons!21339) rules!3198)))))

(assert (=> d!581187 (= (sepAndNonSepRulesDisjointChars!890 rules!3198 rules!3198) e!1212491)))

(declare-fun b!1898735 () Bool)

(declare-fun e!1212492 () Bool)

(assert (=> b!1898735 (= e!1212491 e!1212492)))

(declare-fun res!847618 () Bool)

(assert (=> b!1898735 (=> (not res!847618) (not e!1212492))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!419 (Rule!7384 List!21421) Bool)

(assert (=> b!1898735 (= res!847618 (ruleDisjointCharsFromAllFromOtherType!419 (h!26740 rules!3198) rules!3198))))

(declare-fun b!1898736 () Bool)

(assert (=> b!1898736 (= e!1212492 (sepAndNonSepRulesDisjointChars!890 rules!3198 (t!176582 rules!3198)))))

(assert (= (and d!581187 (not res!847617)) b!1898735))

(assert (= (and b!1898735 res!847618) b!1898736))

(declare-fun m!2329903 () Bool)

(assert (=> b!1898735 m!2329903))

(declare-fun m!2329905 () Bool)

(assert (=> b!1898736 m!2329905))

(assert (=> b!1898724 d!581187))

(declare-fun d!581189 () Bool)

(assert (=> d!581189 (= (get!6592 lt!726094) (v!26317 lt!726094))))

(assert (=> b!1898713 d!581189))

(declare-fun d!581191 () Bool)

(declare-fun res!847621 () Bool)

(declare-fun e!1212495 () Bool)

(assert (=> d!581191 (=> (not res!847621) (not e!1212495))))

(declare-fun rulesValid!1422 (LexerInterface!3405 List!21421) Bool)

(assert (=> d!581191 (= res!847621 (rulesValid!1422 thiss!23328 rules!3198))))

(assert (=> d!581191 (= (rulesInvariant!3012 thiss!23328 rules!3198) e!1212495)))

(declare-fun b!1898739 () Bool)

(declare-datatypes ((List!21423 0))(
  ( (Nil!21341) (Cons!21341 (h!26742 String!24758) (t!176694 List!21423)) )
))
(declare-fun noDuplicateTag!1420 (LexerInterface!3405 List!21421 List!21423) Bool)

(assert (=> b!1898739 (= e!1212495 (noDuplicateTag!1420 thiss!23328 rules!3198 Nil!21341))))

(assert (= (and d!581191 res!847621) b!1898739))

(declare-fun m!2329907 () Bool)

(assert (=> d!581191 m!2329907))

(declare-fun m!2329909 () Bool)

(assert (=> b!1898739 m!2329909))

(assert (=> b!1898725 d!581191))

(declare-fun d!581193 () Bool)

(assert (=> d!581193 (= (inv!28433 (tag!4214 (rule!5985 separatorToken!354))) (= (mod (str.len (value!119662 (tag!4214 (rule!5985 separatorToken!354)))) 2) 0))))

(assert (=> b!1898727 d!581193))

(declare-fun d!581195 () Bool)

(declare-fun res!847624 () Bool)

(declare-fun e!1212498 () Bool)

(assert (=> d!581195 (=> (not res!847624) (not e!1212498))))

(declare-fun semiInverseModEq!1534 (Int Int) Bool)

(assert (=> d!581195 (= res!847624 (semiInverseModEq!1534 (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toValue!5409 (transformation!3792 (rule!5985 separatorToken!354)))))))

(assert (=> d!581195 (= (inv!28437 (transformation!3792 (rule!5985 separatorToken!354))) e!1212498)))

(declare-fun b!1898742 () Bool)

(declare-fun equivClasses!1461 (Int Int) Bool)

(assert (=> b!1898742 (= e!1212498 (equivClasses!1461 (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toValue!5409 (transformation!3792 (rule!5985 separatorToken!354)))))))

(assert (= (and d!581195 res!847624) b!1898742))

(declare-fun m!2329911 () Bool)

(assert (=> d!581195 m!2329911))

(declare-fun m!2329913 () Bool)

(assert (=> b!1898742 m!2329913))

(assert (=> b!1898727 d!581195))

(declare-fun bm!116992 () Bool)

(declare-fun call!116997 () Bool)

(declare-fun isEmpty!13093 (List!21419) Bool)

(assert (=> bm!116992 (= call!116997 (isEmpty!13093 lt!726091))))

(declare-fun b!1898771 () Bool)

(declare-fun e!1212516 () Bool)

(declare-fun e!1212517 () Bool)

(assert (=> b!1898771 (= e!1212516 e!1212517)))

(declare-fun c!309520 () Bool)

(assert (=> b!1898771 (= c!309520 ((_ is EmptyLang!5217) (regex!3792 lt!726100)))))

(declare-fun b!1898772 () Bool)

(declare-fun res!847647 () Bool)

(declare-fun e!1212514 () Bool)

(assert (=> b!1898772 (=> res!847647 e!1212514)))

(declare-fun e!1212515 () Bool)

(assert (=> b!1898772 (= res!847647 e!1212515)))

(declare-fun res!847644 () Bool)

(assert (=> b!1898772 (=> (not res!847644) (not e!1212515))))

(declare-fun lt!726103 () Bool)

(assert (=> b!1898772 (= res!847644 lt!726103)))

(declare-fun d!581197 () Bool)

(assert (=> d!581197 e!1212516))

(declare-fun c!309521 () Bool)

(assert (=> d!581197 (= c!309521 ((_ is EmptyExpr!5217) (regex!3792 lt!726100)))))

(declare-fun e!1212513 () Bool)

(assert (=> d!581197 (= lt!726103 e!1212513)))

(declare-fun c!309519 () Bool)

(assert (=> d!581197 (= c!309519 (isEmpty!13093 lt!726091))))

(declare-fun validRegex!2108 (Regex!5217) Bool)

(assert (=> d!581197 (validRegex!2108 (regex!3792 lt!726100))))

(assert (=> d!581197 (= (matchR!2503 (regex!3792 lt!726100) lt!726091) lt!726103)))

(declare-fun b!1898773 () Bool)

(assert (=> b!1898773 (= e!1212517 (not lt!726103))))

(declare-fun b!1898774 () Bool)

(declare-fun e!1212519 () Bool)

(declare-fun e!1212518 () Bool)

(assert (=> b!1898774 (= e!1212519 e!1212518)))

(declare-fun res!847645 () Bool)

(assert (=> b!1898774 (=> res!847645 e!1212518)))

(assert (=> b!1898774 (= res!847645 call!116997)))

(declare-fun b!1898775 () Bool)

(declare-fun res!847646 () Bool)

(assert (=> b!1898775 (=> (not res!847646) (not e!1212515))))

(declare-fun tail!2937 (List!21419) List!21419)

(assert (=> b!1898775 (= res!847646 (isEmpty!13093 (tail!2937 lt!726091)))))

(declare-fun b!1898776 () Bool)

(declare-fun res!847641 () Bool)

(assert (=> b!1898776 (=> res!847641 e!1212518)))

(assert (=> b!1898776 (= res!847641 (not (isEmpty!13093 (tail!2937 lt!726091))))))

(declare-fun b!1898777 () Bool)

(declare-fun res!847648 () Bool)

(assert (=> b!1898777 (=> res!847648 e!1212514)))

(assert (=> b!1898777 (= res!847648 (not ((_ is ElementMatch!5217) (regex!3792 lt!726100))))))

(assert (=> b!1898777 (= e!1212517 e!1212514)))

(declare-fun b!1898778 () Bool)

(declare-fun derivativeStep!1343 (Regex!5217 C!10580) Regex!5217)

(declare-fun head!4411 (List!21419) C!10580)

(assert (=> b!1898778 (= e!1212513 (matchR!2503 (derivativeStep!1343 (regex!3792 lt!726100) (head!4411 lt!726091)) (tail!2937 lt!726091)))))

(declare-fun b!1898779 () Bool)

(declare-fun res!847643 () Bool)

(assert (=> b!1898779 (=> (not res!847643) (not e!1212515))))

(assert (=> b!1898779 (= res!847643 (not call!116997))))

(declare-fun b!1898780 () Bool)

(assert (=> b!1898780 (= e!1212514 e!1212519)))

(declare-fun res!847642 () Bool)

(assert (=> b!1898780 (=> (not res!847642) (not e!1212519))))

(assert (=> b!1898780 (= res!847642 (not lt!726103))))

(declare-fun b!1898781 () Bool)

(declare-fun nullable!1584 (Regex!5217) Bool)

(assert (=> b!1898781 (= e!1212513 (nullable!1584 (regex!3792 lt!726100)))))

(declare-fun b!1898782 () Bool)

(assert (=> b!1898782 (= e!1212515 (= (head!4411 lt!726091) (c!309511 (regex!3792 lt!726100))))))

(declare-fun b!1898783 () Bool)

(assert (=> b!1898783 (= e!1212518 (not (= (head!4411 lt!726091) (c!309511 (regex!3792 lt!726100)))))))

(declare-fun b!1898784 () Bool)

(assert (=> b!1898784 (= e!1212516 (= lt!726103 call!116997))))

(assert (= (and d!581197 c!309519) b!1898781))

(assert (= (and d!581197 (not c!309519)) b!1898778))

(assert (= (and d!581197 c!309521) b!1898784))

(assert (= (and d!581197 (not c!309521)) b!1898771))

(assert (= (and b!1898771 c!309520) b!1898773))

(assert (= (and b!1898771 (not c!309520)) b!1898777))

(assert (= (and b!1898777 (not res!847648)) b!1898772))

(assert (= (and b!1898772 res!847644) b!1898779))

(assert (= (and b!1898779 res!847643) b!1898775))

(assert (= (and b!1898775 res!847646) b!1898782))

(assert (= (and b!1898772 (not res!847647)) b!1898780))

(assert (= (and b!1898780 res!847642) b!1898774))

(assert (= (and b!1898774 (not res!847645)) b!1898776))

(assert (= (and b!1898776 (not res!847641)) b!1898783))

(assert (= (or b!1898784 b!1898774 b!1898779) bm!116992))

(declare-fun m!2329915 () Bool)

(assert (=> b!1898776 m!2329915))

(assert (=> b!1898776 m!2329915))

(declare-fun m!2329917 () Bool)

(assert (=> b!1898776 m!2329917))

(declare-fun m!2329919 () Bool)

(assert (=> b!1898781 m!2329919))

(declare-fun m!2329921 () Bool)

(assert (=> b!1898778 m!2329921))

(assert (=> b!1898778 m!2329921))

(declare-fun m!2329923 () Bool)

(assert (=> b!1898778 m!2329923))

(assert (=> b!1898778 m!2329915))

(assert (=> b!1898778 m!2329923))

(assert (=> b!1898778 m!2329915))

(declare-fun m!2329925 () Bool)

(assert (=> b!1898778 m!2329925))

(assert (=> b!1898783 m!2329921))

(declare-fun m!2329927 () Bool)

(assert (=> bm!116992 m!2329927))

(assert (=> d!581197 m!2329927))

(declare-fun m!2329929 () Bool)

(assert (=> d!581197 m!2329929))

(assert (=> b!1898775 m!2329915))

(assert (=> b!1898775 m!2329915))

(assert (=> b!1898775 m!2329917))

(assert (=> b!1898782 m!2329921))

(assert (=> b!1898728 d!581197))

(declare-fun d!581199 () Bool)

(assert (=> d!581199 (= (get!6593 lt!726089) (v!26318 lt!726089))))

(assert (=> b!1898728 d!581199))

(declare-fun d!581201 () Bool)

(assert (=> d!581201 (= (inv!28433 (tag!4214 (rule!5985 (h!26739 tokens!598)))) (= (mod (str.len (value!119662 (tag!4214 (rule!5985 (h!26739 tokens!598))))) 2) 0))))

(assert (=> b!1898717 d!581201))

(declare-fun d!581203 () Bool)

(declare-fun res!847649 () Bool)

(declare-fun e!1212520 () Bool)

(assert (=> d!581203 (=> (not res!847649) (not e!1212520))))

(assert (=> d!581203 (= res!847649 (semiInverseModEq!1534 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))))))

(assert (=> d!581203 (= (inv!28437 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) e!1212520)))

(declare-fun b!1898785 () Bool)

(assert (=> b!1898785 (= e!1212520 (equivClasses!1461 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))))))

(assert (= (and d!581203 res!847649) b!1898785))

(declare-fun m!2329931 () Bool)

(assert (=> d!581203 m!2329931))

(declare-fun m!2329933 () Bool)

(assert (=> b!1898785 m!2329933))

(assert (=> b!1898717 d!581203))

(declare-fun d!581205 () Bool)

(assert (=> d!581205 (= (inv!28433 (tag!4214 (h!26740 rules!3198))) (= (mod (str.len (value!119662 (tag!4214 (h!26740 rules!3198)))) 2) 0))))

(assert (=> b!1898718 d!581205))

(declare-fun d!581207 () Bool)

(declare-fun res!847650 () Bool)

(declare-fun e!1212521 () Bool)

(assert (=> d!581207 (=> (not res!847650) (not e!1212521))))

(assert (=> d!581207 (= res!847650 (semiInverseModEq!1534 (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toValue!5409 (transformation!3792 (h!26740 rules!3198)))))))

(assert (=> d!581207 (= (inv!28437 (transformation!3792 (h!26740 rules!3198))) e!1212521)))

(declare-fun b!1898786 () Bool)

(assert (=> b!1898786 (= e!1212521 (equivClasses!1461 (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toValue!5409 (transformation!3792 (h!26740 rules!3198)))))))

(assert (= (and d!581207 res!847650) b!1898786))

(declare-fun m!2329935 () Bool)

(assert (=> d!581207 m!2329935))

(declare-fun m!2329937 () Bool)

(assert (=> b!1898786 m!2329937))

(assert (=> b!1898718 d!581207))

(declare-fun d!581209 () Bool)

(declare-fun res!847655 () Bool)

(declare-fun e!1212524 () Bool)

(assert (=> d!581209 (=> (not res!847655) (not e!1212524))))

(assert (=> d!581209 (= res!847655 (not (isEmpty!13093 (originalCharacters!4599 (h!26739 tokens!598)))))))

(assert (=> d!581209 (= (inv!28436 (h!26739 tokens!598)) e!1212524)))

(declare-fun b!1898791 () Bool)

(declare-fun res!847656 () Bool)

(assert (=> b!1898791 (=> (not res!847656) (not e!1212524))))

(declare-fun dynLambda!10385 (Int TokenValue!3928) BalanceConc!14018)

(assert (=> b!1898791 (= res!847656 (= (originalCharacters!4599 (h!26739 tokens!598)) (list!8676 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (value!119663 (h!26739 tokens!598))))))))

(declare-fun b!1898792 () Bool)

(declare-fun size!16880 (List!21419) Int)

(assert (=> b!1898792 (= e!1212524 (= (size!16878 (h!26739 tokens!598)) (size!16880 (originalCharacters!4599 (h!26739 tokens!598)))))))

(assert (= (and d!581209 res!847655) b!1898791))

(assert (= (and b!1898791 res!847656) b!1898792))

(declare-fun b_lambda!62501 () Bool)

(assert (=> (not b_lambda!62501) (not b!1898791)))

(declare-fun t!176584 () Bool)

(declare-fun tb!115749 () Bool)

(assert (=> (and b!1898716 (= (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176584) tb!115749))

(declare-fun b!1898797 () Bool)

(declare-fun e!1212527 () Bool)

(declare-fun tp!542163 () Bool)

(declare-fun inv!28438 (Conc!7101) Bool)

(assert (=> b!1898797 (= e!1212527 (and (inv!28438 (c!309512 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (value!119663 (h!26739 tokens!598))))) tp!542163))))

(declare-fun result!139952 () Bool)

(declare-fun inv!28439 (BalanceConc!14018) Bool)

(assert (=> tb!115749 (= result!139952 (and (inv!28439 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (value!119663 (h!26739 tokens!598)))) e!1212527))))

(assert (= tb!115749 b!1898797))

(declare-fun m!2329939 () Bool)

(assert (=> b!1898797 m!2329939))

(declare-fun m!2329941 () Bool)

(assert (=> tb!115749 m!2329941))

(assert (=> b!1898791 t!176584))

(declare-fun b_and!146807 () Bool)

(assert (= b_and!146797 (and (=> t!176584 result!139952) b_and!146807)))

(declare-fun tb!115751 () Bool)

(declare-fun t!176586 () Bool)

(assert (=> (and b!1898715 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176586) tb!115751))

(declare-fun result!139956 () Bool)

(assert (= result!139956 result!139952))

(assert (=> b!1898791 t!176586))

(declare-fun b_and!146809 () Bool)

(assert (= b_and!146801 (and (=> t!176586 result!139956) b_and!146809)))

(declare-fun t!176588 () Bool)

(declare-fun tb!115753 () Bool)

(assert (=> (and b!1898710 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176588) tb!115753))

(declare-fun result!139958 () Bool)

(assert (= result!139958 result!139952))

(assert (=> b!1898791 t!176588))

(declare-fun b_and!146811 () Bool)

(assert (= b_and!146805 (and (=> t!176588 result!139958) b_and!146811)))

(declare-fun m!2329943 () Bool)

(assert (=> d!581209 m!2329943))

(declare-fun m!2329945 () Bool)

(assert (=> b!1898791 m!2329945))

(assert (=> b!1898791 m!2329945))

(declare-fun m!2329947 () Bool)

(assert (=> b!1898791 m!2329947))

(declare-fun m!2329949 () Bool)

(assert (=> b!1898792 m!2329949))

(assert (=> b!1898707 d!581209))

(declare-fun d!581211 () Bool)

(declare-fun c!309527 () Bool)

(assert (=> d!581211 (= c!309527 ((_ is IntegerValue!11784) (value!119663 separatorToken!354)))))

(declare-fun e!1212536 () Bool)

(assert (=> d!581211 (= (inv!21 (value!119663 separatorToken!354)) e!1212536)))

(declare-fun b!1898808 () Bool)

(declare-fun e!1212535 () Bool)

(assert (=> b!1898808 (= e!1212536 e!1212535)))

(declare-fun c!309526 () Bool)

(assert (=> b!1898808 (= c!309526 ((_ is IntegerValue!11785) (value!119663 separatorToken!354)))))

(declare-fun b!1898809 () Bool)

(declare-fun e!1212534 () Bool)

(declare-fun inv!15 (TokenValue!3928) Bool)

(assert (=> b!1898809 (= e!1212534 (inv!15 (value!119663 separatorToken!354)))))

(declare-fun b!1898810 () Bool)

(declare-fun inv!16 (TokenValue!3928) Bool)

(assert (=> b!1898810 (= e!1212536 (inv!16 (value!119663 separatorToken!354)))))

(declare-fun b!1898811 () Bool)

(declare-fun inv!17 (TokenValue!3928) Bool)

(assert (=> b!1898811 (= e!1212535 (inv!17 (value!119663 separatorToken!354)))))

(declare-fun b!1898812 () Bool)

(declare-fun res!847659 () Bool)

(assert (=> b!1898812 (=> res!847659 e!1212534)))

(assert (=> b!1898812 (= res!847659 (not ((_ is IntegerValue!11786) (value!119663 separatorToken!354))))))

(assert (=> b!1898812 (= e!1212535 e!1212534)))

(assert (= (and d!581211 c!309527) b!1898810))

(assert (= (and d!581211 (not c!309527)) b!1898808))

(assert (= (and b!1898808 c!309526) b!1898811))

(assert (= (and b!1898808 (not c!309526)) b!1898812))

(assert (= (and b!1898812 (not res!847659)) b!1898809))

(declare-fun m!2329951 () Bool)

(assert (=> b!1898809 m!2329951))

(declare-fun m!2329953 () Bool)

(assert (=> b!1898810 m!2329953))

(declare-fun m!2329955 () Bool)

(assert (=> b!1898811 m!2329955))

(assert (=> b!1898708 d!581211))

(declare-fun bm!116993 () Bool)

(declare-fun call!116998 () Bool)

(assert (=> bm!116993 (= call!116998 (isEmpty!13093 lt!726099))))

(declare-fun b!1898813 () Bool)

(declare-fun e!1212540 () Bool)

(declare-fun e!1212541 () Bool)

(assert (=> b!1898813 (= e!1212540 e!1212541)))

(declare-fun c!309529 () Bool)

(assert (=> b!1898813 (= c!309529 ((_ is EmptyLang!5217) (regex!3792 lt!726090)))))

(declare-fun b!1898814 () Bool)

(declare-fun res!847666 () Bool)

(declare-fun e!1212538 () Bool)

(assert (=> b!1898814 (=> res!847666 e!1212538)))

(declare-fun e!1212539 () Bool)

(assert (=> b!1898814 (= res!847666 e!1212539)))

(declare-fun res!847663 () Bool)

(assert (=> b!1898814 (=> (not res!847663) (not e!1212539))))

(declare-fun lt!726104 () Bool)

(assert (=> b!1898814 (= res!847663 lt!726104)))

(declare-fun d!581213 () Bool)

(assert (=> d!581213 e!1212540))

(declare-fun c!309530 () Bool)

(assert (=> d!581213 (= c!309530 ((_ is EmptyExpr!5217) (regex!3792 lt!726090)))))

(declare-fun e!1212537 () Bool)

(assert (=> d!581213 (= lt!726104 e!1212537)))

(declare-fun c!309528 () Bool)

(assert (=> d!581213 (= c!309528 (isEmpty!13093 lt!726099))))

(assert (=> d!581213 (validRegex!2108 (regex!3792 lt!726090))))

(assert (=> d!581213 (= (matchR!2503 (regex!3792 lt!726090) lt!726099) lt!726104)))

(declare-fun b!1898815 () Bool)

(assert (=> b!1898815 (= e!1212541 (not lt!726104))))

(declare-fun b!1898816 () Bool)

(declare-fun e!1212543 () Bool)

(declare-fun e!1212542 () Bool)

(assert (=> b!1898816 (= e!1212543 e!1212542)))

(declare-fun res!847664 () Bool)

(assert (=> b!1898816 (=> res!847664 e!1212542)))

(assert (=> b!1898816 (= res!847664 call!116998)))

(declare-fun b!1898817 () Bool)

(declare-fun res!847665 () Bool)

(assert (=> b!1898817 (=> (not res!847665) (not e!1212539))))

(assert (=> b!1898817 (= res!847665 (isEmpty!13093 (tail!2937 lt!726099)))))

(declare-fun b!1898818 () Bool)

(declare-fun res!847660 () Bool)

(assert (=> b!1898818 (=> res!847660 e!1212542)))

(assert (=> b!1898818 (= res!847660 (not (isEmpty!13093 (tail!2937 lt!726099))))))

(declare-fun b!1898819 () Bool)

(declare-fun res!847667 () Bool)

(assert (=> b!1898819 (=> res!847667 e!1212538)))

(assert (=> b!1898819 (= res!847667 (not ((_ is ElementMatch!5217) (regex!3792 lt!726090))))))

(assert (=> b!1898819 (= e!1212541 e!1212538)))

(declare-fun b!1898820 () Bool)

(assert (=> b!1898820 (= e!1212537 (matchR!2503 (derivativeStep!1343 (regex!3792 lt!726090) (head!4411 lt!726099)) (tail!2937 lt!726099)))))

(declare-fun b!1898821 () Bool)

(declare-fun res!847662 () Bool)

(assert (=> b!1898821 (=> (not res!847662) (not e!1212539))))

(assert (=> b!1898821 (= res!847662 (not call!116998))))

(declare-fun b!1898822 () Bool)

(assert (=> b!1898822 (= e!1212538 e!1212543)))

(declare-fun res!847661 () Bool)

(assert (=> b!1898822 (=> (not res!847661) (not e!1212543))))

(assert (=> b!1898822 (= res!847661 (not lt!726104))))

(declare-fun b!1898823 () Bool)

(assert (=> b!1898823 (= e!1212537 (nullable!1584 (regex!3792 lt!726090)))))

(declare-fun b!1898824 () Bool)

(assert (=> b!1898824 (= e!1212539 (= (head!4411 lt!726099) (c!309511 (regex!3792 lt!726090))))))

(declare-fun b!1898825 () Bool)

(assert (=> b!1898825 (= e!1212542 (not (= (head!4411 lt!726099) (c!309511 (regex!3792 lt!726090)))))))

(declare-fun b!1898826 () Bool)

(assert (=> b!1898826 (= e!1212540 (= lt!726104 call!116998))))

(assert (= (and d!581213 c!309528) b!1898823))

(assert (= (and d!581213 (not c!309528)) b!1898820))

(assert (= (and d!581213 c!309530) b!1898826))

(assert (= (and d!581213 (not c!309530)) b!1898813))

(assert (= (and b!1898813 c!309529) b!1898815))

(assert (= (and b!1898813 (not c!309529)) b!1898819))

(assert (= (and b!1898819 (not res!847667)) b!1898814))

(assert (= (and b!1898814 res!847663) b!1898821))

(assert (= (and b!1898821 res!847662) b!1898817))

(assert (= (and b!1898817 res!847665) b!1898824))

(assert (= (and b!1898814 (not res!847666)) b!1898822))

(assert (= (and b!1898822 res!847661) b!1898816))

(assert (= (and b!1898816 (not res!847664)) b!1898818))

(assert (= (and b!1898818 (not res!847660)) b!1898825))

(assert (= (or b!1898826 b!1898816 b!1898821) bm!116993))

(declare-fun m!2329957 () Bool)

(assert (=> b!1898818 m!2329957))

(assert (=> b!1898818 m!2329957))

(declare-fun m!2329959 () Bool)

(assert (=> b!1898818 m!2329959))

(declare-fun m!2329961 () Bool)

(assert (=> b!1898823 m!2329961))

(declare-fun m!2329963 () Bool)

(assert (=> b!1898820 m!2329963))

(assert (=> b!1898820 m!2329963))

(declare-fun m!2329965 () Bool)

(assert (=> b!1898820 m!2329965))

(assert (=> b!1898820 m!2329957))

(assert (=> b!1898820 m!2329965))

(assert (=> b!1898820 m!2329957))

(declare-fun m!2329967 () Bool)

(assert (=> b!1898820 m!2329967))

(assert (=> b!1898825 m!2329963))

(declare-fun m!2329969 () Bool)

(assert (=> bm!116993 m!2329969))

(assert (=> d!581213 m!2329969))

(declare-fun m!2329971 () Bool)

(assert (=> d!581213 m!2329971))

(assert (=> b!1898817 m!2329957))

(assert (=> b!1898817 m!2329957))

(assert (=> b!1898817 m!2329959))

(assert (=> b!1898824 m!2329963))

(assert (=> b!1898729 d!581213))

(declare-fun d!581215 () Bool)

(assert (=> d!581215 (= (get!6593 lt!726097) (v!26318 lt!726097))))

(assert (=> b!1898729 d!581215))

(declare-fun bs!413528 () Bool)

(declare-fun d!581217 () Bool)

(assert (= bs!413528 (and d!581217 b!1898711)))

(declare-fun lambda!74197 () Int)

(assert (=> bs!413528 (not (= lambda!74197 lambda!74191))))

(declare-fun b!1898907 () Bool)

(declare-fun e!1212594 () Bool)

(assert (=> b!1898907 (= e!1212594 true)))

(declare-fun b!1898906 () Bool)

(declare-fun e!1212593 () Bool)

(assert (=> b!1898906 (= e!1212593 e!1212594)))

(declare-fun b!1898905 () Bool)

(declare-fun e!1212592 () Bool)

(assert (=> b!1898905 (= e!1212592 e!1212593)))

(assert (=> d!581217 e!1212592))

(assert (= b!1898906 b!1898907))

(assert (= b!1898905 b!1898906))

(assert (= (and d!581217 ((_ is Cons!21339) rules!3198)) b!1898905))

(declare-fun order!13489 () Int)

(declare-fun order!13487 () Int)

(declare-fun dynLambda!10389 (Int Int) Int)

(declare-fun dynLambda!10390 (Int Int) Int)

(assert (=> b!1898907 (< (dynLambda!10389 order!13487 (toValue!5409 (transformation!3792 (h!26740 rules!3198)))) (dynLambda!10390 order!13489 lambda!74197))))

(declare-fun order!13491 () Int)

(declare-fun dynLambda!10391 (Int Int) Int)

(assert (=> b!1898907 (< (dynLambda!10391 order!13491 (toChars!5268 (transformation!3792 (h!26740 rules!3198)))) (dynLambda!10390 order!13489 lambda!74197))))

(assert (=> d!581217 true))

(declare-fun lt!726125 () Bool)

(assert (=> d!581217 (= lt!726125 (forall!4470 tokens!598 lambda!74197))))

(declare-fun e!1212585 () Bool)

(assert (=> d!581217 (= lt!726125 e!1212585)))

(declare-fun res!847706 () Bool)

(assert (=> d!581217 (=> res!847706 e!1212585)))

(assert (=> d!581217 (= res!847706 (not ((_ is Cons!21338) tokens!598)))))

(assert (=> d!581217 (not (isEmpty!13090 rules!3198))))

(assert (=> d!581217 (= (rulesProduceEachTokenIndividuallyList!1136 thiss!23328 rules!3198 tokens!598) lt!726125)))

(declare-fun b!1898895 () Bool)

(declare-fun e!1212584 () Bool)

(assert (=> b!1898895 (= e!1212585 e!1212584)))

(declare-fun res!847705 () Bool)

(assert (=> b!1898895 (=> (not res!847705) (not e!1212584))))

(assert (=> b!1898895 (= res!847705 (rulesProduceIndividualToken!1577 thiss!23328 rules!3198 (h!26739 tokens!598)))))

(declare-fun b!1898896 () Bool)

(assert (=> b!1898896 (= e!1212584 (rulesProduceEachTokenIndividuallyList!1136 thiss!23328 rules!3198 (t!176581 tokens!598)))))

(assert (= (and d!581217 (not res!847706)) b!1898895))

(assert (= (and b!1898895 res!847705) b!1898896))

(declare-fun m!2330025 () Bool)

(assert (=> d!581217 m!2330025))

(assert (=> d!581217 m!2329897))

(declare-fun m!2330027 () Bool)

(assert (=> b!1898895 m!2330027))

(declare-fun m!2330029 () Bool)

(assert (=> b!1898896 m!2330029))

(assert (=> b!1898730 d!581217))

(declare-fun d!581231 () Bool)

(assert (=> d!581231 (= (isEmpty!13090 rules!3198) ((_ is Nil!21339) rules!3198))))

(assert (=> b!1898719 d!581231))

(declare-fun d!581233 () Bool)

(declare-fun c!309541 () Bool)

(assert (=> d!581233 (= c!309541 ((_ is IntegerValue!11784) (value!119663 (h!26739 tokens!598))))))

(declare-fun e!1212597 () Bool)

(assert (=> d!581233 (= (inv!21 (value!119663 (h!26739 tokens!598))) e!1212597)))

(declare-fun b!1898910 () Bool)

(declare-fun e!1212596 () Bool)

(assert (=> b!1898910 (= e!1212597 e!1212596)))

(declare-fun c!309540 () Bool)

(assert (=> b!1898910 (= c!309540 ((_ is IntegerValue!11785) (value!119663 (h!26739 tokens!598))))))

(declare-fun b!1898911 () Bool)

(declare-fun e!1212595 () Bool)

(assert (=> b!1898911 (= e!1212595 (inv!15 (value!119663 (h!26739 tokens!598))))))

(declare-fun b!1898912 () Bool)

(assert (=> b!1898912 (= e!1212597 (inv!16 (value!119663 (h!26739 tokens!598))))))

(declare-fun b!1898913 () Bool)

(assert (=> b!1898913 (= e!1212596 (inv!17 (value!119663 (h!26739 tokens!598))))))

(declare-fun b!1898914 () Bool)

(declare-fun res!847707 () Bool)

(assert (=> b!1898914 (=> res!847707 e!1212595)))

(assert (=> b!1898914 (= res!847707 (not ((_ is IntegerValue!11786) (value!119663 (h!26739 tokens!598)))))))

(assert (=> b!1898914 (= e!1212596 e!1212595)))

(assert (= (and d!581233 c!309541) b!1898912))

(assert (= (and d!581233 (not c!309541)) b!1898910))

(assert (= (and b!1898910 c!309540) b!1898913))

(assert (= (and b!1898910 (not c!309540)) b!1898914))

(assert (= (and b!1898914 (not res!847707)) b!1898911))

(declare-fun m!2330031 () Bool)

(assert (=> b!1898911 m!2330031))

(declare-fun m!2330033 () Bool)

(assert (=> b!1898912 m!2330033))

(declare-fun m!2330035 () Bool)

(assert (=> b!1898913 m!2330035))

(assert (=> b!1898720 d!581233))

(declare-fun d!581235 () Bool)

(declare-fun lt!726131 () Bool)

(declare-fun e!1212603 () Bool)

(assert (=> d!581235 (= lt!726131 e!1212603)))

(declare-fun res!847714 () Bool)

(assert (=> d!581235 (=> (not res!847714) (not e!1212603))))

(declare-datatypes ((IArray!14211 0))(
  ( (IArray!14212 (innerList!7163 List!21420)) )
))
(declare-datatypes ((Conc!7103 0))(
  ( (Node!7103 (left!17101 Conc!7103) (right!17431 Conc!7103) (csize!14436 Int) (cheight!7314 Int)) (Leaf!10462 (xs!9997 IArray!14211) (csize!14437 Int)) (Empty!7103) )
))
(declare-datatypes ((BalanceConc!14022 0))(
  ( (BalanceConc!14023 (c!309608 Conc!7103)) )
))
(declare-fun list!8678 (BalanceConc!14022) List!21420)

(declare-datatypes ((tuple2!20118 0))(
  ( (tuple2!20119 (_1!11528 BalanceConc!14022) (_2!11528 BalanceConc!14018)) )
))
(declare-fun lex!1513 (LexerInterface!3405 List!21421 BalanceConc!14018) tuple2!20118)

(declare-fun print!1443 (LexerInterface!3405 BalanceConc!14022) BalanceConc!14018)

(declare-fun singletonSeq!1841 (Token!7136) BalanceConc!14022)

(assert (=> d!581235 (= res!847714 (= (list!8678 (_1!11528 (lex!1513 thiss!23328 rules!3198 (print!1443 thiss!23328 (singletonSeq!1841 separatorToken!354))))) (list!8678 (singletonSeq!1841 separatorToken!354))))))

(declare-fun e!1212602 () Bool)

(assert (=> d!581235 (= lt!726131 e!1212602)))

(declare-fun res!847716 () Bool)

(assert (=> d!581235 (=> (not res!847716) (not e!1212602))))

(declare-fun lt!726130 () tuple2!20118)

(declare-fun size!16881 (BalanceConc!14022) Int)

(assert (=> d!581235 (= res!847716 (= (size!16881 (_1!11528 lt!726130)) 1))))

(assert (=> d!581235 (= lt!726130 (lex!1513 thiss!23328 rules!3198 (print!1443 thiss!23328 (singletonSeq!1841 separatorToken!354))))))

(assert (=> d!581235 (not (isEmpty!13090 rules!3198))))

(assert (=> d!581235 (= (rulesProduceIndividualToken!1577 thiss!23328 rules!3198 separatorToken!354) lt!726131)))

(declare-fun b!1898921 () Bool)

(declare-fun res!847715 () Bool)

(assert (=> b!1898921 (=> (not res!847715) (not e!1212602))))

(declare-fun apply!5610 (BalanceConc!14022 Int) Token!7136)

(assert (=> b!1898921 (= res!847715 (= (apply!5610 (_1!11528 lt!726130) 0) separatorToken!354))))

(declare-fun b!1898922 () Bool)

(declare-fun isEmpty!13094 (BalanceConc!14018) Bool)

(assert (=> b!1898922 (= e!1212602 (isEmpty!13094 (_2!11528 lt!726130)))))

(declare-fun b!1898923 () Bool)

(assert (=> b!1898923 (= e!1212603 (isEmpty!13094 (_2!11528 (lex!1513 thiss!23328 rules!3198 (print!1443 thiss!23328 (singletonSeq!1841 separatorToken!354))))))))

(assert (= (and d!581235 res!847716) b!1898921))

(assert (= (and b!1898921 res!847715) b!1898922))

(assert (= (and d!581235 res!847714) b!1898923))

(assert (=> d!581235 m!2329897))

(declare-fun m!2330037 () Bool)

(assert (=> d!581235 m!2330037))

(declare-fun m!2330039 () Bool)

(assert (=> d!581235 m!2330039))

(declare-fun m!2330041 () Bool)

(assert (=> d!581235 m!2330041))

(declare-fun m!2330043 () Bool)

(assert (=> d!581235 m!2330043))

(declare-fun m!2330045 () Bool)

(assert (=> d!581235 m!2330045))

(assert (=> d!581235 m!2330039))

(assert (=> d!581235 m!2330043))

(assert (=> d!581235 m!2330039))

(declare-fun m!2330047 () Bool)

(assert (=> d!581235 m!2330047))

(declare-fun m!2330049 () Bool)

(assert (=> b!1898921 m!2330049))

(declare-fun m!2330051 () Bool)

(assert (=> b!1898922 m!2330051))

(assert (=> b!1898923 m!2330039))

(assert (=> b!1898923 m!2330039))

(assert (=> b!1898923 m!2330043))

(assert (=> b!1898923 m!2330043))

(assert (=> b!1898923 m!2330045))

(declare-fun m!2330053 () Bool)

(assert (=> b!1898923 m!2330053))

(assert (=> b!1898709 d!581235))

(declare-fun d!581237 () Bool)

(declare-fun res!847717 () Bool)

(declare-fun e!1212604 () Bool)

(assert (=> d!581237 (=> (not res!847717) (not e!1212604))))

(assert (=> d!581237 (= res!847717 (not (isEmpty!13093 (originalCharacters!4599 separatorToken!354))))))

(assert (=> d!581237 (= (inv!28436 separatorToken!354) e!1212604)))

(declare-fun b!1898924 () Bool)

(declare-fun res!847718 () Bool)

(assert (=> b!1898924 (=> (not res!847718) (not e!1212604))))

(assert (=> b!1898924 (= res!847718 (= (originalCharacters!4599 separatorToken!354) (list!8676 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (value!119663 separatorToken!354)))))))

(declare-fun b!1898925 () Bool)

(assert (=> b!1898925 (= e!1212604 (= (size!16878 separatorToken!354) (size!16880 (originalCharacters!4599 separatorToken!354))))))

(assert (= (and d!581237 res!847717) b!1898924))

(assert (= (and b!1898924 res!847718) b!1898925))

(declare-fun b_lambda!62503 () Bool)

(assert (=> (not b_lambda!62503) (not b!1898924)))

(declare-fun t!176595 () Bool)

(declare-fun tb!115755 () Bool)

(assert (=> (and b!1898716 (= (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354)))) t!176595) tb!115755))

(declare-fun b!1898926 () Bool)

(declare-fun e!1212605 () Bool)

(declare-fun tp!542164 () Bool)

(assert (=> b!1898926 (= e!1212605 (and (inv!28438 (c!309512 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (value!119663 separatorToken!354)))) tp!542164))))

(declare-fun result!139960 () Bool)

(assert (=> tb!115755 (= result!139960 (and (inv!28439 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (value!119663 separatorToken!354))) e!1212605))))

(assert (= tb!115755 b!1898926))

(declare-fun m!2330055 () Bool)

(assert (=> b!1898926 m!2330055))

(declare-fun m!2330057 () Bool)

(assert (=> tb!115755 m!2330057))

(assert (=> b!1898924 t!176595))

(declare-fun b_and!146813 () Bool)

(assert (= b_and!146807 (and (=> t!176595 result!139960) b_and!146813)))

(declare-fun t!176597 () Bool)

(declare-fun tb!115757 () Bool)

(assert (=> (and b!1898715 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354)))) t!176597) tb!115757))

(declare-fun result!139962 () Bool)

(assert (= result!139962 result!139960))

(assert (=> b!1898924 t!176597))

(declare-fun b_and!146815 () Bool)

(assert (= b_and!146809 (and (=> t!176597 result!139962) b_and!146815)))

(declare-fun tb!115759 () Bool)

(declare-fun t!176599 () Bool)

(assert (=> (and b!1898710 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354)))) t!176599) tb!115759))

(declare-fun result!139964 () Bool)

(assert (= result!139964 result!139960))

(assert (=> b!1898924 t!176599))

(declare-fun b_and!146817 () Bool)

(assert (= b_and!146811 (and (=> t!176599 result!139964) b_and!146817)))

(declare-fun m!2330059 () Bool)

(assert (=> d!581237 m!2330059))

(declare-fun m!2330061 () Bool)

(assert (=> b!1898924 m!2330061))

(assert (=> b!1898924 m!2330061))

(declare-fun m!2330063 () Bool)

(assert (=> b!1898924 m!2330063))

(declare-fun m!2330065 () Bool)

(assert (=> b!1898925 m!2330065))

(assert (=> start!190380 d!581237))

(declare-fun b!1898933 () Bool)

(declare-fun e!1212610 () Bool)

(assert (=> b!1898933 (= e!1212610 true)))

(declare-fun d!581239 () Bool)

(assert (=> d!581239 e!1212610))

(assert (= d!581239 b!1898933))

(declare-fun order!13493 () Int)

(declare-fun lambda!74200 () Int)

(declare-fun dynLambda!10392 (Int Int) Int)

(assert (=> b!1898933 (< (dynLambda!10389 order!13487 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) (dynLambda!10392 order!13493 lambda!74200))))

(assert (=> b!1898933 (< (dynLambda!10391 order!13491 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) (dynLambda!10392 order!13493 lambda!74200))))

(declare-fun dynLambda!10393 (Int BalanceConc!14018) TokenValue!3928)

(assert (=> d!581239 (= (dynLambda!10393 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) lt!726095) (dynLambda!10393 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (seqFromList!2664 (originalCharacters!4599 (h!26739 tokens!598)))))))

(declare-fun lt!726134 () Unit!35672)

(declare-fun Forall2of!176 (Int BalanceConc!14018 BalanceConc!14018) Unit!35672)

(assert (=> d!581239 (= lt!726134 (Forall2of!176 lambda!74200 lt!726095 (seqFromList!2664 (originalCharacters!4599 (h!26739 tokens!598)))))))

(assert (=> d!581239 (= (list!8676 lt!726095) (list!8676 (seqFromList!2664 (originalCharacters!4599 (h!26739 tokens!598)))))))

(assert (=> d!581239 (= (lemmaEqSameImage!500 (transformation!3792 (rule!5985 (h!26739 tokens!598))) lt!726095 (seqFromList!2664 (originalCharacters!4599 (h!26739 tokens!598)))) lt!726134)))

(declare-fun b_lambda!62505 () Bool)

(assert (=> (not b_lambda!62505) (not d!581239)))

(declare-fun tb!115761 () Bool)

(declare-fun t!176601 () Bool)

(assert (=> (and b!1898716 (= (toValue!5409 (transformation!3792 (rule!5985 separatorToken!354))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176601) tb!115761))

(declare-fun result!139966 () Bool)

(assert (=> tb!115761 (= result!139966 (inv!21 (dynLambda!10393 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) lt!726095)))))

(declare-fun m!2330067 () Bool)

(assert (=> tb!115761 m!2330067))

(assert (=> d!581239 t!176601))

(declare-fun b_and!146819 () Bool)

(assert (= b_and!146795 (and (=> t!176601 result!139966) b_and!146819)))

(declare-fun t!176603 () Bool)

(declare-fun tb!115763 () Bool)

(assert (=> (and b!1898715 (= (toValue!5409 (transformation!3792 (h!26740 rules!3198))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176603) tb!115763))

(declare-fun result!139970 () Bool)

(assert (= result!139970 result!139966))

(assert (=> d!581239 t!176603))

(declare-fun b_and!146821 () Bool)

(assert (= b_and!146799 (and (=> t!176603 result!139970) b_and!146821)))

(declare-fun t!176605 () Bool)

(declare-fun tb!115765 () Bool)

(assert (=> (and b!1898710 (= (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176605) tb!115765))

(declare-fun result!139972 () Bool)

(assert (= result!139972 result!139966))

(assert (=> d!581239 t!176605))

(declare-fun b_and!146823 () Bool)

(assert (= b_and!146803 (and (=> t!176605 result!139972) b_and!146823)))

(declare-fun b_lambda!62507 () Bool)

(assert (=> (not b_lambda!62507) (not d!581239)))

(declare-fun t!176607 () Bool)

(declare-fun tb!115767 () Bool)

(assert (=> (and b!1898716 (= (toValue!5409 (transformation!3792 (rule!5985 separatorToken!354))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176607) tb!115767))

(declare-fun result!139974 () Bool)

(assert (=> tb!115767 (= result!139974 (inv!21 (dynLambda!10393 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (seqFromList!2664 (originalCharacters!4599 (h!26739 tokens!598))))))))

(declare-fun m!2330069 () Bool)

(assert (=> tb!115767 m!2330069))

(assert (=> d!581239 t!176607))

(declare-fun b_and!146825 () Bool)

(assert (= b_and!146819 (and (=> t!176607 result!139974) b_and!146825)))

(declare-fun t!176609 () Bool)

(declare-fun tb!115769 () Bool)

(assert (=> (and b!1898715 (= (toValue!5409 (transformation!3792 (h!26740 rules!3198))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176609) tb!115769))

(declare-fun result!139976 () Bool)

(assert (= result!139976 result!139974))

(assert (=> d!581239 t!176609))

(declare-fun b_and!146827 () Bool)

(assert (= b_and!146821 (and (=> t!176609 result!139976) b_and!146827)))

(declare-fun t!176611 () Bool)

(declare-fun tb!115771 () Bool)

(assert (=> (and b!1898710 (= (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176611) tb!115771))

(declare-fun result!139978 () Bool)

(assert (= result!139978 result!139974))

(assert (=> d!581239 t!176611))

(declare-fun b_and!146829 () Bool)

(assert (= b_and!146823 (and (=> t!176611 result!139978) b_and!146829)))

(assert (=> d!581239 m!2329845))

(declare-fun m!2330071 () Bool)

(assert (=> d!581239 m!2330071))

(declare-fun m!2330073 () Bool)

(assert (=> d!581239 m!2330073))

(assert (=> d!581239 m!2329845))

(declare-fun m!2330075 () Bool)

(assert (=> d!581239 m!2330075))

(assert (=> d!581239 m!2329875))

(assert (=> d!581239 m!2329845))

(declare-fun m!2330077 () Bool)

(assert (=> d!581239 m!2330077))

(assert (=> b!1898722 d!581239))

(declare-fun d!581241 () Bool)

(declare-fun isEmpty!13095 (Option!4290) Bool)

(assert (=> d!581241 (= (isDefined!3587 lt!726097) (not (isEmpty!13095 lt!726097)))))

(declare-fun bs!413529 () Bool)

(assert (= bs!413529 d!581241))

(declare-fun m!2330079 () Bool)

(assert (=> bs!413529 m!2330079))

(assert (=> b!1898722 d!581241))

(declare-fun b!1898956 () Bool)

(declare-fun e!1212625 () Bool)

(assert (=> b!1898956 (= e!1212625 true)))

(declare-fun d!581243 () Bool)

(assert (=> d!581243 e!1212625))

(assert (= d!581243 b!1898956))

(declare-fun order!13495 () Int)

(declare-fun lambda!74205 () Int)

(declare-fun dynLambda!10394 (Int Int) Int)

(assert (=> b!1898956 (< (dynLambda!10389 order!13487 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) (dynLambda!10394 order!13495 lambda!74205))))

(assert (=> b!1898956 (< (dynLambda!10391 order!13491 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) (dynLambda!10394 order!13495 lambda!74205))))

(assert (=> d!581243 (= (list!8676 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (dynLambda!10393 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) lt!726095))) (list!8676 lt!726095))))

(declare-fun lt!726149 () Unit!35672)

(declare-fun ForallOf!381 (Int BalanceConc!14018) Unit!35672)

(assert (=> d!581243 (= lt!726149 (ForallOf!381 lambda!74205 lt!726095))))

(assert (=> d!581243 (= (lemmaSemiInverse!771 (transformation!3792 (rule!5985 (h!26739 tokens!598))) lt!726095) lt!726149)))

(declare-fun b_lambda!62509 () Bool)

(assert (=> (not b_lambda!62509) (not d!581243)))

(declare-fun tb!115773 () Bool)

(declare-fun t!176615 () Bool)

(assert (=> (and b!1898716 (= (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176615) tb!115773))

(declare-fun e!1212626 () Bool)

(declare-fun b!1898957 () Bool)

(declare-fun tp!542165 () Bool)

(assert (=> b!1898957 (= e!1212626 (and (inv!28438 (c!309512 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (dynLambda!10393 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) lt!726095)))) tp!542165))))

(declare-fun result!139980 () Bool)

(assert (=> tb!115773 (= result!139980 (and (inv!28439 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (dynLambda!10393 (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) lt!726095))) e!1212626))))

(assert (= tb!115773 b!1898957))

(declare-fun m!2330081 () Bool)

(assert (=> b!1898957 m!2330081))

(declare-fun m!2330083 () Bool)

(assert (=> tb!115773 m!2330083))

(assert (=> d!581243 t!176615))

(declare-fun b_and!146831 () Bool)

(assert (= b_and!146813 (and (=> t!176615 result!139980) b_and!146831)))

(declare-fun t!176617 () Bool)

(declare-fun tb!115775 () Bool)

(assert (=> (and b!1898715 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176617) tb!115775))

(declare-fun result!139982 () Bool)

(assert (= result!139982 result!139980))

(assert (=> d!581243 t!176617))

(declare-fun b_and!146833 () Bool)

(assert (= b_and!146815 (and (=> t!176617 result!139982) b_and!146833)))

(declare-fun t!176619 () Bool)

(declare-fun tb!115777 () Bool)

(assert (=> (and b!1898710 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176619) tb!115777))

(declare-fun result!139984 () Bool)

(assert (= result!139984 result!139980))

(assert (=> d!581243 t!176619))

(declare-fun b_and!146835 () Bool)

(assert (= b_and!146817 (and (=> t!176619 result!139984) b_and!146835)))

(declare-fun b_lambda!62511 () Bool)

(assert (=> (not b_lambda!62511) (not d!581243)))

(assert (=> d!581243 t!176601))

(declare-fun b_and!146837 () Bool)

(assert (= b_and!146825 (and (=> t!176601 result!139966) b_and!146837)))

(assert (=> d!581243 t!176603))

(declare-fun b_and!146839 () Bool)

(assert (= b_and!146827 (and (=> t!176603 result!139970) b_and!146839)))

(assert (=> d!581243 t!176605))

(declare-fun b_and!146841 () Bool)

(assert (= b_and!146829 (and (=> t!176605 result!139972) b_and!146841)))

(assert (=> d!581243 m!2330073))

(declare-fun m!2330085 () Bool)

(assert (=> d!581243 m!2330085))

(assert (=> d!581243 m!2329875))

(assert (=> d!581243 m!2330085))

(declare-fun m!2330087 () Bool)

(assert (=> d!581243 m!2330087))

(declare-fun m!2330089 () Bool)

(assert (=> d!581243 m!2330089))

(assert (=> d!581243 m!2330073))

(assert (=> b!1898722 d!581243))

(declare-fun d!581245 () Bool)

(declare-fun e!1212636 () Bool)

(assert (=> d!581245 e!1212636))

(declare-fun res!847725 () Bool)

(assert (=> d!581245 (=> (not res!847725) (not e!1212636))))

(assert (=> d!581245 (= res!847725 (isDefined!3587 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 separatorToken!354)))))))

(declare-fun lt!726158 () Unit!35672)

(declare-fun choose!11844 (LexerInterface!3405 List!21421 List!21419 Token!7136) Unit!35672)

(assert (=> d!581245 (= lt!726158 (choose!11844 thiss!23328 rules!3198 lt!726091 separatorToken!354))))

(assert (=> d!581245 (rulesInvariant!3012 thiss!23328 rules!3198)))

(assert (=> d!581245 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!635 thiss!23328 rules!3198 lt!726091 separatorToken!354) lt!726158)))

(declare-fun b!1898973 () Bool)

(declare-fun res!847726 () Bool)

(assert (=> b!1898973 (=> (not res!847726) (not e!1212636))))

(assert (=> b!1898973 (= res!847726 (matchR!2503 (regex!3792 (get!6593 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 separatorToken!354))))) (list!8676 (charsOf!2348 separatorToken!354))))))

(declare-fun b!1898974 () Bool)

(assert (=> b!1898974 (= e!1212636 (= (rule!5985 separatorToken!354) (get!6593 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 separatorToken!354))))))))

(assert (= (and d!581245 res!847725) b!1898973))

(assert (= (and b!1898973 res!847726) b!1898974))

(assert (=> d!581245 m!2329873))

(assert (=> d!581245 m!2329873))

(declare-fun m!2330121 () Bool)

(assert (=> d!581245 m!2330121))

(declare-fun m!2330123 () Bool)

(assert (=> d!581245 m!2330123))

(assert (=> d!581245 m!2329881))

(assert (=> b!1898973 m!2329867))

(declare-fun m!2330125 () Bool)

(assert (=> b!1898973 m!2330125))

(assert (=> b!1898973 m!2329863))

(assert (=> b!1898973 m!2329867))

(assert (=> b!1898973 m!2329873))

(assert (=> b!1898973 m!2329863))

(assert (=> b!1898973 m!2329873))

(declare-fun m!2330127 () Bool)

(assert (=> b!1898973 m!2330127))

(assert (=> b!1898974 m!2329873))

(assert (=> b!1898974 m!2329873))

(assert (=> b!1898974 m!2330127))

(assert (=> b!1898722 d!581245))

(declare-fun d!581251 () Bool)

(declare-fun list!8679 (Conc!7101) List!21419)

(assert (=> d!581251 (= (list!8676 lt!726095) (list!8679 (c!309512 lt!726095)))))

(declare-fun bs!413533 () Bool)

(assert (= bs!413533 d!581251))

(declare-fun m!2330129 () Bool)

(assert (=> bs!413533 m!2330129))

(assert (=> b!1898722 d!581251))

(declare-fun d!581253 () Bool)

(assert (=> d!581253 true))

(declare-fun lt!726164 () Bool)

(declare-fun lambda!74212 () Int)

(declare-fun forall!4472 (List!21421 Int) Bool)

(assert (=> d!581253 (= lt!726164 (forall!4472 rules!3198 lambda!74212))))

(declare-fun e!1212647 () Bool)

(assert (=> d!581253 (= lt!726164 e!1212647)))

(declare-fun res!847731 () Bool)

(assert (=> d!581253 (=> res!847731 e!1212647)))

(assert (=> d!581253 (= res!847731 (not ((_ is Cons!21339) rules!3198)))))

(assert (=> d!581253 (= (rulesValidInductive!1286 thiss!23328 rules!3198) lt!726164)))

(declare-fun b!1898988 () Bool)

(declare-fun e!1212646 () Bool)

(assert (=> b!1898988 (= e!1212647 e!1212646)))

(declare-fun res!847732 () Bool)

(assert (=> b!1898988 (=> (not res!847732) (not e!1212646))))

(declare-fun ruleValid!1149 (LexerInterface!3405 Rule!7384) Bool)

(assert (=> b!1898988 (= res!847732 (ruleValid!1149 thiss!23328 (h!26740 rules!3198)))))

(declare-fun b!1898989 () Bool)

(assert (=> b!1898989 (= e!1212646 (rulesValidInductive!1286 thiss!23328 (t!176582 rules!3198)))))

(assert (= (and d!581253 (not res!847731)) b!1898988))

(assert (= (and b!1898988 res!847732) b!1898989))

(declare-fun m!2330135 () Bool)

(assert (=> d!581253 m!2330135))

(declare-fun m!2330137 () Bool)

(assert (=> b!1898988 m!2330137))

(declare-fun m!2330139 () Bool)

(assert (=> b!1898989 m!2330139))

(assert (=> b!1898722 d!581253))

(declare-fun d!581255 () Bool)

(declare-fun e!1212685 () Bool)

(assert (=> d!581255 e!1212685))

(declare-fun res!847773 () Bool)

(assert (=> d!581255 (=> res!847773 e!1212685)))

(declare-fun lt!726198 () Option!4289)

(declare-fun isEmpty!13096 (Option!4289) Bool)

(assert (=> d!581255 (= res!847773 (isEmpty!13096 lt!726198))))

(declare-fun e!1212686 () Option!4289)

(assert (=> d!581255 (= lt!726198 e!1212686)))

(declare-fun c!309569 () Bool)

(assert (=> d!581255 (= c!309569 (and ((_ is Cons!21339) rules!3198) ((_ is Nil!21339) (t!176582 rules!3198))))))

(declare-fun lt!726197 () Unit!35672)

(declare-fun lt!726199 () Unit!35672)

(assert (=> d!581255 (= lt!726197 lt!726199)))

(declare-fun isPrefix!1913 (List!21419 List!21419) Bool)

(assert (=> d!581255 (isPrefix!1913 lt!726099 lt!726099)))

(declare-fun lemmaIsPrefixRefl!1231 (List!21419 List!21419) Unit!35672)

(assert (=> d!581255 (= lt!726199 (lemmaIsPrefixRefl!1231 lt!726099 lt!726099))))

(assert (=> d!581255 (rulesValidInductive!1286 thiss!23328 rules!3198)))

(assert (=> d!581255 (= (maxPrefix!1851 thiss!23328 rules!3198 lt!726099) lt!726198)))

(declare-fun b!1899057 () Bool)

(declare-fun e!1212684 () Bool)

(declare-fun contains!3841 (List!21421 Rule!7384) Bool)

(assert (=> b!1899057 (= e!1212684 (contains!3841 rules!3198 (rule!5985 (_1!11527 (get!6592 lt!726198)))))))

(declare-fun b!1899058 () Bool)

(declare-fun res!847772 () Bool)

(assert (=> b!1899058 (=> (not res!847772) (not e!1212684))))

(declare-fun apply!5611 (TokenValueInjection!7440 BalanceConc!14018) TokenValue!3928)

(assert (=> b!1899058 (= res!847772 (= (value!119663 (_1!11527 (get!6592 lt!726198))) (apply!5611 (transformation!3792 (rule!5985 (_1!11527 (get!6592 lt!726198)))) (seqFromList!2664 (originalCharacters!4599 (_1!11527 (get!6592 lt!726198)))))))))

(declare-fun b!1899059 () Bool)

(assert (=> b!1899059 (= e!1212685 e!1212684)))

(declare-fun res!847770 () Bool)

(assert (=> b!1899059 (=> (not res!847770) (not e!1212684))))

(assert (=> b!1899059 (= res!847770 (isDefined!3588 lt!726198))))

(declare-fun b!1899060 () Bool)

(declare-fun res!847774 () Bool)

(assert (=> b!1899060 (=> (not res!847774) (not e!1212684))))

(assert (=> b!1899060 (= res!847774 (= (++!5735 (list!8676 (charsOf!2348 (_1!11527 (get!6592 lt!726198)))) (_2!11527 (get!6592 lt!726198))) lt!726099))))

(declare-fun b!1899061 () Bool)

(declare-fun res!847769 () Bool)

(assert (=> b!1899061 (=> (not res!847769) (not e!1212684))))

(assert (=> b!1899061 (= res!847769 (matchR!2503 (regex!3792 (rule!5985 (_1!11527 (get!6592 lt!726198)))) (list!8676 (charsOf!2348 (_1!11527 (get!6592 lt!726198))))))))

(declare-fun bm!117014 () Bool)

(declare-fun call!117019 () Option!4289)

(declare-fun maxPrefixOneRule!1195 (LexerInterface!3405 Rule!7384 List!21419) Option!4289)

(assert (=> bm!117014 (= call!117019 (maxPrefixOneRule!1195 thiss!23328 (h!26740 rules!3198) lt!726099))))

(declare-fun b!1899062 () Bool)

(declare-fun res!847771 () Bool)

(assert (=> b!1899062 (=> (not res!847771) (not e!1212684))))

(assert (=> b!1899062 (= res!847771 (= (list!8676 (charsOf!2348 (_1!11527 (get!6592 lt!726198)))) (originalCharacters!4599 (_1!11527 (get!6592 lt!726198)))))))

(declare-fun b!1899063 () Bool)

(declare-fun lt!726200 () Option!4289)

(declare-fun lt!726201 () Option!4289)

(assert (=> b!1899063 (= e!1212686 (ite (and ((_ is None!4288) lt!726200) ((_ is None!4288) lt!726201)) None!4288 (ite ((_ is None!4288) lt!726201) lt!726200 (ite ((_ is None!4288) lt!726200) lt!726201 (ite (>= (size!16878 (_1!11527 (v!26317 lt!726200))) (size!16878 (_1!11527 (v!26317 lt!726201)))) lt!726200 lt!726201)))))))

(assert (=> b!1899063 (= lt!726200 call!117019)))

(assert (=> b!1899063 (= lt!726201 (maxPrefix!1851 thiss!23328 (t!176582 rules!3198) lt!726099))))

(declare-fun b!1899064 () Bool)

(declare-fun res!847775 () Bool)

(assert (=> b!1899064 (=> (not res!847775) (not e!1212684))))

(assert (=> b!1899064 (= res!847775 (< (size!16880 (_2!11527 (get!6592 lt!726198))) (size!16880 lt!726099)))))

(declare-fun b!1899065 () Bool)

(assert (=> b!1899065 (= e!1212686 call!117019)))

(assert (= (and d!581255 c!309569) b!1899065))

(assert (= (and d!581255 (not c!309569)) b!1899063))

(assert (= (or b!1899065 b!1899063) bm!117014))

(assert (= (and d!581255 (not res!847773)) b!1899059))

(assert (= (and b!1899059 res!847770) b!1899062))

(assert (= (and b!1899062 res!847771) b!1899064))

(assert (= (and b!1899064 res!847775) b!1899060))

(assert (= (and b!1899060 res!847774) b!1899058))

(assert (= (and b!1899058 res!847772) b!1899061))

(assert (= (and b!1899061 res!847769) b!1899057))

(declare-fun m!2330211 () Bool)

(assert (=> b!1899062 m!2330211))

(declare-fun m!2330213 () Bool)

(assert (=> b!1899062 m!2330213))

(assert (=> b!1899062 m!2330213))

(declare-fun m!2330215 () Bool)

(assert (=> b!1899062 m!2330215))

(declare-fun m!2330217 () Bool)

(assert (=> d!581255 m!2330217))

(declare-fun m!2330219 () Bool)

(assert (=> d!581255 m!2330219))

(declare-fun m!2330221 () Bool)

(assert (=> d!581255 m!2330221))

(assert (=> d!581255 m!2329853))

(declare-fun m!2330223 () Bool)

(assert (=> b!1899063 m!2330223))

(assert (=> b!1899058 m!2330211))

(declare-fun m!2330225 () Bool)

(assert (=> b!1899058 m!2330225))

(assert (=> b!1899058 m!2330225))

(declare-fun m!2330229 () Bool)

(assert (=> b!1899058 m!2330229))

(declare-fun m!2330231 () Bool)

(assert (=> b!1899059 m!2330231))

(declare-fun m!2330233 () Bool)

(assert (=> bm!117014 m!2330233))

(assert (=> b!1899060 m!2330211))

(assert (=> b!1899060 m!2330213))

(assert (=> b!1899060 m!2330213))

(assert (=> b!1899060 m!2330215))

(assert (=> b!1899060 m!2330215))

(declare-fun m!2330235 () Bool)

(assert (=> b!1899060 m!2330235))

(assert (=> b!1899057 m!2330211))

(declare-fun m!2330237 () Bool)

(assert (=> b!1899057 m!2330237))

(assert (=> b!1899061 m!2330211))

(assert (=> b!1899061 m!2330213))

(assert (=> b!1899061 m!2330213))

(assert (=> b!1899061 m!2330215))

(assert (=> b!1899061 m!2330215))

(declare-fun m!2330239 () Bool)

(assert (=> b!1899061 m!2330239))

(assert (=> b!1899064 m!2330211))

(declare-fun m!2330241 () Bool)

(assert (=> b!1899064 m!2330241))

(declare-fun m!2330243 () Bool)

(assert (=> b!1899064 m!2330243))

(assert (=> b!1898722 d!581255))

(declare-fun d!581275 () Bool)

(declare-fun lt!726206 () BalanceConc!14018)

(assert (=> d!581275 (= (list!8676 lt!726206) (originalCharacters!4599 separatorToken!354))))

(assert (=> d!581275 (= lt!726206 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (value!119663 separatorToken!354)))))

(assert (=> d!581275 (= (charsOf!2348 separatorToken!354) lt!726206)))

(declare-fun b_lambda!62519 () Bool)

(assert (=> (not b_lambda!62519) (not d!581275)))

(assert (=> d!581275 t!176595))

(declare-fun b_and!146861 () Bool)

(assert (= b_and!146831 (and (=> t!176595 result!139960) b_and!146861)))

(assert (=> d!581275 t!176597))

(declare-fun b_and!146863 () Bool)

(assert (= b_and!146833 (and (=> t!176597 result!139962) b_and!146863)))

(assert (=> d!581275 t!176599))

(declare-fun b_and!146865 () Bool)

(assert (= b_and!146835 (and (=> t!176599 result!139964) b_and!146865)))

(declare-fun m!2330245 () Bool)

(assert (=> d!581275 m!2330245))

(assert (=> d!581275 m!2330061))

(assert (=> b!1898722 d!581275))

(declare-fun b!1899094 () Bool)

(declare-fun e!1212709 () Bool)

(declare-fun lt!726217 () Option!4290)

(assert (=> b!1899094 (= e!1212709 (= (tag!4214 (get!6593 lt!726217)) (tag!4214 (rule!5985 separatorToken!354))))))

(declare-fun b!1899095 () Bool)

(declare-fun e!1212708 () Option!4290)

(assert (=> b!1899095 (= e!1212708 None!4289)))

(declare-fun b!1899096 () Bool)

(declare-fun e!1212711 () Option!4290)

(assert (=> b!1899096 (= e!1212711 e!1212708)))

(declare-fun c!309575 () Bool)

(assert (=> b!1899096 (= c!309575 (and ((_ is Cons!21339) rules!3198) (not (= (tag!4214 (h!26740 rules!3198)) (tag!4214 (rule!5985 separatorToken!354))))))))

(declare-fun d!581277 () Bool)

(declare-fun e!1212710 () Bool)

(assert (=> d!581277 e!1212710))

(declare-fun res!847788 () Bool)

(assert (=> d!581277 (=> res!847788 e!1212710)))

(assert (=> d!581277 (= res!847788 (isEmpty!13095 lt!726217))))

(assert (=> d!581277 (= lt!726217 e!1212711)))

(declare-fun c!309574 () Bool)

(assert (=> d!581277 (= c!309574 (and ((_ is Cons!21339) rules!3198) (= (tag!4214 (h!26740 rules!3198)) (tag!4214 (rule!5985 separatorToken!354)))))))

(assert (=> d!581277 (rulesInvariant!3012 thiss!23328 rules!3198)))

(assert (=> d!581277 (= (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 separatorToken!354))) lt!726217)))

(declare-fun b!1899097 () Bool)

(assert (=> b!1899097 (= e!1212711 (Some!4289 (h!26740 rules!3198)))))

(declare-fun b!1899098 () Bool)

(declare-fun lt!726218 () Unit!35672)

(declare-fun lt!726219 () Unit!35672)

(assert (=> b!1899098 (= lt!726218 lt!726219)))

(assert (=> b!1899098 (rulesInvariant!3012 thiss!23328 (t!176582 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!246 (LexerInterface!3405 Rule!7384 List!21421) Unit!35672)

(assert (=> b!1899098 (= lt!726219 (lemmaInvariantOnRulesThenOnTail!246 thiss!23328 (h!26740 rules!3198) (t!176582 rules!3198)))))

(assert (=> b!1899098 (= e!1212708 (getRuleFromTag!635 thiss!23328 (t!176582 rules!3198) (tag!4214 (rule!5985 separatorToken!354))))))

(declare-fun b!1899099 () Bool)

(assert (=> b!1899099 (= e!1212710 e!1212709)))

(declare-fun res!847789 () Bool)

(assert (=> b!1899099 (=> (not res!847789) (not e!1212709))))

(assert (=> b!1899099 (= res!847789 (contains!3841 rules!3198 (get!6593 lt!726217)))))

(assert (= (and d!581277 c!309574) b!1899097))

(assert (= (and d!581277 (not c!309574)) b!1899096))

(assert (= (and b!1899096 c!309575) b!1899098))

(assert (= (and b!1899096 (not c!309575)) b!1899095))

(assert (= (and d!581277 (not res!847788)) b!1899099))

(assert (= (and b!1899099 res!847789) b!1899094))

(declare-fun m!2330263 () Bool)

(assert (=> b!1899094 m!2330263))

(declare-fun m!2330265 () Bool)

(assert (=> d!581277 m!2330265))

(assert (=> d!581277 m!2329881))

(declare-fun m!2330267 () Bool)

(assert (=> b!1899098 m!2330267))

(declare-fun m!2330271 () Bool)

(assert (=> b!1899098 m!2330271))

(declare-fun m!2330275 () Bool)

(assert (=> b!1899098 m!2330275))

(assert (=> b!1899099 m!2330263))

(assert (=> b!1899099 m!2330263))

(declare-fun m!2330277 () Bool)

(assert (=> b!1899099 m!2330277))

(assert (=> b!1898722 d!581277))

(declare-fun b!1899101 () Bool)

(declare-fun e!1212714 () Bool)

(declare-fun lt!726221 () Option!4290)

(assert (=> b!1899101 (= e!1212714 (= (tag!4214 (get!6593 lt!726221)) (tag!4214 (rule!5985 (h!26739 tokens!598)))))))

(declare-fun b!1899102 () Bool)

(declare-fun e!1212713 () Option!4290)

(assert (=> b!1899102 (= e!1212713 None!4289)))

(declare-fun b!1899103 () Bool)

(declare-fun e!1212716 () Option!4290)

(assert (=> b!1899103 (= e!1212716 e!1212713)))

(declare-fun c!309577 () Bool)

(assert (=> b!1899103 (= c!309577 (and ((_ is Cons!21339) rules!3198) (not (= (tag!4214 (h!26740 rules!3198)) (tag!4214 (rule!5985 (h!26739 tokens!598)))))))))

(declare-fun d!581285 () Bool)

(declare-fun e!1212715 () Bool)

(assert (=> d!581285 e!1212715))

(declare-fun res!847790 () Bool)

(assert (=> d!581285 (=> res!847790 e!1212715)))

(assert (=> d!581285 (= res!847790 (isEmpty!13095 lt!726221))))

(assert (=> d!581285 (= lt!726221 e!1212716)))

(declare-fun c!309576 () Bool)

(assert (=> d!581285 (= c!309576 (and ((_ is Cons!21339) rules!3198) (= (tag!4214 (h!26740 rules!3198)) (tag!4214 (rule!5985 (h!26739 tokens!598))))))))

(assert (=> d!581285 (rulesInvariant!3012 thiss!23328 rules!3198)))

(assert (=> d!581285 (= (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 (h!26739 tokens!598)))) lt!726221)))

(declare-fun b!1899104 () Bool)

(assert (=> b!1899104 (= e!1212716 (Some!4289 (h!26740 rules!3198)))))

(declare-fun b!1899105 () Bool)

(declare-fun lt!726222 () Unit!35672)

(declare-fun lt!726223 () Unit!35672)

(assert (=> b!1899105 (= lt!726222 lt!726223)))

(assert (=> b!1899105 (rulesInvariant!3012 thiss!23328 (t!176582 rules!3198))))

(assert (=> b!1899105 (= lt!726223 (lemmaInvariantOnRulesThenOnTail!246 thiss!23328 (h!26740 rules!3198) (t!176582 rules!3198)))))

(assert (=> b!1899105 (= e!1212713 (getRuleFromTag!635 thiss!23328 (t!176582 rules!3198) (tag!4214 (rule!5985 (h!26739 tokens!598)))))))

(declare-fun b!1899106 () Bool)

(assert (=> b!1899106 (= e!1212715 e!1212714)))

(declare-fun res!847791 () Bool)

(assert (=> b!1899106 (=> (not res!847791) (not e!1212714))))

(assert (=> b!1899106 (= res!847791 (contains!3841 rules!3198 (get!6593 lt!726221)))))

(assert (= (and d!581285 c!309576) b!1899104))

(assert (= (and d!581285 (not c!309576)) b!1899103))

(assert (= (and b!1899103 c!309577) b!1899105))

(assert (= (and b!1899103 (not c!309577)) b!1899102))

(assert (= (and d!581285 (not res!847790)) b!1899106))

(assert (= (and b!1899106 res!847791) b!1899101))

(declare-fun m!2330283 () Bool)

(assert (=> b!1899101 m!2330283))

(declare-fun m!2330285 () Bool)

(assert (=> d!581285 m!2330285))

(assert (=> d!581285 m!2329881))

(assert (=> b!1899105 m!2330267))

(assert (=> b!1899105 m!2330271))

(declare-fun m!2330287 () Bool)

(assert (=> b!1899105 m!2330287))

(assert (=> b!1899106 m!2330283))

(assert (=> b!1899106 m!2330283))

(declare-fun m!2330289 () Bool)

(assert (=> b!1899106 m!2330289))

(assert (=> b!1898722 d!581285))

(declare-fun d!581289 () Bool)

(declare-fun e!1212717 () Bool)

(assert (=> d!581289 e!1212717))

(declare-fun res!847792 () Bool)

(assert (=> d!581289 (=> (not res!847792) (not e!1212717))))

(assert (=> d!581289 (= res!847792 (isDefined!3587 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 (h!26739 tokens!598))))))))

(declare-fun lt!726224 () Unit!35672)

(assert (=> d!581289 (= lt!726224 (choose!11844 thiss!23328 rules!3198 lt!726099 (h!26739 tokens!598)))))

(assert (=> d!581289 (rulesInvariant!3012 thiss!23328 rules!3198)))

(assert (=> d!581289 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!635 thiss!23328 rules!3198 lt!726099 (h!26739 tokens!598)) lt!726224)))

(declare-fun b!1899107 () Bool)

(declare-fun res!847793 () Bool)

(assert (=> b!1899107 (=> (not res!847793) (not e!1212717))))

(assert (=> b!1899107 (= res!847793 (matchR!2503 (regex!3792 (get!6593 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 (h!26739 tokens!598)))))) (list!8676 (charsOf!2348 (h!26739 tokens!598)))))))

(declare-fun b!1899108 () Bool)

(assert (=> b!1899108 (= e!1212717 (= (rule!5985 (h!26739 tokens!598)) (get!6593 (getRuleFromTag!635 thiss!23328 rules!3198 (tag!4214 (rule!5985 (h!26739 tokens!598)))))))))

(assert (= (and d!581289 res!847792) b!1899107))

(assert (= (and b!1899107 res!847793) b!1899108))

(assert (=> d!581289 m!2329869))

(assert (=> d!581289 m!2329869))

(declare-fun m!2330291 () Bool)

(assert (=> d!581289 m!2330291))

(declare-fun m!2330293 () Bool)

(assert (=> d!581289 m!2330293))

(assert (=> d!581289 m!2329881))

(declare-fun m!2330295 () Bool)

(assert (=> b!1899107 m!2330295))

(declare-fun m!2330297 () Bool)

(assert (=> b!1899107 m!2330297))

(assert (=> b!1899107 m!2329879))

(assert (=> b!1899107 m!2330295))

(assert (=> b!1899107 m!2329869))

(assert (=> b!1899107 m!2329879))

(assert (=> b!1899107 m!2329869))

(declare-fun m!2330299 () Bool)

(assert (=> b!1899107 m!2330299))

(assert (=> b!1899108 m!2329869))

(assert (=> b!1899108 m!2329869))

(assert (=> b!1899108 m!2330299))

(assert (=> b!1898722 d!581289))

(declare-fun b!1899126 () Bool)

(declare-fun res!847805 () Bool)

(declare-fun e!1212728 () Bool)

(assert (=> b!1899126 (=> (not res!847805) (not e!1212728))))

(declare-fun lt!726227 () List!21419)

(assert (=> b!1899126 (= res!847805 (= (size!16880 lt!726227) (+ (size!16880 lt!726099) (size!16880 (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354)))))))

(declare-fun e!1212727 () List!21419)

(declare-fun b!1899124 () Bool)

(assert (=> b!1899124 (= e!1212727 (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354))))

(declare-fun d!581293 () Bool)

(assert (=> d!581293 e!1212728))

(declare-fun res!847806 () Bool)

(assert (=> d!581293 (=> (not res!847806) (not e!1212728))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3133 (List!21419) (InoxSet C!10580))

(assert (=> d!581293 (= res!847806 (= (content!3133 lt!726227) ((_ map or) (content!3133 lt!726099) (content!3133 (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354)))))))

(assert (=> d!581293 (= lt!726227 e!1212727)))

(declare-fun c!309580 () Bool)

(assert (=> d!581293 (= c!309580 ((_ is Nil!21337) lt!726099))))

(assert (=> d!581293 (= (++!5735 lt!726099 (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354)) lt!726227)))

(declare-fun b!1899125 () Bool)

(assert (=> b!1899125 (= e!1212727 (Cons!21337 (h!26738 lt!726099) (++!5735 (t!176580 lt!726099) (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354))))))

(declare-fun b!1899127 () Bool)

(assert (=> b!1899127 (= e!1212728 (or (not (= (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354) Nil!21337)) (= lt!726227 lt!726099)))))

(assert (= (and d!581293 c!309580) b!1899124))

(assert (= (and d!581293 (not c!309580)) b!1899125))

(assert (= (and d!581293 res!847806) b!1899126))

(assert (= (and b!1899126 res!847805) b!1899127))

(declare-fun m!2330305 () Bool)

(assert (=> b!1899126 m!2330305))

(assert (=> b!1899126 m!2330243))

(assert (=> b!1899126 m!2329861))

(declare-fun m!2330307 () Bool)

(assert (=> b!1899126 m!2330307))

(declare-fun m!2330309 () Bool)

(assert (=> d!581293 m!2330309))

(declare-fun m!2330311 () Bool)

(assert (=> d!581293 m!2330311))

(assert (=> d!581293 m!2329861))

(declare-fun m!2330315 () Bool)

(assert (=> d!581293 m!2330315))

(assert (=> b!1899125 m!2329861))

(declare-fun m!2330317 () Bool)

(assert (=> b!1899125 m!2330317))

(assert (=> b!1898722 d!581293))

(declare-fun bs!413538 () Bool)

(declare-fun b!1899290 () Bool)

(assert (= bs!413538 (and b!1899290 b!1898711)))

(declare-fun lambda!74221 () Int)

(assert (=> bs!413538 (not (= lambda!74221 lambda!74191))))

(declare-fun bs!413539 () Bool)

(assert (= bs!413539 (and b!1899290 d!581217)))

(assert (=> bs!413539 (= lambda!74221 lambda!74197)))

(declare-fun b!1899295 () Bool)

(declare-fun e!1212835 () Bool)

(assert (=> b!1899295 (= e!1212835 true)))

(declare-fun b!1899294 () Bool)

(declare-fun e!1212834 () Bool)

(assert (=> b!1899294 (= e!1212834 e!1212835)))

(declare-fun b!1899293 () Bool)

(declare-fun e!1212833 () Bool)

(assert (=> b!1899293 (= e!1212833 e!1212834)))

(assert (=> b!1899290 e!1212833))

(assert (= b!1899294 b!1899295))

(assert (= b!1899293 b!1899294))

(assert (= (and b!1899290 ((_ is Cons!21339) rules!3198)) b!1899293))

(assert (=> b!1899295 (< (dynLambda!10389 order!13487 (toValue!5409 (transformation!3792 (h!26740 rules!3198)))) (dynLambda!10390 order!13489 lambda!74221))))

(assert (=> b!1899295 (< (dynLambda!10391 order!13491 (toChars!5268 (transformation!3792 (h!26740 rules!3198)))) (dynLambda!10390 order!13489 lambda!74221))))

(assert (=> b!1899290 true))

(declare-fun bm!117029 () Bool)

(declare-fun c!309605 () Bool)

(declare-fun c!309603 () Bool)

(assert (=> bm!117029 (= c!309605 c!309603)))

(declare-fun call!117035 () List!21419)

(declare-fun e!1212832 () List!21419)

(declare-fun lt!726251 () List!21419)

(declare-fun call!117034 () List!21419)

(assert (=> bm!117029 (= call!117035 (++!5735 e!1212832 (ite c!309603 lt!726251 call!117034)))))

(declare-fun b!1899285 () Bool)

(declare-fun c!309604 () Bool)

(declare-fun lt!726255 () Option!4289)

(assert (=> b!1899285 (= c!309604 (and ((_ is Some!4288) lt!726255) (not (= (_1!11527 (v!26317 lt!726255)) (h!26739 (t!176581 tokens!598))))))))

(declare-fun e!1212830 () List!21419)

(declare-fun e!1212829 () List!21419)

(assert (=> b!1899285 (= e!1212830 e!1212829)))

(declare-fun d!581297 () Bool)

(declare-fun c!309606 () Bool)

(assert (=> d!581297 (= c!309606 ((_ is Cons!21338) (t!176581 tokens!598)))))

(declare-fun e!1212831 () List!21419)

(assert (=> d!581297 (= (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 tokens!598) separatorToken!354) e!1212831)))

(declare-fun call!117036 () BalanceConc!14018)

(declare-fun call!117037 () BalanceConc!14018)

(declare-fun bm!117030 () Bool)

(declare-fun call!117038 () List!21419)

(assert (=> bm!117030 (= call!117038 (list!8676 (ite c!309603 call!117037 call!117036)))))

(declare-fun bm!117031 () Bool)

(assert (=> bm!117031 (= call!117034 call!117038)))

(declare-fun b!1899286 () Bool)

(assert (=> b!1899286 (= e!1212829 Nil!21337)))

(declare-fun printTailRec!950 (LexerInterface!3405 BalanceConc!14022 Int BalanceConc!14018) BalanceConc!14018)

(assert (=> b!1899286 (= (print!1443 thiss!23328 (singletonSeq!1841 (h!26739 (t!176581 tokens!598)))) (printTailRec!950 thiss!23328 (singletonSeq!1841 (h!26739 (t!176581 tokens!598))) 0 (BalanceConc!14019 Empty!7101)))))

(declare-fun lt!726252 () Unit!35672)

(declare-fun Unit!35676 () Unit!35672)

(assert (=> b!1899286 (= lt!726252 Unit!35676)))

(declare-fun lt!726254 () Unit!35672)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!712 (LexerInterface!3405 List!21421 List!21419 List!21419) Unit!35672)

(assert (=> b!1899286 (= lt!726254 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!712 thiss!23328 rules!3198 call!117034 lt!726251))))

(assert (=> b!1899286 false))

(declare-fun lt!726250 () Unit!35672)

(declare-fun Unit!35677 () Unit!35672)

(assert (=> b!1899286 (= lt!726250 Unit!35677)))

(declare-fun b!1899287 () Bool)

(assert (=> b!1899287 (= e!1212830 call!117035)))

(declare-fun b!1899288 () Bool)

(assert (=> b!1899288 (= e!1212832 call!117038)))

(declare-fun b!1899289 () Bool)

(assert (=> b!1899289 (= e!1212829 (++!5735 call!117035 lt!726251))))

(declare-fun bm!117032 () Bool)

(assert (=> bm!117032 (= call!117037 (charsOf!2348 (ite c!309603 (h!26739 (t!176581 tokens!598)) (ite c!309604 separatorToken!354 (h!26739 (t!176581 tokens!598))))))))

(assert (=> b!1899290 (= e!1212831 e!1212830)))

(declare-fun lt!726253 () Unit!35672)

(declare-fun forallContained!682 (List!21420 Int Token!7136) Unit!35672)

(assert (=> b!1899290 (= lt!726253 (forallContained!682 (t!176581 tokens!598) lambda!74221 (h!26739 (t!176581 tokens!598))))))

(assert (=> b!1899290 (= lt!726251 (printWithSeparatorTokenWhenNeededList!448 thiss!23328 rules!3198 (t!176581 (t!176581 tokens!598)) separatorToken!354))))

(assert (=> b!1899290 (= lt!726255 (maxPrefix!1851 thiss!23328 rules!3198 (++!5735 (list!8676 (charsOf!2348 (h!26739 (t!176581 tokens!598)))) lt!726251)))))

(assert (=> b!1899290 (= c!309603 (and ((_ is Some!4288) lt!726255) (= (_1!11527 (v!26317 lt!726255)) (h!26739 (t!176581 tokens!598)))))))

(declare-fun b!1899291 () Bool)

(assert (=> b!1899291 (= e!1212831 Nil!21337)))

(declare-fun b!1899292 () Bool)

(assert (=> b!1899292 (= e!1212832 (list!8676 (charsOf!2348 (h!26739 (t!176581 tokens!598)))))))

(declare-fun bm!117033 () Bool)

(assert (=> bm!117033 (= call!117036 call!117037)))

(assert (= (and d!581297 c!309606) b!1899290))

(assert (= (and d!581297 (not c!309606)) b!1899291))

(assert (= (and b!1899290 c!309603) b!1899287))

(assert (= (and b!1899290 (not c!309603)) b!1899285))

(assert (= (and b!1899285 c!309604) b!1899289))

(assert (= (and b!1899285 (not c!309604)) b!1899286))

(assert (= (or b!1899289 b!1899286) bm!117033))

(assert (= (or b!1899289 b!1899286) bm!117031))

(assert (= (or b!1899287 bm!117033) bm!117032))

(assert (= (or b!1899287 bm!117031) bm!117030))

(assert (= (or b!1899287 b!1899289) bm!117029))

(assert (= (and bm!117029 c!309605) b!1899288))

(assert (= (and bm!117029 (not c!309605)) b!1899292))

(declare-fun m!2330413 () Bool)

(assert (=> b!1899290 m!2330413))

(declare-fun m!2330415 () Bool)

(assert (=> b!1899290 m!2330415))

(declare-fun m!2330417 () Bool)

(assert (=> b!1899290 m!2330417))

(declare-fun m!2330419 () Bool)

(assert (=> b!1899290 m!2330419))

(declare-fun m!2330421 () Bool)

(assert (=> b!1899290 m!2330421))

(assert (=> b!1899290 m!2330413))

(assert (=> b!1899290 m!2330421))

(assert (=> b!1899290 m!2330415))

(declare-fun m!2330423 () Bool)

(assert (=> b!1899290 m!2330423))

(declare-fun m!2330425 () Bool)

(assert (=> bm!117032 m!2330425))

(declare-fun m!2330427 () Bool)

(assert (=> bm!117030 m!2330427))

(declare-fun m!2330429 () Bool)

(assert (=> b!1899289 m!2330429))

(declare-fun m!2330431 () Bool)

(assert (=> b!1899286 m!2330431))

(assert (=> b!1899286 m!2330431))

(declare-fun m!2330433 () Bool)

(assert (=> b!1899286 m!2330433))

(assert (=> b!1899286 m!2330431))

(declare-fun m!2330435 () Bool)

(assert (=> b!1899286 m!2330435))

(declare-fun m!2330437 () Bool)

(assert (=> b!1899286 m!2330437))

(declare-fun m!2330439 () Bool)

(assert (=> bm!117029 m!2330439))

(assert (=> b!1899292 m!2330421))

(assert (=> b!1899292 m!2330421))

(assert (=> b!1899292 m!2330413))

(assert (=> b!1898722 d!581297))

(declare-fun d!581329 () Bool)

(assert (=> d!581329 (= (isDefined!3587 lt!726089) (not (isEmpty!13095 lt!726089)))))

(declare-fun bs!413540 () Bool)

(assert (= bs!413540 d!581329))

(declare-fun m!2330441 () Bool)

(assert (=> bs!413540 m!2330441))

(assert (=> b!1898722 d!581329))

(declare-fun d!581331 () Bool)

(assert (=> d!581331 (= (isDefined!3588 lt!726094) (not (isEmpty!13096 lt!726094)))))

(declare-fun bs!413541 () Bool)

(assert (= bs!413541 d!581331))

(declare-fun m!2330443 () Bool)

(assert (=> bs!413541 m!2330443))

(assert (=> b!1898722 d!581331))

(declare-fun d!581333 () Bool)

(assert (=> d!581333 (= (list!8676 (charsOf!2348 separatorToken!354)) (list!8679 (c!309512 (charsOf!2348 separatorToken!354))))))

(declare-fun bs!413542 () Bool)

(assert (= bs!413542 d!581333))

(declare-fun m!2330445 () Bool)

(assert (=> bs!413542 m!2330445))

(assert (=> b!1898722 d!581333))

(declare-fun d!581335 () Bool)

(declare-fun lt!726256 () BalanceConc!14018)

(assert (=> d!581335 (= (list!8676 lt!726256) (originalCharacters!4599 (h!26739 tokens!598)))))

(assert (=> d!581335 (= lt!726256 (dynLambda!10385 (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (value!119663 (h!26739 tokens!598))))))

(assert (=> d!581335 (= (charsOf!2348 (h!26739 tokens!598)) lt!726256)))

(declare-fun b_lambda!62551 () Bool)

(assert (=> (not b_lambda!62551) (not d!581335)))

(assert (=> d!581335 t!176584))

(declare-fun b_and!146905 () Bool)

(assert (= b_and!146861 (and (=> t!176584 result!139952) b_and!146905)))

(assert (=> d!581335 t!176586))

(declare-fun b_and!146907 () Bool)

(assert (= b_and!146863 (and (=> t!176586 result!139956) b_and!146907)))

(assert (=> d!581335 t!176588))

(declare-fun b_and!146909 () Bool)

(assert (= b_and!146865 (and (=> t!176588 result!139958) b_and!146909)))

(declare-fun m!2330447 () Bool)

(assert (=> d!581335 m!2330447))

(assert (=> d!581335 m!2329945))

(assert (=> b!1898722 d!581335))

(declare-fun d!581337 () Bool)

(declare-fun fromListB!1214 (List!21419) BalanceConc!14018)

(assert (=> d!581337 (= (seqFromList!2664 (originalCharacters!4599 (h!26739 tokens!598))) (fromListB!1214 (originalCharacters!4599 (h!26739 tokens!598))))))

(declare-fun bs!413543 () Bool)

(assert (= bs!413543 d!581337))

(declare-fun m!2330449 () Bool)

(assert (=> bs!413543 m!2330449))

(assert (=> b!1898722 d!581337))

(declare-fun d!581339 () Bool)

(declare-fun res!847871 () Bool)

(declare-fun e!1212840 () Bool)

(assert (=> d!581339 (=> res!847871 e!1212840)))

(assert (=> d!581339 (= res!847871 ((_ is Nil!21338) tokens!598))))

(assert (=> d!581339 (= (forall!4470 tokens!598 lambda!74191) e!1212840)))

(declare-fun b!1899300 () Bool)

(declare-fun e!1212841 () Bool)

(assert (=> b!1899300 (= e!1212840 e!1212841)))

(declare-fun res!847872 () Bool)

(assert (=> b!1899300 (=> (not res!847872) (not e!1212841))))

(declare-fun dynLambda!10397 (Int Token!7136) Bool)

(assert (=> b!1899300 (= res!847872 (dynLambda!10397 lambda!74191 (h!26739 tokens!598)))))

(declare-fun b!1899301 () Bool)

(assert (=> b!1899301 (= e!1212841 (forall!4470 (t!176581 tokens!598) lambda!74191))))

(assert (= (and d!581339 (not res!847871)) b!1899300))

(assert (= (and b!1899300 res!847872) b!1899301))

(declare-fun b_lambda!62553 () Bool)

(assert (=> (not b_lambda!62553) (not b!1899300)))

(declare-fun m!2330451 () Bool)

(assert (=> b!1899300 m!2330451))

(declare-fun m!2330453 () Bool)

(assert (=> b!1899301 m!2330453))

(assert (=> b!1898711 d!581339))

(declare-fun b!1899312 () Bool)

(declare-fun b_free!53229 () Bool)

(declare-fun b_next!53933 () Bool)

(assert (=> b!1899312 (= b_free!53229 (not b_next!53933))))

(declare-fun tb!115829 () Bool)

(declare-fun t!176675 () Bool)

(assert (=> (and b!1899312 (= (toValue!5409 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176675) tb!115829))

(declare-fun result!140050 () Bool)

(assert (= result!140050 result!139966))

(assert (=> d!581239 t!176675))

(declare-fun t!176677 () Bool)

(declare-fun tb!115831 () Bool)

(assert (=> (and b!1899312 (= (toValue!5409 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176677) tb!115831))

(declare-fun result!140052 () Bool)

(assert (= result!140052 result!139974))

(assert (=> d!581239 t!176677))

(assert (=> d!581243 t!176675))

(declare-fun b_and!146911 () Bool)

(declare-fun tp!542235 () Bool)

(assert (=> b!1899312 (= tp!542235 (and (=> t!176675 result!140050) (=> t!176677 result!140052) b_and!146911))))

(declare-fun b_free!53231 () Bool)

(declare-fun b_next!53935 () Bool)

(assert (=> b!1899312 (= b_free!53231 (not b_next!53935))))

(declare-fun t!176679 () Bool)

(declare-fun tb!115833 () Bool)

(assert (=> (and b!1899312 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176679) tb!115833))

(declare-fun result!140054 () Bool)

(assert (= result!140054 result!139952))

(assert (=> d!581335 t!176679))

(assert (=> b!1898791 t!176679))

(declare-fun t!176681 () Bool)

(declare-fun tb!115835 () Bool)

(assert (=> (and b!1899312 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176681) tb!115835))

(declare-fun result!140056 () Bool)

(assert (= result!140056 result!139980))

(assert (=> d!581243 t!176681))

(declare-fun tb!115837 () Bool)

(declare-fun t!176683 () Bool)

(assert (=> (and b!1899312 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354)))) t!176683) tb!115837))

(declare-fun result!140058 () Bool)

(assert (= result!140058 result!139960))

(assert (=> d!581275 t!176683))

(assert (=> b!1898924 t!176683))

(declare-fun b_and!146913 () Bool)

(declare-fun tp!542238 () Bool)

(assert (=> b!1899312 (= tp!542238 (and (=> t!176679 result!140054) (=> t!176683 result!140058) (=> t!176681 result!140056) b_and!146913))))

(declare-fun e!1212850 () Bool)

(assert (=> b!1899312 (= e!1212850 (and tp!542235 tp!542238))))

(declare-fun tp!542237 () Bool)

(declare-fun b!1899311 () Bool)

(declare-fun e!1212851 () Bool)

(assert (=> b!1899311 (= e!1212851 (and tp!542237 (inv!28433 (tag!4214 (h!26740 (t!176582 rules!3198)))) (inv!28437 (transformation!3792 (h!26740 (t!176582 rules!3198)))) e!1212850))))

(declare-fun b!1899310 () Bool)

(declare-fun e!1212852 () Bool)

(declare-fun tp!542236 () Bool)

(assert (=> b!1899310 (= e!1212852 (and e!1212851 tp!542236))))

(assert (=> b!1898712 (= tp!542148 e!1212852)))

(assert (= b!1899311 b!1899312))

(assert (= b!1899310 b!1899311))

(assert (= (and b!1898712 ((_ is Cons!21339) (t!176582 rules!3198))) b!1899310))

(declare-fun m!2330455 () Bool)

(assert (=> b!1899311 m!2330455))

(declare-fun m!2330457 () Bool)

(assert (=> b!1899311 m!2330457))

(declare-fun b!1899324 () Bool)

(declare-fun e!1212856 () Bool)

(declare-fun tp!542250 () Bool)

(declare-fun tp!542252 () Bool)

(assert (=> b!1899324 (= e!1212856 (and tp!542250 tp!542252))))

(declare-fun b!1899323 () Bool)

(declare-fun tp_is_empty!9077 () Bool)

(assert (=> b!1899323 (= e!1212856 tp_is_empty!9077)))

(declare-fun b!1899326 () Bool)

(declare-fun tp!542249 () Bool)

(declare-fun tp!542251 () Bool)

(assert (=> b!1899326 (= e!1212856 (and tp!542249 tp!542251))))

(assert (=> b!1898727 (= tp!542150 e!1212856)))

(declare-fun b!1899325 () Bool)

(declare-fun tp!542253 () Bool)

(assert (=> b!1899325 (= e!1212856 tp!542253)))

(assert (= (and b!1898727 ((_ is ElementMatch!5217) (regex!3792 (rule!5985 separatorToken!354)))) b!1899323))

(assert (= (and b!1898727 ((_ is Concat!9146) (regex!3792 (rule!5985 separatorToken!354)))) b!1899324))

(assert (= (and b!1898727 ((_ is Star!5217) (regex!3792 (rule!5985 separatorToken!354)))) b!1899325))

(assert (= (and b!1898727 ((_ is Union!5217) (regex!3792 (rule!5985 separatorToken!354)))) b!1899326))

(declare-fun b!1899328 () Bool)

(declare-fun e!1212857 () Bool)

(declare-fun tp!542255 () Bool)

(declare-fun tp!542257 () Bool)

(assert (=> b!1899328 (= e!1212857 (and tp!542255 tp!542257))))

(declare-fun b!1899327 () Bool)

(assert (=> b!1899327 (= e!1212857 tp_is_empty!9077)))

(declare-fun b!1899330 () Bool)

(declare-fun tp!542254 () Bool)

(declare-fun tp!542256 () Bool)

(assert (=> b!1899330 (= e!1212857 (and tp!542254 tp!542256))))

(assert (=> b!1898717 (= tp!542157 e!1212857)))

(declare-fun b!1899329 () Bool)

(declare-fun tp!542258 () Bool)

(assert (=> b!1899329 (= e!1212857 tp!542258)))

(assert (= (and b!1898717 ((_ is ElementMatch!5217) (regex!3792 (rule!5985 (h!26739 tokens!598))))) b!1899327))

(assert (= (and b!1898717 ((_ is Concat!9146) (regex!3792 (rule!5985 (h!26739 tokens!598))))) b!1899328))

(assert (= (and b!1898717 ((_ is Star!5217) (regex!3792 (rule!5985 (h!26739 tokens!598))))) b!1899329))

(assert (= (and b!1898717 ((_ is Union!5217) (regex!3792 (rule!5985 (h!26739 tokens!598))))) b!1899330))

(declare-fun b!1899332 () Bool)

(declare-fun e!1212858 () Bool)

(declare-fun tp!542260 () Bool)

(declare-fun tp!542262 () Bool)

(assert (=> b!1899332 (= e!1212858 (and tp!542260 tp!542262))))

(declare-fun b!1899331 () Bool)

(assert (=> b!1899331 (= e!1212858 tp_is_empty!9077)))

(declare-fun b!1899334 () Bool)

(declare-fun tp!542259 () Bool)

(declare-fun tp!542261 () Bool)

(assert (=> b!1899334 (= e!1212858 (and tp!542259 tp!542261))))

(assert (=> b!1898718 (= tp!542154 e!1212858)))

(declare-fun b!1899333 () Bool)

(declare-fun tp!542263 () Bool)

(assert (=> b!1899333 (= e!1212858 tp!542263)))

(assert (= (and b!1898718 ((_ is ElementMatch!5217) (regex!3792 (h!26740 rules!3198)))) b!1899331))

(assert (= (and b!1898718 ((_ is Concat!9146) (regex!3792 (h!26740 rules!3198)))) b!1899332))

(assert (= (and b!1898718 ((_ is Star!5217) (regex!3792 (h!26740 rules!3198)))) b!1899333))

(assert (= (and b!1898718 ((_ is Union!5217) (regex!3792 (h!26740 rules!3198)))) b!1899334))

(declare-fun b!1899348 () Bool)

(declare-fun b_free!53233 () Bool)

(declare-fun b_next!53937 () Bool)

(assert (=> b!1899348 (= b_free!53233 (not b_next!53937))))

(declare-fun t!176685 () Bool)

(declare-fun tb!115839 () Bool)

(assert (=> (and b!1899348 (= (toValue!5409 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176685) tb!115839))

(declare-fun result!140064 () Bool)

(assert (= result!140064 result!139966))

(assert (=> d!581239 t!176685))

(declare-fun t!176687 () Bool)

(declare-fun tb!115841 () Bool)

(assert (=> (and b!1899348 (= (toValue!5409 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176687) tb!115841))

(declare-fun result!140066 () Bool)

(assert (= result!140066 result!139974))

(assert (=> d!581239 t!176687))

(assert (=> d!581243 t!176685))

(declare-fun b_and!146915 () Bool)

(declare-fun tp!542276 () Bool)

(assert (=> b!1899348 (= tp!542276 (and (=> t!176685 result!140064) (=> t!176687 result!140066) b_and!146915))))

(declare-fun b_free!53235 () Bool)

(declare-fun b_next!53939 () Bool)

(assert (=> b!1899348 (= b_free!53235 (not b_next!53939))))

(declare-fun t!176689 () Bool)

(declare-fun tb!115843 () Bool)

(assert (=> (and b!1899348 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176689) tb!115843))

(declare-fun result!140068 () Bool)

(assert (= result!140068 result!139952))

(assert (=> d!581335 t!176689))

(assert (=> b!1898791 t!176689))

(declare-fun t!176691 () Bool)

(declare-fun tb!115845 () Bool)

(assert (=> (and b!1899348 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598))))) t!176691) tb!115845))

(declare-fun result!140070 () Bool)

(assert (= result!140070 result!139980))

(assert (=> d!581243 t!176691))

(declare-fun tb!115847 () Bool)

(declare-fun t!176693 () Bool)

(assert (=> (and b!1899348 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354)))) t!176693) tb!115847))

(declare-fun result!140072 () Bool)

(assert (= result!140072 result!139960))

(assert (=> d!581275 t!176693))

(assert (=> b!1898924 t!176693))

(declare-fun tp!542275 () Bool)

(declare-fun b_and!146917 () Bool)

(assert (=> b!1899348 (= tp!542275 (and (=> t!176691 result!140070) (=> t!176689 result!140068) (=> t!176693 result!140072) b_and!146917))))

(declare-fun e!1212871 () Bool)

(declare-fun e!1212875 () Bool)

(declare-fun b!1899345 () Bool)

(declare-fun tp!542277 () Bool)

(assert (=> b!1899345 (= e!1212871 (and (inv!28436 (h!26739 (t!176581 tokens!598))) e!1212875 tp!542277))))

(declare-fun e!1212873 () Bool)

(declare-fun e!1212876 () Bool)

(declare-fun tp!542274 () Bool)

(declare-fun b!1899347 () Bool)

(assert (=> b!1899347 (= e!1212876 (and tp!542274 (inv!28433 (tag!4214 (rule!5985 (h!26739 (t!176581 tokens!598))))) (inv!28437 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) e!1212873))))

(declare-fun tp!542278 () Bool)

(declare-fun b!1899346 () Bool)

(assert (=> b!1899346 (= e!1212875 (and (inv!21 (value!119663 (h!26739 (t!176581 tokens!598)))) e!1212876 tp!542278))))

(assert (=> b!1899348 (= e!1212873 (and tp!542276 tp!542275))))

(assert (=> b!1898707 (= tp!542158 e!1212871)))

(assert (= b!1899347 b!1899348))

(assert (= b!1899346 b!1899347))

(assert (= b!1899345 b!1899346))

(assert (= (and b!1898707 ((_ is Cons!21338) (t!176581 tokens!598))) b!1899345))

(declare-fun m!2330459 () Bool)

(assert (=> b!1899345 m!2330459))

(declare-fun m!2330461 () Bool)

(assert (=> b!1899347 m!2330461))

(declare-fun m!2330463 () Bool)

(assert (=> b!1899347 m!2330463))

(declare-fun m!2330465 () Bool)

(assert (=> b!1899346 m!2330465))

(declare-fun b!1899353 () Bool)

(declare-fun e!1212879 () Bool)

(declare-fun tp!542281 () Bool)

(assert (=> b!1899353 (= e!1212879 (and tp_is_empty!9077 tp!542281))))

(assert (=> b!1898708 (= tp!542153 e!1212879)))

(assert (= (and b!1898708 ((_ is Cons!21337) (originalCharacters!4599 separatorToken!354))) b!1899353))

(declare-fun b!1899354 () Bool)

(declare-fun e!1212880 () Bool)

(declare-fun tp!542282 () Bool)

(assert (=> b!1899354 (= e!1212880 (and tp_is_empty!9077 tp!542282))))

(assert (=> b!1898720 (= tp!542156 e!1212880)))

(assert (= (and b!1898720 ((_ is Cons!21337) (originalCharacters!4599 (h!26739 tokens!598)))) b!1899354))

(declare-fun b_lambda!62555 () Bool)

(assert (= b_lambda!62551 (or (and b!1898716 b_free!53211 (= (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899312 b_free!53231 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899348 b_free!53235 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898715 b_free!53215 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898710 b_free!53219) b_lambda!62555)))

(declare-fun b_lambda!62557 () Bool)

(assert (= b_lambda!62519 (or (and b!1898710 b_free!53219 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) (and b!1898716 b_free!53211) (and b!1899348 b_free!53235 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) (and b!1899312 b_free!53231 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) (and b!1898715 b_free!53215 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) b_lambda!62557)))

(declare-fun b_lambda!62559 () Bool)

(assert (= b_lambda!62505 (or (and b!1898710 b_free!53217) (and b!1899348 b_free!53233 (= (toValue!5409 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898716 b_free!53209 (= (toValue!5409 (transformation!3792 (rule!5985 separatorToken!354))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898715 b_free!53213 (= (toValue!5409 (transformation!3792 (h!26740 rules!3198))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899312 b_free!53229 (= (toValue!5409 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) b_lambda!62559)))

(declare-fun b_lambda!62561 () Bool)

(assert (= b_lambda!62503 (or (and b!1898710 b_free!53219 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) (and b!1898716 b_free!53211) (and b!1899348 b_free!53235 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) (and b!1899312 b_free!53231 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) (and b!1898715 b_free!53215 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))))) b_lambda!62561)))

(declare-fun b_lambda!62563 () Bool)

(assert (= b_lambda!62509 (or (and b!1898716 b_free!53211 (= (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899312 b_free!53231 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899348 b_free!53235 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898715 b_free!53215 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898710 b_free!53219) b_lambda!62563)))

(declare-fun b_lambda!62565 () Bool)

(assert (= b_lambda!62501 (or (and b!1898716 b_free!53211 (= (toChars!5268 (transformation!3792 (rule!5985 separatorToken!354))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899312 b_free!53231 (= (toChars!5268 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899348 b_free!53235 (= (toChars!5268 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898715 b_free!53215 (= (toChars!5268 (transformation!3792 (h!26740 rules!3198))) (toChars!5268 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898710 b_free!53219) b_lambda!62565)))

(declare-fun b_lambda!62567 () Bool)

(assert (= b_lambda!62511 (or (and b!1898710 b_free!53217) (and b!1899348 b_free!53233 (= (toValue!5409 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898716 b_free!53209 (= (toValue!5409 (transformation!3792 (rule!5985 separatorToken!354))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898715 b_free!53213 (= (toValue!5409 (transformation!3792 (h!26740 rules!3198))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899312 b_free!53229 (= (toValue!5409 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) b_lambda!62567)))

(declare-fun b_lambda!62569 () Bool)

(assert (= b_lambda!62507 (or (and b!1898710 b_free!53217) (and b!1899348 b_free!53233 (= (toValue!5409 (transformation!3792 (rule!5985 (h!26739 (t!176581 tokens!598))))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898716 b_free!53209 (= (toValue!5409 (transformation!3792 (rule!5985 separatorToken!354))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1898715 b_free!53213 (= (toValue!5409 (transformation!3792 (h!26740 rules!3198))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) (and b!1899312 b_free!53229 (= (toValue!5409 (transformation!3792 (h!26740 (t!176582 rules!3198)))) (toValue!5409 (transformation!3792 (rule!5985 (h!26739 tokens!598)))))) b_lambda!62569)))

(declare-fun b_lambda!62571 () Bool)

(assert (= b_lambda!62553 (or b!1898711 b_lambda!62571)))

(declare-fun bs!413544 () Bool)

(declare-fun d!581341 () Bool)

(assert (= bs!413544 (and d!581341 b!1898711)))

(assert (=> bs!413544 (= (dynLambda!10397 lambda!74191 (h!26739 tokens!598)) (not (isSeparator!3792 (rule!5985 (h!26739 tokens!598)))))))

(assert (=> b!1899300 d!581341))

(check-sat (not b!1899059) (not b_next!53933) (not b!1899332) (not b!1899062) (not b!1899330) b_and!146905 (not b!1899325) (not b!1898974) (not b!1898988) (not b_lambda!62569) (not b!1899329) (not d!581331) (not b!1899101) (not b_next!53937) (not d!581241) (not b!1898775) (not b_lambda!62563) (not b_lambda!62557) b_and!146839 (not d!581277) (not b_next!53921) (not b!1898824) (not bm!117032) b_and!146913 (not b!1899286) b_and!146915 (not b!1898791) (not b_lambda!62561) (not d!581237) (not b!1898797) (not b_next!53919) (not b!1898781) (not tb!115767) (not d!581217) (not b!1898905) (not d!581255) (not b!1898921) (not d!581197) (not d!581235) (not b!1898735) (not d!581191) (not b_next!53935) (not b!1899326) (not d!581329) (not b!1898818) (not b!1899094) (not b!1898911) (not b!1898810) (not b!1899098) (not b!1899301) (not d!581253) (not b!1898957) (not b!1899353) (not b_next!53915) (not b!1898923) (not d!581289) (not b_lambda!62559) (not b!1899105) (not b!1898786) (not d!581337) (not b!1898817) (not d!581293) (not b!1898912) (not b!1898896) (not d!581275) (not b!1898925) (not b!1898924) (not d!581209) (not d!581207) (not b!1899310) (not b_lambda!62571) (not b!1898895) (not b!1898782) (not d!581245) (not d!581213) (not b!1899334) b_and!146837 (not b_lambda!62565) b_and!146917 (not tb!115749) (not b!1899293) (not b_next!53923) (not b!1899107) (not bm!116992) (not b!1899061) (not b!1898809) (not b!1898820) (not tb!115761) (not b!1898973) (not b!1898926) b_and!146907 (not b!1899292) (not bm!117030) b_and!146911 (not d!581203) b_and!146841 (not b!1899346) (not d!581195) (not b!1898783) (not b!1898989) (not b_next!53939) (not b!1898785) (not b!1899057) (not b!1899354) (not b!1899060) (not b!1899125) (not b!1899347) (not b!1898776) (not b!1899064) (not b!1899290) (not tb!115773) (not bm!116993) (not b!1899333) (not d!581239) (not b!1899324) (not bm!117014) (not b_lambda!62555) (not b!1899108) (not d!581333) (not b!1899063) (not bm!117029) (not b!1899345) b_and!146909 (not b!1898736) (not d!581335) (not b!1899328) (not d!581243) (not b!1899099) (not b!1899058) (not b!1899106) (not b!1898811) (not b_next!53917) tp_is_empty!9077 (not b!1898825) (not b!1898742) (not d!581285) (not b!1899289) (not b!1898778) (not b_lambda!62567) (not d!581251) (not tb!115755) (not b!1898823) (not b!1898922) (not b_next!53913) (not b!1899311) (not b!1899126) (not b!1898739) (not b!1898913) (not b!1898792))
(check-sat b_and!146905 (not b_next!53937) (not b_next!53919) (not b_next!53935) (not b_next!53915) (not b_next!53923) b_and!146907 (not b_next!53939) b_and!146909 (not b_next!53917) (not b_next!53933) (not b_next!53913) b_and!146839 (not b_next!53921) b_and!146913 b_and!146915 b_and!146837 b_and!146917 b_and!146911 b_and!146841)
