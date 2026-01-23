; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189834 () Bool)

(assert start!189834)

(declare-fun b!1894272 () Bool)

(declare-fun b_free!52829 () Bool)

(declare-fun b_next!53533 () Bool)

(assert (=> b!1894272 (= b_free!52829 (not b_next!53533))))

(declare-fun tp!540464 () Bool)

(declare-fun b_and!145899 () Bool)

(assert (=> b!1894272 (= tp!540464 b_and!145899)))

(declare-fun b_free!52831 () Bool)

(declare-fun b_next!53535 () Bool)

(assert (=> b!1894272 (= b_free!52831 (not b_next!53535))))

(declare-fun tp!540471 () Bool)

(declare-fun b_and!145901 () Bool)

(assert (=> b!1894272 (= tp!540471 b_and!145901)))

(declare-fun b!1894268 () Bool)

(declare-fun b_free!52833 () Bool)

(declare-fun b_next!53537 () Bool)

(assert (=> b!1894268 (= b_free!52833 (not b_next!53537))))

(declare-fun tp!540463 () Bool)

(declare-fun b_and!145903 () Bool)

(assert (=> b!1894268 (= tp!540463 b_and!145903)))

(declare-fun b_free!52835 () Bool)

(declare-fun b_next!53539 () Bool)

(assert (=> b!1894268 (= b_free!52835 (not b_next!53539))))

(declare-fun tp!540469 () Bool)

(declare-fun b_and!145905 () Bool)

(assert (=> b!1894268 (= tp!540469 b_and!145905)))

(declare-fun b!1894267 () Bool)

(declare-fun b_free!52837 () Bool)

(declare-fun b_next!53541 () Bool)

(assert (=> b!1894267 (= b_free!52837 (not b_next!53541))))

(declare-fun tp!540467 () Bool)

(declare-fun b_and!145907 () Bool)

(assert (=> b!1894267 (= tp!540467 b_and!145907)))

(declare-fun b_free!52839 () Bool)

(declare-fun b_next!53543 () Bool)

(assert (=> b!1894267 (= b_free!52839 (not b_next!53543))))

(declare-fun tp!540466 () Bool)

(declare-fun b_and!145909 () Bool)

(assert (=> b!1894267 (= tp!540466 b_and!145909)))

(declare-fun b!1894257 () Bool)

(declare-fun res!845454 () Bool)

(declare-fun e!1209232 () Bool)

(assert (=> b!1894257 (=> (not res!845454) (not e!1209232))))

(declare-datatypes ((List!21310 0))(
  ( (Nil!21228) (Cons!21228 (h!26629 (_ BitVec 16)) (t!175975 List!21310)) )
))
(declare-datatypes ((TokenValue!3903 0))(
  ( (FloatLiteralValue!7806 (text!27766 List!21310)) (TokenValueExt!3902 (__x!13304 Int)) (Broken!19515 (value!118926 List!21310)) (Object!3984) (End!3903) (Def!3903) (Underscore!3903) (Match!3903) (Else!3903) (Error!3903) (Case!3903) (If!3903) (Extends!3903) (Abstract!3903) (Class!3903) (Val!3903) (DelimiterValue!7806 (del!3963 List!21310)) (KeywordValue!3909 (value!118927 List!21310)) (CommentValue!7806 (value!118928 List!21310)) (WhitespaceValue!7806 (value!118929 List!21310)) (IndentationValue!3903 (value!118930 List!21310)) (String!24634) (Int32!3903) (Broken!19516 (value!118931 List!21310)) (Boolean!3904) (Unit!35596) (OperatorValue!3906 (op!3963 List!21310)) (IdentifierValue!7806 (value!118932 List!21310)) (IdentifierValue!7807 (value!118933 List!21310)) (WhitespaceValue!7807 (value!118934 List!21310)) (True!7806) (False!7806) (Broken!19517 (value!118935 List!21310)) (Broken!19518 (value!118936 List!21310)) (True!7807) (RightBrace!3903) (RightBracket!3903) (Colon!3903) (Null!3903) (Comma!3903) (LeftBracket!3903) (False!7807) (LeftBrace!3903) (ImaginaryLiteralValue!3903 (text!27767 List!21310)) (StringLiteralValue!11709 (value!118937 List!21310)) (EOFValue!3903 (value!118938 List!21310)) (IdentValue!3903 (value!118939 List!21310)) (DelimiterValue!7807 (value!118940 List!21310)) (DedentValue!3903 (value!118941 List!21310)) (NewLineValue!3903 (value!118942 List!21310)) (IntegerValue!11709 (value!118943 (_ BitVec 32)) (text!27768 List!21310)) (IntegerValue!11710 (value!118944 Int) (text!27769 List!21310)) (Times!3903) (Or!3903) (Equal!3903) (Minus!3903) (Broken!19519 (value!118945 List!21310)) (And!3903) (Div!3903) (LessEqual!3903) (Mod!3903) (Concat!9095) (Not!3903) (Plus!3903) (SpaceValue!3903 (value!118946 List!21310)) (IntegerValue!11711 (value!118947 Int) (text!27770 List!21310)) (StringLiteralValue!11710 (text!27771 List!21310)) (FloatLiteralValue!7807 (text!27772 List!21310)) (BytesLiteralValue!3903 (value!118948 List!21310)) (CommentValue!7807 (value!118949 List!21310)) (StringLiteralValue!11711 (value!118950 List!21310)) (ErrorTokenValue!3903 (msg!3964 List!21310)) )
))
(declare-datatypes ((C!10530 0))(
  ( (C!10531 (val!6217 Int)) )
))
(declare-datatypes ((List!21311 0))(
  ( (Nil!21229) (Cons!21229 (h!26630 C!10530) (t!175976 List!21311)) )
))
(declare-datatypes ((IArray!14141 0))(
  ( (IArray!14142 (innerList!7128 List!21311)) )
))
(declare-datatypes ((Conc!7068 0))(
  ( (Node!7068 (left!17034 Conc!7068) (right!17364 Conc!7068) (csize!14366 Int) (cheight!7279 Int)) (Leaf!10415 (xs!9962 IArray!14141) (csize!14367 Int)) (Empty!7068) )
))
(declare-datatypes ((BalanceConc!13952 0))(
  ( (BalanceConc!13953 (c!309080 Conc!7068)) )
))
(declare-datatypes ((TokenValueInjection!7390 0))(
  ( (TokenValueInjection!7391 (toValue!5380 Int) (toChars!5239 Int)) )
))
(declare-datatypes ((String!24635 0))(
  ( (String!24636 (value!118951 String)) )
))
(declare-datatypes ((Regex!5192 0))(
  ( (ElementMatch!5192 (c!309081 C!10530)) (Concat!9096 (regOne!10896 Regex!5192) (regTwo!10896 Regex!5192)) (EmptyExpr!5192) (Star!5192 (reg!5521 Regex!5192)) (EmptyLang!5192) (Union!5192 (regOne!10897 Regex!5192) (regTwo!10897 Regex!5192)) )
))
(declare-datatypes ((Rule!7334 0))(
  ( (Rule!7335 (regex!3767 Regex!5192) (tag!4181 String!24635) (isSeparator!3767 Bool) (transformation!3767 TokenValueInjection!7390)) )
))
(declare-datatypes ((List!21312 0))(
  ( (Nil!21230) (Cons!21230 (h!26631 Rule!7334) (t!175977 List!21312)) )
))
(declare-fun rules!3198 () List!21312)

(declare-fun isEmpty!13031 (List!21312) Bool)

(assert (=> b!1894257 (= res!845454 (not (isEmpty!13031 rules!3198)))))

(declare-fun res!845458 () Bool)

(assert (=> start!189834 (=> (not res!845458) (not e!1209232))))

(declare-datatypes ((LexerInterface!3380 0))(
  ( (LexerInterfaceExt!3377 (__x!13305 Int)) (Lexer!3378) )
))
(declare-fun thiss!23328 () LexerInterface!3380)

(assert (=> start!189834 (= res!845458 (is-Lexer!3378 thiss!23328))))

(assert (=> start!189834 e!1209232))

(assert (=> start!189834 true))

(declare-fun e!1209240 () Bool)

(assert (=> start!189834 e!1209240))

(declare-fun e!1209236 () Bool)

(assert (=> start!189834 e!1209236))

(declare-datatypes ((Token!7086 0))(
  ( (Token!7087 (value!118952 TokenValue!3903) (rule!5960 Rule!7334) (size!16831 Int) (originalCharacters!4574 List!21311)) )
))
(declare-fun separatorToken!354 () Token!7086)

(declare-fun e!1209245 () Bool)

(declare-fun inv!28328 (Token!7086) Bool)

(assert (=> start!189834 (and (inv!28328 separatorToken!354) e!1209245)))

(declare-fun e!1209231 () Bool)

(declare-fun b!1894258 () Bool)

(declare-fun tp!540465 () Bool)

(declare-fun e!1209237 () Bool)

(declare-fun inv!28325 (String!24635) Bool)

(declare-fun inv!28329 (TokenValueInjection!7390) Bool)

(assert (=> b!1894258 (= e!1209231 (and tp!540465 (inv!28325 (tag!4181 (rule!5960 separatorToken!354))) (inv!28329 (transformation!3767 (rule!5960 separatorToken!354))) e!1209237))))

(declare-fun b!1894259 () Bool)

(declare-fun e!1209244 () Bool)

(declare-fun tp!540460 () Bool)

(assert (=> b!1894259 (= e!1209240 (and e!1209244 tp!540460))))

(declare-fun b!1894260 () Bool)

(declare-fun res!845452 () Bool)

(assert (=> b!1894260 (=> (not res!845452) (not e!1209232))))

(declare-fun rulesInvariant!2987 (LexerInterface!3380 List!21312) Bool)

(assert (=> b!1894260 (= res!845452 (rulesInvariant!2987 thiss!23328 rules!3198))))

(declare-fun b!1894261 () Bool)

(declare-fun rulesValidInductive!1273 (LexerInterface!3380 List!21312) Bool)

(assert (=> b!1894261 (= e!1209232 (not (rulesValidInductive!1273 thiss!23328 rules!3198)))))

(declare-fun lt!724816 () List!21311)

(declare-fun lt!724809 () BalanceConc!13952)

(declare-fun list!8631 (BalanceConc!13952) List!21311)

(assert (=> b!1894261 (= lt!724816 (list!8631 lt!724809))))

(declare-fun e!1209246 () Bool)

(assert (=> b!1894261 e!1209246))

(declare-fun res!845451 () Bool)

(assert (=> b!1894261 (=> (not res!845451) (not e!1209246))))

(declare-datatypes ((Option!4243 0))(
  ( (None!4242) (Some!4242 (v!26267 Rule!7334)) )
))
(declare-fun lt!724815 () Option!4243)

(declare-fun isDefined!3541 (Option!4243) Bool)

(assert (=> b!1894261 (= res!845451 (isDefined!3541 lt!724815))))

(declare-fun getRuleFromTag!610 (LexerInterface!3380 List!21312 String!24635) Option!4243)

(assert (=> b!1894261 (= lt!724815 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))))

(declare-datatypes ((Unit!35597 0))(
  ( (Unit!35598) )
))
(declare-fun lt!724811 () Unit!35597)

(declare-fun lt!724813 () List!21311)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!610 (LexerInterface!3380 List!21312 List!21311 Token!7086) Unit!35597)

(assert (=> b!1894261 (= lt!724811 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!610 thiss!23328 rules!3198 lt!724813 separatorToken!354))))

(declare-fun charsOf!2323 (Token!7086) BalanceConc!13952)

(assert (=> b!1894261 (= lt!724813 (list!8631 (charsOf!2323 separatorToken!354)))))

(declare-fun lt!724810 () Unit!35597)

(declare-datatypes ((List!21313 0))(
  ( (Nil!21231) (Cons!21231 (h!26632 Token!7086) (t!175978 List!21313)) )
))
(declare-fun tokens!598 () List!21313)

(declare-fun lemmaEqSameImage!475 (TokenValueInjection!7390 BalanceConc!13952 BalanceConc!13952) Unit!35597)

(declare-fun seqFromList!2639 (List!21311) BalanceConc!13952)

(assert (=> b!1894261 (= lt!724810 (lemmaEqSameImage!475 (transformation!3767 (rule!5960 (h!26632 tokens!598))) lt!724809 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))))))

(declare-fun lt!724814 () Unit!35597)

(declare-fun lemmaSemiInverse!746 (TokenValueInjection!7390 BalanceConc!13952) Unit!35597)

(assert (=> b!1894261 (= lt!724814 (lemmaSemiInverse!746 (transformation!3767 (rule!5960 (h!26632 tokens!598))) lt!724809))))

(assert (=> b!1894261 (= lt!724809 (charsOf!2323 (h!26632 tokens!598)))))

(declare-fun b!1894262 () Bool)

(declare-fun res!845456 () Bool)

(assert (=> b!1894262 (=> (not res!845456) (not e!1209232))))

(declare-fun rulesProduceIndividualToken!1552 (LexerInterface!3380 List!21312 Token!7086) Bool)

(assert (=> b!1894262 (= res!845456 (rulesProduceIndividualToken!1552 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1894263 () Bool)

(declare-fun e!1209230 () Bool)

(declare-fun tp!540461 () Bool)

(declare-fun e!1209243 () Bool)

(declare-fun inv!21 (TokenValue!3903) Bool)

(assert (=> b!1894263 (= e!1209243 (and (inv!21 (value!118952 (h!26632 tokens!598))) e!1209230 tp!540461))))

(declare-fun b!1894264 () Bool)

(declare-fun res!845455 () Bool)

(assert (=> b!1894264 (=> (not res!845455) (not e!1209232))))

(declare-fun sepAndNonSepRulesDisjointChars!865 (List!21312 List!21312) Bool)

(assert (=> b!1894264 (= res!845455 (sepAndNonSepRulesDisjointChars!865 rules!3198 rules!3198))))

(declare-fun b!1894265 () Bool)

(declare-fun tp!540468 () Bool)

(assert (=> b!1894265 (= e!1209236 (and (inv!28328 (h!26632 tokens!598)) e!1209243 tp!540468))))

(declare-fun b!1894266 () Bool)

(declare-fun res!845450 () Bool)

(assert (=> b!1894266 (=> (not res!845450) (not e!1209232))))

(declare-fun rulesProduceEachTokenIndividuallyList!1111 (LexerInterface!3380 List!21312 List!21313) Bool)

(assert (=> b!1894266 (= res!845450 (rulesProduceEachTokenIndividuallyList!1111 thiss!23328 rules!3198 tokens!598))))

(assert (=> b!1894267 (= e!1209237 (and tp!540467 tp!540466))))

(declare-fun e!1209238 () Bool)

(assert (=> b!1894268 (= e!1209238 (and tp!540463 tp!540469))))

(declare-fun b!1894269 () Bool)

(declare-fun res!845457 () Bool)

(assert (=> b!1894269 (=> (not res!845457) (not e!1209232))))

(declare-fun lambda!73994 () Int)

(declare-fun forall!4441 (List!21313 Int) Bool)

(assert (=> b!1894269 (= res!845457 (forall!4441 tokens!598 lambda!73994))))

(declare-fun e!1209235 () Bool)

(declare-fun tp!540459 () Bool)

(declare-fun b!1894270 () Bool)

(assert (=> b!1894270 (= e!1209244 (and tp!540459 (inv!28325 (tag!4181 (h!26631 rules!3198))) (inv!28329 (transformation!3767 (h!26631 rules!3198))) e!1209235))))

(declare-fun b!1894271 () Bool)

(declare-fun res!845453 () Bool)

(assert (=> b!1894271 (=> (not res!845453) (not e!1209232))))

(assert (=> b!1894271 (= res!845453 (is-Cons!21231 tokens!598))))

(assert (=> b!1894272 (= e!1209235 (and tp!540464 tp!540471))))

(declare-fun b!1894273 () Bool)

(declare-fun res!845449 () Bool)

(assert (=> b!1894273 (=> (not res!845449) (not e!1209232))))

(assert (=> b!1894273 (= res!845449 (isSeparator!3767 (rule!5960 separatorToken!354)))))

(declare-fun b!1894274 () Bool)

(declare-fun tp!540470 () Bool)

(assert (=> b!1894274 (= e!1209230 (and tp!540470 (inv!28325 (tag!4181 (rule!5960 (h!26632 tokens!598)))) (inv!28329 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) e!1209238))))

(declare-fun b!1894275 () Bool)

(declare-fun e!1209241 () Bool)

(assert (=> b!1894275 (= e!1209246 e!1209241)))

(declare-fun res!845448 () Bool)

(assert (=> b!1894275 (=> (not res!845448) (not e!1209241))))

(declare-fun lt!724812 () Rule!7334)

(declare-fun matchR!2478 (Regex!5192 List!21311) Bool)

(assert (=> b!1894275 (= res!845448 (matchR!2478 (regex!3767 lt!724812) lt!724813))))

(declare-fun get!6538 (Option!4243) Rule!7334)

(assert (=> b!1894275 (= lt!724812 (get!6538 lt!724815))))

(declare-fun tp!540462 () Bool)

(declare-fun b!1894276 () Bool)

(assert (=> b!1894276 (= e!1209245 (and (inv!21 (value!118952 separatorToken!354)) e!1209231 tp!540462))))

(declare-fun b!1894277 () Bool)

(assert (=> b!1894277 (= e!1209241 (= (rule!5960 separatorToken!354) lt!724812))))

(assert (= (and start!189834 res!845458) b!1894257))

(assert (= (and b!1894257 res!845454) b!1894260))

(assert (= (and b!1894260 res!845452) b!1894266))

(assert (= (and b!1894266 res!845450) b!1894262))

(assert (= (and b!1894262 res!845456) b!1894273))

(assert (= (and b!1894273 res!845449) b!1894269))

(assert (= (and b!1894269 res!845457) b!1894264))

(assert (= (and b!1894264 res!845455) b!1894271))

(assert (= (and b!1894271 res!845453) b!1894261))

(assert (= (and b!1894261 res!845451) b!1894275))

(assert (= (and b!1894275 res!845448) b!1894277))

(assert (= b!1894270 b!1894272))

(assert (= b!1894259 b!1894270))

(assert (= (and start!189834 (is-Cons!21230 rules!3198)) b!1894259))

(assert (= b!1894274 b!1894268))

(assert (= b!1894263 b!1894274))

(assert (= b!1894265 b!1894263))

(assert (= (and start!189834 (is-Cons!21231 tokens!598)) b!1894265))

(assert (= b!1894258 b!1894267))

(assert (= b!1894276 b!1894258))

(assert (= start!189834 b!1894276))

(declare-fun m!2325703 () Bool)

(assert (=> b!1894263 m!2325703))

(declare-fun m!2325705 () Bool)

(assert (=> b!1894261 m!2325705))

(declare-fun m!2325707 () Bool)

(assert (=> b!1894261 m!2325707))

(declare-fun m!2325709 () Bool)

(assert (=> b!1894261 m!2325709))

(declare-fun m!2325711 () Bool)

(assert (=> b!1894261 m!2325711))

(assert (=> b!1894261 m!2325709))

(declare-fun m!2325713 () Bool)

(assert (=> b!1894261 m!2325713))

(declare-fun m!2325715 () Bool)

(assert (=> b!1894261 m!2325715))

(declare-fun m!2325717 () Bool)

(assert (=> b!1894261 m!2325717))

(declare-fun m!2325719 () Bool)

(assert (=> b!1894261 m!2325719))

(assert (=> b!1894261 m!2325717))

(declare-fun m!2325721 () Bool)

(assert (=> b!1894261 m!2325721))

(declare-fun m!2325723 () Bool)

(assert (=> b!1894261 m!2325723))

(declare-fun m!2325725 () Bool)

(assert (=> b!1894261 m!2325725))

(declare-fun m!2325727 () Bool)

(assert (=> b!1894258 m!2325727))

(declare-fun m!2325729 () Bool)

(assert (=> b!1894258 m!2325729))

(declare-fun m!2325731 () Bool)

(assert (=> b!1894257 m!2325731))

(declare-fun m!2325733 () Bool)

(assert (=> b!1894270 m!2325733))

(declare-fun m!2325735 () Bool)

(assert (=> b!1894270 m!2325735))

(declare-fun m!2325737 () Bool)

(assert (=> start!189834 m!2325737))

(declare-fun m!2325739 () Bool)

(assert (=> b!1894265 m!2325739))

(declare-fun m!2325741 () Bool)

(assert (=> b!1894264 m!2325741))

(declare-fun m!2325743 () Bool)

(assert (=> b!1894262 m!2325743))

(declare-fun m!2325745 () Bool)

(assert (=> b!1894260 m!2325745))

(declare-fun m!2325747 () Bool)

(assert (=> b!1894274 m!2325747))

(declare-fun m!2325749 () Bool)

(assert (=> b!1894274 m!2325749))

(declare-fun m!2325751 () Bool)

(assert (=> b!1894276 m!2325751))

(declare-fun m!2325753 () Bool)

(assert (=> b!1894266 m!2325753))

(declare-fun m!2325755 () Bool)

(assert (=> b!1894269 m!2325755))

(declare-fun m!2325757 () Bool)

(assert (=> b!1894275 m!2325757))

(declare-fun m!2325759 () Bool)

(assert (=> b!1894275 m!2325759))

(push 1)

(assert (not b_next!53543))

(assert (not b!1894275))

(assert (not b!1894274))

(assert (not b!1894266))

(assert (not b_next!53533))

(assert (not b!1894257))

(assert (not b_next!53539))

(assert (not b!1894261))

(assert (not b!1894258))

(assert (not b_next!53535))

(assert (not b!1894263))

(assert b_and!145903)

(assert (not b!1894265))

(assert b_and!145909)

(assert b_and!145907)

(assert (not b!1894262))

(assert (not b!1894270))

(assert (not b_next!53541))

(assert (not b!1894264))

(assert (not b!1894260))

(assert b_and!145905)

(assert b_and!145899)

(assert (not start!189834))

(assert b_and!145901)

(assert (not b_next!53537))

(assert (not b!1894269))

(assert (not b!1894259))

(assert (not b!1894276))

(check-sat)

(pop 1)

(push 1)

(assert b_and!145909)

(assert (not b_next!53543))

(assert b_and!145907)

(assert (not b_next!53541))

(assert (not b_next!53533))

(assert (not b_next!53539))

(assert (not b_next!53535))

(assert b_and!145903)

(assert b_and!145905)

(assert b_and!145899)

(assert b_and!145901)

(assert (not b_next!53537))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1894370 () Bool)

(declare-fun res!845523 () Bool)

(declare-fun e!1209316 () Bool)

(assert (=> b!1894370 (=> res!845523 e!1209316)))

(declare-fun e!1209321 () Bool)

(assert (=> b!1894370 (= res!845523 e!1209321)))

(declare-fun res!845517 () Bool)

(assert (=> b!1894370 (=> (not res!845517) (not e!1209321))))

(declare-fun lt!724843 () Bool)

(assert (=> b!1894370 (= res!845517 lt!724843)))

(declare-fun b!1894371 () Bool)

(declare-fun e!1209318 () Bool)

(declare-fun e!1209319 () Bool)

(assert (=> b!1894371 (= e!1209318 e!1209319)))

(declare-fun c!309093 () Bool)

(assert (=> b!1894371 (= c!309093 (is-EmptyLang!5192 (regex!3767 lt!724812)))))

(declare-fun b!1894372 () Bool)

(declare-fun e!1209315 () Bool)

(declare-fun derivativeStep!1335 (Regex!5192 C!10530) Regex!5192)

(declare-fun head!4403 (List!21311) C!10530)

(declare-fun tail!2929 (List!21311) List!21311)

(assert (=> b!1894372 (= e!1209315 (matchR!2478 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813)) (tail!2929 lt!724813)))))

(declare-fun b!1894373 () Bool)

(declare-fun res!845519 () Bool)

(declare-fun e!1209317 () Bool)

(assert (=> b!1894373 (=> res!845519 e!1209317)))

(declare-fun isEmpty!13033 (List!21311) Bool)

(assert (=> b!1894373 (= res!845519 (not (isEmpty!13033 (tail!2929 lt!724813))))))

(declare-fun b!1894374 () Bool)

(declare-fun res!845518 () Bool)

(assert (=> b!1894374 (=> (not res!845518) (not e!1209321))))

(assert (=> b!1894374 (= res!845518 (isEmpty!13033 (tail!2929 lt!724813)))))

(declare-fun b!1894375 () Bool)

(declare-fun res!845516 () Bool)

(assert (=> b!1894375 (=> res!845516 e!1209316)))

(assert (=> b!1894375 (= res!845516 (not (is-ElementMatch!5192 (regex!3767 lt!724812))))))

(assert (=> b!1894375 (= e!1209319 e!1209316)))

(declare-fun bm!116894 () Bool)

(declare-fun call!116899 () Bool)

(assert (=> bm!116894 (= call!116899 (isEmpty!13033 lt!724813))))

(declare-fun b!1894376 () Bool)

(assert (=> b!1894376 (= e!1209317 (not (= (head!4403 lt!724813) (c!309081 (regex!3767 lt!724812)))))))

(declare-fun b!1894377 () Bool)

(assert (=> b!1894377 (= e!1209321 (= (head!4403 lt!724813) (c!309081 (regex!3767 lt!724812))))))

(declare-fun b!1894378 () Bool)

(declare-fun e!1209320 () Bool)

(assert (=> b!1894378 (= e!1209320 e!1209317)))

(declare-fun res!845521 () Bool)

(assert (=> b!1894378 (=> res!845521 e!1209317)))

(assert (=> b!1894378 (= res!845521 call!116899)))

(declare-fun b!1894379 () Bool)

(assert (=> b!1894379 (= e!1209316 e!1209320)))

(declare-fun res!845520 () Bool)

(assert (=> b!1894379 (=> (not res!845520) (not e!1209320))))

(assert (=> b!1894379 (= res!845520 (not lt!724843))))

(declare-fun b!1894380 () Bool)

(declare-fun nullable!1576 (Regex!5192) Bool)

(assert (=> b!1894380 (= e!1209315 (nullable!1576 (regex!3767 lt!724812)))))

(declare-fun b!1894381 () Bool)

(assert (=> b!1894381 (= e!1209319 (not lt!724843))))

(declare-fun b!1894382 () Bool)

(assert (=> b!1894382 (= e!1209318 (= lt!724843 call!116899))))

(declare-fun d!580271 () Bool)

(assert (=> d!580271 e!1209318))

(declare-fun c!309092 () Bool)

(assert (=> d!580271 (= c!309092 (is-EmptyExpr!5192 (regex!3767 lt!724812)))))

(assert (=> d!580271 (= lt!724843 e!1209315)))

(declare-fun c!309091 () Bool)

(assert (=> d!580271 (= c!309091 (isEmpty!13033 lt!724813))))

(declare-fun validRegex!2100 (Regex!5192) Bool)

(assert (=> d!580271 (validRegex!2100 (regex!3767 lt!724812))))

(assert (=> d!580271 (= (matchR!2478 (regex!3767 lt!724812) lt!724813) lt!724843)))

(declare-fun b!1894369 () Bool)

(declare-fun res!845522 () Bool)

(assert (=> b!1894369 (=> (not res!845522) (not e!1209321))))

(assert (=> b!1894369 (= res!845522 (not call!116899))))

(assert (= (and d!580271 c!309091) b!1894380))

(assert (= (and d!580271 (not c!309091)) b!1894372))

(assert (= (and d!580271 c!309092) b!1894382))

(assert (= (and d!580271 (not c!309092)) b!1894371))

(assert (= (and b!1894371 c!309093) b!1894381))

(assert (= (and b!1894371 (not c!309093)) b!1894375))

(assert (= (and b!1894375 (not res!845516)) b!1894370))

(assert (= (and b!1894370 res!845517) b!1894369))

(assert (= (and b!1894369 res!845522) b!1894374))

(assert (= (and b!1894374 res!845518) b!1894377))

(assert (= (and b!1894370 (not res!845523)) b!1894379))

(assert (= (and b!1894379 res!845520) b!1894378))

(assert (= (and b!1894378 (not res!845521)) b!1894373))

(assert (= (and b!1894373 (not res!845519)) b!1894376))

(assert (= (or b!1894382 b!1894369 b!1894378) bm!116894))

(declare-fun m!2325819 () Bool)

(assert (=> b!1894380 m!2325819))

(declare-fun m!2325821 () Bool)

(assert (=> b!1894372 m!2325821))

(assert (=> b!1894372 m!2325821))

(declare-fun m!2325823 () Bool)

(assert (=> b!1894372 m!2325823))

(declare-fun m!2325825 () Bool)

(assert (=> b!1894372 m!2325825))

(assert (=> b!1894372 m!2325823))

(assert (=> b!1894372 m!2325825))

(declare-fun m!2325827 () Bool)

(assert (=> b!1894372 m!2325827))

(assert (=> b!1894376 m!2325821))

(assert (=> b!1894373 m!2325825))

(assert (=> b!1894373 m!2325825))

(declare-fun m!2325829 () Bool)

(assert (=> b!1894373 m!2325829))

(assert (=> b!1894374 m!2325825))

(assert (=> b!1894374 m!2325825))

(assert (=> b!1894374 m!2325829))

(assert (=> b!1894377 m!2325821))

(declare-fun m!2325831 () Bool)

(assert (=> bm!116894 m!2325831))

(assert (=> d!580271 m!2325831))

(declare-fun m!2325833 () Bool)

(assert (=> d!580271 m!2325833))

(assert (=> b!1894275 d!580271))

(declare-fun d!580273 () Bool)

(assert (=> d!580273 (= (get!6538 lt!724815) (v!26267 lt!724815))))

(assert (=> b!1894275 d!580273))

(declare-fun d!580275 () Bool)

(declare-fun res!845528 () Bool)

(declare-fun e!1209326 () Bool)

(assert (=> d!580275 (=> res!845528 e!1209326)))

(assert (=> d!580275 (= res!845528 (not (is-Cons!21230 rules!3198)))))

(assert (=> d!580275 (= (sepAndNonSepRulesDisjointChars!865 rules!3198 rules!3198) e!1209326)))

(declare-fun b!1894387 () Bool)

(declare-fun e!1209327 () Bool)

(assert (=> b!1894387 (= e!1209326 e!1209327)))

(declare-fun res!845529 () Bool)

(assert (=> b!1894387 (=> (not res!845529) (not e!1209327))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!411 (Rule!7334 List!21312) Bool)

(assert (=> b!1894387 (= res!845529 (ruleDisjointCharsFromAllFromOtherType!411 (h!26631 rules!3198) rules!3198))))

(declare-fun b!1894388 () Bool)

(assert (=> b!1894388 (= e!1209327 (sepAndNonSepRulesDisjointChars!865 rules!3198 (t!175977 rules!3198)))))

(assert (= (and d!580275 (not res!845528)) b!1894387))

(assert (= (and b!1894387 res!845529) b!1894388))

(declare-fun m!2325835 () Bool)

(assert (=> b!1894387 m!2325835))

(declare-fun m!2325837 () Bool)

(assert (=> b!1894388 m!2325837))

(assert (=> b!1894264 d!580275))

(declare-fun d!580277 () Bool)

(assert (=> d!580277 (= (inv!28325 (tag!4181 (rule!5960 (h!26632 tokens!598)))) (= (mod (str.len (value!118951 (tag!4181 (rule!5960 (h!26632 tokens!598))))) 2) 0))))

(assert (=> b!1894274 d!580277))

(declare-fun d!580279 () Bool)

(declare-fun res!845532 () Bool)

(declare-fun e!1209330 () Bool)

(assert (=> d!580279 (=> (not res!845532) (not e!1209330))))

(declare-fun semiInverseModEq!1526 (Int Int) Bool)

(assert (=> d!580279 (= res!845532 (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))))))

(assert (=> d!580279 (= (inv!28329 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) e!1209330)))

(declare-fun b!1894391 () Bool)

(declare-fun equivClasses!1453 (Int Int) Bool)

(assert (=> b!1894391 (= e!1209330 (equivClasses!1453 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))))))

(assert (= (and d!580279 res!845532) b!1894391))

(declare-fun m!2325839 () Bool)

(assert (=> d!580279 m!2325839))

(declare-fun m!2325841 () Bool)

(assert (=> b!1894391 m!2325841))

(assert (=> b!1894274 d!580279))

(declare-fun b!1894402 () Bool)

(declare-fun e!1209337 () Bool)

(declare-fun inv!16 (TokenValue!3903) Bool)

(assert (=> b!1894402 (= e!1209337 (inv!16 (value!118952 (h!26632 tokens!598))))))

(declare-fun b!1894403 () Bool)

(declare-fun e!1209339 () Bool)

(assert (=> b!1894403 (= e!1209337 e!1209339)))

(declare-fun c!309099 () Bool)

(assert (=> b!1894403 (= c!309099 (is-IntegerValue!11710 (value!118952 (h!26632 tokens!598))))))

(declare-fun d!580281 () Bool)

(declare-fun c!309098 () Bool)

(assert (=> d!580281 (= c!309098 (is-IntegerValue!11709 (value!118952 (h!26632 tokens!598))))))

(assert (=> d!580281 (= (inv!21 (value!118952 (h!26632 tokens!598))) e!1209337)))

(declare-fun b!1894404 () Bool)

(declare-fun e!1209338 () Bool)

(declare-fun inv!15 (TokenValue!3903) Bool)

(assert (=> b!1894404 (= e!1209338 (inv!15 (value!118952 (h!26632 tokens!598))))))

(declare-fun b!1894405 () Bool)

(declare-fun res!845535 () Bool)

(assert (=> b!1894405 (=> res!845535 e!1209338)))

(assert (=> b!1894405 (= res!845535 (not (is-IntegerValue!11711 (value!118952 (h!26632 tokens!598)))))))

(assert (=> b!1894405 (= e!1209339 e!1209338)))

(declare-fun b!1894406 () Bool)

(declare-fun inv!17 (TokenValue!3903) Bool)

(assert (=> b!1894406 (= e!1209339 (inv!17 (value!118952 (h!26632 tokens!598))))))

(assert (= (and d!580281 c!309098) b!1894402))

(assert (= (and d!580281 (not c!309098)) b!1894403))

(assert (= (and b!1894403 c!309099) b!1894406))

(assert (= (and b!1894403 (not c!309099)) b!1894405))

(assert (= (and b!1894405 (not res!845535)) b!1894404))

(declare-fun m!2325843 () Bool)

(assert (=> b!1894402 m!2325843))

(declare-fun m!2325845 () Bool)

(assert (=> b!1894404 m!2325845))

(declare-fun m!2325847 () Bool)

(assert (=> b!1894406 m!2325847))

(assert (=> b!1894263 d!580281))

(declare-fun d!580285 () Bool)

(declare-fun lt!724849 () Bool)

(declare-fun e!1209363 () Bool)

(assert (=> d!580285 (= lt!724849 e!1209363)))

(declare-fun res!845556 () Bool)

(assert (=> d!580285 (=> (not res!845556) (not e!1209363))))

(declare-datatypes ((IArray!14145 0))(
  ( (IArray!14146 (innerList!7130 List!21313)) )
))
(declare-datatypes ((Conc!7070 0))(
  ( (Node!7070 (left!17040 Conc!7070) (right!17370 Conc!7070) (csize!14370 Int) (cheight!7281 Int)) (Leaf!10417 (xs!9964 IArray!14145) (csize!14371 Int)) (Empty!7070) )
))
(declare-datatypes ((BalanceConc!13956 0))(
  ( (BalanceConc!13957 (c!309115 Conc!7070)) )
))
(declare-fun list!8633 (BalanceConc!13956) List!21313)

(declare-datatypes ((tuple2!20054 0))(
  ( (tuple2!20055 (_1!11496 BalanceConc!13956) (_2!11496 BalanceConc!13952)) )
))
(declare-fun lex!1505 (LexerInterface!3380 List!21312 BalanceConc!13952) tuple2!20054)

(declare-fun print!1434 (LexerInterface!3380 BalanceConc!13956) BalanceConc!13952)

(declare-fun singletonSeq!1832 (Token!7086) BalanceConc!13956)

(assert (=> d!580285 (= res!845556 (= (list!8633 (_1!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354))))) (list!8633 (singletonSeq!1832 separatorToken!354))))))

(declare-fun e!1209362 () Bool)

(assert (=> d!580285 (= lt!724849 e!1209362)))

(declare-fun res!845554 () Bool)

(assert (=> d!580285 (=> (not res!845554) (not e!1209362))))

(declare-fun lt!724848 () tuple2!20054)

(declare-fun size!16833 (BalanceConc!13956) Int)

(assert (=> d!580285 (= res!845554 (= (size!16833 (_1!11496 lt!724848)) 1))))

(assert (=> d!580285 (= lt!724848 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354))))))

(assert (=> d!580285 (not (isEmpty!13031 rules!3198))))

(assert (=> d!580285 (= (rulesProduceIndividualToken!1552 thiss!23328 rules!3198 separatorToken!354) lt!724849)))

(declare-fun b!1894442 () Bool)

(declare-fun res!845555 () Bool)

(assert (=> b!1894442 (=> (not res!845555) (not e!1209362))))

(declare-fun apply!5591 (BalanceConc!13956 Int) Token!7086)

(assert (=> b!1894442 (= res!845555 (= (apply!5591 (_1!11496 lt!724848) 0) separatorToken!354))))

(declare-fun b!1894443 () Bool)

(declare-fun isEmpty!13034 (BalanceConc!13952) Bool)

(assert (=> b!1894443 (= e!1209362 (isEmpty!13034 (_2!11496 lt!724848)))))

(declare-fun b!1894444 () Bool)

(assert (=> b!1894444 (= e!1209363 (isEmpty!13034 (_2!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354))))))))

(assert (= (and d!580285 res!845554) b!1894442))

(assert (= (and b!1894442 res!845555) b!1894443))

(assert (= (and d!580285 res!845556) b!1894444))

(declare-fun m!2325871 () Bool)

(assert (=> d!580285 m!2325871))

(declare-fun m!2325873 () Bool)

(assert (=> d!580285 m!2325873))

(assert (=> d!580285 m!2325873))

(declare-fun m!2325875 () Bool)

(assert (=> d!580285 m!2325875))

(assert (=> d!580285 m!2325875))

(declare-fun m!2325877 () Bool)

(assert (=> d!580285 m!2325877))

(assert (=> d!580285 m!2325873))

(declare-fun m!2325879 () Bool)

(assert (=> d!580285 m!2325879))

(declare-fun m!2325881 () Bool)

(assert (=> d!580285 m!2325881))

(assert (=> d!580285 m!2325731))

(declare-fun m!2325883 () Bool)

(assert (=> b!1894442 m!2325883))

(declare-fun m!2325885 () Bool)

(assert (=> b!1894443 m!2325885))

(assert (=> b!1894444 m!2325873))

(assert (=> b!1894444 m!2325873))

(assert (=> b!1894444 m!2325875))

(assert (=> b!1894444 m!2325875))

(assert (=> b!1894444 m!2325877))

(declare-fun m!2325887 () Bool)

(assert (=> b!1894444 m!2325887))

(assert (=> b!1894262 d!580285))

(declare-fun d!580295 () Bool)

(declare-fun e!1209366 () Bool)

(assert (=> d!580295 e!1209366))

(declare-fun res!845561 () Bool)

(assert (=> d!580295 (=> (not res!845561) (not e!1209366))))

(assert (=> d!580295 (= res!845561 (isDefined!3541 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))))))

(declare-fun lt!724852 () Unit!35597)

(declare-fun choose!11829 (LexerInterface!3380 List!21312 List!21311 Token!7086) Unit!35597)

(assert (=> d!580295 (= lt!724852 (choose!11829 thiss!23328 rules!3198 lt!724813 separatorToken!354))))

(assert (=> d!580295 (rulesInvariant!2987 thiss!23328 rules!3198)))

(assert (=> d!580295 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!610 thiss!23328 rules!3198 lt!724813 separatorToken!354) lt!724852)))

(declare-fun b!1894449 () Bool)

(declare-fun res!845562 () Bool)

(assert (=> b!1894449 (=> (not res!845562) (not e!1209366))))

(assert (=> b!1894449 (= res!845562 (matchR!2478 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))) (list!8631 (charsOf!2323 separatorToken!354))))))

(declare-fun b!1894450 () Bool)

(assert (=> b!1894450 (= e!1209366 (= (rule!5960 separatorToken!354) (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))))))

(assert (= (and d!580295 res!845561) b!1894449))

(assert (= (and b!1894449 res!845562) b!1894450))

(assert (=> d!580295 m!2325715))

(assert (=> d!580295 m!2325715))

(declare-fun m!2325889 () Bool)

(assert (=> d!580295 m!2325889))

(declare-fun m!2325891 () Bool)

(assert (=> d!580295 m!2325891))

(assert (=> d!580295 m!2325745))

(assert (=> b!1894449 m!2325717))

(assert (=> b!1894449 m!2325717))

(assert (=> b!1894449 m!2325721))

(assert (=> b!1894449 m!2325715))

(assert (=> b!1894449 m!2325721))

(declare-fun m!2325893 () Bool)

(assert (=> b!1894449 m!2325893))

(assert (=> b!1894449 m!2325715))

(declare-fun m!2325895 () Bool)

(assert (=> b!1894449 m!2325895))

(assert (=> b!1894450 m!2325715))

(assert (=> b!1894450 m!2325715))

(assert (=> b!1894450 m!2325895))

(assert (=> b!1894261 d!580295))

(declare-fun d!580297 () Bool)

(declare-fun isEmpty!13035 (Option!4243) Bool)

(assert (=> d!580297 (= (isDefined!3541 lt!724815) (not (isEmpty!13035 lt!724815)))))

(declare-fun bs!413323 () Bool)

(assert (= bs!413323 d!580297))

(declare-fun m!2325897 () Bool)

(assert (=> bs!413323 m!2325897))

(assert (=> b!1894261 d!580297))

(declare-fun d!580299 () Bool)

(assert (=> d!580299 true))

(declare-fun lt!724857 () Bool)

(declare-fun lambda!74000 () Int)

(declare-fun forall!4443 (List!21312 Int) Bool)

(assert (=> d!580299 (= lt!724857 (forall!4443 rules!3198 lambda!74000))))

(declare-fun e!1209375 () Bool)

(assert (=> d!580299 (= lt!724857 e!1209375)))

(declare-fun res!845571 () Bool)

(assert (=> d!580299 (=> res!845571 e!1209375)))

(assert (=> d!580299 (= res!845571 (not (is-Cons!21230 rules!3198)))))

(assert (=> d!580299 (= (rulesValidInductive!1273 thiss!23328 rules!3198) lt!724857)))

(declare-fun b!1894459 () Bool)

(declare-fun e!1209376 () Bool)

(assert (=> b!1894459 (= e!1209375 e!1209376)))

(declare-fun res!845572 () Bool)

(assert (=> b!1894459 (=> (not res!845572) (not e!1209376))))

(declare-fun ruleValid!1144 (LexerInterface!3380 Rule!7334) Bool)

(assert (=> b!1894459 (= res!845572 (ruleValid!1144 thiss!23328 (h!26631 rules!3198)))))

(declare-fun b!1894460 () Bool)

(assert (=> b!1894460 (= e!1209376 (rulesValidInductive!1273 thiss!23328 (t!175977 rules!3198)))))

(assert (= (and d!580299 (not res!845571)) b!1894459))

(assert (= (and b!1894459 res!845572) b!1894460))

(declare-fun m!2325899 () Bool)

(assert (=> d!580299 m!2325899))

(declare-fun m!2325901 () Bool)

(assert (=> b!1894459 m!2325901))

(declare-fun m!2325903 () Bool)

(assert (=> b!1894460 m!2325903))

(assert (=> b!1894261 d!580299))

(declare-fun d!580301 () Bool)

(declare-fun lt!724860 () BalanceConc!13952)

(assert (=> d!580301 (= (list!8631 lt!724860) (originalCharacters!4574 separatorToken!354))))

(declare-fun dynLambda!10312 (Int TokenValue!3903) BalanceConc!13952)

(assert (=> d!580301 (= lt!724860 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))))

(assert (=> d!580301 (= (charsOf!2323 separatorToken!354) lt!724860)))

(declare-fun b_lambda!62143 () Bool)

(assert (=> (not b_lambda!62143) (not d!580301)))

(declare-fun t!175993 () Bool)

(declare-fun tb!115287 () Bool)

(assert (=> (and b!1894272 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) t!175993) tb!115287))

(declare-fun b!1894467 () Bool)

(declare-fun e!1209379 () Bool)

(declare-fun tp!540516 () Bool)

(declare-fun inv!28332 (Conc!7068) Bool)

(assert (=> b!1894467 (= e!1209379 (and (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))) tp!540516))))

(declare-fun result!139392 () Bool)

(declare-fun inv!28333 (BalanceConc!13952) Bool)

(assert (=> tb!115287 (= result!139392 (and (inv!28333 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))) e!1209379))))

(assert (= tb!115287 b!1894467))

(declare-fun m!2325905 () Bool)

(assert (=> b!1894467 m!2325905))

(declare-fun m!2325907 () Bool)

(assert (=> tb!115287 m!2325907))

(assert (=> d!580301 t!175993))

(declare-fun b_and!145929 () Bool)

(assert (= b_and!145901 (and (=> t!175993 result!139392) b_and!145929)))

(declare-fun t!175995 () Bool)

(declare-fun tb!115289 () Bool)

(assert (=> (and b!1894268 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) t!175995) tb!115289))

(declare-fun result!139396 () Bool)

(assert (= result!139396 result!139392))

(assert (=> d!580301 t!175995))

(declare-fun b_and!145931 () Bool)

(assert (= b_and!145905 (and (=> t!175995 result!139396) b_and!145931)))

(declare-fun t!175997 () Bool)

(declare-fun tb!115291 () Bool)

(assert (=> (and b!1894267 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) t!175997) tb!115291))

(declare-fun result!139398 () Bool)

(assert (= result!139398 result!139392))

(assert (=> d!580301 t!175997))

(declare-fun b_and!145933 () Bool)

(assert (= b_and!145909 (and (=> t!175997 result!139398) b_and!145933)))

(declare-fun m!2325909 () Bool)

(assert (=> d!580301 m!2325909))

(declare-fun m!2325911 () Bool)

(assert (=> d!580301 m!2325911))

(assert (=> b!1894261 d!580301))

(declare-fun b!1894480 () Bool)

(declare-fun lt!724868 () Unit!35597)

(declare-fun lt!724867 () Unit!35597)

(assert (=> b!1894480 (= lt!724868 lt!724867)))

(assert (=> b!1894480 (rulesInvariant!2987 thiss!23328 (t!175977 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!237 (LexerInterface!3380 Rule!7334 List!21312) Unit!35597)

(assert (=> b!1894480 (= lt!724867 (lemmaInvariantOnRulesThenOnTail!237 thiss!23328 (h!26631 rules!3198) (t!175977 rules!3198)))))

(declare-fun e!1209389 () Option!4243)

(assert (=> b!1894480 (= e!1209389 (getRuleFromTag!610 thiss!23328 (t!175977 rules!3198) (tag!4181 (rule!5960 separatorToken!354))))))

(declare-fun b!1894481 () Bool)

(declare-fun e!1209391 () Bool)

(declare-fun e!1209390 () Bool)

(assert (=> b!1894481 (= e!1209391 e!1209390)))

(declare-fun res!845577 () Bool)

(assert (=> b!1894481 (=> (not res!845577) (not e!1209390))))

(declare-fun lt!724869 () Option!4243)

(declare-fun contains!3830 (List!21312 Rule!7334) Bool)

(assert (=> b!1894481 (= res!845577 (contains!3830 rules!3198 (get!6538 lt!724869)))))

(declare-fun b!1894482 () Bool)

(declare-fun e!1209388 () Option!4243)

(assert (=> b!1894482 (= e!1209388 e!1209389)))

(declare-fun c!309111 () Bool)

(assert (=> b!1894482 (= c!309111 (and (is-Cons!21230 rules!3198) (not (= (tag!4181 (h!26631 rules!3198)) (tag!4181 (rule!5960 separatorToken!354))))))))

(declare-fun d!580303 () Bool)

(assert (=> d!580303 e!1209391))

(declare-fun res!845578 () Bool)

(assert (=> d!580303 (=> res!845578 e!1209391)))

(assert (=> d!580303 (= res!845578 (isEmpty!13035 lt!724869))))

(assert (=> d!580303 (= lt!724869 e!1209388)))

(declare-fun c!309110 () Bool)

(assert (=> d!580303 (= c!309110 (and (is-Cons!21230 rules!3198) (= (tag!4181 (h!26631 rules!3198)) (tag!4181 (rule!5960 separatorToken!354)))))))

(assert (=> d!580303 (rulesInvariant!2987 thiss!23328 rules!3198)))

(assert (=> d!580303 (= (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))) lt!724869)))

(declare-fun b!1894483 () Bool)

(assert (=> b!1894483 (= e!1209390 (= (tag!4181 (get!6538 lt!724869)) (tag!4181 (rule!5960 separatorToken!354))))))

(declare-fun b!1894484 () Bool)

(assert (=> b!1894484 (= e!1209389 None!4242)))

(declare-fun b!1894485 () Bool)

(assert (=> b!1894485 (= e!1209388 (Some!4242 (h!26631 rules!3198)))))

(assert (= (and d!580303 c!309110) b!1894485))

(assert (= (and d!580303 (not c!309110)) b!1894482))

(assert (= (and b!1894482 c!309111) b!1894480))

(assert (= (and b!1894482 (not c!309111)) b!1894484))

(assert (= (and d!580303 (not res!845578)) b!1894481))

(assert (= (and b!1894481 res!845577) b!1894483))

(declare-fun m!2325913 () Bool)

(assert (=> b!1894480 m!2325913))

(declare-fun m!2325915 () Bool)

(assert (=> b!1894480 m!2325915))

(declare-fun m!2325917 () Bool)

(assert (=> b!1894480 m!2325917))

(declare-fun m!2325919 () Bool)

(assert (=> b!1894481 m!2325919))

(assert (=> b!1894481 m!2325919))

(declare-fun m!2325921 () Bool)

(assert (=> b!1894481 m!2325921))

(declare-fun m!2325923 () Bool)

(assert (=> d!580303 m!2325923))

(assert (=> d!580303 m!2325745))

(assert (=> b!1894483 m!2325919))

(assert (=> b!1894261 d!580303))

(declare-fun b!1894490 () Bool)

(declare-fun e!1209394 () Bool)

(assert (=> b!1894490 (= e!1209394 true)))

(declare-fun d!580305 () Bool)

(assert (=> d!580305 e!1209394))

(assert (= d!580305 b!1894490))

(declare-fun lambda!74003 () Int)

(declare-fun order!13401 () Int)

(declare-fun order!13403 () Int)

(declare-fun dynLambda!10313 (Int Int) Int)

(declare-fun dynLambda!10314 (Int Int) Int)

(assert (=> b!1894490 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (dynLambda!10314 order!13403 lambda!74003))))

(declare-fun order!13405 () Int)

(declare-fun dynLambda!10315 (Int Int) Int)

(assert (=> b!1894490 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (dynLambda!10314 order!13403 lambda!74003))))

(declare-fun dynLambda!10316 (Int BalanceConc!13952) TokenValue!3903)

(assert (=> d!580305 (= (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))) (list!8631 lt!724809))))

(declare-fun lt!724872 () Unit!35597)

(declare-fun ForallOf!372 (Int BalanceConc!13952) Unit!35597)

(assert (=> d!580305 (= lt!724872 (ForallOf!372 lambda!74003 lt!724809))))

(assert (=> d!580305 (= (lemmaSemiInverse!746 (transformation!3767 (rule!5960 (h!26632 tokens!598))) lt!724809) lt!724872)))

(declare-fun b_lambda!62145 () Bool)

(assert (=> (not b_lambda!62145) (not d!580305)))

(declare-fun tb!115293 () Bool)

(declare-fun t!175999 () Bool)

(assert (=> (and b!1894272 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!175999) tb!115293))

(declare-fun b!1894491 () Bool)

(declare-fun e!1209395 () Bool)

(declare-fun tp!540517 () Bool)

(assert (=> b!1894491 (= e!1209395 (and (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))) tp!540517))))

(declare-fun result!139400 () Bool)

(assert (=> tb!115293 (= result!139400 (and (inv!28333 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))) e!1209395))))

(assert (= tb!115293 b!1894491))

(declare-fun m!2325925 () Bool)

(assert (=> b!1894491 m!2325925))

(declare-fun m!2325927 () Bool)

(assert (=> tb!115293 m!2325927))

(assert (=> d!580305 t!175999))

(declare-fun b_and!145935 () Bool)

(assert (= b_and!145929 (and (=> t!175999 result!139400) b_and!145935)))

(declare-fun t!176001 () Bool)

(declare-fun tb!115295 () Bool)

(assert (=> (and b!1894268 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176001) tb!115295))

(declare-fun result!139402 () Bool)

(assert (= result!139402 result!139400))

(assert (=> d!580305 t!176001))

(declare-fun b_and!145937 () Bool)

(assert (= b_and!145931 (and (=> t!176001 result!139402) b_and!145937)))

(declare-fun t!176003 () Bool)

(declare-fun tb!115297 () Bool)

(assert (=> (and b!1894267 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176003) tb!115297))

(declare-fun result!139404 () Bool)

(assert (= result!139404 result!139400))

(assert (=> d!580305 t!176003))

(declare-fun b_and!145939 () Bool)

(assert (= b_and!145933 (and (=> t!176003 result!139404) b_and!145939)))

(declare-fun b_lambda!62147 () Bool)

(assert (=> (not b_lambda!62147) (not d!580305)))

(declare-fun tb!115299 () Bool)

(declare-fun t!176005 () Bool)

(assert (=> (and b!1894272 (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176005) tb!115299))

(declare-fun result!139406 () Bool)

(assert (=> tb!115299 (= result!139406 (inv!21 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))

(declare-fun m!2325929 () Bool)

(assert (=> tb!115299 m!2325929))

(assert (=> d!580305 t!176005))

(declare-fun b_and!145941 () Bool)

(assert (= b_and!145899 (and (=> t!176005 result!139406) b_and!145941)))

(declare-fun t!176007 () Bool)

(declare-fun tb!115301 () Bool)

(assert (=> (and b!1894268 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176007) tb!115301))

(declare-fun result!139410 () Bool)

(assert (= result!139410 result!139406))

(assert (=> d!580305 t!176007))

(declare-fun b_and!145943 () Bool)

(assert (= b_and!145903 (and (=> t!176007 result!139410) b_and!145943)))

(declare-fun tb!115303 () Bool)

(declare-fun t!176009 () Bool)

(assert (=> (and b!1894267 (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176009) tb!115303))

(declare-fun result!139412 () Bool)

(assert (= result!139412 result!139406))

(assert (=> d!580305 t!176009))

(declare-fun b_and!145945 () Bool)

(assert (= b_and!145907 (and (=> t!176009 result!139412) b_and!145945)))

(declare-fun m!2325931 () Bool)

(assert (=> d!580305 m!2325931))

(declare-fun m!2325933 () Bool)

(assert (=> d!580305 m!2325933))

(assert (=> d!580305 m!2325711))

(declare-fun m!2325935 () Bool)

(assert (=> d!580305 m!2325935))

(assert (=> d!580305 m!2325935))

(assert (=> d!580305 m!2325931))

(declare-fun m!2325937 () Bool)

(assert (=> d!580305 m!2325937))

(assert (=> b!1894261 d!580305))

(declare-fun b!1894500 () Bool)

(declare-fun e!1209403 () Bool)

(assert (=> b!1894500 (= e!1209403 true)))

(declare-fun d!580307 () Bool)

(assert (=> d!580307 e!1209403))

(assert (= d!580307 b!1894500))

(declare-fun lambda!74006 () Int)

(declare-fun order!13407 () Int)

(declare-fun dynLambda!10317 (Int Int) Int)

(assert (=> b!1894500 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (dynLambda!10317 order!13407 lambda!74006))))

(assert (=> b!1894500 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (dynLambda!10317 order!13407 lambda!74006))))

(assert (=> d!580307 (= (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))))))

(declare-fun lt!724875 () Unit!35597)

(declare-fun Forall2of!168 (Int BalanceConc!13952 BalanceConc!13952) Unit!35597)

(assert (=> d!580307 (= lt!724875 (Forall2of!168 lambda!74006 lt!724809 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))))))

(assert (=> d!580307 (= (list!8631 lt!724809) (list!8631 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))))))

(assert (=> d!580307 (= (lemmaEqSameImage!475 (transformation!3767 (rule!5960 (h!26632 tokens!598))) lt!724809 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))) lt!724875)))

(declare-fun b_lambda!62149 () Bool)

(assert (=> (not b_lambda!62149) (not d!580307)))

(assert (=> d!580307 t!176005))

(declare-fun b_and!145947 () Bool)

(assert (= b_and!145941 (and (=> t!176005 result!139406) b_and!145947)))

(assert (=> d!580307 t!176007))

(declare-fun b_and!145949 () Bool)

(assert (= b_and!145943 (and (=> t!176007 result!139410) b_and!145949)))

(assert (=> d!580307 t!176009))

(declare-fun b_and!145951 () Bool)

(assert (= b_and!145945 (and (=> t!176009 result!139412) b_and!145951)))

(declare-fun b_lambda!62151 () Bool)

(assert (=> (not b_lambda!62151) (not d!580307)))

(declare-fun t!176011 () Bool)

(declare-fun tb!115305 () Bool)

(assert (=> (and b!1894272 (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176011) tb!115305))

(declare-fun result!139414 () Bool)

(assert (=> tb!115305 (= result!139414 (inv!21 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(declare-fun m!2325939 () Bool)

(assert (=> tb!115305 m!2325939))

(assert (=> d!580307 t!176011))

(declare-fun b_and!145953 () Bool)

(assert (= b_and!145947 (and (=> t!176011 result!139414) b_and!145953)))

(declare-fun t!176013 () Bool)

(declare-fun tb!115307 () Bool)

(assert (=> (and b!1894268 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176013) tb!115307))

(declare-fun result!139416 () Bool)

(assert (= result!139416 result!139414))

(assert (=> d!580307 t!176013))

(declare-fun b_and!145955 () Bool)

(assert (= b_and!145949 (and (=> t!176013 result!139416) b_and!145955)))

(declare-fun t!176015 () Bool)

(declare-fun tb!115309 () Bool)

(assert (=> (and b!1894267 (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176015) tb!115309))

(declare-fun result!139418 () Bool)

(assert (= result!139418 result!139414))

(assert (=> d!580307 t!176015))

(declare-fun b_and!145957 () Bool)

(assert (= b_and!145951 (and (=> t!176015 result!139418) b_and!145957)))

(assert (=> d!580307 m!2325935))

(assert (=> d!580307 m!2325709))

(declare-fun m!2325941 () Bool)

(assert (=> d!580307 m!2325941))

(assert (=> d!580307 m!2325711))

(assert (=> d!580307 m!2325709))

(declare-fun m!2325943 () Bool)

(assert (=> d!580307 m!2325943))

(assert (=> d!580307 m!2325709))

(declare-fun m!2325945 () Bool)

(assert (=> d!580307 m!2325945))

(assert (=> b!1894261 d!580307))

(declare-fun d!580309 () Bool)

(declare-fun list!8634 (Conc!7068) List!21311)

(assert (=> d!580309 (= (list!8631 lt!724809) (list!8634 (c!309080 lt!724809)))))

(declare-fun bs!413324 () Bool)

(assert (= bs!413324 d!580309))

(declare-fun m!2325947 () Bool)

(assert (=> bs!413324 m!2325947))

(assert (=> b!1894261 d!580309))

(declare-fun d!580311 () Bool)

(assert (=> d!580311 (= (list!8631 (charsOf!2323 separatorToken!354)) (list!8634 (c!309080 (charsOf!2323 separatorToken!354))))))

(declare-fun bs!413325 () Bool)

(assert (= bs!413325 d!580311))

(declare-fun m!2325949 () Bool)

(assert (=> bs!413325 m!2325949))

(assert (=> b!1894261 d!580311))

(declare-fun d!580313 () Bool)

(declare-fun lt!724876 () BalanceConc!13952)

(assert (=> d!580313 (= (list!8631 lt!724876) (originalCharacters!4574 (h!26632 tokens!598)))))

(assert (=> d!580313 (= lt!724876 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))))

(assert (=> d!580313 (= (charsOf!2323 (h!26632 tokens!598)) lt!724876)))

(declare-fun b_lambda!62153 () Bool)

(assert (=> (not b_lambda!62153) (not d!580313)))

(declare-fun t!176017 () Bool)

(declare-fun tb!115311 () Bool)

(assert (=> (and b!1894272 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176017) tb!115311))

(declare-fun b!1894501 () Bool)

(declare-fun e!1209405 () Bool)

(declare-fun tp!540518 () Bool)

(assert (=> b!1894501 (= e!1209405 (and (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))) tp!540518))))

(declare-fun result!139420 () Bool)

(assert (=> tb!115311 (= result!139420 (and (inv!28333 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))) e!1209405))))

(assert (= tb!115311 b!1894501))

(declare-fun m!2325951 () Bool)

(assert (=> b!1894501 m!2325951))

(declare-fun m!2325953 () Bool)

(assert (=> tb!115311 m!2325953))

(assert (=> d!580313 t!176017))

(declare-fun b_and!145959 () Bool)

(assert (= b_and!145935 (and (=> t!176017 result!139420) b_and!145959)))

(declare-fun t!176019 () Bool)

(declare-fun tb!115313 () Bool)

(assert (=> (and b!1894268 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176019) tb!115313))

(declare-fun result!139422 () Bool)

(assert (= result!139422 result!139420))

(assert (=> d!580313 t!176019))

(declare-fun b_and!145961 () Bool)

(assert (= b_and!145937 (and (=> t!176019 result!139422) b_and!145961)))

(declare-fun t!176021 () Bool)

(declare-fun tb!115315 () Bool)

(assert (=> (and b!1894267 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176021) tb!115315))

(declare-fun result!139424 () Bool)

(assert (= result!139424 result!139420))

(assert (=> d!580313 t!176021))

(declare-fun b_and!145963 () Bool)

(assert (= b_and!145939 (and (=> t!176021 result!139424) b_and!145963)))

(declare-fun m!2325955 () Bool)

(assert (=> d!580313 m!2325955))

(declare-fun m!2325957 () Bool)

(assert (=> d!580313 m!2325957))

(assert (=> b!1894261 d!580313))

(declare-fun d!580315 () Bool)

(declare-fun fromListB!1205 (List!21311) BalanceConc!13952)

(assert (=> d!580315 (= (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))) (fromListB!1205 (originalCharacters!4574 (h!26632 tokens!598))))))

(declare-fun bs!413326 () Bool)

(assert (= bs!413326 d!580315))

(declare-fun m!2325959 () Bool)

(assert (=> bs!413326 m!2325959))

(assert (=> b!1894261 d!580315))

(declare-fun d!580317 () Bool)

(declare-fun res!845583 () Bool)

(declare-fun e!1209408 () Bool)

(assert (=> d!580317 (=> (not res!845583) (not e!1209408))))

(declare-fun rulesValid!1413 (LexerInterface!3380 List!21312) Bool)

(assert (=> d!580317 (= res!845583 (rulesValid!1413 thiss!23328 rules!3198))))

(assert (=> d!580317 (= (rulesInvariant!2987 thiss!23328 rules!3198) e!1209408)))

(declare-fun b!1894504 () Bool)

(declare-datatypes ((List!21318 0))(
  ( (Nil!21236) (Cons!21236 (h!26637 String!24635) (t!176069 List!21318)) )
))
(declare-fun noDuplicateTag!1411 (LexerInterface!3380 List!21312 List!21318) Bool)

(assert (=> b!1894504 (= e!1209408 (noDuplicateTag!1411 thiss!23328 rules!3198 Nil!21236))))

(assert (= (and d!580317 res!845583) b!1894504))

(declare-fun m!2325961 () Bool)

(assert (=> d!580317 m!2325961))

(declare-fun m!2325963 () Bool)

(assert (=> b!1894504 m!2325963))

(assert (=> b!1894260 d!580317))

(declare-fun d!580319 () Bool)

(assert (=> d!580319 (= (inv!28325 (tag!4181 (h!26631 rules!3198))) (= (mod (str.len (value!118951 (tag!4181 (h!26631 rules!3198)))) 2) 0))))

(assert (=> b!1894270 d!580319))

(declare-fun d!580321 () Bool)

(declare-fun res!845584 () Bool)

(declare-fun e!1209409 () Bool)

(assert (=> d!580321 (=> (not res!845584) (not e!1209409))))

(assert (=> d!580321 (= res!845584 (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (h!26631 rules!3198)))))))

(assert (=> d!580321 (= (inv!28329 (transformation!3767 (h!26631 rules!3198))) e!1209409)))

(declare-fun b!1894505 () Bool)

(assert (=> b!1894505 (= e!1209409 (equivClasses!1453 (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (h!26631 rules!3198)))))))

(assert (= (and d!580321 res!845584) b!1894505))

(declare-fun m!2325965 () Bool)

(assert (=> d!580321 m!2325965))

(declare-fun m!2325967 () Bool)

(assert (=> b!1894505 m!2325967))

(assert (=> b!1894270 d!580321))

(declare-fun d!580323 () Bool)

(declare-fun res!845589 () Bool)

(declare-fun e!1209414 () Bool)

(assert (=> d!580323 (=> res!845589 e!1209414)))

(assert (=> d!580323 (= res!845589 (is-Nil!21231 tokens!598))))

(assert (=> d!580323 (= (forall!4441 tokens!598 lambda!73994) e!1209414)))

(declare-fun b!1894510 () Bool)

(declare-fun e!1209415 () Bool)

(assert (=> b!1894510 (= e!1209414 e!1209415)))

(declare-fun res!845590 () Bool)

(assert (=> b!1894510 (=> (not res!845590) (not e!1209415))))

(declare-fun dynLambda!10318 (Int Token!7086) Bool)

(assert (=> b!1894510 (= res!845590 (dynLambda!10318 lambda!73994 (h!26632 tokens!598)))))

(declare-fun b!1894511 () Bool)

(assert (=> b!1894511 (= e!1209415 (forall!4441 (t!175978 tokens!598) lambda!73994))))

(assert (= (and d!580323 (not res!845589)) b!1894510))

(assert (= (and b!1894510 res!845590) b!1894511))

(declare-fun b_lambda!62155 () Bool)

(assert (=> (not b_lambda!62155) (not b!1894510)))

(declare-fun m!2325969 () Bool)

(assert (=> b!1894510 m!2325969))

(declare-fun m!2325971 () Bool)

(assert (=> b!1894511 m!2325971))

(assert (=> b!1894269 d!580323))

(declare-fun d!580325 () Bool)

(assert (=> d!580325 (= (inv!28325 (tag!4181 (rule!5960 separatorToken!354))) (= (mod (str.len (value!118951 (tag!4181 (rule!5960 separatorToken!354)))) 2) 0))))

(assert (=> b!1894258 d!580325))

(declare-fun d!580327 () Bool)

(declare-fun res!845591 () Bool)

(declare-fun e!1209416 () Bool)

(assert (=> d!580327 (=> (not res!845591) (not e!1209416))))

(assert (=> d!580327 (= res!845591 (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))))))

(assert (=> d!580327 (= (inv!28329 (transformation!3767 (rule!5960 separatorToken!354))) e!1209416)))

(declare-fun b!1894512 () Bool)

(assert (=> b!1894512 (= e!1209416 (equivClasses!1453 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))))))

(assert (= (and d!580327 res!845591) b!1894512))

(declare-fun m!2325973 () Bool)

(assert (=> d!580327 m!2325973))

(declare-fun m!2325975 () Bool)

(assert (=> b!1894512 m!2325975))

(assert (=> b!1894258 d!580327))

(declare-fun d!580329 () Bool)

(declare-fun res!845596 () Bool)

(declare-fun e!1209419 () Bool)

(assert (=> d!580329 (=> (not res!845596) (not e!1209419))))

(assert (=> d!580329 (= res!845596 (not (isEmpty!13033 (originalCharacters!4574 separatorToken!354))))))

(assert (=> d!580329 (= (inv!28328 separatorToken!354) e!1209419)))

(declare-fun b!1894517 () Bool)

(declare-fun res!845597 () Bool)

(assert (=> b!1894517 (=> (not res!845597) (not e!1209419))))

(assert (=> b!1894517 (= res!845597 (= (originalCharacters!4574 separatorToken!354) (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))))))

(declare-fun b!1894518 () Bool)

(declare-fun size!16834 (List!21311) Int)

(assert (=> b!1894518 (= e!1209419 (= (size!16831 separatorToken!354) (size!16834 (originalCharacters!4574 separatorToken!354))))))

(assert (= (and d!580329 res!845596) b!1894517))

(assert (= (and b!1894517 res!845597) b!1894518))

(declare-fun b_lambda!62157 () Bool)

(assert (=> (not b_lambda!62157) (not b!1894517)))

(assert (=> b!1894517 t!175993))

(declare-fun b_and!145965 () Bool)

(assert (= b_and!145959 (and (=> t!175993 result!139392) b_and!145965)))

(assert (=> b!1894517 t!175995))

(declare-fun b_and!145967 () Bool)

(assert (= b_and!145961 (and (=> t!175995 result!139396) b_and!145967)))

(assert (=> b!1894517 t!175997))

(declare-fun b_and!145969 () Bool)

(assert (= b_and!145963 (and (=> t!175997 result!139398) b_and!145969)))

(declare-fun m!2325977 () Bool)

(assert (=> d!580329 m!2325977))

(assert (=> b!1894517 m!2325911))

(assert (=> b!1894517 m!2325911))

(declare-fun m!2325979 () Bool)

(assert (=> b!1894517 m!2325979))

(declare-fun m!2325981 () Bool)

(assert (=> b!1894518 m!2325981))

(assert (=> start!189834 d!580329))

(declare-fun d!580331 () Bool)

(assert (=> d!580331 (= (isEmpty!13031 rules!3198) (is-Nil!21230 rules!3198))))

(assert (=> b!1894257 d!580331))

(declare-fun bs!413328 () Bool)

(declare-fun d!580333 () Bool)

(assert (= bs!413328 (and d!580333 b!1894269)))

(declare-fun lambda!74012 () Int)

(assert (=> bs!413328 (not (= lambda!74012 lambda!73994))))

(declare-fun b!1894561 () Bool)

(declare-fun e!1209456 () Bool)

(assert (=> b!1894561 (= e!1209456 true)))

(declare-fun b!1894560 () Bool)

(declare-fun e!1209455 () Bool)

(assert (=> b!1894560 (= e!1209455 e!1209456)))

(declare-fun b!1894559 () Bool)

(declare-fun e!1209454 () Bool)

(assert (=> b!1894559 (= e!1209454 e!1209455)))

(assert (=> d!580333 e!1209454))

(assert (= b!1894560 b!1894561))

(assert (= b!1894559 b!1894560))

(assert (= (and d!580333 (is-Cons!21230 rules!3198)) b!1894559))

(declare-fun order!13415 () Int)

(declare-fun dynLambda!10319 (Int Int) Int)

(assert (=> b!1894561 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (h!26631 rules!3198)))) (dynLambda!10319 order!13415 lambda!74012))))

(assert (=> b!1894561 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (h!26631 rules!3198)))) (dynLambda!10319 order!13415 lambda!74012))))

(assert (=> d!580333 true))

(declare-fun lt!724880 () Bool)

(assert (=> d!580333 (= lt!724880 (forall!4441 tokens!598 lambda!74012))))

(declare-fun e!1209446 () Bool)

(assert (=> d!580333 (= lt!724880 e!1209446)))

(declare-fun res!845616 () Bool)

(assert (=> d!580333 (=> res!845616 e!1209446)))

(assert (=> d!580333 (= res!845616 (not (is-Cons!21231 tokens!598)))))

(assert (=> d!580333 (not (isEmpty!13031 rules!3198))))

(assert (=> d!580333 (= (rulesProduceEachTokenIndividuallyList!1111 thiss!23328 rules!3198 tokens!598) lt!724880)))

(declare-fun b!1894549 () Bool)

(declare-fun e!1209447 () Bool)

(assert (=> b!1894549 (= e!1209446 e!1209447)))

(declare-fun res!845615 () Bool)

(assert (=> b!1894549 (=> (not res!845615) (not e!1209447))))

(assert (=> b!1894549 (= res!845615 (rulesProduceIndividualToken!1552 thiss!23328 rules!3198 (h!26632 tokens!598)))))

(declare-fun b!1894550 () Bool)

(assert (=> b!1894550 (= e!1209447 (rulesProduceEachTokenIndividuallyList!1111 thiss!23328 rules!3198 (t!175978 tokens!598)))))

(assert (= (and d!580333 (not res!845616)) b!1894549))

(assert (= (and b!1894549 res!845615) b!1894550))

(declare-fun m!2326005 () Bool)

(assert (=> d!580333 m!2326005))

(assert (=> d!580333 m!2325731))

(declare-fun m!2326007 () Bool)

(assert (=> b!1894549 m!2326007))

(declare-fun m!2326009 () Bool)

(assert (=> b!1894550 m!2326009))

(assert (=> b!1894266 d!580333))

(declare-fun b!1894564 () Bool)

(declare-fun e!1209457 () Bool)

(assert (=> b!1894564 (= e!1209457 (inv!16 (value!118952 separatorToken!354)))))

(declare-fun b!1894565 () Bool)

(declare-fun e!1209459 () Bool)

(assert (=> b!1894565 (= e!1209457 e!1209459)))

(declare-fun c!309114 () Bool)

(assert (=> b!1894565 (= c!309114 (is-IntegerValue!11710 (value!118952 separatorToken!354)))))

(declare-fun d!580351 () Bool)

(declare-fun c!309113 () Bool)

(assert (=> d!580351 (= c!309113 (is-IntegerValue!11709 (value!118952 separatorToken!354)))))

(assert (=> d!580351 (= (inv!21 (value!118952 separatorToken!354)) e!1209457)))

(declare-fun b!1894566 () Bool)

(declare-fun e!1209458 () Bool)

(assert (=> b!1894566 (= e!1209458 (inv!15 (value!118952 separatorToken!354)))))

(declare-fun b!1894567 () Bool)

(declare-fun res!845617 () Bool)

(assert (=> b!1894567 (=> res!845617 e!1209458)))

(assert (=> b!1894567 (= res!845617 (not (is-IntegerValue!11711 (value!118952 separatorToken!354))))))

(assert (=> b!1894567 (= e!1209459 e!1209458)))

(declare-fun b!1894568 () Bool)

(assert (=> b!1894568 (= e!1209459 (inv!17 (value!118952 separatorToken!354)))))

(assert (= (and d!580351 c!309113) b!1894564))

(assert (= (and d!580351 (not c!309113)) b!1894565))

(assert (= (and b!1894565 c!309114) b!1894568))

(assert (= (and b!1894565 (not c!309114)) b!1894567))

(assert (= (and b!1894567 (not res!845617)) b!1894566))

(declare-fun m!2326011 () Bool)

(assert (=> b!1894564 m!2326011))

(declare-fun m!2326013 () Bool)

(assert (=> b!1894566 m!2326013))

(declare-fun m!2326015 () Bool)

(assert (=> b!1894568 m!2326015))

(assert (=> b!1894276 d!580351))

(declare-fun d!580353 () Bool)

(declare-fun res!845618 () Bool)

(declare-fun e!1209460 () Bool)

(assert (=> d!580353 (=> (not res!845618) (not e!1209460))))

(assert (=> d!580353 (= res!845618 (not (isEmpty!13033 (originalCharacters!4574 (h!26632 tokens!598)))))))

(assert (=> d!580353 (= (inv!28328 (h!26632 tokens!598)) e!1209460)))

(declare-fun b!1894569 () Bool)

(declare-fun res!845619 () Bool)

(assert (=> b!1894569 (=> (not res!845619) (not e!1209460))))

(assert (=> b!1894569 (= res!845619 (= (originalCharacters!4574 (h!26632 tokens!598)) (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))))))

(declare-fun b!1894570 () Bool)

(assert (=> b!1894570 (= e!1209460 (= (size!16831 (h!26632 tokens!598)) (size!16834 (originalCharacters!4574 (h!26632 tokens!598)))))))

(assert (= (and d!580353 res!845618) b!1894569))

(assert (= (and b!1894569 res!845619) b!1894570))

(declare-fun b_lambda!62161 () Bool)

(assert (=> (not b_lambda!62161) (not b!1894569)))

(assert (=> b!1894569 t!176017))

(declare-fun b_and!145971 () Bool)

(assert (= b_and!145965 (and (=> t!176017 result!139420) b_and!145971)))

(assert (=> b!1894569 t!176019))

(declare-fun b_and!145973 () Bool)

(assert (= b_and!145967 (and (=> t!176019 result!139422) b_and!145973)))

(assert (=> b!1894569 t!176021))

(declare-fun b_and!145975 () Bool)

(assert (= b_and!145969 (and (=> t!176021 result!139424) b_and!145975)))

(declare-fun m!2326017 () Bool)

(assert (=> d!580353 m!2326017))

(assert (=> b!1894569 m!2325957))

(assert (=> b!1894569 m!2325957))

(declare-fun m!2326019 () Bool)

(assert (=> b!1894569 m!2326019))

(declare-fun m!2326021 () Bool)

(assert (=> b!1894570 m!2326021))

(assert (=> b!1894265 d!580353))

(declare-fun b!1894583 () Bool)

(declare-fun e!1209463 () Bool)

(declare-fun tp!540530 () Bool)

(assert (=> b!1894583 (= e!1209463 tp!540530)))

(declare-fun b!1894581 () Bool)

(declare-fun tp_is_empty!9059 () Bool)

(assert (=> b!1894581 (= e!1209463 tp_is_empty!9059)))

(declare-fun b!1894582 () Bool)

(declare-fun tp!540529 () Bool)

(declare-fun tp!540533 () Bool)

(assert (=> b!1894582 (= e!1209463 (and tp!540529 tp!540533))))

(declare-fun b!1894584 () Bool)

(declare-fun tp!540532 () Bool)

(declare-fun tp!540531 () Bool)

(assert (=> b!1894584 (= e!1209463 (and tp!540532 tp!540531))))

(assert (=> b!1894270 (= tp!540459 e!1209463)))

(assert (= (and b!1894270 (is-ElementMatch!5192 (regex!3767 (h!26631 rules!3198)))) b!1894581))

(assert (= (and b!1894270 (is-Concat!9096 (regex!3767 (h!26631 rules!3198)))) b!1894582))

(assert (= (and b!1894270 (is-Star!5192 (regex!3767 (h!26631 rules!3198)))) b!1894583))

(assert (= (and b!1894270 (is-Union!5192 (regex!3767 (h!26631 rules!3198)))) b!1894584))

(declare-fun b!1894595 () Bool)

(declare-fun b_free!52853 () Bool)

(declare-fun b_next!53557 () Bool)

(assert (=> b!1894595 (= b_free!52853 (not b_next!53557))))

(declare-fun t!176025 () Bool)

(declare-fun tb!115317 () Bool)

(assert (=> (and b!1894595 (= (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176025) tb!115317))

(declare-fun result!139430 () Bool)

(assert (= result!139430 result!139406))

(assert (=> d!580305 t!176025))

(assert (=> d!580307 t!176025))

(declare-fun tb!115319 () Bool)

(declare-fun t!176027 () Bool)

(assert (=> (and b!1894595 (= (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176027) tb!115319))

(declare-fun result!139432 () Bool)

(assert (= result!139432 result!139414))

(assert (=> d!580307 t!176027))

(declare-fun tp!540543 () Bool)

(declare-fun b_and!145977 () Bool)

(assert (=> b!1894595 (= tp!540543 (and (=> t!176025 result!139430) (=> t!176027 result!139432) b_and!145977))))

(declare-fun b_free!52855 () Bool)

(declare-fun b_next!53559 () Bool)

(assert (=> b!1894595 (= b_free!52855 (not b_next!53559))))

(declare-fun tb!115321 () Bool)

(declare-fun t!176029 () Bool)

(assert (=> (and b!1894595 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176029) tb!115321))

(declare-fun result!139434 () Bool)

(assert (= result!139434 result!139400))

(assert (=> d!580305 t!176029))

(declare-fun tb!115323 () Bool)

(declare-fun t!176031 () Bool)

(assert (=> (and b!1894595 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176031) tb!115323))

(declare-fun result!139436 () Bool)

(assert (= result!139436 result!139420))

(assert (=> d!580313 t!176031))

(declare-fun t!176033 () Bool)

(declare-fun tb!115325 () Bool)

(assert (=> (and b!1894595 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) t!176033) tb!115325))

(declare-fun result!139438 () Bool)

(assert (= result!139438 result!139392))

(assert (=> b!1894517 t!176033))

(assert (=> d!580301 t!176033))

(assert (=> b!1894569 t!176031))

(declare-fun b_and!145979 () Bool)

(declare-fun tp!540542 () Bool)

(assert (=> b!1894595 (= tp!540542 (and (=> t!176029 result!139434) (=> t!176033 result!139438) (=> t!176031 result!139436) b_and!145979))))

(declare-fun e!1209472 () Bool)

(assert (=> b!1894595 (= e!1209472 (and tp!540543 tp!540542))))

(declare-fun b!1894594 () Bool)

(declare-fun tp!540545 () Bool)

(declare-fun e!1209473 () Bool)

(assert (=> b!1894594 (= e!1209473 (and tp!540545 (inv!28325 (tag!4181 (h!26631 (t!175977 rules!3198)))) (inv!28329 (transformation!3767 (h!26631 (t!175977 rules!3198)))) e!1209472))))

(declare-fun b!1894593 () Bool)

(declare-fun e!1209474 () Bool)

(declare-fun tp!540544 () Bool)

(assert (=> b!1894593 (= e!1209474 (and e!1209473 tp!540544))))

(assert (=> b!1894259 (= tp!540460 e!1209474)))

(assert (= b!1894594 b!1894595))

(assert (= b!1894593 b!1894594))

(assert (= (and b!1894259 (is-Cons!21230 (t!175977 rules!3198))) b!1894593))

(declare-fun m!2326023 () Bool)

(assert (=> b!1894594 m!2326023))

(declare-fun m!2326025 () Bool)

(assert (=> b!1894594 m!2326025))

(declare-fun b!1894598 () Bool)

(declare-fun e!1209476 () Bool)

(declare-fun tp!540547 () Bool)

(assert (=> b!1894598 (= e!1209476 tp!540547)))

(declare-fun b!1894596 () Bool)

(assert (=> b!1894596 (= e!1209476 tp_is_empty!9059)))

(declare-fun b!1894597 () Bool)

(declare-fun tp!540546 () Bool)

(declare-fun tp!540550 () Bool)

(assert (=> b!1894597 (= e!1209476 (and tp!540546 tp!540550))))

(declare-fun b!1894599 () Bool)

(declare-fun tp!540549 () Bool)

(declare-fun tp!540548 () Bool)

(assert (=> b!1894599 (= e!1209476 (and tp!540549 tp!540548))))

(assert (=> b!1894258 (= tp!540465 e!1209476)))

(assert (= (and b!1894258 (is-ElementMatch!5192 (regex!3767 (rule!5960 separatorToken!354)))) b!1894596))

(assert (= (and b!1894258 (is-Concat!9096 (regex!3767 (rule!5960 separatorToken!354)))) b!1894597))

(assert (= (and b!1894258 (is-Star!5192 (regex!3767 (rule!5960 separatorToken!354)))) b!1894598))

(assert (= (and b!1894258 (is-Union!5192 (regex!3767 (rule!5960 separatorToken!354)))) b!1894599))

(declare-fun b!1894602 () Bool)

(declare-fun e!1209477 () Bool)

(declare-fun tp!540552 () Bool)

(assert (=> b!1894602 (= e!1209477 tp!540552)))

(declare-fun b!1894600 () Bool)

(assert (=> b!1894600 (= e!1209477 tp_is_empty!9059)))

(declare-fun b!1894601 () Bool)

(declare-fun tp!540551 () Bool)

(declare-fun tp!540555 () Bool)

(assert (=> b!1894601 (= e!1209477 (and tp!540551 tp!540555))))

(declare-fun b!1894603 () Bool)

(declare-fun tp!540554 () Bool)

(declare-fun tp!540553 () Bool)

(assert (=> b!1894603 (= e!1209477 (and tp!540554 tp!540553))))

(assert (=> b!1894274 (= tp!540470 e!1209477)))

(assert (= (and b!1894274 (is-ElementMatch!5192 (regex!3767 (rule!5960 (h!26632 tokens!598))))) b!1894600))

(assert (= (and b!1894274 (is-Concat!9096 (regex!3767 (rule!5960 (h!26632 tokens!598))))) b!1894601))

(assert (= (and b!1894274 (is-Star!5192 (regex!3767 (rule!5960 (h!26632 tokens!598))))) b!1894602))

(assert (= (and b!1894274 (is-Union!5192 (regex!3767 (rule!5960 (h!26632 tokens!598))))) b!1894603))

(declare-fun b!1894608 () Bool)

(declare-fun e!1209480 () Bool)

(declare-fun tp!540558 () Bool)

(assert (=> b!1894608 (= e!1209480 (and tp_is_empty!9059 tp!540558))))

(assert (=> b!1894263 (= tp!540461 e!1209480)))

(assert (= (and b!1894263 (is-Cons!21229 (originalCharacters!4574 (h!26632 tokens!598)))) b!1894608))

(declare-fun b!1894609 () Bool)

(declare-fun e!1209481 () Bool)

(declare-fun tp!540559 () Bool)

(assert (=> b!1894609 (= e!1209481 (and tp_is_empty!9059 tp!540559))))

(assert (=> b!1894276 (= tp!540462 e!1209481)))

(assert (= (and b!1894276 (is-Cons!21229 (originalCharacters!4574 separatorToken!354))) b!1894609))

(declare-fun b!1894623 () Bool)

(declare-fun b_free!52857 () Bool)

(declare-fun b_next!53561 () Bool)

(assert (=> b!1894623 (= b_free!52857 (not b_next!53561))))

(declare-fun t!176035 () Bool)

(declare-fun tb!115327 () Bool)

(assert (=> (and b!1894623 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176035) tb!115327))

(declare-fun result!139444 () Bool)

(assert (= result!139444 result!139406))

(assert (=> d!580305 t!176035))

(assert (=> d!580307 t!176035))

(declare-fun t!176037 () Bool)

(declare-fun tb!115329 () Bool)

(assert (=> (and b!1894623 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176037) tb!115329))

(declare-fun result!139446 () Bool)

(assert (= result!139446 result!139414))

(assert (=> d!580307 t!176037))

(declare-fun b_and!145981 () Bool)

(declare-fun tp!540574 () Bool)

(assert (=> b!1894623 (= tp!540574 (and (=> t!176035 result!139444) (=> t!176037 result!139446) b_and!145981))))

(declare-fun b_free!52859 () Bool)

(declare-fun b_next!53563 () Bool)

(assert (=> b!1894623 (= b_free!52859 (not b_next!53563))))

(declare-fun t!176039 () Bool)

(declare-fun tb!115331 () Bool)

(assert (=> (and b!1894623 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176039) tb!115331))

(declare-fun result!139448 () Bool)

(assert (= result!139448 result!139400))

(assert (=> d!580305 t!176039))

(declare-fun t!176041 () Bool)

(declare-fun tb!115333 () Bool)

(assert (=> (and b!1894623 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176041) tb!115333))

(declare-fun result!139450 () Bool)

(assert (= result!139450 result!139420))

(assert (=> d!580313 t!176041))

(declare-fun tb!115335 () Bool)

(declare-fun t!176043 () Bool)

(assert (=> (and b!1894623 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) t!176043) tb!115335))

(declare-fun result!139452 () Bool)

(assert (= result!139452 result!139392))

(assert (=> b!1894517 t!176043))

(assert (=> d!580301 t!176043))

(assert (=> b!1894569 t!176041))

(declare-fun b_and!145983 () Bool)

(declare-fun tp!540573 () Bool)

(assert (=> b!1894623 (= tp!540573 (and (=> t!176043 result!139452) (=> t!176041 result!139450) (=> t!176039 result!139448) b_and!145983))))

(declare-fun e!1209499 () Bool)

(assert (=> b!1894265 (= tp!540468 e!1209499)))

(declare-fun e!1209496 () Bool)

(declare-fun e!1209495 () Bool)

(declare-fun tp!540570 () Bool)

(declare-fun b!1894621 () Bool)

(assert (=> b!1894621 (= e!1209495 (and (inv!21 (value!118952 (h!26632 (t!175978 tokens!598)))) e!1209496 tp!540570))))

(declare-fun b!1894620 () Bool)

(declare-fun tp!540571 () Bool)

(assert (=> b!1894620 (= e!1209499 (and (inv!28328 (h!26632 (t!175978 tokens!598))) e!1209495 tp!540571))))

(declare-fun tp!540572 () Bool)

(declare-fun e!1209497 () Bool)

(declare-fun b!1894622 () Bool)

(assert (=> b!1894622 (= e!1209496 (and tp!540572 (inv!28325 (tag!4181 (rule!5960 (h!26632 (t!175978 tokens!598))))) (inv!28329 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) e!1209497))))

(assert (=> b!1894623 (= e!1209497 (and tp!540574 tp!540573))))

(assert (= b!1894622 b!1894623))

(assert (= b!1894621 b!1894622))

(assert (= b!1894620 b!1894621))

(assert (= (and b!1894265 (is-Cons!21231 (t!175978 tokens!598))) b!1894620))

(declare-fun m!2326027 () Bool)

(assert (=> b!1894621 m!2326027))

(declare-fun m!2326029 () Bool)

(assert (=> b!1894620 m!2326029))

(declare-fun m!2326031 () Bool)

(assert (=> b!1894622 m!2326031))

(declare-fun m!2326033 () Bool)

(assert (=> b!1894622 m!2326033))

(declare-fun b_lambda!62163 () Bool)

(assert (= b_lambda!62143 (or (and b!1894595 b_free!52855 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894268 b_free!52835 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894623 b_free!52859 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894272 b_free!52831 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894267 b_free!52839) b_lambda!62163)))

(declare-fun b_lambda!62165 () Bool)

(assert (= b_lambda!62151 (or (and b!1894623 b_free!52857 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894268 b_free!52833) (and b!1894595 b_free!52853 (= (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894267 b_free!52837 (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894272 b_free!52829 (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) b_lambda!62165)))

(declare-fun b_lambda!62167 () Bool)

(assert (= b_lambda!62149 (or (and b!1894623 b_free!52857 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894268 b_free!52833) (and b!1894595 b_free!52853 (= (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894267 b_free!52837 (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894272 b_free!52829 (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) b_lambda!62167)))

(declare-fun b_lambda!62169 () Bool)

(assert (= b_lambda!62153 (or (and b!1894595 b_free!52855 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894272 b_free!52831 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894267 b_free!52839 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894623 b_free!52859 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894268 b_free!52835) b_lambda!62169)))

(declare-fun b_lambda!62171 () Bool)

(assert (= b_lambda!62145 (or (and b!1894595 b_free!52855 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894272 b_free!52831 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894267 b_free!52839 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894623 b_free!52859 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894268 b_free!52835) b_lambda!62171)))

(declare-fun b_lambda!62173 () Bool)

(assert (= b_lambda!62147 (or (and b!1894623 b_free!52857 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894268 b_free!52833) (and b!1894595 b_free!52853 (= (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894267 b_free!52837 (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894272 b_free!52829 (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) b_lambda!62173)))

(declare-fun b_lambda!62175 () Bool)

(assert (= b_lambda!62157 (or (and b!1894595 b_free!52855 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894268 b_free!52835 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894623 b_free!52859 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894272 b_free!52831 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))))) (and b!1894267 b_free!52839) b_lambda!62175)))

(declare-fun b_lambda!62177 () Bool)

(assert (= b_lambda!62155 (or b!1894269 b_lambda!62177)))

(declare-fun bs!413329 () Bool)

(declare-fun d!580355 () Bool)

(assert (= bs!413329 (and d!580355 b!1894269)))

(assert (=> bs!413329 (= (dynLambda!10318 lambda!73994 (h!26632 tokens!598)) (not (isSeparator!3767 (rule!5960 (h!26632 tokens!598)))))))

(assert (=> b!1894510 d!580355))

(declare-fun b_lambda!62179 () Bool)

(assert (= b_lambda!62161 (or (and b!1894595 b_free!52855 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894272 b_free!52831 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894267 b_free!52839 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894623 b_free!52859 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (and b!1894268 b_free!52835) b_lambda!62179)))

(push 1)

(assert tp_is_empty!9059)

(assert b_and!145973)

(assert (not b!1894549))

(assert (not b!1894564))

(assert b_and!145955)

(assert (not b_next!53543))

(assert (not d!580315))

(assert (not b!1894467))

(assert (not b!1894608))

(assert (not b!1894583))

(assert (not b!1894377))

(assert (not d!580327))

(assert (not b!1894402))

(assert (not d!580307))

(assert (not d!580271))

(assert (not bm!116894))

(assert (not b!1894404))

(assert (not tb!115311))

(assert (not b!1894387))

(assert (not b!1894584))

(assert (not b_lambda!62169))

(assert (not b!1894391))

(assert (not b!1894491))

(assert (not b!1894582))

(assert (not b_next!53541))

(assert (not b!1894569))

(assert (not b!1894568))

(assert (not b!1894380))

(assert (not d!580329))

(assert b_and!145983)

(assert (not b_next!53559))

(assert (not b_lambda!62175))

(assert (not b!1894444))

(assert (not b!1894621))

(assert (not b!1894609))

(assert (not b_next!53563))

(assert (not b_next!53561))

(assert (not d!580311))

(assert (not d!580333))

(assert (not tb!115293))

(assert (not b!1894406))

(assert (not b!1894481))

(assert (not b!1894505))

(assert (not b!1894559))

(assert (not d!580285))

(assert b_and!145981)

(assert (not b_lambda!62179))

(assert (not b!1894622))

(assert (not b_next!53557))

(assert (not b_lambda!62167))

(assert (not b!1894599))

(assert (not b!1894517))

(assert (not b!1894603))

(assert (not b!1894460))

(assert (not b!1894518))

(assert (not b!1894443))

(assert b_and!145971)

(assert (not d!580309))

(assert (not b_lambda!62173))

(assert (not b!1894450))

(assert (not b!1894620))

(assert (not b_next!53537))

(assert (not b!1894593))

(assert (not d!580305))

(assert (not d!580303))

(assert (not b!1894480))

(assert (not b!1894376))

(assert (not d!580313))

(assert b_and!145975)

(assert (not b!1894602))

(assert (not b_lambda!62163))

(assert (not b!1894594))

(assert (not tb!115299))

(assert b_and!145977)

(assert (not d!580295))

(assert b_and!145957)

(assert (not b!1894442))

(assert (not b_next!53533))

(assert (not b!1894570))

(assert (not b!1894449))

(assert (not b!1894374))

(assert (not b!1894483))

(assert (not d!580279))

(assert b_and!145979)

(assert (not b!1894550))

(assert (not b_lambda!62177))

(assert (not tb!115305))

(assert (not b_lambda!62171))

(assert (not b_next!53539))

(assert (not b!1894372))

(assert b_and!145953)

(assert (not b!1894388))

(assert (not d!580353))

(assert (not b!1894601))

(assert (not d!580317))

(assert (not tb!115287))

(assert (not b!1894373))

(assert (not b_lambda!62165))

(assert (not b_next!53535))

(assert (not b!1894501))

(assert (not d!580301))

(assert (not b!1894566))

(assert (not b!1894511))

(assert (not b!1894504))

(assert (not b!1894597))

(assert (not d!580299))

(assert (not b!1894512))

(assert (not b!1894598))

(assert (not d!580297))

(assert (not d!580321))

(assert (not b!1894459))

(check-sat)

(pop 1)

(push 1)

(assert b_and!145955)

(assert (not b_next!53543))

(assert (not b_next!53541))

(assert b_and!145983)

(assert (not b_next!53559))

(assert b_and!145973)

(assert b_and!145971)

(assert (not b_next!53537))

(assert b_and!145975)

(assert (not b_next!53533))

(assert b_and!145979)

(assert (not b_next!53539))

(assert b_and!145953)

(assert (not b_next!53535))

(assert (not b_next!53563))

(assert (not b_next!53561))

(assert b_and!145981)

(assert (not b_next!53557))

(assert b_and!145957)

(assert b_and!145977)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!580391 () Bool)

(assert (=> d!580391 (= (head!4403 lt!724813) (h!26630 lt!724813))))

(assert (=> b!1894376 d!580391))

(declare-fun d!580393 () Bool)

(declare-fun lt!724917 () Token!7086)

(declare-fun apply!5593 (List!21313 Int) Token!7086)

(assert (=> d!580393 (= lt!724917 (apply!5593 (list!8633 (_1!11496 lt!724848)) 0))))

(declare-fun apply!5594 (Conc!7070 Int) Token!7086)

(assert (=> d!580393 (= lt!724917 (apply!5594 (c!309115 (_1!11496 lt!724848)) 0))))

(declare-fun e!1209613 () Bool)

(assert (=> d!580393 e!1209613))

(declare-fun res!845684 () Bool)

(assert (=> d!580393 (=> (not res!845684) (not e!1209613))))

(assert (=> d!580393 (= res!845684 (<= 0 0))))

(assert (=> d!580393 (= (apply!5591 (_1!11496 lt!724848) 0) lt!724917)))

(declare-fun b!1894791 () Bool)

(assert (=> b!1894791 (= e!1209613 (< 0 (size!16833 (_1!11496 lt!724848))))))

(assert (= (and d!580393 res!845684) b!1894791))

(declare-fun m!2326163 () Bool)

(assert (=> d!580393 m!2326163))

(assert (=> d!580393 m!2326163))

(declare-fun m!2326165 () Bool)

(assert (=> d!580393 m!2326165))

(declare-fun m!2326167 () Bool)

(assert (=> d!580393 m!2326167))

(assert (=> b!1894791 m!2325871))

(assert (=> b!1894442 d!580393))

(declare-fun b!1894802 () Bool)

(declare-fun e!1209619 () List!21311)

(declare-fun list!8637 (IArray!14141) List!21311)

(assert (=> b!1894802 (= e!1209619 (list!8637 (xs!9962 (c!309080 (charsOf!2323 separatorToken!354)))))))

(declare-fun d!580395 () Bool)

(declare-fun c!309139 () Bool)

(assert (=> d!580395 (= c!309139 (is-Empty!7068 (c!309080 (charsOf!2323 separatorToken!354))))))

(declare-fun e!1209618 () List!21311)

(assert (=> d!580395 (= (list!8634 (c!309080 (charsOf!2323 separatorToken!354))) e!1209618)))

(declare-fun b!1894800 () Bool)

(assert (=> b!1894800 (= e!1209618 Nil!21229)))

(declare-fun b!1894803 () Bool)

(declare-fun ++!5724 (List!21311 List!21311) List!21311)

(assert (=> b!1894803 (= e!1209619 (++!5724 (list!8634 (left!17034 (c!309080 (charsOf!2323 separatorToken!354)))) (list!8634 (right!17364 (c!309080 (charsOf!2323 separatorToken!354))))))))

(declare-fun b!1894801 () Bool)

(assert (=> b!1894801 (= e!1209618 e!1209619)))

(declare-fun c!309140 () Bool)

(assert (=> b!1894801 (= c!309140 (is-Leaf!10415 (c!309080 (charsOf!2323 separatorToken!354))))))

(assert (= (and d!580395 c!309139) b!1894800))

(assert (= (and d!580395 (not c!309139)) b!1894801))

(assert (= (and b!1894801 c!309140) b!1894802))

(assert (= (and b!1894801 (not c!309140)) b!1894803))

(declare-fun m!2326169 () Bool)

(assert (=> b!1894802 m!2326169))

(declare-fun m!2326171 () Bool)

(assert (=> b!1894803 m!2326171))

(declare-fun m!2326173 () Bool)

(assert (=> b!1894803 m!2326173))

(assert (=> b!1894803 m!2326171))

(assert (=> b!1894803 m!2326173))

(declare-fun m!2326175 () Bool)

(assert (=> b!1894803 m!2326175))

(assert (=> d!580311 d!580395))

(declare-fun d!580397 () Bool)

(assert (=> d!580397 (= (isEmpty!13033 (tail!2929 lt!724813)) (is-Nil!21229 (tail!2929 lt!724813)))))

(assert (=> b!1894373 d!580397))

(declare-fun d!580399 () Bool)

(assert (=> d!580399 (= (tail!2929 lt!724813) (t!175976 lt!724813))))

(assert (=> b!1894373 d!580399))

(declare-fun d!580401 () Bool)

(assert (=> d!580401 (= (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))) (list!8634 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))))))

(declare-fun bs!413335 () Bool)

(assert (= bs!413335 d!580401))

(declare-fun m!2326177 () Bool)

(assert (=> bs!413335 m!2326177))

(assert (=> b!1894569 d!580401))

(declare-fun d!580403 () Bool)

(declare-fun res!845685 () Bool)

(declare-fun e!1209620 () Bool)

(assert (=> d!580403 (=> res!845685 e!1209620)))

(assert (=> d!580403 (= res!845685 (is-Nil!21231 (t!175978 tokens!598)))))

(assert (=> d!580403 (= (forall!4441 (t!175978 tokens!598) lambda!73994) e!1209620)))

(declare-fun b!1894804 () Bool)

(declare-fun e!1209621 () Bool)

(assert (=> b!1894804 (= e!1209620 e!1209621)))

(declare-fun res!845686 () Bool)

(assert (=> b!1894804 (=> (not res!845686) (not e!1209621))))

(assert (=> b!1894804 (= res!845686 (dynLambda!10318 lambda!73994 (h!26632 (t!175978 tokens!598))))))

(declare-fun b!1894805 () Bool)

(assert (=> b!1894805 (= e!1209621 (forall!4441 (t!175978 (t!175978 tokens!598)) lambda!73994))))

(assert (= (and d!580403 (not res!845685)) b!1894804))

(assert (= (and b!1894804 res!845686) b!1894805))

(declare-fun b_lambda!62213 () Bool)

(assert (=> (not b_lambda!62213) (not b!1894804)))

(declare-fun m!2326179 () Bool)

(assert (=> b!1894804 m!2326179))

(declare-fun m!2326181 () Bool)

(assert (=> b!1894805 m!2326181))

(assert (=> b!1894511 d!580403))

(declare-fun d!580405 () Bool)

(declare-fun res!845687 () Bool)

(declare-fun e!1209622 () Bool)

(assert (=> d!580405 (=> res!845687 e!1209622)))

(assert (=> d!580405 (= res!845687 (not (is-Cons!21230 (t!175977 rules!3198))))))

(assert (=> d!580405 (= (sepAndNonSepRulesDisjointChars!865 rules!3198 (t!175977 rules!3198)) e!1209622)))

(declare-fun b!1894806 () Bool)

(declare-fun e!1209623 () Bool)

(assert (=> b!1894806 (= e!1209622 e!1209623)))

(declare-fun res!845688 () Bool)

(assert (=> b!1894806 (=> (not res!845688) (not e!1209623))))

(assert (=> b!1894806 (= res!845688 (ruleDisjointCharsFromAllFromOtherType!411 (h!26631 (t!175977 rules!3198)) rules!3198))))

(declare-fun b!1894807 () Bool)

(assert (=> b!1894807 (= e!1209623 (sepAndNonSepRulesDisjointChars!865 rules!3198 (t!175977 (t!175977 rules!3198))))))

(assert (= (and d!580405 (not res!845687)) b!1894806))

(assert (= (and b!1894806 res!845688) b!1894807))

(declare-fun m!2326183 () Bool)

(assert (=> b!1894806 m!2326183))

(declare-fun m!2326185 () Bool)

(assert (=> b!1894807 m!2326185))

(assert (=> b!1894388 d!580405))

(declare-fun d!580407 () Bool)

(assert (=> d!580407 (= (isEmpty!13033 lt!724813) (is-Nil!21229 lt!724813))))

(assert (=> d!580271 d!580407))

(declare-fun b!1894826 () Bool)

(declare-fun e!1209642 () Bool)

(declare-fun e!1209640 () Bool)

(assert (=> b!1894826 (= e!1209642 e!1209640)))

(declare-fun c!309146 () Bool)

(assert (=> b!1894826 (= c!309146 (is-Star!5192 (regex!3767 lt!724812)))))

(declare-fun b!1894827 () Bool)

(declare-fun e!1209643 () Bool)

(assert (=> b!1894827 (= e!1209640 e!1209643)))

(declare-fun res!845702 () Bool)

(assert (=> b!1894827 (= res!845702 (not (nullable!1576 (reg!5521 (regex!3767 lt!724812)))))))

(assert (=> b!1894827 (=> (not res!845702) (not e!1209643))))

(declare-fun bm!116904 () Bool)

(declare-fun call!116910 () Bool)

(declare-fun call!116909 () Bool)

(assert (=> bm!116904 (= call!116910 call!116909)))

(declare-fun b!1894828 () Bool)

(assert (=> b!1894828 (= e!1209643 call!116909)))

(declare-fun b!1894829 () Bool)

(declare-fun e!1209639 () Bool)

(assert (=> b!1894829 (= e!1209639 call!116910)))

(declare-fun b!1894830 () Bool)

(declare-fun e!1209644 () Bool)

(declare-fun e!1209641 () Bool)

(assert (=> b!1894830 (= e!1209644 e!1209641)))

(declare-fun res!845703 () Bool)

(assert (=> b!1894830 (=> (not res!845703) (not e!1209641))))

(declare-fun call!116911 () Bool)

(assert (=> b!1894830 (= res!845703 call!116911)))

(declare-fun d!580409 () Bool)

(declare-fun res!845701 () Bool)

(assert (=> d!580409 (=> res!845701 e!1209642)))

(assert (=> d!580409 (= res!845701 (is-ElementMatch!5192 (regex!3767 lt!724812)))))

(assert (=> d!580409 (= (validRegex!2100 (regex!3767 lt!724812)) e!1209642)))

(declare-fun b!1894831 () Bool)

(declare-fun res!845699 () Bool)

(assert (=> b!1894831 (=> res!845699 e!1209644)))

(assert (=> b!1894831 (= res!845699 (not (is-Concat!9096 (regex!3767 lt!724812))))))

(declare-fun e!1209638 () Bool)

(assert (=> b!1894831 (= e!1209638 e!1209644)))

(declare-fun b!1894832 () Bool)

(assert (=> b!1894832 (= e!1209640 e!1209638)))

(declare-fun c!309145 () Bool)

(assert (=> b!1894832 (= c!309145 (is-Union!5192 (regex!3767 lt!724812)))))

(declare-fun bm!116905 () Bool)

(assert (=> bm!116905 (= call!116911 (validRegex!2100 (ite c!309145 (regOne!10897 (regex!3767 lt!724812)) (regOne!10896 (regex!3767 lt!724812)))))))

(declare-fun b!1894833 () Bool)

(declare-fun res!845700 () Bool)

(assert (=> b!1894833 (=> (not res!845700) (not e!1209639))))

(assert (=> b!1894833 (= res!845700 call!116911)))

(assert (=> b!1894833 (= e!1209638 e!1209639)))

(declare-fun bm!116906 () Bool)

(assert (=> bm!116906 (= call!116909 (validRegex!2100 (ite c!309146 (reg!5521 (regex!3767 lt!724812)) (ite c!309145 (regTwo!10897 (regex!3767 lt!724812)) (regTwo!10896 (regex!3767 lt!724812))))))))

(declare-fun b!1894834 () Bool)

(assert (=> b!1894834 (= e!1209641 call!116910)))

(assert (= (and d!580409 (not res!845701)) b!1894826))

(assert (= (and b!1894826 c!309146) b!1894827))

(assert (= (and b!1894826 (not c!309146)) b!1894832))

(assert (= (and b!1894827 res!845702) b!1894828))

(assert (= (and b!1894832 c!309145) b!1894833))

(assert (= (and b!1894832 (not c!309145)) b!1894831))

(assert (= (and b!1894833 res!845700) b!1894829))

(assert (= (and b!1894831 (not res!845699)) b!1894830))

(assert (= (and b!1894830 res!845703) b!1894834))

(assert (= (or b!1894833 b!1894830) bm!116905))

(assert (= (or b!1894829 b!1894834) bm!116904))

(assert (= (or b!1894828 bm!116904) bm!116906))

(declare-fun m!2326187 () Bool)

(assert (=> b!1894827 m!2326187))

(declare-fun m!2326189 () Bool)

(assert (=> bm!116905 m!2326189))

(declare-fun m!2326191 () Bool)

(assert (=> bm!116906 m!2326191))

(assert (=> d!580271 d!580409))

(declare-fun d!580411 () Bool)

(assert (=> d!580411 (= (isEmpty!13033 (originalCharacters!4574 separatorToken!354)) (is-Nil!21229 (originalCharacters!4574 separatorToken!354)))))

(assert (=> d!580329 d!580411))

(declare-fun d!580413 () Bool)

(declare-fun c!309149 () Bool)

(assert (=> d!580413 (= c!309149 (is-Node!7068 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))))))

(declare-fun e!1209649 () Bool)

(assert (=> d!580413 (= (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))) e!1209649)))

(declare-fun b!1894841 () Bool)

(declare-fun inv!28336 (Conc!7068) Bool)

(assert (=> b!1894841 (= e!1209649 (inv!28336 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))))))

(declare-fun b!1894842 () Bool)

(declare-fun e!1209650 () Bool)

(assert (=> b!1894842 (= e!1209649 e!1209650)))

(declare-fun res!845706 () Bool)

(assert (=> b!1894842 (= res!845706 (not (is-Leaf!10415 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))))))))

(assert (=> b!1894842 (=> res!845706 e!1209650)))

(declare-fun b!1894843 () Bool)

(declare-fun inv!28337 (Conc!7068) Bool)

(assert (=> b!1894843 (= e!1209650 (inv!28337 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))))))

(assert (= (and d!580413 c!309149) b!1894841))

(assert (= (and d!580413 (not c!309149)) b!1894842))

(assert (= (and b!1894842 (not res!845706)) b!1894843))

(declare-fun m!2326193 () Bool)

(assert (=> b!1894841 m!2326193))

(declare-fun m!2326195 () Bool)

(assert (=> b!1894843 m!2326195))

(assert (=> b!1894501 d!580413))

(declare-fun d!580415 () Bool)

(assert (=> d!580415 (= (isEmpty!13033 (originalCharacters!4574 (h!26632 tokens!598))) (is-Nil!21229 (originalCharacters!4574 (h!26632 tokens!598))))))

(assert (=> d!580353 d!580415))

(declare-fun d!580417 () Bool)

(declare-fun isBalanced!2228 (Conc!7068) Bool)

(assert (=> d!580417 (= (inv!28333 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))) (isBalanced!2228 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))))

(declare-fun bs!413336 () Bool)

(assert (= bs!413336 d!580417))

(declare-fun m!2326197 () Bool)

(assert (=> bs!413336 m!2326197))

(assert (=> tb!115293 d!580417))

(declare-fun bs!413337 () Bool)

(declare-fun d!580419 () Bool)

(assert (= bs!413337 (and d!580419 b!1894269)))

(declare-fun lambda!74022 () Int)

(assert (=> bs!413337 (not (= lambda!74022 lambda!73994))))

(declare-fun bs!413338 () Bool)

(assert (= bs!413338 (and d!580419 d!580333)))

(assert (=> bs!413338 (= lambda!74022 lambda!74012)))

(declare-fun b!1894848 () Bool)

(declare-fun e!1209655 () Bool)

(assert (=> b!1894848 (= e!1209655 true)))

(declare-fun b!1894847 () Bool)

(declare-fun e!1209654 () Bool)

(assert (=> b!1894847 (= e!1209654 e!1209655)))

(declare-fun b!1894846 () Bool)

(declare-fun e!1209653 () Bool)

(assert (=> b!1894846 (= e!1209653 e!1209654)))

(assert (=> d!580419 e!1209653))

(assert (= b!1894847 b!1894848))

(assert (= b!1894846 b!1894847))

(assert (= (and d!580419 (is-Cons!21230 rules!3198)) b!1894846))

(assert (=> b!1894848 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (h!26631 rules!3198)))) (dynLambda!10319 order!13415 lambda!74022))))

(assert (=> b!1894848 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (h!26631 rules!3198)))) (dynLambda!10319 order!13415 lambda!74022))))

(assert (=> d!580419 true))

(declare-fun lt!724918 () Bool)

(assert (=> d!580419 (= lt!724918 (forall!4441 (t!175978 tokens!598) lambda!74022))))

(declare-fun e!1209651 () Bool)

(assert (=> d!580419 (= lt!724918 e!1209651)))

(declare-fun res!845708 () Bool)

(assert (=> d!580419 (=> res!845708 e!1209651)))

(assert (=> d!580419 (= res!845708 (not (is-Cons!21231 (t!175978 tokens!598))))))

(assert (=> d!580419 (not (isEmpty!13031 rules!3198))))

(assert (=> d!580419 (= (rulesProduceEachTokenIndividuallyList!1111 thiss!23328 rules!3198 (t!175978 tokens!598)) lt!724918)))

(declare-fun b!1894844 () Bool)

(declare-fun e!1209652 () Bool)

(assert (=> b!1894844 (= e!1209651 e!1209652)))

(declare-fun res!845707 () Bool)

(assert (=> b!1894844 (=> (not res!845707) (not e!1209652))))

(assert (=> b!1894844 (= res!845707 (rulesProduceIndividualToken!1552 thiss!23328 rules!3198 (h!26632 (t!175978 tokens!598))))))

(declare-fun b!1894845 () Bool)

(assert (=> b!1894845 (= e!1209652 (rulesProduceEachTokenIndividuallyList!1111 thiss!23328 rules!3198 (t!175978 (t!175978 tokens!598))))))

(assert (= (and d!580419 (not res!845708)) b!1894844))

(assert (= (and b!1894844 res!845707) b!1894845))

(declare-fun m!2326199 () Bool)

(assert (=> d!580419 m!2326199))

(assert (=> d!580419 m!2325731))

(declare-fun m!2326201 () Bool)

(assert (=> b!1894844 m!2326201))

(declare-fun m!2326203 () Bool)

(assert (=> b!1894845 m!2326203))

(assert (=> b!1894550 d!580419))

(declare-fun d!580421 () Bool)

(declare-fun res!845713 () Bool)

(declare-fun e!1209658 () Bool)

(assert (=> d!580421 (=> (not res!845713) (not e!1209658))))

(assert (=> d!580421 (= res!845713 (validRegex!2100 (regex!3767 (h!26631 rules!3198))))))

(assert (=> d!580421 (= (ruleValid!1144 thiss!23328 (h!26631 rules!3198)) e!1209658)))

(declare-fun b!1894853 () Bool)

(declare-fun res!845714 () Bool)

(assert (=> b!1894853 (=> (not res!845714) (not e!1209658))))

(assert (=> b!1894853 (= res!845714 (not (nullable!1576 (regex!3767 (h!26631 rules!3198)))))))

(declare-fun b!1894854 () Bool)

(assert (=> b!1894854 (= e!1209658 (not (= (tag!4181 (h!26631 rules!3198)) (String!24636 ""))))))

(assert (= (and d!580421 res!845713) b!1894853))

(assert (= (and b!1894853 res!845714) b!1894854))

(declare-fun m!2326205 () Bool)

(assert (=> d!580421 m!2326205))

(declare-fun m!2326207 () Bool)

(assert (=> b!1894853 m!2326207))

(assert (=> b!1894459 d!580421))

(declare-fun d!580423 () Bool)

(declare-fun res!845715 () Bool)

(declare-fun e!1209659 () Bool)

(assert (=> d!580423 (=> (not res!845715) (not e!1209659))))

(assert (=> d!580423 (= res!845715 (rulesValid!1413 thiss!23328 (t!175977 rules!3198)))))

(assert (=> d!580423 (= (rulesInvariant!2987 thiss!23328 (t!175977 rules!3198)) e!1209659)))

(declare-fun b!1894855 () Bool)

(assert (=> b!1894855 (= e!1209659 (noDuplicateTag!1411 thiss!23328 (t!175977 rules!3198) Nil!21236))))

(assert (= (and d!580423 res!845715) b!1894855))

(declare-fun m!2326209 () Bool)

(assert (=> d!580423 m!2326209))

(declare-fun m!2326211 () Bool)

(assert (=> b!1894855 m!2326211))

(assert (=> b!1894480 d!580423))

(declare-fun d!580425 () Bool)

(assert (=> d!580425 (rulesInvariant!2987 thiss!23328 (t!175977 rules!3198))))

(declare-fun lt!724921 () Unit!35597)

(declare-fun choose!11831 (LexerInterface!3380 Rule!7334 List!21312) Unit!35597)

(assert (=> d!580425 (= lt!724921 (choose!11831 thiss!23328 (h!26631 rules!3198) (t!175977 rules!3198)))))

(assert (=> d!580425 (rulesInvariant!2987 thiss!23328 (Cons!21230 (h!26631 rules!3198) (t!175977 rules!3198)))))

(assert (=> d!580425 (= (lemmaInvariantOnRulesThenOnTail!237 thiss!23328 (h!26631 rules!3198) (t!175977 rules!3198)) lt!724921)))

(declare-fun bs!413339 () Bool)

(assert (= bs!413339 d!580425))

(assert (=> bs!413339 m!2325913))

(declare-fun m!2326213 () Bool)

(assert (=> bs!413339 m!2326213))

(declare-fun m!2326215 () Bool)

(assert (=> bs!413339 m!2326215))

(assert (=> b!1894480 d!580425))

(declare-fun b!1894856 () Bool)

(declare-fun lt!724923 () Unit!35597)

(declare-fun lt!724922 () Unit!35597)

(assert (=> b!1894856 (= lt!724923 lt!724922)))

(assert (=> b!1894856 (rulesInvariant!2987 thiss!23328 (t!175977 (t!175977 rules!3198)))))

(assert (=> b!1894856 (= lt!724922 (lemmaInvariantOnRulesThenOnTail!237 thiss!23328 (h!26631 (t!175977 rules!3198)) (t!175977 (t!175977 rules!3198))))))

(declare-fun e!1209661 () Option!4243)

(assert (=> b!1894856 (= e!1209661 (getRuleFromTag!610 thiss!23328 (t!175977 (t!175977 rules!3198)) (tag!4181 (rule!5960 separatorToken!354))))))

(declare-fun b!1894857 () Bool)

(declare-fun e!1209663 () Bool)

(declare-fun e!1209662 () Bool)

(assert (=> b!1894857 (= e!1209663 e!1209662)))

(declare-fun res!845716 () Bool)

(assert (=> b!1894857 (=> (not res!845716) (not e!1209662))))

(declare-fun lt!724924 () Option!4243)

(assert (=> b!1894857 (= res!845716 (contains!3830 (t!175977 rules!3198) (get!6538 lt!724924)))))

(declare-fun b!1894858 () Bool)

(declare-fun e!1209660 () Option!4243)

(assert (=> b!1894858 (= e!1209660 e!1209661)))

(declare-fun c!309151 () Bool)

(assert (=> b!1894858 (= c!309151 (and (is-Cons!21230 (t!175977 rules!3198)) (not (= (tag!4181 (h!26631 (t!175977 rules!3198))) (tag!4181 (rule!5960 separatorToken!354))))))))

(declare-fun d!580427 () Bool)

(assert (=> d!580427 e!1209663))

(declare-fun res!845717 () Bool)

(assert (=> d!580427 (=> res!845717 e!1209663)))

(assert (=> d!580427 (= res!845717 (isEmpty!13035 lt!724924))))

(assert (=> d!580427 (= lt!724924 e!1209660)))

(declare-fun c!309150 () Bool)

(assert (=> d!580427 (= c!309150 (and (is-Cons!21230 (t!175977 rules!3198)) (= (tag!4181 (h!26631 (t!175977 rules!3198))) (tag!4181 (rule!5960 separatorToken!354)))))))

(assert (=> d!580427 (rulesInvariant!2987 thiss!23328 (t!175977 rules!3198))))

(assert (=> d!580427 (= (getRuleFromTag!610 thiss!23328 (t!175977 rules!3198) (tag!4181 (rule!5960 separatorToken!354))) lt!724924)))

(declare-fun b!1894859 () Bool)

(assert (=> b!1894859 (= e!1209662 (= (tag!4181 (get!6538 lt!724924)) (tag!4181 (rule!5960 separatorToken!354))))))

(declare-fun b!1894860 () Bool)

(assert (=> b!1894860 (= e!1209661 None!4242)))

(declare-fun b!1894861 () Bool)

(assert (=> b!1894861 (= e!1209660 (Some!4242 (h!26631 (t!175977 rules!3198))))))

(assert (= (and d!580427 c!309150) b!1894861))

(assert (= (and d!580427 (not c!309150)) b!1894858))

(assert (= (and b!1894858 c!309151) b!1894856))

(assert (= (and b!1894858 (not c!309151)) b!1894860))

(assert (= (and d!580427 (not res!845717)) b!1894857))

(assert (= (and b!1894857 res!845716) b!1894859))

(declare-fun m!2326217 () Bool)

(assert (=> b!1894856 m!2326217))

(declare-fun m!2326219 () Bool)

(assert (=> b!1894856 m!2326219))

(declare-fun m!2326221 () Bool)

(assert (=> b!1894856 m!2326221))

(declare-fun m!2326223 () Bool)

(assert (=> b!1894857 m!2326223))

(assert (=> b!1894857 m!2326223))

(declare-fun m!2326225 () Bool)

(assert (=> b!1894857 m!2326225))

(declare-fun m!2326227 () Bool)

(assert (=> d!580427 m!2326227))

(assert (=> d!580427 m!2325913))

(assert (=> b!1894859 m!2326223))

(assert (=> b!1894480 d!580427))

(declare-fun b!1894864 () Bool)

(declare-fun e!1209665 () List!21311)

(assert (=> b!1894864 (= e!1209665 (list!8637 (xs!9962 (c!309080 lt!724809))))))

(declare-fun d!580429 () Bool)

(declare-fun c!309152 () Bool)

(assert (=> d!580429 (= c!309152 (is-Empty!7068 (c!309080 lt!724809)))))

(declare-fun e!1209664 () List!21311)

(assert (=> d!580429 (= (list!8634 (c!309080 lt!724809)) e!1209664)))

(declare-fun b!1894862 () Bool)

(assert (=> b!1894862 (= e!1209664 Nil!21229)))

(declare-fun b!1894865 () Bool)

(assert (=> b!1894865 (= e!1209665 (++!5724 (list!8634 (left!17034 (c!309080 lt!724809))) (list!8634 (right!17364 (c!309080 lt!724809)))))))

(declare-fun b!1894863 () Bool)

(assert (=> b!1894863 (= e!1209664 e!1209665)))

(declare-fun c!309153 () Bool)

(assert (=> b!1894863 (= c!309153 (is-Leaf!10415 (c!309080 lt!724809)))))

(assert (= (and d!580429 c!309152) b!1894862))

(assert (= (and d!580429 (not c!309152)) b!1894863))

(assert (= (and b!1894863 c!309153) b!1894864))

(assert (= (and b!1894863 (not c!309153)) b!1894865))

(declare-fun m!2326229 () Bool)

(assert (=> b!1894864 m!2326229))

(declare-fun m!2326231 () Bool)

(assert (=> b!1894865 m!2326231))

(declare-fun m!2326233 () Bool)

(assert (=> b!1894865 m!2326233))

(assert (=> b!1894865 m!2326231))

(assert (=> b!1894865 m!2326233))

(declare-fun m!2326235 () Bool)

(assert (=> b!1894865 m!2326235))

(assert (=> d!580309 d!580429))

(declare-fun d!580431 () Bool)

(assert (=> d!580431 (= (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))) (list!8634 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))))))

(declare-fun bs!413340 () Bool)

(assert (= bs!413340 d!580431))

(declare-fun m!2326237 () Bool)

(assert (=> bs!413340 m!2326237))

(assert (=> b!1894517 d!580431))

(declare-fun d!580433 () Bool)

(assert (=> d!580433 (= (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))) (list!8634 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))))

(declare-fun bs!413341 () Bool)

(assert (= bs!413341 d!580433))

(declare-fun m!2326239 () Bool)

(assert (=> bs!413341 m!2326239))

(assert (=> d!580305 d!580433))

(assert (=> d!580305 d!580309))

(declare-fun d!580435 () Bool)

(declare-fun dynLambda!10328 (Int BalanceConc!13952) Bool)

(assert (=> d!580435 (dynLambda!10328 lambda!74003 lt!724809)))

(declare-fun lt!724927 () Unit!35597)

(declare-fun choose!11832 (Int BalanceConc!13952) Unit!35597)

(assert (=> d!580435 (= lt!724927 (choose!11832 lambda!74003 lt!724809))))

(declare-fun Forall!989 (Int) Bool)

(assert (=> d!580435 (Forall!989 lambda!74003)))

(assert (=> d!580435 (= (ForallOf!372 lambda!74003 lt!724809) lt!724927)))

(declare-fun b_lambda!62215 () Bool)

(assert (=> (not b_lambda!62215) (not d!580435)))

(declare-fun bs!413342 () Bool)

(assert (= bs!413342 d!580435))

(declare-fun m!2326241 () Bool)

(assert (=> bs!413342 m!2326241))

(declare-fun m!2326243 () Bool)

(assert (=> bs!413342 m!2326243))

(declare-fun m!2326245 () Bool)

(assert (=> bs!413342 m!2326245))

(assert (=> d!580305 d!580435))

(declare-fun bs!413343 () Bool)

(declare-fun d!580437 () Bool)

(assert (= bs!413343 (and d!580437 d!580299)))

(declare-fun lambda!74025 () Int)

(assert (=> bs!413343 (= lambda!74025 lambda!74000)))

(assert (=> d!580437 true))

(declare-fun lt!724930 () Bool)

(assert (=> d!580437 (= lt!724930 (rulesValidInductive!1273 thiss!23328 rules!3198))))

(assert (=> d!580437 (= lt!724930 (forall!4443 rules!3198 lambda!74025))))

(assert (=> d!580437 (= (rulesValid!1413 thiss!23328 rules!3198) lt!724930)))

(declare-fun bs!413344 () Bool)

(assert (= bs!413344 d!580437))

(assert (=> bs!413344 m!2325723))

(declare-fun m!2326247 () Bool)

(assert (=> bs!413344 m!2326247))

(assert (=> d!580317 d!580437))

(declare-fun bs!413345 () Bool)

(declare-fun d!580439 () Bool)

(assert (= bs!413345 (and d!580439 d!580307)))

(declare-fun lambda!74028 () Int)

(assert (=> bs!413345 (= (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (= lambda!74028 lambda!74006))))

(assert (=> d!580439 true))

(assert (=> d!580439 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))) (dynLambda!10317 order!13407 lambda!74028))))

(declare-fun Forall2!614 (Int) Bool)

(assert (=> d!580439 (= (equivClasses!1453 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))) (Forall2!614 lambda!74028))))

(declare-fun bs!413346 () Bool)

(assert (= bs!413346 d!580439))

(declare-fun m!2326249 () Bool)

(assert (=> bs!413346 m!2326249))

(assert (=> b!1894512 d!580439))

(declare-fun b!1894870 () Bool)

(declare-fun e!1209668 () Bool)

(assert (=> b!1894870 (= e!1209668 (inv!16 (value!118952 (h!26632 (t!175978 tokens!598)))))))

(declare-fun b!1894871 () Bool)

(declare-fun e!1209670 () Bool)

(assert (=> b!1894871 (= e!1209668 e!1209670)))

(declare-fun c!309155 () Bool)

(assert (=> b!1894871 (= c!309155 (is-IntegerValue!11710 (value!118952 (h!26632 (t!175978 tokens!598)))))))

(declare-fun d!580441 () Bool)

(declare-fun c!309154 () Bool)

(assert (=> d!580441 (= c!309154 (is-IntegerValue!11709 (value!118952 (h!26632 (t!175978 tokens!598)))))))

(assert (=> d!580441 (= (inv!21 (value!118952 (h!26632 (t!175978 tokens!598)))) e!1209668)))

(declare-fun b!1894872 () Bool)

(declare-fun e!1209669 () Bool)

(assert (=> b!1894872 (= e!1209669 (inv!15 (value!118952 (h!26632 (t!175978 tokens!598)))))))

(declare-fun b!1894873 () Bool)

(declare-fun res!845720 () Bool)

(assert (=> b!1894873 (=> res!845720 e!1209669)))

(assert (=> b!1894873 (= res!845720 (not (is-IntegerValue!11711 (value!118952 (h!26632 (t!175978 tokens!598))))))))

(assert (=> b!1894873 (= e!1209670 e!1209669)))

(declare-fun b!1894874 () Bool)

(assert (=> b!1894874 (= e!1209670 (inv!17 (value!118952 (h!26632 (t!175978 tokens!598)))))))

(assert (= (and d!580441 c!309154) b!1894870))

(assert (= (and d!580441 (not c!309154)) b!1894871))

(assert (= (and b!1894871 c!309155) b!1894874))

(assert (= (and b!1894871 (not c!309155)) b!1894873))

(assert (= (and b!1894873 (not res!845720)) b!1894872))

(declare-fun m!2326251 () Bool)

(assert (=> b!1894870 m!2326251))

(declare-fun m!2326253 () Bool)

(assert (=> b!1894872 m!2326253))

(declare-fun m!2326255 () Bool)

(assert (=> b!1894874 m!2326255))

(assert (=> b!1894621 d!580441))

(declare-fun bs!413347 () Bool)

(declare-fun d!580443 () Bool)

(assert (= bs!413347 (and d!580443 d!580305)))

(declare-fun lambda!74031 () Int)

(assert (=> bs!413347 (= lambda!74031 lambda!74003)))

(assert (=> d!580443 true))

(assert (=> d!580443 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (dynLambda!10314 order!13403 lambda!74031))))

(assert (=> d!580443 true))

(assert (=> d!580443 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (dynLambda!10314 order!13403 lambda!74031))))

(assert (=> d!580443 (= (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (Forall!989 lambda!74031))))

(declare-fun bs!413348 () Bool)

(assert (= bs!413348 d!580443))

(declare-fun m!2326257 () Bool)

(assert (=> bs!413348 m!2326257))

(assert (=> d!580279 d!580443))

(declare-fun d!580445 () Bool)

(declare-fun charsToBigInt!1 (List!21310) Int)

(assert (=> d!580445 (= (inv!17 (value!118952 separatorToken!354)) (= (charsToBigInt!1 (text!27769 (value!118952 separatorToken!354))) (value!118944 (value!118952 separatorToken!354))))))

(declare-fun bs!413349 () Bool)

(assert (= bs!413349 d!580445))

(declare-fun m!2326259 () Bool)

(assert (=> bs!413349 m!2326259))

(assert (=> b!1894568 d!580445))

(declare-fun bs!413350 () Bool)

(declare-fun d!580447 () Bool)

(assert (= bs!413350 (and d!580447 d!580305)))

(declare-fun lambda!74032 () Int)

(assert (=> bs!413350 (= (and (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (= lambda!74032 lambda!74003))))

(declare-fun bs!413351 () Bool)

(assert (= bs!413351 (and d!580447 d!580443)))

(assert (=> bs!413351 (= (and (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (= lambda!74032 lambda!74031))))

(assert (=> d!580447 true))

(assert (=> d!580447 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (h!26631 rules!3198)))) (dynLambda!10314 order!13403 lambda!74032))))

(assert (=> d!580447 true))

(assert (=> d!580447 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (h!26631 rules!3198)))) (dynLambda!10314 order!13403 lambda!74032))))

(assert (=> d!580447 (= (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (h!26631 rules!3198)))) (Forall!989 lambda!74032))))

(declare-fun bs!413352 () Bool)

(assert (= bs!413352 d!580447))

(declare-fun m!2326261 () Bool)

(assert (=> bs!413352 m!2326261))

(assert (=> d!580321 d!580447))

(declare-fun d!580449 () Bool)

(declare-fun dynLambda!10329 (Int BalanceConc!13952 BalanceConc!13952) Bool)

(assert (=> d!580449 (dynLambda!10329 lambda!74006 lt!724809 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))

(declare-fun lt!724933 () Unit!35597)

(declare-fun choose!11833 (Int BalanceConc!13952 BalanceConc!13952) Unit!35597)

(assert (=> d!580449 (= lt!724933 (choose!11833 lambda!74006 lt!724809 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))))))

(assert (=> d!580449 (Forall2!614 lambda!74006)))

(assert (=> d!580449 (= (Forall2of!168 lambda!74006 lt!724809 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))) lt!724933)))

(declare-fun b_lambda!62217 () Bool)

(assert (=> (not b_lambda!62217) (not d!580449)))

(declare-fun bs!413353 () Bool)

(assert (= bs!413353 d!580449))

(assert (=> bs!413353 m!2325709))

(declare-fun m!2326263 () Bool)

(assert (=> bs!413353 m!2326263))

(assert (=> bs!413353 m!2325709))

(declare-fun m!2326265 () Bool)

(assert (=> bs!413353 m!2326265))

(declare-fun m!2326267 () Bool)

(assert (=> bs!413353 m!2326267))

(assert (=> d!580307 d!580449))

(assert (=> d!580307 d!580309))

(declare-fun d!580451 () Bool)

(assert (=> d!580451 (= (list!8631 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))) (list!8634 (c!309080 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(declare-fun bs!413354 () Bool)

(assert (= bs!413354 d!580451))

(declare-fun m!2326269 () Bool)

(assert (=> bs!413354 m!2326269))

(assert (=> d!580307 d!580451))

(declare-fun d!580453 () Bool)

(declare-fun charsToBigInt!0 (List!21310 Int) Int)

(assert (=> d!580453 (= (inv!15 (value!118952 separatorToken!354)) (= (charsToBigInt!0 (text!27770 (value!118952 separatorToken!354)) 0) (value!118947 (value!118952 separatorToken!354))))))

(declare-fun bs!413355 () Bool)

(assert (= bs!413355 d!580453))

(declare-fun m!2326271 () Bool)

(assert (=> bs!413355 m!2326271))

(assert (=> b!1894566 d!580453))

(assert (=> b!1894377 d!580391))

(declare-fun d!580455 () Bool)

(assert (=> d!580455 (= (inv!28325 (tag!4181 (h!26631 (t!175977 rules!3198)))) (= (mod (str.len (value!118951 (tag!4181 (h!26631 (t!175977 rules!3198))))) 2) 0))))

(assert (=> b!1894594 d!580455))

(declare-fun d!580457 () Bool)

(declare-fun res!845721 () Bool)

(declare-fun e!1209671 () Bool)

(assert (=> d!580457 (=> (not res!845721) (not e!1209671))))

(assert (=> d!580457 (= res!845721 (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198))))))))

(assert (=> d!580457 (= (inv!28329 (transformation!3767 (h!26631 (t!175977 rules!3198)))) e!1209671)))

(declare-fun b!1894880 () Bool)

(assert (=> b!1894880 (= e!1209671 (equivClasses!1453 (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198))))))))

(assert (= (and d!580457 res!845721) b!1894880))

(declare-fun m!2326273 () Bool)

(assert (=> d!580457 m!2326273))

(declare-fun m!2326275 () Bool)

(assert (=> b!1894880 m!2326275))

(assert (=> b!1894594 d!580457))

(declare-fun b!1894882 () Bool)

(declare-fun res!845729 () Bool)

(declare-fun e!1209673 () Bool)

(assert (=> b!1894882 (=> res!845729 e!1209673)))

(declare-fun e!1209678 () Bool)

(assert (=> b!1894882 (= res!845729 e!1209678)))

(declare-fun res!845723 () Bool)

(assert (=> b!1894882 (=> (not res!845723) (not e!1209678))))

(declare-fun lt!724934 () Bool)

(assert (=> b!1894882 (= res!845723 lt!724934)))

(declare-fun b!1894883 () Bool)

(declare-fun e!1209675 () Bool)

(declare-fun e!1209676 () Bool)

(assert (=> b!1894883 (= e!1209675 e!1209676)))

(declare-fun c!309158 () Bool)

(assert (=> b!1894883 (= c!309158 (is-EmptyLang!5192 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))))))))

(declare-fun b!1894884 () Bool)

(declare-fun e!1209672 () Bool)

(assert (=> b!1894884 (= e!1209672 (matchR!2478 (derivativeStep!1335 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))) (head!4403 (list!8631 (charsOf!2323 separatorToken!354)))) (tail!2929 (list!8631 (charsOf!2323 separatorToken!354)))))))

(declare-fun b!1894885 () Bool)

(declare-fun res!845725 () Bool)

(declare-fun e!1209674 () Bool)

(assert (=> b!1894885 (=> res!845725 e!1209674)))

(assert (=> b!1894885 (= res!845725 (not (isEmpty!13033 (tail!2929 (list!8631 (charsOf!2323 separatorToken!354))))))))

(declare-fun b!1894886 () Bool)

(declare-fun res!845724 () Bool)

(assert (=> b!1894886 (=> (not res!845724) (not e!1209678))))

(assert (=> b!1894886 (= res!845724 (isEmpty!13033 (tail!2929 (list!8631 (charsOf!2323 separatorToken!354)))))))

(declare-fun b!1894887 () Bool)

(declare-fun res!845722 () Bool)

(assert (=> b!1894887 (=> res!845722 e!1209673)))

(assert (=> b!1894887 (= res!845722 (not (is-ElementMatch!5192 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))))))))

(assert (=> b!1894887 (= e!1209676 e!1209673)))

(declare-fun bm!116907 () Bool)

(declare-fun call!116912 () Bool)

(assert (=> bm!116907 (= call!116912 (isEmpty!13033 (list!8631 (charsOf!2323 separatorToken!354))))))

(declare-fun b!1894888 () Bool)

(assert (=> b!1894888 (= e!1209674 (not (= (head!4403 (list!8631 (charsOf!2323 separatorToken!354))) (c!309081 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))))))))))

(declare-fun b!1894889 () Bool)

(assert (=> b!1894889 (= e!1209678 (= (head!4403 (list!8631 (charsOf!2323 separatorToken!354))) (c!309081 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))))))))

(declare-fun b!1894890 () Bool)

(declare-fun e!1209677 () Bool)

(assert (=> b!1894890 (= e!1209677 e!1209674)))

(declare-fun res!845727 () Bool)

(assert (=> b!1894890 (=> res!845727 e!1209674)))

(assert (=> b!1894890 (= res!845727 call!116912)))

(declare-fun b!1894891 () Bool)

(assert (=> b!1894891 (= e!1209673 e!1209677)))

(declare-fun res!845726 () Bool)

(assert (=> b!1894891 (=> (not res!845726) (not e!1209677))))

(assert (=> b!1894891 (= res!845726 (not lt!724934))))

(declare-fun b!1894892 () Bool)

(assert (=> b!1894892 (= e!1209672 (nullable!1576 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))))))))

(declare-fun b!1894893 () Bool)

(assert (=> b!1894893 (= e!1209676 (not lt!724934))))

(declare-fun b!1894894 () Bool)

(assert (=> b!1894894 (= e!1209675 (= lt!724934 call!116912))))

(declare-fun d!580459 () Bool)

(assert (=> d!580459 e!1209675))

(declare-fun c!309157 () Bool)

(assert (=> d!580459 (= c!309157 (is-EmptyExpr!5192 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))))))))

(assert (=> d!580459 (= lt!724934 e!1209672)))

(declare-fun c!309156 () Bool)

(assert (=> d!580459 (= c!309156 (isEmpty!13033 (list!8631 (charsOf!2323 separatorToken!354))))))

(assert (=> d!580459 (validRegex!2100 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))))))

(assert (=> d!580459 (= (matchR!2478 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))) (list!8631 (charsOf!2323 separatorToken!354))) lt!724934)))

(declare-fun b!1894881 () Bool)

(declare-fun res!845728 () Bool)

(assert (=> b!1894881 (=> (not res!845728) (not e!1209678))))

(assert (=> b!1894881 (= res!845728 (not call!116912))))

(assert (= (and d!580459 c!309156) b!1894892))

(assert (= (and d!580459 (not c!309156)) b!1894884))

(assert (= (and d!580459 c!309157) b!1894894))

(assert (= (and d!580459 (not c!309157)) b!1894883))

(assert (= (and b!1894883 c!309158) b!1894893))

(assert (= (and b!1894883 (not c!309158)) b!1894887))

(assert (= (and b!1894887 (not res!845722)) b!1894882))

(assert (= (and b!1894882 res!845723) b!1894881))

(assert (= (and b!1894881 res!845728) b!1894886))

(assert (= (and b!1894886 res!845724) b!1894889))

(assert (= (and b!1894882 (not res!845729)) b!1894891))

(assert (= (and b!1894891 res!845726) b!1894890))

(assert (= (and b!1894890 (not res!845727)) b!1894885))

(assert (= (and b!1894885 (not res!845725)) b!1894888))

(assert (= (or b!1894894 b!1894881 b!1894890) bm!116907))

(declare-fun m!2326277 () Bool)

(assert (=> b!1894892 m!2326277))

(assert (=> b!1894884 m!2325721))

(declare-fun m!2326279 () Bool)

(assert (=> b!1894884 m!2326279))

(assert (=> b!1894884 m!2326279))

(declare-fun m!2326281 () Bool)

(assert (=> b!1894884 m!2326281))

(assert (=> b!1894884 m!2325721))

(declare-fun m!2326283 () Bool)

(assert (=> b!1894884 m!2326283))

(assert (=> b!1894884 m!2326281))

(assert (=> b!1894884 m!2326283))

(declare-fun m!2326285 () Bool)

(assert (=> b!1894884 m!2326285))

(assert (=> b!1894888 m!2325721))

(assert (=> b!1894888 m!2326279))

(assert (=> b!1894885 m!2325721))

(assert (=> b!1894885 m!2326283))

(assert (=> b!1894885 m!2326283))

(declare-fun m!2326287 () Bool)

(assert (=> b!1894885 m!2326287))

(assert (=> b!1894886 m!2325721))

(assert (=> b!1894886 m!2326283))

(assert (=> b!1894886 m!2326283))

(assert (=> b!1894886 m!2326287))

(assert (=> b!1894889 m!2325721))

(assert (=> b!1894889 m!2326279))

(assert (=> bm!116907 m!2325721))

(declare-fun m!2326289 () Bool)

(assert (=> bm!116907 m!2326289))

(assert (=> d!580459 m!2325721))

(assert (=> d!580459 m!2326289))

(declare-fun m!2326291 () Bool)

(assert (=> d!580459 m!2326291))

(assert (=> b!1894449 d!580459))

(declare-fun d!580461 () Bool)

(assert (=> d!580461 (= (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))) (v!26267 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))))))

(assert (=> b!1894449 d!580461))

(assert (=> b!1894449 d!580311))

(assert (=> b!1894449 d!580301))

(assert (=> b!1894449 d!580303))

(declare-fun d!580463 () Bool)

(assert (=> d!580463 (= (list!8631 lt!724876) (list!8634 (c!309080 lt!724876)))))

(declare-fun bs!413356 () Bool)

(assert (= bs!413356 d!580463))

(declare-fun m!2326293 () Bool)

(assert (=> bs!413356 m!2326293))

(assert (=> d!580313 d!580463))

(declare-fun d!580465 () Bool)

(declare-fun charsToInt!0 (List!21310) (_ BitVec 32))

(assert (=> d!580465 (= (inv!16 (value!118952 separatorToken!354)) (= (charsToInt!0 (text!27768 (value!118952 separatorToken!354))) (value!118943 (value!118952 separatorToken!354))))))

(declare-fun bs!413357 () Bool)

(assert (= bs!413357 d!580465))

(declare-fun m!2326295 () Bool)

(assert (=> bs!413357 m!2326295))

(assert (=> b!1894564 d!580465))

(declare-fun d!580467 () Bool)

(assert (=> d!580467 (= (isDefined!3541 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))) (not (isEmpty!13035 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))))))

(declare-fun bs!413358 () Bool)

(assert (= bs!413358 d!580467))

(assert (=> bs!413358 m!2325715))

(declare-fun m!2326297 () Bool)

(assert (=> bs!413358 m!2326297))

(assert (=> d!580295 d!580467))

(assert (=> d!580295 d!580303))

(declare-fun d!580469 () Bool)

(declare-fun e!1209681 () Bool)

(assert (=> d!580469 e!1209681))

(declare-fun res!845734 () Bool)

(assert (=> d!580469 (=> (not res!845734) (not e!1209681))))

(assert (=> d!580469 (= res!845734 (isDefined!3541 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354)))))))

(assert (=> d!580469 true))

(declare-fun _$52!1163 () Unit!35597)

(assert (=> d!580469 (= (choose!11829 thiss!23328 rules!3198 lt!724813 separatorToken!354) _$52!1163)))

(declare-fun b!1894899 () Bool)

(declare-fun res!845735 () Bool)

(assert (=> b!1894899 (=> (not res!845735) (not e!1209681))))

(assert (=> b!1894899 (= res!845735 (matchR!2478 (regex!3767 (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))) (list!8631 (charsOf!2323 separatorToken!354))))))

(declare-fun b!1894900 () Bool)

(assert (=> b!1894900 (= e!1209681 (= (rule!5960 separatorToken!354) (get!6538 (getRuleFromTag!610 thiss!23328 rules!3198 (tag!4181 (rule!5960 separatorToken!354))))))))

(assert (= (and d!580469 res!845734) b!1894899))

(assert (= (and b!1894899 res!845735) b!1894900))

(assert (=> d!580469 m!2325715))

(assert (=> d!580469 m!2325715))

(assert (=> d!580469 m!2325889))

(assert (=> b!1894899 m!2325717))

(assert (=> b!1894899 m!2325721))

(assert (=> b!1894899 m!2325715))

(assert (=> b!1894899 m!2325895))

(assert (=> b!1894899 m!2325715))

(assert (=> b!1894899 m!2325721))

(assert (=> b!1894899 m!2325893))

(assert (=> b!1894899 m!2325717))

(assert (=> b!1894900 m!2325715))

(assert (=> b!1894900 m!2325715))

(assert (=> b!1894900 m!2325895))

(assert (=> d!580295 d!580469))

(assert (=> d!580295 d!580317))

(declare-fun d!580471 () Bool)

(declare-fun lt!724937 () Bool)

(assert (=> d!580471 (= lt!724937 (isEmpty!13033 (list!8631 (_2!11496 lt!724848))))))

(declare-fun isEmpty!13039 (Conc!7068) Bool)

(assert (=> d!580471 (= lt!724937 (isEmpty!13039 (c!309080 (_2!11496 lt!724848))))))

(assert (=> d!580471 (= (isEmpty!13034 (_2!11496 lt!724848)) lt!724937)))

(declare-fun bs!413359 () Bool)

(assert (= bs!413359 d!580471))

(declare-fun m!2326299 () Bool)

(assert (=> bs!413359 m!2326299))

(assert (=> bs!413359 m!2326299))

(declare-fun m!2326301 () Bool)

(assert (=> bs!413359 m!2326301))

(declare-fun m!2326303 () Bool)

(assert (=> bs!413359 m!2326303))

(assert (=> b!1894443 d!580471))

(declare-fun b!1894901 () Bool)

(declare-fun e!1209682 () Bool)

(assert (=> b!1894901 (= e!1209682 (inv!16 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(declare-fun b!1894902 () Bool)

(declare-fun e!1209684 () Bool)

(assert (=> b!1894902 (= e!1209682 e!1209684)))

(declare-fun c!309160 () Bool)

(assert (=> b!1894902 (= c!309160 (is-IntegerValue!11710 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(declare-fun d!580473 () Bool)

(declare-fun c!309159 () Bool)

(assert (=> d!580473 (= c!309159 (is-IntegerValue!11709 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(assert (=> d!580473 (= (inv!21 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))) e!1209682)))

(declare-fun b!1894903 () Bool)

(declare-fun e!1209683 () Bool)

(assert (=> b!1894903 (= e!1209683 (inv!15 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(declare-fun b!1894904 () Bool)

(declare-fun res!845736 () Bool)

(assert (=> b!1894904 (=> res!845736 e!1209683)))

(assert (=> b!1894904 (= res!845736 (not (is-IntegerValue!11711 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))))))))

(assert (=> b!1894904 (= e!1209684 e!1209683)))

(declare-fun b!1894905 () Bool)

(assert (=> b!1894905 (= e!1209684 (inv!17 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(assert (= (and d!580473 c!309159) b!1894901))

(assert (= (and d!580473 (not c!309159)) b!1894902))

(assert (= (and b!1894902 c!309160) b!1894905))

(assert (= (and b!1894902 (not c!309160)) b!1894904))

(assert (= (and b!1894904 (not res!845736)) b!1894903))

(declare-fun m!2326305 () Bool)

(assert (=> b!1894901 m!2326305))

(declare-fun m!2326307 () Bool)

(assert (=> b!1894903 m!2326307))

(declare-fun m!2326309 () Bool)

(assert (=> b!1894905 m!2326309))

(assert (=> tb!115305 d!580473))

(assert (=> bm!116894 d!580407))

(declare-fun d!580475 () Bool)

(declare-fun res!845741 () Bool)

(declare-fun e!1209689 () Bool)

(assert (=> d!580475 (=> res!845741 e!1209689)))

(assert (=> d!580475 (= res!845741 (is-Nil!21230 rules!3198))))

(assert (=> d!580475 (= (forall!4443 rules!3198 lambda!74000) e!1209689)))

(declare-fun b!1894910 () Bool)

(declare-fun e!1209690 () Bool)

(assert (=> b!1894910 (= e!1209689 e!1209690)))

(declare-fun res!845742 () Bool)

(assert (=> b!1894910 (=> (not res!845742) (not e!1209690))))

(declare-fun dynLambda!10330 (Int Rule!7334) Bool)

(assert (=> b!1894910 (= res!845742 (dynLambda!10330 lambda!74000 (h!26631 rules!3198)))))

(declare-fun b!1894911 () Bool)

(assert (=> b!1894911 (= e!1209690 (forall!4443 (t!175977 rules!3198) lambda!74000))))

(assert (= (and d!580475 (not res!845741)) b!1894910))

(assert (= (and b!1894910 res!845742) b!1894911))

(declare-fun b_lambda!62219 () Bool)

(assert (=> (not b_lambda!62219) (not b!1894910)))

(declare-fun m!2326311 () Bool)

(assert (=> b!1894910 m!2326311))

(declare-fun m!2326313 () Bool)

(assert (=> b!1894911 m!2326313))

(assert (=> d!580299 d!580475))

(declare-fun d!580477 () Bool)

(assert (=> d!580477 (= (inv!28333 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))) (isBalanced!2228 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))))))

(declare-fun bs!413360 () Bool)

(assert (= bs!413360 d!580477))

(declare-fun m!2326315 () Bool)

(assert (=> bs!413360 m!2326315))

(assert (=> tb!115287 d!580477))

(declare-fun d!580479 () Bool)

(declare-fun e!1209693 () Bool)

(assert (=> d!580479 e!1209693))

(declare-fun res!845745 () Bool)

(assert (=> d!580479 (=> (not res!845745) (not e!1209693))))

(declare-fun lt!724940 () BalanceConc!13952)

(assert (=> d!580479 (= res!845745 (= (list!8631 lt!724940) (originalCharacters!4574 (h!26632 tokens!598))))))

(declare-fun fromList!469 (List!21311) Conc!7068)

(assert (=> d!580479 (= lt!724940 (BalanceConc!13953 (fromList!469 (originalCharacters!4574 (h!26632 tokens!598)))))))

(assert (=> d!580479 (= (fromListB!1205 (originalCharacters!4574 (h!26632 tokens!598))) lt!724940)))

(declare-fun b!1894914 () Bool)

(assert (=> b!1894914 (= e!1209693 (isBalanced!2228 (fromList!469 (originalCharacters!4574 (h!26632 tokens!598)))))))

(assert (= (and d!580479 res!845745) b!1894914))

(declare-fun m!2326317 () Bool)

(assert (=> d!580479 m!2326317))

(declare-fun m!2326319 () Bool)

(assert (=> d!580479 m!2326319))

(assert (=> b!1894914 m!2326319))

(assert (=> b!1894914 m!2326319))

(declare-fun m!2326321 () Bool)

(assert (=> b!1894914 m!2326321))

(assert (=> d!580315 d!580479))

(assert (=> b!1894374 d!580397))

(assert (=> b!1894374 d!580399))

(declare-fun d!580481 () Bool)

(declare-fun res!845750 () Bool)

(declare-fun e!1209698 () Bool)

(assert (=> d!580481 (=> res!845750 e!1209698)))

(assert (=> d!580481 (= res!845750 (is-Nil!21230 rules!3198))))

(assert (=> d!580481 (= (noDuplicateTag!1411 thiss!23328 rules!3198 Nil!21236) e!1209698)))

(declare-fun b!1894919 () Bool)

(declare-fun e!1209699 () Bool)

(assert (=> b!1894919 (= e!1209698 e!1209699)))

(declare-fun res!845751 () Bool)

(assert (=> b!1894919 (=> (not res!845751) (not e!1209699))))

(declare-fun contains!3832 (List!21318 String!24635) Bool)

(assert (=> b!1894919 (= res!845751 (not (contains!3832 Nil!21236 (tag!4181 (h!26631 rules!3198)))))))

(declare-fun b!1894920 () Bool)

(assert (=> b!1894920 (= e!1209699 (noDuplicateTag!1411 thiss!23328 (t!175977 rules!3198) (Cons!21236 (tag!4181 (h!26631 rules!3198)) Nil!21236)))))

(assert (= (and d!580481 (not res!845750)) b!1894919))

(assert (= (and b!1894919 res!845751) b!1894920))

(declare-fun m!2326323 () Bool)

(assert (=> b!1894919 m!2326323))

(declare-fun m!2326325 () Bool)

(assert (=> b!1894920 m!2326325))

(assert (=> b!1894504 d!580481))

(declare-fun d!580483 () Bool)

(declare-fun e!1209702 () Bool)

(assert (=> d!580483 e!1209702))

(declare-fun res!845754 () Bool)

(assert (=> d!580483 (=> (not res!845754) (not e!1209702))))

(declare-fun lt!724943 () BalanceConc!13956)

(assert (=> d!580483 (= res!845754 (= (list!8633 lt!724943) (Cons!21231 separatorToken!354 Nil!21231)))))

(declare-fun singleton!827 (Token!7086) BalanceConc!13956)

(assert (=> d!580483 (= lt!724943 (singleton!827 separatorToken!354))))

(assert (=> d!580483 (= (singletonSeq!1832 separatorToken!354) lt!724943)))

(declare-fun b!1894923 () Bool)

(declare-fun isBalanced!2229 (Conc!7070) Bool)

(assert (=> b!1894923 (= e!1209702 (isBalanced!2229 (c!309115 lt!724943)))))

(assert (= (and d!580483 res!845754) b!1894923))

(declare-fun m!2326327 () Bool)

(assert (=> d!580483 m!2326327))

(declare-fun m!2326329 () Bool)

(assert (=> d!580483 m!2326329))

(declare-fun m!2326331 () Bool)

(assert (=> b!1894923 m!2326331))

(assert (=> d!580285 d!580483))

(declare-fun d!580485 () Bool)

(declare-fun lt!724947 () BalanceConc!13952)

(declare-fun printList!1021 (LexerInterface!3380 List!21313) List!21311)

(assert (=> d!580485 (= (list!8631 lt!724947) (printList!1021 thiss!23328 (list!8633 (singletonSeq!1832 separatorToken!354))))))

(declare-fun printTailRec!947 (LexerInterface!3380 BalanceConc!13956 Int BalanceConc!13952) BalanceConc!13952)

(assert (=> d!580485 (= lt!724947 (printTailRec!947 thiss!23328 (singletonSeq!1832 separatorToken!354) 0 (BalanceConc!13953 Empty!7068)))))

(assert (=> d!580485 (= (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)) lt!724947)))

(declare-fun bs!413364 () Bool)

(assert (= bs!413364 d!580485))

(declare-fun m!2326347 () Bool)

(assert (=> bs!413364 m!2326347))

(assert (=> bs!413364 m!2325873))

(assert (=> bs!413364 m!2325879))

(assert (=> bs!413364 m!2325879))

(declare-fun m!2326349 () Bool)

(assert (=> bs!413364 m!2326349))

(assert (=> bs!413364 m!2325873))

(declare-fun m!2326351 () Bool)

(assert (=> bs!413364 m!2326351))

(assert (=> d!580285 d!580485))

(declare-fun d!580497 () Bool)

(declare-fun list!8638 (Conc!7070) List!21313)

(assert (=> d!580497 (= (list!8633 (_1!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354))))) (list!8638 (c!309115 (_1!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)))))))))

(declare-fun bs!413365 () Bool)

(assert (= bs!413365 d!580497))

(declare-fun m!2326353 () Bool)

(assert (=> bs!413365 m!2326353))

(assert (=> d!580285 d!580497))

(declare-fun d!580499 () Bool)

(assert (=> d!580499 (= (list!8633 (singletonSeq!1832 separatorToken!354)) (list!8638 (c!309115 (singletonSeq!1832 separatorToken!354))))))

(declare-fun bs!413366 () Bool)

(assert (= bs!413366 d!580499))

(declare-fun m!2326355 () Bool)

(assert (=> bs!413366 m!2326355))

(assert (=> d!580285 d!580499))

(declare-fun d!580501 () Bool)

(declare-fun lt!724950 () Int)

(declare-fun size!16837 (List!21313) Int)

(assert (=> d!580501 (= lt!724950 (size!16837 (list!8633 (_1!11496 lt!724848))))))

(declare-fun size!16838 (Conc!7070) Int)

(assert (=> d!580501 (= lt!724950 (size!16838 (c!309115 (_1!11496 lt!724848))))))

(assert (=> d!580501 (= (size!16833 (_1!11496 lt!724848)) lt!724950)))

(declare-fun bs!413367 () Bool)

(assert (= bs!413367 d!580501))

(assert (=> bs!413367 m!2326163))

(assert (=> bs!413367 m!2326163))

(declare-fun m!2326371 () Bool)

(assert (=> bs!413367 m!2326371))

(declare-fun m!2326373 () Bool)

(assert (=> bs!413367 m!2326373))

(assert (=> d!580285 d!580501))

(declare-fun b!1895060 () Bool)

(declare-fun e!1209793 () Bool)

(declare-fun e!1209792 () Bool)

(assert (=> b!1895060 (= e!1209793 e!1209792)))

(declare-fun lt!724983 () tuple2!20054)

(declare-fun res!845822 () Bool)

(declare-fun size!16839 (BalanceConc!13952) Int)

(assert (=> b!1895060 (= res!845822 (< (size!16839 (_2!11496 lt!724983)) (size!16839 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)))))))

(assert (=> b!1895060 (=> (not res!845822) (not e!1209792))))

(declare-fun b!1895061 () Bool)

(assert (=> b!1895061 (= e!1209793 (= (_2!11496 lt!724983) (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354))))))

(declare-fun e!1209791 () Bool)

(declare-fun b!1895062 () Bool)

(declare-datatypes ((tuple2!20058 0))(
  ( (tuple2!20059 (_1!11498 List!21313) (_2!11498 List!21311)) )
))
(declare-fun lexList!934 (LexerInterface!3380 List!21312 List!21311) tuple2!20058)

(assert (=> b!1895062 (= e!1209791 (= (list!8631 (_2!11496 lt!724983)) (_2!11498 (lexList!934 thiss!23328 rules!3198 (list!8631 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)))))))))

(declare-fun b!1895063 () Bool)

(declare-fun isEmpty!13040 (BalanceConc!13956) Bool)

(assert (=> b!1895063 (= e!1209792 (not (isEmpty!13040 (_1!11496 lt!724983))))))

(declare-fun d!580511 () Bool)

(assert (=> d!580511 e!1209791))

(declare-fun res!845820 () Bool)

(assert (=> d!580511 (=> (not res!845820) (not e!1209791))))

(assert (=> d!580511 (= res!845820 e!1209793)))

(declare-fun c!309193 () Bool)

(assert (=> d!580511 (= c!309193 (> (size!16833 (_1!11496 lt!724983)) 0))))

(declare-fun lexTailRecV2!657 (LexerInterface!3380 List!21312 BalanceConc!13952 BalanceConc!13952 BalanceConc!13952 BalanceConc!13956) tuple2!20054)

(assert (=> d!580511 (= lt!724983 (lexTailRecV2!657 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)) (BalanceConc!13953 Empty!7068) (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)) (BalanceConc!13957 Empty!7070)))))

(assert (=> d!580511 (= (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354))) lt!724983)))

(declare-fun b!1895064 () Bool)

(declare-fun res!845821 () Bool)

(assert (=> b!1895064 (=> (not res!845821) (not e!1209791))))

(assert (=> b!1895064 (= res!845821 (= (list!8633 (_1!11496 lt!724983)) (_1!11498 (lexList!934 thiss!23328 rules!3198 (list!8631 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)))))))))

(assert (= (and d!580511 c!309193) b!1895060))

(assert (= (and d!580511 (not c!309193)) b!1895061))

(assert (= (and b!1895060 res!845822) b!1895063))

(assert (= (and d!580511 res!845820) b!1895064))

(assert (= (and b!1895064 res!845821) b!1895062))

(declare-fun m!2326563 () Bool)

(assert (=> b!1895063 m!2326563))

(declare-fun m!2326565 () Bool)

(assert (=> b!1895060 m!2326565))

(assert (=> b!1895060 m!2325875))

(declare-fun m!2326567 () Bool)

(assert (=> b!1895060 m!2326567))

(declare-fun m!2326569 () Bool)

(assert (=> d!580511 m!2326569))

(assert (=> d!580511 m!2325875))

(assert (=> d!580511 m!2325875))

(declare-fun m!2326571 () Bool)

(assert (=> d!580511 m!2326571))

(declare-fun m!2326573 () Bool)

(assert (=> b!1895064 m!2326573))

(assert (=> b!1895064 m!2325875))

(declare-fun m!2326575 () Bool)

(assert (=> b!1895064 m!2326575))

(assert (=> b!1895064 m!2326575))

(declare-fun m!2326577 () Bool)

(assert (=> b!1895064 m!2326577))

(declare-fun m!2326579 () Bool)

(assert (=> b!1895062 m!2326579))

(assert (=> b!1895062 m!2325875))

(assert (=> b!1895062 m!2326575))

(assert (=> b!1895062 m!2326575))

(assert (=> b!1895062 m!2326577))

(assert (=> d!580285 d!580511))

(assert (=> d!580285 d!580331))

(declare-fun d!580615 () Bool)

(declare-fun c!309194 () Bool)

(assert (=> d!580615 (= c!309194 (is-Node!7068 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))))

(declare-fun e!1209794 () Bool)

(assert (=> d!580615 (= (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))) e!1209794)))

(declare-fun b!1895065 () Bool)

(assert (=> b!1895065 (= e!1209794 (inv!28336 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))))

(declare-fun b!1895066 () Bool)

(declare-fun e!1209795 () Bool)

(assert (=> b!1895066 (= e!1209794 e!1209795)))

(declare-fun res!845823 () Bool)

(assert (=> b!1895066 (= res!845823 (not (is-Leaf!10415 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))))))))

(assert (=> b!1895066 (=> res!845823 e!1209795)))

(declare-fun b!1895067 () Bool)

(assert (=> b!1895067 (= e!1209795 (inv!28337 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))))

(assert (= (and d!580615 c!309194) b!1895065))

(assert (= (and d!580615 (not c!309194)) b!1895066))

(assert (= (and b!1895066 (not res!845823)) b!1895067))

(declare-fun m!2326581 () Bool)

(assert (=> b!1895065 m!2326581))

(declare-fun m!2326583 () Bool)

(assert (=> b!1895067 m!2326583))

(assert (=> b!1894491 d!580615))

(declare-fun d!580617 () Bool)

(declare-fun c!309195 () Bool)

(assert (=> d!580617 (= c!309195 (is-Node!7068 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))))))

(declare-fun e!1209796 () Bool)

(assert (=> d!580617 (= (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))) e!1209796)))

(declare-fun b!1895068 () Bool)

(assert (=> b!1895068 (= e!1209796 (inv!28336 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))))))

(declare-fun b!1895069 () Bool)

(declare-fun e!1209797 () Bool)

(assert (=> b!1895069 (= e!1209796 e!1209797)))

(declare-fun res!845824 () Bool)

(assert (=> b!1895069 (= res!845824 (not (is-Leaf!10415 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))))))))

(assert (=> b!1895069 (=> res!845824 e!1209797)))

(declare-fun b!1895070 () Bool)

(assert (=> b!1895070 (= e!1209797 (inv!28337 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))))))

(assert (= (and d!580617 c!309195) b!1895068))

(assert (= (and d!580617 (not c!309195)) b!1895069))

(assert (= (and b!1895069 (not res!845824)) b!1895070))

(declare-fun m!2326585 () Bool)

(assert (=> b!1895068 m!2326585))

(declare-fun m!2326587 () Bool)

(assert (=> b!1895070 m!2326587))

(assert (=> b!1894467 d!580617))

(declare-fun b!1895072 () Bool)

(declare-fun res!845832 () Bool)

(declare-fun e!1209799 () Bool)

(assert (=> b!1895072 (=> res!845832 e!1209799)))

(declare-fun e!1209804 () Bool)

(assert (=> b!1895072 (= res!845832 e!1209804)))

(declare-fun res!845826 () Bool)

(assert (=> b!1895072 (=> (not res!845826) (not e!1209804))))

(declare-fun lt!724984 () Bool)

(assert (=> b!1895072 (= res!845826 lt!724984)))

(declare-fun b!1895073 () Bool)

(declare-fun e!1209801 () Bool)

(declare-fun e!1209802 () Bool)

(assert (=> b!1895073 (= e!1209801 e!1209802)))

(declare-fun c!309198 () Bool)

(assert (=> b!1895073 (= c!309198 (is-EmptyLang!5192 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813))))))

(declare-fun b!1895074 () Bool)

(declare-fun e!1209798 () Bool)

(assert (=> b!1895074 (= e!1209798 (matchR!2478 (derivativeStep!1335 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813)) (head!4403 (tail!2929 lt!724813))) (tail!2929 (tail!2929 lt!724813))))))

(declare-fun b!1895075 () Bool)

(declare-fun res!845828 () Bool)

(declare-fun e!1209800 () Bool)

(assert (=> b!1895075 (=> res!845828 e!1209800)))

(assert (=> b!1895075 (= res!845828 (not (isEmpty!13033 (tail!2929 (tail!2929 lt!724813)))))))

(declare-fun b!1895076 () Bool)

(declare-fun res!845827 () Bool)

(assert (=> b!1895076 (=> (not res!845827) (not e!1209804))))

(assert (=> b!1895076 (= res!845827 (isEmpty!13033 (tail!2929 (tail!2929 lt!724813))))))

(declare-fun b!1895077 () Bool)

(declare-fun res!845825 () Bool)

(assert (=> b!1895077 (=> res!845825 e!1209799)))

(assert (=> b!1895077 (= res!845825 (not (is-ElementMatch!5192 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813)))))))

(assert (=> b!1895077 (= e!1209802 e!1209799)))

(declare-fun bm!116909 () Bool)

(declare-fun call!116914 () Bool)

(assert (=> bm!116909 (= call!116914 (isEmpty!13033 (tail!2929 lt!724813)))))

(declare-fun b!1895078 () Bool)

(assert (=> b!1895078 (= e!1209800 (not (= (head!4403 (tail!2929 lt!724813)) (c!309081 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813))))))))

(declare-fun b!1895079 () Bool)

(assert (=> b!1895079 (= e!1209804 (= (head!4403 (tail!2929 lt!724813)) (c!309081 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813)))))))

(declare-fun b!1895080 () Bool)

(declare-fun e!1209803 () Bool)

(assert (=> b!1895080 (= e!1209803 e!1209800)))

(declare-fun res!845830 () Bool)

(assert (=> b!1895080 (=> res!845830 e!1209800)))

(assert (=> b!1895080 (= res!845830 call!116914)))

(declare-fun b!1895081 () Bool)

(assert (=> b!1895081 (= e!1209799 e!1209803)))

(declare-fun res!845829 () Bool)

(assert (=> b!1895081 (=> (not res!845829) (not e!1209803))))

(assert (=> b!1895081 (= res!845829 (not lt!724984))))

(declare-fun b!1895082 () Bool)

(assert (=> b!1895082 (= e!1209798 (nullable!1576 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813))))))

(declare-fun b!1895083 () Bool)

(assert (=> b!1895083 (= e!1209802 (not lt!724984))))

(declare-fun b!1895084 () Bool)

(assert (=> b!1895084 (= e!1209801 (= lt!724984 call!116914))))

(declare-fun d!580619 () Bool)

(assert (=> d!580619 e!1209801))

(declare-fun c!309197 () Bool)

(assert (=> d!580619 (= c!309197 (is-EmptyExpr!5192 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813))))))

(assert (=> d!580619 (= lt!724984 e!1209798)))

(declare-fun c!309196 () Bool)

(assert (=> d!580619 (= c!309196 (isEmpty!13033 (tail!2929 lt!724813)))))

(assert (=> d!580619 (validRegex!2100 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813)))))

(assert (=> d!580619 (= (matchR!2478 (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813)) (tail!2929 lt!724813)) lt!724984)))

(declare-fun b!1895071 () Bool)

(declare-fun res!845831 () Bool)

(assert (=> b!1895071 (=> (not res!845831) (not e!1209804))))

(assert (=> b!1895071 (= res!845831 (not call!116914))))

(assert (= (and d!580619 c!309196) b!1895082))

(assert (= (and d!580619 (not c!309196)) b!1895074))

(assert (= (and d!580619 c!309197) b!1895084))

(assert (= (and d!580619 (not c!309197)) b!1895073))

(assert (= (and b!1895073 c!309198) b!1895083))

(assert (= (and b!1895073 (not c!309198)) b!1895077))

(assert (= (and b!1895077 (not res!845825)) b!1895072))

(assert (= (and b!1895072 res!845826) b!1895071))

(assert (= (and b!1895071 res!845831) b!1895076))

(assert (= (and b!1895076 res!845827) b!1895079))

(assert (= (and b!1895072 (not res!845832)) b!1895081))

(assert (= (and b!1895081 res!845829) b!1895080))

(assert (= (and b!1895080 (not res!845830)) b!1895075))

(assert (= (and b!1895075 (not res!845828)) b!1895078))

(assert (= (or b!1895084 b!1895071 b!1895080) bm!116909))

(assert (=> b!1895082 m!2325823))

(declare-fun m!2326589 () Bool)

(assert (=> b!1895082 m!2326589))

(assert (=> b!1895074 m!2325825))

(declare-fun m!2326591 () Bool)

(assert (=> b!1895074 m!2326591))

(assert (=> b!1895074 m!2325823))

(assert (=> b!1895074 m!2326591))

(declare-fun m!2326593 () Bool)

(assert (=> b!1895074 m!2326593))

(assert (=> b!1895074 m!2325825))

(declare-fun m!2326595 () Bool)

(assert (=> b!1895074 m!2326595))

(assert (=> b!1895074 m!2326593))

(assert (=> b!1895074 m!2326595))

(declare-fun m!2326597 () Bool)

(assert (=> b!1895074 m!2326597))

(assert (=> b!1895078 m!2325825))

(assert (=> b!1895078 m!2326591))

(assert (=> b!1895075 m!2325825))

(assert (=> b!1895075 m!2326595))

(assert (=> b!1895075 m!2326595))

(declare-fun m!2326599 () Bool)

(assert (=> b!1895075 m!2326599))

(assert (=> b!1895076 m!2325825))

(assert (=> b!1895076 m!2326595))

(assert (=> b!1895076 m!2326595))

(assert (=> b!1895076 m!2326599))

(assert (=> b!1895079 m!2325825))

(assert (=> b!1895079 m!2326591))

(assert (=> bm!116909 m!2325825))

(assert (=> bm!116909 m!2325829))

(assert (=> d!580619 m!2325825))

(assert (=> d!580619 m!2325829))

(assert (=> d!580619 m!2325823))

(declare-fun m!2326601 () Bool)

(assert (=> d!580619 m!2326601))

(assert (=> b!1894372 d!580619))

(declare-fun bm!116918 () Bool)

(declare-fun call!116925 () Regex!5192)

(declare-fun c!309211 () Bool)

(assert (=> bm!116918 (= call!116925 (derivativeStep!1335 (ite c!309211 (regTwo!10897 (regex!3767 lt!724812)) (regOne!10896 (regex!3767 lt!724812))) (head!4403 lt!724813)))))

(declare-fun d!580621 () Bool)

(declare-fun lt!724987 () Regex!5192)

(assert (=> d!580621 (validRegex!2100 lt!724987)))

(declare-fun e!1209817 () Regex!5192)

(assert (=> d!580621 (= lt!724987 e!1209817)))

(declare-fun c!309210 () Bool)

(assert (=> d!580621 (= c!309210 (or (is-EmptyExpr!5192 (regex!3767 lt!724812)) (is-EmptyLang!5192 (regex!3767 lt!724812))))))

(assert (=> d!580621 (validRegex!2100 (regex!3767 lt!724812))))

(assert (=> d!580621 (= (derivativeStep!1335 (regex!3767 lt!724812) (head!4403 lt!724813)) lt!724987)))

(declare-fun c!309212 () Bool)

(declare-fun call!116923 () Regex!5192)

(declare-fun bm!116919 () Bool)

(declare-fun c!309209 () Bool)

(assert (=> bm!116919 (= call!116923 (derivativeStep!1335 (ite c!309211 (regOne!10897 (regex!3767 lt!724812)) (ite c!309209 (reg!5521 (regex!3767 lt!724812)) (ite c!309212 (regTwo!10896 (regex!3767 lt!724812)) (regOne!10896 (regex!3767 lt!724812))))) (head!4403 lt!724813)))))

(declare-fun bm!116920 () Bool)

(declare-fun call!116924 () Regex!5192)

(assert (=> bm!116920 (= call!116924 call!116923)))

(declare-fun b!1895105 () Bool)

(assert (=> b!1895105 (= c!309211 (is-Union!5192 (regex!3767 lt!724812)))))

(declare-fun e!1209818 () Regex!5192)

(declare-fun e!1209816 () Regex!5192)

(assert (=> b!1895105 (= e!1209818 e!1209816)))

(declare-fun b!1895106 () Bool)

(declare-fun e!1209819 () Regex!5192)

(declare-fun call!116926 () Regex!5192)

(assert (=> b!1895106 (= e!1209819 (Union!5192 (Concat!9096 call!116926 (regTwo!10896 (regex!3767 lt!724812))) EmptyLang!5192))))

(declare-fun b!1895107 () Bool)

(declare-fun e!1209815 () Regex!5192)

(assert (=> b!1895107 (= e!1209816 e!1209815)))

(assert (=> b!1895107 (= c!309209 (is-Star!5192 (regex!3767 lt!724812)))))

(declare-fun bm!116921 () Bool)

(assert (=> bm!116921 (= call!116926 call!116924)))

(declare-fun b!1895108 () Bool)

(assert (=> b!1895108 (= c!309212 (nullable!1576 (regOne!10896 (regex!3767 lt!724812))))))

(assert (=> b!1895108 (= e!1209815 e!1209819)))

(declare-fun b!1895109 () Bool)

(assert (=> b!1895109 (= e!1209816 (Union!5192 call!116923 call!116925))))

(declare-fun b!1895110 () Bool)

(assert (=> b!1895110 (= e!1209818 (ite (= (head!4403 lt!724813) (c!309081 (regex!3767 lt!724812))) EmptyExpr!5192 EmptyLang!5192))))

(declare-fun b!1895111 () Bool)

(assert (=> b!1895111 (= e!1209817 e!1209818)))

(declare-fun c!309213 () Bool)

(assert (=> b!1895111 (= c!309213 (is-ElementMatch!5192 (regex!3767 lt!724812)))))

(declare-fun b!1895112 () Bool)

(assert (=> b!1895112 (= e!1209819 (Union!5192 (Concat!9096 call!116925 (regTwo!10896 (regex!3767 lt!724812))) call!116926))))

(declare-fun b!1895113 () Bool)

(assert (=> b!1895113 (= e!1209817 EmptyLang!5192)))

(declare-fun b!1895114 () Bool)

(assert (=> b!1895114 (= e!1209815 (Concat!9096 call!116924 (regex!3767 lt!724812)))))

(assert (= (and d!580621 c!309210) b!1895113))

(assert (= (and d!580621 (not c!309210)) b!1895111))

(assert (= (and b!1895111 c!309213) b!1895110))

(assert (= (and b!1895111 (not c!309213)) b!1895105))

(assert (= (and b!1895105 c!309211) b!1895109))

(assert (= (and b!1895105 (not c!309211)) b!1895107))

(assert (= (and b!1895107 c!309209) b!1895114))

(assert (= (and b!1895107 (not c!309209)) b!1895108))

(assert (= (and b!1895108 c!309212) b!1895112))

(assert (= (and b!1895108 (not c!309212)) b!1895106))

(assert (= (or b!1895112 b!1895106) bm!116921))

(assert (= (or b!1895114 bm!116921) bm!116920))

(assert (= (or b!1895109 bm!116920) bm!116919))

(assert (= (or b!1895109 b!1895112) bm!116918))

(assert (=> bm!116918 m!2325821))

(declare-fun m!2326603 () Bool)

(assert (=> bm!116918 m!2326603))

(declare-fun m!2326605 () Bool)

(assert (=> d!580621 m!2326605))

(assert (=> d!580621 m!2325833))

(assert (=> bm!116919 m!2325821))

(declare-fun m!2326607 () Bool)

(assert (=> bm!116919 m!2326607))

(declare-fun m!2326609 () Bool)

(assert (=> b!1895108 m!2326609))

(assert (=> b!1894372 d!580621))

(assert (=> b!1894372 d!580391))

(assert (=> b!1894372 d!580399))

(declare-fun d!580623 () Bool)

(declare-fun lt!724990 () Int)

(assert (=> d!580623 (>= lt!724990 0)))

(declare-fun e!1209822 () Int)

(assert (=> d!580623 (= lt!724990 e!1209822)))

(declare-fun c!309216 () Bool)

(assert (=> d!580623 (= c!309216 (is-Nil!21229 (originalCharacters!4574 (h!26632 tokens!598))))))

(assert (=> d!580623 (= (size!16834 (originalCharacters!4574 (h!26632 tokens!598))) lt!724990)))

(declare-fun b!1895119 () Bool)

(assert (=> b!1895119 (= e!1209822 0)))

(declare-fun b!1895120 () Bool)

(assert (=> b!1895120 (= e!1209822 (+ 1 (size!16834 (t!175976 (originalCharacters!4574 (h!26632 tokens!598))))))))

(assert (= (and d!580623 c!309216) b!1895119))

(assert (= (and d!580623 (not c!309216)) b!1895120))

(declare-fun m!2326611 () Bool)

(assert (=> b!1895120 m!2326611))

(assert (=> b!1894570 d!580623))

(declare-fun b!1895129 () Bool)

(declare-fun e!1209831 () Bool)

(declare-fun e!1209830 () Bool)

(assert (=> b!1895129 (= e!1209831 e!1209830)))

(declare-fun res!845837 () Bool)

(declare-fun rulesUseDisjointChars!195 (Rule!7334 Rule!7334) Bool)

(assert (=> b!1895129 (= res!845837 (rulesUseDisjointChars!195 (h!26631 rules!3198) (h!26631 rules!3198)))))

(assert (=> b!1895129 (=> (not res!845837) (not e!1209830))))

(declare-fun bm!116924 () Bool)

(declare-fun call!116929 () Bool)

(assert (=> bm!116924 (= call!116929 (ruleDisjointCharsFromAllFromOtherType!411 (h!26631 rules!3198) (t!175977 rules!3198)))))

(declare-fun d!580625 () Bool)

(declare-fun c!309219 () Bool)

(assert (=> d!580625 (= c!309219 (and (is-Cons!21230 rules!3198) (not (= (isSeparator!3767 (h!26631 rules!3198)) (isSeparator!3767 (h!26631 rules!3198))))))))

(assert (=> d!580625 (= (ruleDisjointCharsFromAllFromOtherType!411 (h!26631 rules!3198) rules!3198) e!1209831)))

(declare-fun b!1895130 () Bool)

(assert (=> b!1895130 (= e!1209830 call!116929)))

(declare-fun b!1895131 () Bool)

(declare-fun e!1209829 () Bool)

(assert (=> b!1895131 (= e!1209829 call!116929)))

(declare-fun b!1895132 () Bool)

(assert (=> b!1895132 (= e!1209831 e!1209829)))

(declare-fun res!845838 () Bool)

(assert (=> b!1895132 (= res!845838 (not (is-Cons!21230 rules!3198)))))

(assert (=> b!1895132 (=> res!845838 e!1209829)))

(assert (= (and d!580625 c!309219) b!1895129))

(assert (= (and d!580625 (not c!309219)) b!1895132))

(assert (= (and b!1895129 res!845837) b!1895130))

(assert (= (and b!1895132 (not res!845838)) b!1895131))

(assert (= (or b!1895130 b!1895131) bm!116924))

(declare-fun m!2326613 () Bool)

(assert (=> b!1895129 m!2326613))

(declare-fun m!2326615 () Bool)

(assert (=> bm!116924 m!2326615))

(assert (=> b!1894387 d!580625))

(declare-fun d!580627 () Bool)

(declare-fun lt!724992 () Bool)

(declare-fun e!1209833 () Bool)

(assert (=> d!580627 (= lt!724992 e!1209833)))

(declare-fun res!845841 () Bool)

(assert (=> d!580627 (=> (not res!845841) (not e!1209833))))

(assert (=> d!580627 (= res!845841 (= (list!8633 (_1!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 (h!26632 tokens!598)))))) (list!8633 (singletonSeq!1832 (h!26632 tokens!598)))))))

(declare-fun e!1209832 () Bool)

(assert (=> d!580627 (= lt!724992 e!1209832)))

(declare-fun res!845839 () Bool)

(assert (=> d!580627 (=> (not res!845839) (not e!1209832))))

(declare-fun lt!724991 () tuple2!20054)

(assert (=> d!580627 (= res!845839 (= (size!16833 (_1!11496 lt!724991)) 1))))

(assert (=> d!580627 (= lt!724991 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 (h!26632 tokens!598)))))))

(assert (=> d!580627 (not (isEmpty!13031 rules!3198))))

(assert (=> d!580627 (= (rulesProduceIndividualToken!1552 thiss!23328 rules!3198 (h!26632 tokens!598)) lt!724992)))

(declare-fun b!1895133 () Bool)

(declare-fun res!845840 () Bool)

(assert (=> b!1895133 (=> (not res!845840) (not e!1209832))))

(assert (=> b!1895133 (= res!845840 (= (apply!5591 (_1!11496 lt!724991) 0) (h!26632 tokens!598)))))

(declare-fun b!1895134 () Bool)

(assert (=> b!1895134 (= e!1209832 (isEmpty!13034 (_2!11496 lt!724991)))))

(declare-fun b!1895135 () Bool)

(assert (=> b!1895135 (= e!1209833 (isEmpty!13034 (_2!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 (h!26632 tokens!598)))))))))

(assert (= (and d!580627 res!845839) b!1895133))

(assert (= (and b!1895133 res!845840) b!1895134))

(assert (= (and d!580627 res!845841) b!1895135))

(declare-fun m!2326617 () Bool)

(assert (=> d!580627 m!2326617))

(declare-fun m!2326619 () Bool)

(assert (=> d!580627 m!2326619))

(assert (=> d!580627 m!2326619))

(declare-fun m!2326621 () Bool)

(assert (=> d!580627 m!2326621))

(assert (=> d!580627 m!2326621))

(declare-fun m!2326623 () Bool)

(assert (=> d!580627 m!2326623))

(assert (=> d!580627 m!2326619))

(declare-fun m!2326625 () Bool)

(assert (=> d!580627 m!2326625))

(declare-fun m!2326627 () Bool)

(assert (=> d!580627 m!2326627))

(assert (=> d!580627 m!2325731))

(declare-fun m!2326629 () Bool)

(assert (=> b!1895133 m!2326629))

(declare-fun m!2326631 () Bool)

(assert (=> b!1895134 m!2326631))

(assert (=> b!1895135 m!2326619))

(assert (=> b!1895135 m!2326619))

(assert (=> b!1895135 m!2326621))

(assert (=> b!1895135 m!2326621))

(assert (=> b!1895135 m!2326623))

(declare-fun m!2326633 () Bool)

(assert (=> b!1895135 m!2326633))

(assert (=> b!1894549 d!580627))

(declare-fun d!580629 () Bool)

(assert (=> d!580629 (= (isEmpty!13035 lt!724815) (not (is-Some!4242 lt!724815)))))

(assert (=> d!580297 d!580629))

(declare-fun d!580631 () Bool)

(assert (=> d!580631 (= (get!6538 lt!724869) (v!26267 lt!724869))))

(assert (=> b!1894483 d!580631))

(declare-fun d!580633 () Bool)

(declare-fun lt!724995 () Bool)

(declare-fun content!3130 (List!21312) (Set Rule!7334))

(assert (=> d!580633 (= lt!724995 (set.member (get!6538 lt!724869) (content!3130 rules!3198)))))

(declare-fun e!1209839 () Bool)

(assert (=> d!580633 (= lt!724995 e!1209839)))

(declare-fun res!845846 () Bool)

(assert (=> d!580633 (=> (not res!845846) (not e!1209839))))

(assert (=> d!580633 (= res!845846 (is-Cons!21230 rules!3198))))

(assert (=> d!580633 (= (contains!3830 rules!3198 (get!6538 lt!724869)) lt!724995)))

(declare-fun b!1895140 () Bool)

(declare-fun e!1209838 () Bool)

(assert (=> b!1895140 (= e!1209839 e!1209838)))

(declare-fun res!845847 () Bool)

(assert (=> b!1895140 (=> res!845847 e!1209838)))

(assert (=> b!1895140 (= res!845847 (= (h!26631 rules!3198) (get!6538 lt!724869)))))

(declare-fun b!1895141 () Bool)

(assert (=> b!1895141 (= e!1209838 (contains!3830 (t!175977 rules!3198) (get!6538 lt!724869)))))

(assert (= (and d!580633 res!845846) b!1895140))

(assert (= (and b!1895140 (not res!845847)) b!1895141))

(declare-fun m!2326635 () Bool)

(assert (=> d!580633 m!2326635))

(assert (=> d!580633 m!2325919))

(declare-fun m!2326637 () Bool)

(assert (=> d!580633 m!2326637))

(assert (=> b!1895141 m!2325919))

(declare-fun m!2326639 () Bool)

(assert (=> b!1895141 m!2326639))

(assert (=> b!1894481 d!580633))

(assert (=> b!1894481 d!580631))

(declare-fun bs!413400 () Bool)

(declare-fun d!580635 () Bool)

(assert (= bs!413400 (and d!580635 d!580299)))

(declare-fun lambda!74047 () Int)

(assert (=> bs!413400 (= lambda!74047 lambda!74000)))

(declare-fun bs!413401 () Bool)

(assert (= bs!413401 (and d!580635 d!580437)))

(assert (=> bs!413401 (= lambda!74047 lambda!74025)))

(assert (=> d!580635 true))

(declare-fun lt!724996 () Bool)

(assert (=> d!580635 (= lt!724996 (forall!4443 (t!175977 rules!3198) lambda!74047))))

(declare-fun e!1209840 () Bool)

(assert (=> d!580635 (= lt!724996 e!1209840)))

(declare-fun res!845848 () Bool)

(assert (=> d!580635 (=> res!845848 e!1209840)))

(assert (=> d!580635 (= res!845848 (not (is-Cons!21230 (t!175977 rules!3198))))))

(assert (=> d!580635 (= (rulesValidInductive!1273 thiss!23328 (t!175977 rules!3198)) lt!724996)))

(declare-fun b!1895142 () Bool)

(declare-fun e!1209841 () Bool)

(assert (=> b!1895142 (= e!1209840 e!1209841)))

(declare-fun res!845849 () Bool)

(assert (=> b!1895142 (=> (not res!845849) (not e!1209841))))

(assert (=> b!1895142 (= res!845849 (ruleValid!1144 thiss!23328 (h!26631 (t!175977 rules!3198))))))

(declare-fun b!1895143 () Bool)

(assert (=> b!1895143 (= e!1209841 (rulesValidInductive!1273 thiss!23328 (t!175977 (t!175977 rules!3198))))))

(assert (= (and d!580635 (not res!845848)) b!1895142))

(assert (= (and b!1895142 res!845849) b!1895143))

(declare-fun m!2326641 () Bool)

(assert (=> d!580635 m!2326641))

(declare-fun m!2326643 () Bool)

(assert (=> b!1895142 m!2326643))

(declare-fun m!2326645 () Bool)

(assert (=> b!1895143 m!2326645))

(assert (=> b!1894460 d!580635))

(declare-fun bs!413402 () Bool)

(declare-fun d!580637 () Bool)

(assert (= bs!413402 (and d!580637 d!580307)))

(declare-fun lambda!74048 () Int)

(assert (=> bs!413402 (= (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (= lambda!74048 lambda!74006))))

(declare-fun bs!413403 () Bool)

(assert (= bs!413403 (and d!580637 d!580439)))

(assert (=> bs!413403 (= (= (toValue!5380 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))) (= lambda!74048 lambda!74028))))

(assert (=> d!580637 true))

(assert (=> d!580637 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (h!26631 rules!3198)))) (dynLambda!10317 order!13407 lambda!74048))))

(assert (=> d!580637 (= (equivClasses!1453 (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toValue!5380 (transformation!3767 (h!26631 rules!3198)))) (Forall2!614 lambda!74048))))

(declare-fun bs!413404 () Bool)

(assert (= bs!413404 d!580637))

(declare-fun m!2326647 () Bool)

(assert (=> bs!413404 m!2326647))

(assert (=> b!1894505 d!580637))

(declare-fun d!580639 () Bool)

(declare-fun lt!724997 () Int)

(assert (=> d!580639 (>= lt!724997 0)))

(declare-fun e!1209842 () Int)

(assert (=> d!580639 (= lt!724997 e!1209842)))

(declare-fun c!309220 () Bool)

(assert (=> d!580639 (= c!309220 (is-Nil!21229 (originalCharacters!4574 separatorToken!354)))))

(assert (=> d!580639 (= (size!16834 (originalCharacters!4574 separatorToken!354)) lt!724997)))

(declare-fun b!1895144 () Bool)

(assert (=> b!1895144 (= e!1209842 0)))

(declare-fun b!1895145 () Bool)

(assert (=> b!1895145 (= e!1209842 (+ 1 (size!16834 (t!175976 (originalCharacters!4574 separatorToken!354)))))))

(assert (= (and d!580639 c!309220) b!1895144))

(assert (= (and d!580639 (not c!309220)) b!1895145))

(declare-fun m!2326649 () Bool)

(assert (=> b!1895145 m!2326649))

(assert (=> b!1894518 d!580639))

(declare-fun d!580641 () Bool)

(assert (=> d!580641 (= (list!8631 lt!724860) (list!8634 (c!309080 lt!724860)))))

(declare-fun bs!413405 () Bool)

(assert (= bs!413405 d!580641))

(declare-fun m!2326651 () Bool)

(assert (=> bs!413405 m!2326651))

(assert (=> d!580301 d!580641))

(declare-fun d!580643 () Bool)

(declare-fun res!845850 () Bool)

(declare-fun e!1209843 () Bool)

(assert (=> d!580643 (=> res!845850 e!1209843)))

(assert (=> d!580643 (= res!845850 (is-Nil!21231 tokens!598))))

(assert (=> d!580643 (= (forall!4441 tokens!598 lambda!74012) e!1209843)))

(declare-fun b!1895146 () Bool)

(declare-fun e!1209844 () Bool)

(assert (=> b!1895146 (= e!1209843 e!1209844)))

(declare-fun res!845851 () Bool)

(assert (=> b!1895146 (=> (not res!845851) (not e!1209844))))

(assert (=> b!1895146 (= res!845851 (dynLambda!10318 lambda!74012 (h!26632 tokens!598)))))

(declare-fun b!1895147 () Bool)

(assert (=> b!1895147 (= e!1209844 (forall!4441 (t!175978 tokens!598) lambda!74012))))

(assert (= (and d!580643 (not res!845850)) b!1895146))

(assert (= (and b!1895146 res!845851) b!1895147))

(declare-fun b_lambda!62231 () Bool)

(assert (=> (not b_lambda!62231) (not b!1895146)))

(declare-fun m!2326653 () Bool)

(assert (=> b!1895146 m!2326653))

(declare-fun m!2326655 () Bool)

(assert (=> b!1895147 m!2326655))

(assert (=> d!580333 d!580643))

(assert (=> d!580333 d!580331))

(declare-fun d!580645 () Bool)

(assert (=> d!580645 (= (inv!28333 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))) (isBalanced!2228 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))))))

(declare-fun bs!413406 () Bool)

(assert (= bs!413406 d!580645))

(declare-fun m!2326657 () Bool)

(assert (=> bs!413406 m!2326657))

(assert (=> tb!115311 d!580645))

(declare-fun d!580647 () Bool)

(assert (=> d!580647 (= (inv!17 (value!118952 (h!26632 tokens!598))) (= (charsToBigInt!1 (text!27769 (value!118952 (h!26632 tokens!598)))) (value!118944 (value!118952 (h!26632 tokens!598)))))))

(declare-fun bs!413407 () Bool)

(assert (= bs!413407 d!580647))

(declare-fun m!2326659 () Bool)

(assert (=> bs!413407 m!2326659))

(assert (=> b!1894406 d!580647))

(declare-fun d!580649 () Bool)

(assert (=> d!580649 (= (inv!28325 (tag!4181 (rule!5960 (h!26632 (t!175978 tokens!598))))) (= (mod (str.len (value!118951 (tag!4181 (rule!5960 (h!26632 (t!175978 tokens!598)))))) 2) 0))))

(assert (=> b!1894622 d!580649))

(declare-fun d!580651 () Bool)

(declare-fun res!845852 () Bool)

(declare-fun e!1209845 () Bool)

(assert (=> d!580651 (=> (not res!845852) (not e!1209845))))

(assert (=> d!580651 (= res!845852 (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))))))

(assert (=> d!580651 (= (inv!28329 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) e!1209845)))

(declare-fun b!1895148 () Bool)

(assert (=> b!1895148 (= e!1209845 (equivClasses!1453 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))))))

(assert (= (and d!580651 res!845852) b!1895148))

(declare-fun m!2326661 () Bool)

(assert (=> d!580651 m!2326661))

(declare-fun m!2326663 () Bool)

(assert (=> b!1895148 m!2326663))

(assert (=> b!1894622 d!580651))

(declare-fun d!580653 () Bool)

(declare-fun res!845853 () Bool)

(declare-fun e!1209846 () Bool)

(assert (=> d!580653 (=> (not res!845853) (not e!1209846))))

(assert (=> d!580653 (= res!845853 (not (isEmpty!13033 (originalCharacters!4574 (h!26632 (t!175978 tokens!598))))))))

(assert (=> d!580653 (= (inv!28328 (h!26632 (t!175978 tokens!598))) e!1209846)))

(declare-fun b!1895149 () Bool)

(declare-fun res!845854 () Bool)

(assert (=> b!1895149 (=> (not res!845854) (not e!1209846))))

(assert (=> b!1895149 (= res!845854 (= (originalCharacters!4574 (h!26632 (t!175978 tokens!598))) (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (value!118952 (h!26632 (t!175978 tokens!598)))))))))

(declare-fun b!1895150 () Bool)

(assert (=> b!1895150 (= e!1209846 (= (size!16831 (h!26632 (t!175978 tokens!598))) (size!16834 (originalCharacters!4574 (h!26632 (t!175978 tokens!598))))))))

(assert (= (and d!580653 res!845853) b!1895149))

(assert (= (and b!1895149 res!845854) b!1895150))

(declare-fun b_lambda!62233 () Bool)

(assert (=> (not b_lambda!62233) (not b!1895149)))

(declare-fun t!176105 () Bool)

(declare-fun tb!115391 () Bool)

(assert (=> (and b!1894268 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) t!176105) tb!115391))

(declare-fun b!1895151 () Bool)

(declare-fun e!1209847 () Bool)

(declare-fun tp!540634 () Bool)

(assert (=> b!1895151 (= e!1209847 (and (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (value!118952 (h!26632 (t!175978 tokens!598)))))) tp!540634))))

(declare-fun result!139518 () Bool)

(assert (=> tb!115391 (= result!139518 (and (inv!28333 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (value!118952 (h!26632 (t!175978 tokens!598))))) e!1209847))))

(assert (= tb!115391 b!1895151))

(declare-fun m!2326665 () Bool)

(assert (=> b!1895151 m!2326665))

(declare-fun m!2326667 () Bool)

(assert (=> tb!115391 m!2326667))

(assert (=> b!1895149 t!176105))

(declare-fun b_and!146045 () Bool)

(assert (= b_and!145973 (and (=> t!176105 result!139518) b_and!146045)))

(declare-fun t!176107 () Bool)

(declare-fun tb!115393 () Bool)

(assert (=> (and b!1894623 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) t!176107) tb!115393))

(declare-fun result!139520 () Bool)

(assert (= result!139520 result!139518))

(assert (=> b!1895149 t!176107))

(declare-fun b_and!146047 () Bool)

(assert (= b_and!145983 (and (=> t!176107 result!139520) b_and!146047)))

(declare-fun t!176109 () Bool)

(declare-fun tb!115395 () Bool)

(assert (=> (and b!1894267 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) t!176109) tb!115395))

(declare-fun result!139522 () Bool)

(assert (= result!139522 result!139518))

(assert (=> b!1895149 t!176109))

(declare-fun b_and!146049 () Bool)

(assert (= b_and!145975 (and (=> t!176109 result!139522) b_and!146049)))

(declare-fun tb!115397 () Bool)

(declare-fun t!176111 () Bool)

(assert (=> (and b!1894272 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) t!176111) tb!115397))

(declare-fun result!139524 () Bool)

(assert (= result!139524 result!139518))

(assert (=> b!1895149 t!176111))

(declare-fun b_and!146051 () Bool)

(assert (= b_and!145971 (and (=> t!176111 result!139524) b_and!146051)))

(declare-fun tb!115399 () Bool)

(declare-fun t!176113 () Bool)

(assert (=> (and b!1894595 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) t!176113) tb!115399))

(declare-fun result!139526 () Bool)

(assert (= result!139526 result!139518))

(assert (=> b!1895149 t!176113))

(declare-fun b_and!146053 () Bool)

(assert (= b_and!145979 (and (=> t!176113 result!139526) b_and!146053)))

(declare-fun m!2326669 () Bool)

(assert (=> d!580653 m!2326669))

(declare-fun m!2326671 () Bool)

(assert (=> b!1895149 m!2326671))

(assert (=> b!1895149 m!2326671))

(declare-fun m!2326673 () Bool)

(assert (=> b!1895149 m!2326673))

(declare-fun m!2326675 () Bool)

(assert (=> b!1895150 m!2326675))

(assert (=> b!1894620 d!580653))

(declare-fun d!580655 () Bool)

(assert (=> d!580655 (= (inv!15 (value!118952 (h!26632 tokens!598))) (= (charsToBigInt!0 (text!27770 (value!118952 (h!26632 tokens!598))) 0) (value!118947 (value!118952 (h!26632 tokens!598)))))))

(declare-fun bs!413408 () Bool)

(assert (= bs!413408 d!580655))

(declare-fun m!2326677 () Bool)

(assert (=> bs!413408 m!2326677))

(assert (=> b!1894404 d!580655))

(declare-fun d!580657 () Bool)

(declare-fun nullableFct!351 (Regex!5192) Bool)

(assert (=> d!580657 (= (nullable!1576 (regex!3767 lt!724812)) (nullableFct!351 (regex!3767 lt!724812)))))

(declare-fun bs!413409 () Bool)

(assert (= bs!413409 d!580657))

(declare-fun m!2326679 () Bool)

(assert (=> bs!413409 m!2326679))

(assert (=> b!1894380 d!580657))

(declare-fun d!580659 () Bool)

(assert (=> d!580659 (= (inv!16 (value!118952 (h!26632 tokens!598))) (= (charsToInt!0 (text!27768 (value!118952 (h!26632 tokens!598)))) (value!118943 (value!118952 (h!26632 tokens!598)))))))

(declare-fun bs!413410 () Bool)

(assert (= bs!413410 d!580659))

(declare-fun m!2326681 () Bool)

(assert (=> bs!413410 m!2326681))

(assert (=> b!1894402 d!580659))

(declare-fun b!1895152 () Bool)

(declare-fun e!1209848 () Bool)

(assert (=> b!1895152 (= e!1209848 (inv!16 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))

(declare-fun b!1895153 () Bool)

(declare-fun e!1209850 () Bool)

(assert (=> b!1895153 (= e!1209848 e!1209850)))

(declare-fun c!309222 () Bool)

(assert (=> b!1895153 (= c!309222 (is-IntegerValue!11710 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))

(declare-fun d!580661 () Bool)

(declare-fun c!309221 () Bool)

(assert (=> d!580661 (= c!309221 (is-IntegerValue!11709 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))

(assert (=> d!580661 (= (inv!21 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)) e!1209848)))

(declare-fun b!1895154 () Bool)

(declare-fun e!1209849 () Bool)

(assert (=> b!1895154 (= e!1209849 (inv!15 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))

(declare-fun b!1895155 () Bool)

(declare-fun res!845855 () Bool)

(assert (=> b!1895155 (=> res!845855 e!1209849)))

(assert (=> b!1895155 (= res!845855 (not (is-IntegerValue!11711 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))))))

(assert (=> b!1895155 (= e!1209850 e!1209849)))

(declare-fun b!1895156 () Bool)

(assert (=> b!1895156 (= e!1209850 (inv!17 (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))))

(assert (= (and d!580661 c!309221) b!1895152))

(assert (= (and d!580661 (not c!309221)) b!1895153))

(assert (= (and b!1895153 c!309222) b!1895156))

(assert (= (and b!1895153 (not c!309222)) b!1895155))

(assert (= (and b!1895155 (not res!845855)) b!1895154))

(declare-fun m!2326683 () Bool)

(assert (=> b!1895152 m!2326683))

(declare-fun m!2326685 () Bool)

(assert (=> b!1895154 m!2326685))

(declare-fun m!2326687 () Bool)

(assert (=> b!1895156 m!2326687))

(assert (=> tb!115299 d!580661))

(declare-fun bs!413411 () Bool)

(declare-fun d!580663 () Bool)

(assert (= bs!413411 (and d!580663 d!580305)))

(declare-fun lambda!74049 () Int)

(assert (=> bs!413411 (= (and (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (= lambda!74049 lambda!74003))))

(declare-fun bs!413412 () Bool)

(assert (= bs!413412 (and d!580663 d!580443)))

(assert (=> bs!413412 (= (and (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))))) (= lambda!74049 lambda!74031))))

(declare-fun bs!413413 () Bool)

(assert (= bs!413413 (and d!580663 d!580447)))

(assert (=> bs!413413 (= (and (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (h!26631 rules!3198)))) (= (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (h!26631 rules!3198))))) (= lambda!74049 lambda!74032))))

(assert (=> d!580663 true))

(assert (=> d!580663 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) (dynLambda!10314 order!13403 lambda!74049))))

(assert (=> d!580663 true))

(assert (=> d!580663 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))) (dynLambda!10314 order!13403 lambda!74049))))

(assert (=> d!580663 (= (semiInverseModEq!1526 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))) (Forall!989 lambda!74049))))

(declare-fun bs!413414 () Bool)

(assert (= bs!413414 d!580663))

(declare-fun m!2326689 () Bool)

(assert (=> bs!413414 m!2326689))

(assert (=> d!580327 d!580663))

(assert (=> b!1894450 d!580461))

(assert (=> b!1894450 d!580303))

(declare-fun d!580665 () Bool)

(assert (=> d!580665 (= (isEmpty!13035 lt!724869) (not (is-Some!4242 lt!724869)))))

(assert (=> d!580303 d!580665))

(assert (=> d!580303 d!580317))

(declare-fun bs!413415 () Bool)

(declare-fun d!580667 () Bool)

(assert (= bs!413415 (and d!580667 d!580307)))

(declare-fun lambda!74050 () Int)

(assert (=> bs!413415 (= lambda!74050 lambda!74006)))

(declare-fun bs!413416 () Bool)

(assert (= bs!413416 (and d!580667 d!580439)))

(assert (=> bs!413416 (= (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (rule!5960 separatorToken!354)))) (= lambda!74050 lambda!74028))))

(declare-fun bs!413417 () Bool)

(assert (= bs!413417 (and d!580667 d!580637)))

(assert (=> bs!413417 (= (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (h!26631 rules!3198)))) (= lambda!74050 lambda!74048))))

(assert (=> d!580667 true))

(assert (=> d!580667 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (dynLambda!10317 order!13407 lambda!74050))))

(assert (=> d!580667 (= (equivClasses!1453 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) (Forall2!614 lambda!74050))))

(declare-fun bs!413418 () Bool)

(assert (= bs!413418 d!580667))

(declare-fun m!2326691 () Bool)

(assert (=> bs!413418 m!2326691))

(assert (=> b!1894391 d!580667))

(declare-fun d!580669 () Bool)

(declare-fun lt!724998 () Bool)

(assert (=> d!580669 (= lt!724998 (isEmpty!13033 (list!8631 (_2!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)))))))))

(assert (=> d!580669 (= lt!724998 (isEmpty!13039 (c!309080 (_2!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354)))))))))

(assert (=> d!580669 (= (isEmpty!13034 (_2!11496 (lex!1505 thiss!23328 rules!3198 (print!1434 thiss!23328 (singletonSeq!1832 separatorToken!354))))) lt!724998)))

(declare-fun bs!413419 () Bool)

(assert (= bs!413419 d!580669))

(declare-fun m!2326693 () Bool)

(assert (=> bs!413419 m!2326693))

(assert (=> bs!413419 m!2326693))

(declare-fun m!2326695 () Bool)

(assert (=> bs!413419 m!2326695))

(declare-fun m!2326697 () Bool)

(assert (=> bs!413419 m!2326697))

(assert (=> b!1894444 d!580669))

(assert (=> b!1894444 d!580511))

(assert (=> b!1894444 d!580485))

(assert (=> b!1894444 d!580483))

(declare-fun b!1895159 () Bool)

(declare-fun b_free!52869 () Bool)

(declare-fun b_next!53573 () Bool)

(assert (=> b!1895159 (= b_free!52869 (not b_next!53573))))

(declare-fun t!176115 () Bool)

(declare-fun tb!115401 () Bool)

(assert (=> (and b!1895159 (= (toValue!5380 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176115) tb!115401))

(declare-fun result!139528 () Bool)

(assert (= result!139528 result!139406))

(assert (=> d!580305 t!176115))

(assert (=> d!580307 t!176115))

(declare-fun t!176117 () Bool)

(declare-fun tb!115403 () Bool)

(assert (=> (and b!1895159 (= (toValue!5380 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176117) tb!115403))

(declare-fun result!139530 () Bool)

(assert (= result!139530 result!139414))

(assert (=> d!580307 t!176117))

(declare-fun tp!540636 () Bool)

(declare-fun b_and!146055 () Bool)

(assert (=> b!1895159 (= tp!540636 (and (=> t!176115 result!139528) (=> t!176117 result!139530) b_and!146055))))

(declare-fun b_free!52871 () Bool)

(declare-fun b_next!53575 () Bool)

(assert (=> b!1895159 (= b_free!52871 (not b_next!53575))))

(declare-fun tb!115405 () Bool)

(declare-fun t!176119 () Bool)

(assert (=> (and b!1895159 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176119) tb!115405))

(declare-fun result!139532 () Bool)

(assert (= result!139532 result!139400))

(assert (=> d!580305 t!176119))

(declare-fun t!176121 () Bool)

(declare-fun tb!115407 () Bool)

(assert (=> (and b!1895159 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176121) tb!115407))

(declare-fun result!139534 () Bool)

(assert (= result!139534 result!139420))

(assert (=> d!580313 t!176121))

(declare-fun t!176123 () Bool)

(declare-fun tb!115409 () Bool)

(assert (=> (and b!1895159 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) t!176123) tb!115409))

(declare-fun result!139536 () Bool)

(assert (= result!139536 result!139518))

(assert (=> b!1895149 t!176123))

(declare-fun tb!115411 () Bool)

(declare-fun t!176125 () Bool)

(assert (=> (and b!1895159 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) t!176125) tb!115411))

(declare-fun result!139538 () Bool)

(assert (= result!139538 result!139392))

(assert (=> b!1894517 t!176125))

(assert (=> d!580301 t!176125))

(assert (=> b!1894569 t!176121))

(declare-fun tp!540635 () Bool)

(declare-fun b_and!146057 () Bool)

(assert (=> b!1895159 (= tp!540635 (and (=> t!176125 result!139538) (=> t!176123 result!139536) (=> t!176121 result!139534) (=> t!176119 result!139532) b_and!146057))))

(declare-fun e!1209851 () Bool)

(assert (=> b!1895159 (= e!1209851 (and tp!540636 tp!540635))))

(declare-fun tp!540638 () Bool)

(declare-fun b!1895158 () Bool)

(declare-fun e!1209852 () Bool)

(assert (=> b!1895158 (= e!1209852 (and tp!540638 (inv!28325 (tag!4181 (h!26631 (t!175977 (t!175977 rules!3198))))) (inv!28329 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) e!1209851))))

(declare-fun b!1895157 () Bool)

(declare-fun e!1209853 () Bool)

(declare-fun tp!540637 () Bool)

(assert (=> b!1895157 (= e!1209853 (and e!1209852 tp!540637))))

(assert (=> b!1894593 (= tp!540544 e!1209853)))

(assert (= b!1895158 b!1895159))

(assert (= b!1895157 b!1895158))

(assert (= (and b!1894593 (is-Cons!21230 (t!175977 (t!175977 rules!3198)))) b!1895157))

(declare-fun m!2326699 () Bool)

(assert (=> b!1895158 m!2326699))

(declare-fun m!2326701 () Bool)

(assert (=> b!1895158 m!2326701))

(declare-fun b!1895162 () Bool)

(declare-fun e!1209857 () Bool)

(assert (=> b!1895162 (= e!1209857 true)))

(declare-fun b!1895161 () Bool)

(declare-fun e!1209856 () Bool)

(assert (=> b!1895161 (= e!1209856 e!1209857)))

(declare-fun b!1895160 () Bool)

(declare-fun e!1209855 () Bool)

(assert (=> b!1895160 (= e!1209855 e!1209856)))

(assert (=> b!1894559 e!1209855))

(assert (= b!1895161 b!1895162))

(assert (= b!1895160 b!1895161))

(assert (= (and b!1894559 (is-Cons!21230 (t!175977 rules!3198))) b!1895160))

(assert (=> b!1895162 (< (dynLambda!10313 order!13401 (toValue!5380 (transformation!3767 (h!26631 (t!175977 rules!3198))))) (dynLambda!10319 order!13415 lambda!74012))))

(assert (=> b!1895162 (< (dynLambda!10315 order!13405 (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198))))) (dynLambda!10319 order!13415 lambda!74012))))

(declare-fun b!1895163 () Bool)

(declare-fun e!1209858 () Bool)

(declare-fun tp!540639 () Bool)

(assert (=> b!1895163 (= e!1209858 (and tp_is_empty!9059 tp!540639))))

(assert (=> b!1894608 (= tp!540558 e!1209858)))

(assert (= (and b!1894608 (is-Cons!21229 (t!175976 (originalCharacters!4574 (h!26632 tokens!598))))) b!1895163))

(declare-fun tp!540647 () Bool)

(declare-fun e!1209863 () Bool)

(declare-fun tp!540648 () Bool)

(declare-fun b!1895172 () Bool)

(assert (=> b!1895172 (= e!1209863 (and (inv!28332 (left!17034 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))))) tp!540648 (inv!28332 (right!17364 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))))) tp!540647))))

(declare-fun b!1895174 () Bool)

(declare-fun e!1209864 () Bool)

(declare-fun tp!540646 () Bool)

(assert (=> b!1895174 (= e!1209864 tp!540646)))

(declare-fun b!1895173 () Bool)

(declare-fun inv!28340 (IArray!14141) Bool)

(assert (=> b!1895173 (= e!1209863 (and (inv!28340 (xs!9962 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))))) e!1209864))))

(assert (=> b!1894491 (= tp!540517 (and (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809)))) e!1209863))))

(assert (= (and b!1894491 (is-Node!7068 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))))) b!1895172))

(assert (= b!1895173 b!1895174))

(assert (= (and b!1894491 (is-Leaf!10415 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))))) b!1895173))

(declare-fun m!2326703 () Bool)

(assert (=> b!1895172 m!2326703))

(declare-fun m!2326705 () Bool)

(assert (=> b!1895172 m!2326705))

(declare-fun m!2326707 () Bool)

(assert (=> b!1895173 m!2326707))

(assert (=> b!1894491 m!2325925))

(declare-fun b!1895177 () Bool)

(declare-fun e!1209865 () Bool)

(declare-fun tp!540650 () Bool)

(assert (=> b!1895177 (= e!1209865 tp!540650)))

(declare-fun b!1895175 () Bool)

(assert (=> b!1895175 (= e!1209865 tp_is_empty!9059)))

(declare-fun b!1895176 () Bool)

(declare-fun tp!540649 () Bool)

(declare-fun tp!540653 () Bool)

(assert (=> b!1895176 (= e!1209865 (and tp!540649 tp!540653))))

(declare-fun b!1895178 () Bool)

(declare-fun tp!540652 () Bool)

(declare-fun tp!540651 () Bool)

(assert (=> b!1895178 (= e!1209865 (and tp!540652 tp!540651))))

(assert (=> b!1894622 (= tp!540572 e!1209865)))

(assert (= (and b!1894622 (is-ElementMatch!5192 (regex!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) b!1895175))

(assert (= (and b!1894622 (is-Concat!9096 (regex!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) b!1895176))

(assert (= (and b!1894622 (is-Star!5192 (regex!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) b!1895177))

(assert (= (and b!1894622 (is-Union!5192 (regex!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) b!1895178))

(declare-fun tp!540656 () Bool)

(declare-fun e!1209866 () Bool)

(declare-fun b!1895179 () Bool)

(declare-fun tp!540655 () Bool)

(assert (=> b!1895179 (= e!1209866 (and (inv!28332 (left!17034 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))))) tp!540656 (inv!28332 (right!17364 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))))) tp!540655))))

(declare-fun b!1895181 () Bool)

(declare-fun e!1209867 () Bool)

(declare-fun tp!540654 () Bool)

(assert (=> b!1895181 (= e!1209867 tp!540654)))

(declare-fun b!1895180 () Bool)

(assert (=> b!1895180 (= e!1209866 (and (inv!28340 (xs!9962 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))))) e!1209867))))

(assert (=> b!1894467 (= tp!540516 (and (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354)))) e!1209866))))

(assert (= (and b!1894467 (is-Node!7068 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))))) b!1895179))

(assert (= b!1895180 b!1895181))

(assert (= (and b!1894467 (is-Leaf!10415 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (value!118952 separatorToken!354))))) b!1895180))

(declare-fun m!2326709 () Bool)

(assert (=> b!1895179 m!2326709))

(declare-fun m!2326711 () Bool)

(assert (=> b!1895179 m!2326711))

(declare-fun m!2326713 () Bool)

(assert (=> b!1895180 m!2326713))

(assert (=> b!1894467 m!2325905))

(declare-fun b!1895185 () Bool)

(declare-fun b_free!52873 () Bool)

(declare-fun b_next!53577 () Bool)

(assert (=> b!1895185 (= b_free!52873 (not b_next!53577))))

(declare-fun t!176127 () Bool)

(declare-fun tb!115413 () Bool)

(assert (=> (and b!1895185 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176127) tb!115413))

(declare-fun result!139542 () Bool)

(assert (= result!139542 result!139406))

(assert (=> d!580305 t!176127))

(assert (=> d!580307 t!176127))

(declare-fun t!176129 () Bool)

(declare-fun tb!115415 () Bool)

(assert (=> (and b!1895185 (= (toValue!5380 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176129) tb!115415))

(declare-fun result!139544 () Bool)

(assert (= result!139544 result!139414))

(assert (=> d!580307 t!176129))

(declare-fun b_and!146059 () Bool)

(declare-fun tp!540661 () Bool)

(assert (=> b!1895185 (= tp!540661 (and (=> t!176127 result!139542) (=> t!176129 result!139544) b_and!146059))))

(declare-fun b_free!52875 () Bool)

(declare-fun b_next!53579 () Bool)

(assert (=> b!1895185 (= b_free!52875 (not b_next!53579))))

(declare-fun t!176131 () Bool)

(declare-fun tb!115417 () Bool)

(assert (=> (and b!1895185 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176131) tb!115417))

(declare-fun result!139546 () Bool)

(assert (= result!139546 result!139400))

(assert (=> d!580305 t!176131))

(declare-fun t!176133 () Bool)

(declare-fun tb!115419 () Bool)

(assert (=> (and b!1895185 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598))))) t!176133) tb!115419))

(declare-fun result!139548 () Bool)

(assert (= result!139548 result!139420))

(assert (=> d!580313 t!176133))

(declare-fun t!176135 () Bool)

(declare-fun tb!115421 () Bool)

(assert (=> (and b!1895185 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598)))))) t!176135) tb!115421))

(declare-fun result!139550 () Bool)

(assert (= result!139550 result!139518))

(assert (=> b!1895149 t!176135))

(declare-fun t!176137 () Bool)

(declare-fun tb!115423 () Bool)

(assert (=> (and b!1895185 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354)))) t!176137) tb!115423))

(declare-fun result!139552 () Bool)

(assert (= result!139552 result!139392))

(assert (=> b!1894517 t!176137))

(assert (=> d!580301 t!176137))

(assert (=> b!1894569 t!176133))

(declare-fun b_and!146061 () Bool)

(declare-fun tp!540660 () Bool)

(assert (=> b!1895185 (= tp!540660 (and (=> t!176137 result!139552) (=> t!176131 result!139546) (=> t!176135 result!139550) (=> t!176133 result!139548) b_and!146061))))

(declare-fun e!1209873 () Bool)

(assert (=> b!1894620 (= tp!540571 e!1209873)))

(declare-fun e!1209870 () Bool)

(declare-fun e!1209869 () Bool)

(declare-fun tp!540657 () Bool)

(declare-fun b!1895183 () Bool)

(assert (=> b!1895183 (= e!1209869 (and (inv!21 (value!118952 (h!26632 (t!175978 (t!175978 tokens!598))))) e!1209870 tp!540657))))

(declare-fun tp!540658 () Bool)

(declare-fun b!1895182 () Bool)

(assert (=> b!1895182 (= e!1209873 (and (inv!28328 (h!26632 (t!175978 (t!175978 tokens!598)))) e!1209869 tp!540658))))

(declare-fun tp!540659 () Bool)

(declare-fun e!1209871 () Bool)

(declare-fun b!1895184 () Bool)

(assert (=> b!1895184 (= e!1209870 (and tp!540659 (inv!28325 (tag!4181 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (inv!28329 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) e!1209871))))

(assert (=> b!1895185 (= e!1209871 (and tp!540661 tp!540660))))

(assert (= b!1895184 b!1895185))

(assert (= b!1895183 b!1895184))

(assert (= b!1895182 b!1895183))

(assert (= (and b!1894620 (is-Cons!21231 (t!175978 (t!175978 tokens!598)))) b!1895182))

(declare-fun m!2326715 () Bool)

(assert (=> b!1895183 m!2326715))

(declare-fun m!2326717 () Bool)

(assert (=> b!1895182 m!2326717))

(declare-fun m!2326719 () Bool)

(assert (=> b!1895184 m!2326719))

(declare-fun m!2326721 () Bool)

(assert (=> b!1895184 m!2326721))

(declare-fun b!1895186 () Bool)

(declare-fun e!1209874 () Bool)

(declare-fun tp!540662 () Bool)

(assert (=> b!1895186 (= e!1209874 (and tp_is_empty!9059 tp!540662))))

(assert (=> b!1894621 (= tp!540570 e!1209874)))

(assert (= (and b!1894621 (is-Cons!21229 (originalCharacters!4574 (h!26632 (t!175978 tokens!598))))) b!1895186))

(declare-fun b!1895189 () Bool)

(declare-fun e!1209875 () Bool)

(declare-fun tp!540664 () Bool)

(assert (=> b!1895189 (= e!1209875 tp!540664)))

(declare-fun b!1895187 () Bool)

(assert (=> b!1895187 (= e!1209875 tp_is_empty!9059)))

(declare-fun b!1895188 () Bool)

(declare-fun tp!540663 () Bool)

(declare-fun tp!540667 () Bool)

(assert (=> b!1895188 (= e!1209875 (and tp!540663 tp!540667))))

(declare-fun b!1895190 () Bool)

(declare-fun tp!540666 () Bool)

(declare-fun tp!540665 () Bool)

(assert (=> b!1895190 (= e!1209875 (and tp!540666 tp!540665))))

(assert (=> b!1894599 (= tp!540549 e!1209875)))

(assert (= (and b!1894599 (is-ElementMatch!5192 (regOne!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895187))

(assert (= (and b!1894599 (is-Concat!9096 (regOne!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895188))

(assert (= (and b!1894599 (is-Star!5192 (regOne!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895189))

(assert (= (and b!1894599 (is-Union!5192 (regOne!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895190))

(declare-fun b!1895193 () Bool)

(declare-fun e!1209876 () Bool)

(declare-fun tp!540669 () Bool)

(assert (=> b!1895193 (= e!1209876 tp!540669)))

(declare-fun b!1895191 () Bool)

(assert (=> b!1895191 (= e!1209876 tp_is_empty!9059)))

(declare-fun b!1895192 () Bool)

(declare-fun tp!540668 () Bool)

(declare-fun tp!540672 () Bool)

(assert (=> b!1895192 (= e!1209876 (and tp!540668 tp!540672))))

(declare-fun b!1895194 () Bool)

(declare-fun tp!540671 () Bool)

(declare-fun tp!540670 () Bool)

(assert (=> b!1895194 (= e!1209876 (and tp!540671 tp!540670))))

(assert (=> b!1894599 (= tp!540548 e!1209876)))

(assert (= (and b!1894599 (is-ElementMatch!5192 (regTwo!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895191))

(assert (= (and b!1894599 (is-Concat!9096 (regTwo!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895192))

(assert (= (and b!1894599 (is-Star!5192 (regTwo!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895193))

(assert (= (and b!1894599 (is-Union!5192 (regTwo!10897 (regex!3767 (rule!5960 separatorToken!354))))) b!1895194))

(declare-fun b!1895197 () Bool)

(declare-fun e!1209877 () Bool)

(declare-fun tp!540674 () Bool)

(assert (=> b!1895197 (= e!1209877 tp!540674)))

(declare-fun b!1895195 () Bool)

(assert (=> b!1895195 (= e!1209877 tp_is_empty!9059)))

(declare-fun b!1895196 () Bool)

(declare-fun tp!540673 () Bool)

(declare-fun tp!540677 () Bool)

(assert (=> b!1895196 (= e!1209877 (and tp!540673 tp!540677))))

(declare-fun b!1895198 () Bool)

(declare-fun tp!540676 () Bool)

(declare-fun tp!540675 () Bool)

(assert (=> b!1895198 (= e!1209877 (and tp!540676 tp!540675))))

(assert (=> b!1894583 (= tp!540530 e!1209877)))

(assert (= (and b!1894583 (is-ElementMatch!5192 (reg!5521 (regex!3767 (h!26631 rules!3198))))) b!1895195))

(assert (= (and b!1894583 (is-Concat!9096 (reg!5521 (regex!3767 (h!26631 rules!3198))))) b!1895196))

(assert (= (and b!1894583 (is-Star!5192 (reg!5521 (regex!3767 (h!26631 rules!3198))))) b!1895197))

(assert (= (and b!1894583 (is-Union!5192 (reg!5521 (regex!3767 (h!26631 rules!3198))))) b!1895198))

(declare-fun b!1895201 () Bool)

(declare-fun e!1209878 () Bool)

(declare-fun tp!540679 () Bool)

(assert (=> b!1895201 (= e!1209878 tp!540679)))

(declare-fun b!1895199 () Bool)

(assert (=> b!1895199 (= e!1209878 tp_is_empty!9059)))

(declare-fun b!1895200 () Bool)

(declare-fun tp!540678 () Bool)

(declare-fun tp!540682 () Bool)

(assert (=> b!1895200 (= e!1209878 (and tp!540678 tp!540682))))

(declare-fun b!1895202 () Bool)

(declare-fun tp!540681 () Bool)

(declare-fun tp!540680 () Bool)

(assert (=> b!1895202 (= e!1209878 (and tp!540681 tp!540680))))

(assert (=> b!1894584 (= tp!540532 e!1209878)))

(assert (= (and b!1894584 (is-ElementMatch!5192 (regOne!10897 (regex!3767 (h!26631 rules!3198))))) b!1895199))

(assert (= (and b!1894584 (is-Concat!9096 (regOne!10897 (regex!3767 (h!26631 rules!3198))))) b!1895200))

(assert (= (and b!1894584 (is-Star!5192 (regOne!10897 (regex!3767 (h!26631 rules!3198))))) b!1895201))

(assert (= (and b!1894584 (is-Union!5192 (regOne!10897 (regex!3767 (h!26631 rules!3198))))) b!1895202))

(declare-fun b!1895205 () Bool)

(declare-fun e!1209879 () Bool)

(declare-fun tp!540684 () Bool)

(assert (=> b!1895205 (= e!1209879 tp!540684)))

(declare-fun b!1895203 () Bool)

(assert (=> b!1895203 (= e!1209879 tp_is_empty!9059)))

(declare-fun b!1895204 () Bool)

(declare-fun tp!540683 () Bool)

(declare-fun tp!540687 () Bool)

(assert (=> b!1895204 (= e!1209879 (and tp!540683 tp!540687))))

(declare-fun b!1895206 () Bool)

(declare-fun tp!540686 () Bool)

(declare-fun tp!540685 () Bool)

(assert (=> b!1895206 (= e!1209879 (and tp!540686 tp!540685))))

(assert (=> b!1894584 (= tp!540531 e!1209879)))

(assert (= (and b!1894584 (is-ElementMatch!5192 (regTwo!10897 (regex!3767 (h!26631 rules!3198))))) b!1895203))

(assert (= (and b!1894584 (is-Concat!9096 (regTwo!10897 (regex!3767 (h!26631 rules!3198))))) b!1895204))

(assert (= (and b!1894584 (is-Star!5192 (regTwo!10897 (regex!3767 (h!26631 rules!3198))))) b!1895205))

(assert (= (and b!1894584 (is-Union!5192 (regTwo!10897 (regex!3767 (h!26631 rules!3198))))) b!1895206))

(declare-fun b!1895209 () Bool)

(declare-fun e!1209880 () Bool)

(declare-fun tp!540689 () Bool)

(assert (=> b!1895209 (= e!1209880 tp!540689)))

(declare-fun b!1895207 () Bool)

(assert (=> b!1895207 (= e!1209880 tp_is_empty!9059)))

(declare-fun b!1895208 () Bool)

(declare-fun tp!540688 () Bool)

(declare-fun tp!540692 () Bool)

(assert (=> b!1895208 (= e!1209880 (and tp!540688 tp!540692))))

(declare-fun b!1895210 () Bool)

(declare-fun tp!540691 () Bool)

(declare-fun tp!540690 () Bool)

(assert (=> b!1895210 (= e!1209880 (and tp!540691 tp!540690))))

(assert (=> b!1894598 (= tp!540547 e!1209880)))

(assert (= (and b!1894598 (is-ElementMatch!5192 (reg!5521 (regex!3767 (rule!5960 separatorToken!354))))) b!1895207))

(assert (= (and b!1894598 (is-Concat!9096 (reg!5521 (regex!3767 (rule!5960 separatorToken!354))))) b!1895208))

(assert (= (and b!1894598 (is-Star!5192 (reg!5521 (regex!3767 (rule!5960 separatorToken!354))))) b!1895209))

(assert (= (and b!1894598 (is-Union!5192 (reg!5521 (regex!3767 (rule!5960 separatorToken!354))))) b!1895210))

(declare-fun b!1895213 () Bool)

(declare-fun e!1209881 () Bool)

(declare-fun tp!540694 () Bool)

(assert (=> b!1895213 (= e!1209881 tp!540694)))

(declare-fun b!1895211 () Bool)

(assert (=> b!1895211 (= e!1209881 tp_is_empty!9059)))

(declare-fun b!1895212 () Bool)

(declare-fun tp!540693 () Bool)

(declare-fun tp!540697 () Bool)

(assert (=> b!1895212 (= e!1209881 (and tp!540693 tp!540697))))

(declare-fun b!1895214 () Bool)

(declare-fun tp!540696 () Bool)

(declare-fun tp!540695 () Bool)

(assert (=> b!1895214 (= e!1209881 (and tp!540696 tp!540695))))

(assert (=> b!1894582 (= tp!540529 e!1209881)))

(assert (= (and b!1894582 (is-ElementMatch!5192 (regOne!10896 (regex!3767 (h!26631 rules!3198))))) b!1895211))

(assert (= (and b!1894582 (is-Concat!9096 (regOne!10896 (regex!3767 (h!26631 rules!3198))))) b!1895212))

(assert (= (and b!1894582 (is-Star!5192 (regOne!10896 (regex!3767 (h!26631 rules!3198))))) b!1895213))

(assert (= (and b!1894582 (is-Union!5192 (regOne!10896 (regex!3767 (h!26631 rules!3198))))) b!1895214))

(declare-fun b!1895217 () Bool)

(declare-fun e!1209882 () Bool)

(declare-fun tp!540699 () Bool)

(assert (=> b!1895217 (= e!1209882 tp!540699)))

(declare-fun b!1895215 () Bool)

(assert (=> b!1895215 (= e!1209882 tp_is_empty!9059)))

(declare-fun b!1895216 () Bool)

(declare-fun tp!540698 () Bool)

(declare-fun tp!540702 () Bool)

(assert (=> b!1895216 (= e!1209882 (and tp!540698 tp!540702))))

(declare-fun b!1895218 () Bool)

(declare-fun tp!540701 () Bool)

(declare-fun tp!540700 () Bool)

(assert (=> b!1895218 (= e!1209882 (and tp!540701 tp!540700))))

(assert (=> b!1894582 (= tp!540533 e!1209882)))

(assert (= (and b!1894582 (is-ElementMatch!5192 (regTwo!10896 (regex!3767 (h!26631 rules!3198))))) b!1895215))

(assert (= (and b!1894582 (is-Concat!9096 (regTwo!10896 (regex!3767 (h!26631 rules!3198))))) b!1895216))

(assert (= (and b!1894582 (is-Star!5192 (regTwo!10896 (regex!3767 (h!26631 rules!3198))))) b!1895217))

(assert (= (and b!1894582 (is-Union!5192 (regTwo!10896 (regex!3767 (h!26631 rules!3198))))) b!1895218))

(declare-fun b!1895221 () Bool)

(declare-fun e!1209883 () Bool)

(declare-fun tp!540704 () Bool)

(assert (=> b!1895221 (= e!1209883 tp!540704)))

(declare-fun b!1895219 () Bool)

(assert (=> b!1895219 (= e!1209883 tp_is_empty!9059)))

(declare-fun b!1895220 () Bool)

(declare-fun tp!540703 () Bool)

(declare-fun tp!540707 () Bool)

(assert (=> b!1895220 (= e!1209883 (and tp!540703 tp!540707))))

(declare-fun b!1895222 () Bool)

(declare-fun tp!540706 () Bool)

(declare-fun tp!540705 () Bool)

(assert (=> b!1895222 (= e!1209883 (and tp!540706 tp!540705))))

(assert (=> b!1894603 (= tp!540554 e!1209883)))

(assert (= (and b!1894603 (is-ElementMatch!5192 (regOne!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895219))

(assert (= (and b!1894603 (is-Concat!9096 (regOne!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895220))

(assert (= (and b!1894603 (is-Star!5192 (regOne!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895221))

(assert (= (and b!1894603 (is-Union!5192 (regOne!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895222))

(declare-fun b!1895225 () Bool)

(declare-fun e!1209884 () Bool)

(declare-fun tp!540709 () Bool)

(assert (=> b!1895225 (= e!1209884 tp!540709)))

(declare-fun b!1895223 () Bool)

(assert (=> b!1895223 (= e!1209884 tp_is_empty!9059)))

(declare-fun b!1895224 () Bool)

(declare-fun tp!540708 () Bool)

(declare-fun tp!540712 () Bool)

(assert (=> b!1895224 (= e!1209884 (and tp!540708 tp!540712))))

(declare-fun b!1895226 () Bool)

(declare-fun tp!540711 () Bool)

(declare-fun tp!540710 () Bool)

(assert (=> b!1895226 (= e!1209884 (and tp!540711 tp!540710))))

(assert (=> b!1894603 (= tp!540553 e!1209884)))

(assert (= (and b!1894603 (is-ElementMatch!5192 (regTwo!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895223))

(assert (= (and b!1894603 (is-Concat!9096 (regTwo!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895224))

(assert (= (and b!1894603 (is-Star!5192 (regTwo!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895225))

(assert (= (and b!1894603 (is-Union!5192 (regTwo!10897 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895226))

(declare-fun tp!540714 () Bool)

(declare-fun tp!540715 () Bool)

(declare-fun b!1895227 () Bool)

(declare-fun e!1209885 () Bool)

(assert (=> b!1895227 (= e!1209885 (and (inv!28332 (left!17034 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))))) tp!540715 (inv!28332 (right!17364 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))))) tp!540714))))

(declare-fun b!1895229 () Bool)

(declare-fun e!1209886 () Bool)

(declare-fun tp!540713 () Bool)

(assert (=> b!1895229 (= e!1209886 tp!540713)))

(declare-fun b!1895228 () Bool)

(assert (=> b!1895228 (= e!1209885 (and (inv!28340 (xs!9962 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))))) e!1209886))))

(assert (=> b!1894501 (= tp!540518 (and (inv!28332 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598))))) e!1209885))))

(assert (= (and b!1894501 (is-Node!7068 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))))) b!1895227))

(assert (= b!1895228 b!1895229))

(assert (= (and b!1894501 (is-Leaf!10415 (c!309080 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (value!118952 (h!26632 tokens!598)))))) b!1895228))

(declare-fun m!2326723 () Bool)

(assert (=> b!1895227 m!2326723))

(declare-fun m!2326725 () Bool)

(assert (=> b!1895227 m!2326725))

(declare-fun m!2326727 () Bool)

(assert (=> b!1895228 m!2326727))

(assert (=> b!1894501 m!2325951))

(declare-fun b!1895232 () Bool)

(declare-fun e!1209887 () Bool)

(declare-fun tp!540717 () Bool)

(assert (=> b!1895232 (= e!1209887 tp!540717)))

(declare-fun b!1895230 () Bool)

(assert (=> b!1895230 (= e!1209887 tp_is_empty!9059)))

(declare-fun b!1895231 () Bool)

(declare-fun tp!540716 () Bool)

(declare-fun tp!540720 () Bool)

(assert (=> b!1895231 (= e!1209887 (and tp!540716 tp!540720))))

(declare-fun b!1895233 () Bool)

(declare-fun tp!540719 () Bool)

(declare-fun tp!540718 () Bool)

(assert (=> b!1895233 (= e!1209887 (and tp!540719 tp!540718))))

(assert (=> b!1894601 (= tp!540551 e!1209887)))

(assert (= (and b!1894601 (is-ElementMatch!5192 (regOne!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895230))

(assert (= (and b!1894601 (is-Concat!9096 (regOne!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895231))

(assert (= (and b!1894601 (is-Star!5192 (regOne!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895232))

(assert (= (and b!1894601 (is-Union!5192 (regOne!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895233))

(declare-fun b!1895236 () Bool)

(declare-fun e!1209888 () Bool)

(declare-fun tp!540722 () Bool)

(assert (=> b!1895236 (= e!1209888 tp!540722)))

(declare-fun b!1895234 () Bool)

(assert (=> b!1895234 (= e!1209888 tp_is_empty!9059)))

(declare-fun b!1895235 () Bool)

(declare-fun tp!540721 () Bool)

(declare-fun tp!540725 () Bool)

(assert (=> b!1895235 (= e!1209888 (and tp!540721 tp!540725))))

(declare-fun b!1895237 () Bool)

(declare-fun tp!540724 () Bool)

(declare-fun tp!540723 () Bool)

(assert (=> b!1895237 (= e!1209888 (and tp!540724 tp!540723))))

(assert (=> b!1894601 (= tp!540555 e!1209888)))

(assert (= (and b!1894601 (is-ElementMatch!5192 (regTwo!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895234))

(assert (= (and b!1894601 (is-Concat!9096 (regTwo!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895235))

(assert (= (and b!1894601 (is-Star!5192 (regTwo!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895236))

(assert (= (and b!1894601 (is-Union!5192 (regTwo!10896 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895237))

(declare-fun b!1895240 () Bool)

(declare-fun e!1209889 () Bool)

(declare-fun tp!540727 () Bool)

(assert (=> b!1895240 (= e!1209889 tp!540727)))

(declare-fun b!1895238 () Bool)

(assert (=> b!1895238 (= e!1209889 tp_is_empty!9059)))

(declare-fun b!1895239 () Bool)

(declare-fun tp!540726 () Bool)

(declare-fun tp!540730 () Bool)

(assert (=> b!1895239 (= e!1209889 (and tp!540726 tp!540730))))

(declare-fun b!1895241 () Bool)

(declare-fun tp!540729 () Bool)

(declare-fun tp!540728 () Bool)

(assert (=> b!1895241 (= e!1209889 (and tp!540729 tp!540728))))

(assert (=> b!1894602 (= tp!540552 e!1209889)))

(assert (= (and b!1894602 (is-ElementMatch!5192 (reg!5521 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895238))

(assert (= (and b!1894602 (is-Concat!9096 (reg!5521 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895239))

(assert (= (and b!1894602 (is-Star!5192 (reg!5521 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895240))

(assert (= (and b!1894602 (is-Union!5192 (reg!5521 (regex!3767 (rule!5960 (h!26632 tokens!598)))))) b!1895241))

(declare-fun b!1895244 () Bool)

(declare-fun e!1209890 () Bool)

(declare-fun tp!540732 () Bool)

(assert (=> b!1895244 (= e!1209890 tp!540732)))

(declare-fun b!1895242 () Bool)

(assert (=> b!1895242 (= e!1209890 tp_is_empty!9059)))

(declare-fun b!1895243 () Bool)

(declare-fun tp!540731 () Bool)

(declare-fun tp!540735 () Bool)

(assert (=> b!1895243 (= e!1209890 (and tp!540731 tp!540735))))

(declare-fun b!1895245 () Bool)

(declare-fun tp!540734 () Bool)

(declare-fun tp!540733 () Bool)

(assert (=> b!1895245 (= e!1209890 (and tp!540734 tp!540733))))

(assert (=> b!1894597 (= tp!540546 e!1209890)))

(assert (= (and b!1894597 (is-ElementMatch!5192 (regOne!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895242))

(assert (= (and b!1894597 (is-Concat!9096 (regOne!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895243))

(assert (= (and b!1894597 (is-Star!5192 (regOne!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895244))

(assert (= (and b!1894597 (is-Union!5192 (regOne!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895245))

(declare-fun b!1895248 () Bool)

(declare-fun e!1209891 () Bool)

(declare-fun tp!540737 () Bool)

(assert (=> b!1895248 (= e!1209891 tp!540737)))

(declare-fun b!1895246 () Bool)

(assert (=> b!1895246 (= e!1209891 tp_is_empty!9059)))

(declare-fun b!1895247 () Bool)

(declare-fun tp!540736 () Bool)

(declare-fun tp!540740 () Bool)

(assert (=> b!1895247 (= e!1209891 (and tp!540736 tp!540740))))

(declare-fun b!1895249 () Bool)

(declare-fun tp!540739 () Bool)

(declare-fun tp!540738 () Bool)

(assert (=> b!1895249 (= e!1209891 (and tp!540739 tp!540738))))

(assert (=> b!1894597 (= tp!540550 e!1209891)))

(assert (= (and b!1894597 (is-ElementMatch!5192 (regTwo!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895246))

(assert (= (and b!1894597 (is-Concat!9096 (regTwo!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895247))

(assert (= (and b!1894597 (is-Star!5192 (regTwo!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895248))

(assert (= (and b!1894597 (is-Union!5192 (regTwo!10896 (regex!3767 (rule!5960 separatorToken!354))))) b!1895249))

(declare-fun b!1895252 () Bool)

(declare-fun e!1209892 () Bool)

(declare-fun tp!540742 () Bool)

(assert (=> b!1895252 (= e!1209892 tp!540742)))

(declare-fun b!1895250 () Bool)

(assert (=> b!1895250 (= e!1209892 tp_is_empty!9059)))

(declare-fun b!1895251 () Bool)

(declare-fun tp!540741 () Bool)

(declare-fun tp!540745 () Bool)

(assert (=> b!1895251 (= e!1209892 (and tp!540741 tp!540745))))

(declare-fun b!1895253 () Bool)

(declare-fun tp!540744 () Bool)

(declare-fun tp!540743 () Bool)

(assert (=> b!1895253 (= e!1209892 (and tp!540744 tp!540743))))

(assert (=> b!1894594 (= tp!540545 e!1209892)))

(assert (= (and b!1894594 (is-ElementMatch!5192 (regex!3767 (h!26631 (t!175977 rules!3198))))) b!1895250))

(assert (= (and b!1894594 (is-Concat!9096 (regex!3767 (h!26631 (t!175977 rules!3198))))) b!1895251))

(assert (= (and b!1894594 (is-Star!5192 (regex!3767 (h!26631 (t!175977 rules!3198))))) b!1895252))

(assert (= (and b!1894594 (is-Union!5192 (regex!3767 (h!26631 (t!175977 rules!3198))))) b!1895253))

(declare-fun b!1895254 () Bool)

(declare-fun e!1209893 () Bool)

(declare-fun tp!540746 () Bool)

(assert (=> b!1895254 (= e!1209893 (and tp_is_empty!9059 tp!540746))))

(assert (=> b!1894609 (= tp!540559 e!1209893)))

(assert (= (and b!1894609 (is-Cons!21229 (t!175976 (originalCharacters!4574 separatorToken!354)))) b!1895254))

(declare-fun b_lambda!62235 () Bool)

(assert (= b_lambda!62233 (or (and b!1894268 b_free!52835 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))))) (and b!1894267 b_free!52839 (= (toChars!5239 (transformation!3767 (rule!5960 separatorToken!354))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))))) (and b!1895185 b_free!52875 (= (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 (t!175978 tokens!598)))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))))) (and b!1895159 b_free!52871 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 (t!175977 rules!3198))))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))))) (and b!1894623 b_free!52859) (and b!1894595 b_free!52855 (= (toChars!5239 (transformation!3767 (h!26631 (t!175977 rules!3198)))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))))) (and b!1894272 b_free!52831 (= (toChars!5239 (transformation!3767 (h!26631 rules!3198))) (toChars!5239 (transformation!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))))) b_lambda!62235)))

(declare-fun b_lambda!62237 () Bool)

(assert (= b_lambda!62215 (or d!580305 b_lambda!62237)))

(declare-fun bs!413420 () Bool)

(declare-fun d!580671 () Bool)

(assert (= bs!413420 (and d!580671 d!580305)))

(assert (=> bs!413420 (= (dynLambda!10328 lambda!74003 lt!724809) (= (list!8631 (dynLambda!10312 (toChars!5239 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809))) (list!8631 lt!724809)))))

(declare-fun b_lambda!62247 () Bool)

(assert (=> (not b_lambda!62247) (not bs!413420)))

(assert (=> bs!413420 t!175999))

(declare-fun b_and!146063 () Bool)

(assert (= b_and!146051 (and (=> t!175999 result!139400) b_and!146063)))

(assert (=> bs!413420 t!176001))

(declare-fun b_and!146065 () Bool)

(assert (= b_and!146045 (and (=> t!176001 result!139402) b_and!146065)))

(assert (=> bs!413420 t!176029))

(declare-fun b_and!146067 () Bool)

(assert (= b_and!146053 (and (=> t!176029 result!139434) b_and!146067)))

(assert (=> bs!413420 t!176131))

(declare-fun b_and!146069 () Bool)

(assert (= b_and!146061 (and (=> t!176131 result!139546) b_and!146069)))

(assert (=> bs!413420 t!176039))

(declare-fun b_and!146071 () Bool)

(assert (= b_and!146047 (and (=> t!176039 result!139448) b_and!146071)))

(assert (=> bs!413420 t!176003))

(declare-fun b_and!146073 () Bool)

(assert (= b_and!146049 (and (=> t!176003 result!139404) b_and!146073)))

(assert (=> bs!413420 t!176119))

(declare-fun b_and!146075 () Bool)

(assert (= b_and!146057 (and (=> t!176119 result!139532) b_and!146075)))

(declare-fun b_lambda!62249 () Bool)

(assert (=> (not b_lambda!62249) (not bs!413420)))

(assert (=> bs!413420 t!176115))

(declare-fun b_and!146077 () Bool)

(assert (= b_and!146055 (and (=> t!176115 result!139528) b_and!146077)))

(assert (=> bs!413420 t!176009))

(declare-fun b_and!146079 () Bool)

(assert (= b_and!145957 (and (=> t!176009 result!139412) b_and!146079)))

(assert (=> bs!413420 t!176005))

(declare-fun b_and!146081 () Bool)

(assert (= b_and!145953 (and (=> t!176005 result!139406) b_and!146081)))

(assert (=> bs!413420 t!176025))

(declare-fun b_and!146083 () Bool)

(assert (= b_and!145977 (and (=> t!176025 result!139430) b_and!146083)))

(assert (=> bs!413420 t!176035))

(declare-fun b_and!146085 () Bool)

(assert (= b_and!145981 (and (=> t!176035 result!139444) b_and!146085)))

(assert (=> bs!413420 t!176127))

(declare-fun b_and!146087 () Bool)

(assert (= b_and!146059 (and (=> t!176127 result!139542) b_and!146087)))

(assert (=> bs!413420 t!176007))

(declare-fun b_and!146089 () Bool)

(assert (= b_and!145955 (and (=> t!176007 result!139410) b_and!146089)))

(assert (=> bs!413420 m!2325711))

(assert (=> bs!413420 m!2325931))

(assert (=> bs!413420 m!2325933))

(assert (=> bs!413420 m!2325935))

(assert (=> bs!413420 m!2325931))

(assert (=> bs!413420 m!2325935))

(assert (=> d!580435 d!580671))

(declare-fun b_lambda!62239 () Bool)

(assert (= b_lambda!62231 (or d!580333 b_lambda!62239)))

(declare-fun bs!413421 () Bool)

(declare-fun d!580673 () Bool)

(assert (= bs!413421 (and d!580673 d!580333)))

(assert (=> bs!413421 (= (dynLambda!10318 lambda!74012 (h!26632 tokens!598)) (rulesProduceIndividualToken!1552 thiss!23328 rules!3198 (h!26632 tokens!598)))))

(assert (=> bs!413421 m!2326007))

(assert (=> b!1895146 d!580673))

(declare-fun b_lambda!62241 () Bool)

(assert (= b_lambda!62217 (or d!580307 b_lambda!62241)))

(declare-fun bs!413422 () Bool)

(declare-fun d!580675 () Bool)

(assert (= bs!413422 (and d!580675 d!580307)))

(declare-fun res!845856 () Bool)

(declare-fun e!1209894 () Bool)

(assert (=> bs!413422 (=> res!845856 e!1209894)))

(assert (=> bs!413422 (= res!845856 (not (= (list!8631 lt!724809) (list!8631 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))))))))

(assert (=> bs!413422 (= (dynLambda!10329 lambda!74006 lt!724809 (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598)))) e!1209894)))

(declare-fun b!1895255 () Bool)

(assert (=> b!1895255 (= e!1209894 (= (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) lt!724809) (dynLambda!10316 (toValue!5380 (transformation!3767 (rule!5960 (h!26632 tokens!598)))) (seqFromList!2639 (originalCharacters!4574 (h!26632 tokens!598))))))))

(assert (= (and bs!413422 (not res!845856)) b!1895255))

(declare-fun b_lambda!62251 () Bool)

(assert (=> (not b_lambda!62251) (not b!1895255)))

(assert (=> b!1895255 t!176025))

(declare-fun b_and!146091 () Bool)

(assert (= b_and!146083 (and (=> t!176025 result!139430) b_and!146091)))

(assert (=> b!1895255 t!176007))

(declare-fun b_and!146093 () Bool)

(assert (= b_and!146089 (and (=> t!176007 result!139410) b_and!146093)))

(assert (=> b!1895255 t!176115))

(declare-fun b_and!146095 () Bool)

(assert (= b_and!146077 (and (=> t!176115 result!139528) b_and!146095)))

(assert (=> b!1895255 t!176127))

(declare-fun b_and!146097 () Bool)

(assert (= b_and!146087 (and (=> t!176127 result!139542) b_and!146097)))

(assert (=> b!1895255 t!176035))

(declare-fun b_and!146099 () Bool)

(assert (= b_and!146085 (and (=> t!176035 result!139444) b_and!146099)))

(assert (=> b!1895255 t!176009))

(declare-fun b_and!146101 () Bool)

(assert (= b_and!146079 (and (=> t!176009 result!139412) b_and!146101)))

(assert (=> b!1895255 t!176005))

(declare-fun b_and!146103 () Bool)

(assert (= b_and!146081 (and (=> t!176005 result!139406) b_and!146103)))

(declare-fun b_lambda!62253 () Bool)

(assert (=> (not b_lambda!62253) (not b!1895255)))

(assert (=> b!1895255 t!176037))

(declare-fun b_and!146105 () Bool)

(assert (= b_and!146099 (and (=> t!176037 result!139446) b_and!146105)))

(assert (=> b!1895255 t!176117))

(declare-fun b_and!146107 () Bool)

(assert (= b_and!146095 (and (=> t!176117 result!139530) b_and!146107)))

(assert (=> b!1895255 t!176129))

(declare-fun b_and!146109 () Bool)

(assert (= b_and!146097 (and (=> t!176129 result!139544) b_and!146109)))

(assert (=> b!1895255 t!176027))

(declare-fun b_and!146111 () Bool)

(assert (= b_and!146091 (and (=> t!176027 result!139432) b_and!146111)))

(assert (=> b!1895255 t!176015))

(declare-fun b_and!146113 () Bool)

(assert (= b_and!146101 (and (=> t!176015 result!139418) b_and!146113)))

(assert (=> b!1895255 t!176011))

(declare-fun b_and!146115 () Bool)

(assert (= b_and!146103 (and (=> t!176011 result!139414) b_and!146115)))

(assert (=> b!1895255 t!176013))

(declare-fun b_and!146117 () Bool)

(assert (= b_and!146093 (and (=> t!176013 result!139416) b_and!146117)))

(assert (=> bs!413422 m!2325711))

(assert (=> bs!413422 m!2325709))

(assert (=> bs!413422 m!2325945))

(assert (=> b!1895255 m!2325935))

(assert (=> b!1895255 m!2325709))

(assert (=> b!1895255 m!2325943))

(assert (=> d!580449 d!580675))

(declare-fun b_lambda!62243 () Bool)

(assert (= b_lambda!62219 (or d!580299 b_lambda!62243)))

(declare-fun bs!413423 () Bool)

(declare-fun d!580677 () Bool)

(assert (= bs!413423 (and d!580677 d!580299)))

(assert (=> bs!413423 (= (dynLambda!10330 lambda!74000 (h!26631 rules!3198)) (ruleValid!1144 thiss!23328 (h!26631 rules!3198)))))

(assert (=> bs!413423 m!2325901))

(assert (=> b!1894910 d!580677))

(declare-fun b_lambda!62245 () Bool)

(assert (= b_lambda!62213 (or b!1894269 b_lambda!62245)))

(declare-fun bs!413424 () Bool)

(declare-fun d!580679 () Bool)

(assert (= bs!413424 (and d!580679 b!1894269)))

(assert (=> bs!413424 (= (dynLambda!10318 lambda!73994 (h!26632 (t!175978 tokens!598))) (not (isSeparator!3767 (rule!5960 (h!26632 (t!175978 tokens!598))))))))

(assert (=> b!1894804 d!580679))

(push 1)

(assert (not b!1895188))

(assert (not b!1895253))

(assert (not bm!116919))

(assert (not b!1894886))

(assert (not b!1895108))

(assert (not d!580669))

(assert (not bs!413423))

(assert (not b!1895251))

(assert (not b_next!53543))

(assert (not b!1895151))

(assert (not b_lambda!62249))

(assert (not d!580485))

(assert (not b!1895222))

(assert (not b!1894864))

(assert (not b!1894467))

(assert (not bm!116924))

(assert (not b!1895220))

(assert (not b!1895120))

(assert (not d!580663))

(assert (not d!580467))

(assert (not b!1895218))

(assert (not d!580419))

(assert (not b!1894845))

(assert (not b!1895208))

(assert (not d!580463))

(assert tp_is_empty!9059)

(assert (not b!1895254))

(assert (not d!580443))

(assert (not b!1895206))

(assert (not b!1895182))

(assert (not d!580421))

(assert (not b!1895070))

(assert (not b!1894853))

(assert (not b!1895160))

(assert (not d!580619))

(assert (not d!580511))

(assert (not b!1895176))

(assert (not b_lambda!62235))

(assert (not d!580645))

(assert b_and!146067)

(assert (not b!1894807))

(assert (not b!1894903))

(assert (not b_lambda!62169))

(assert (not d!580445))

(assert (not b!1895227))

(assert (not b!1894870))

(assert (not b!1894491))

(assert (not b!1895075))

(assert (not d!580501))

(assert (not b_next!53541))

(assert (not b!1895082))

(assert (not d!580479))

(assert (not b!1895217))

(assert (not b!1895229))

(assert (not b!1894791))

(assert (not d!580437))

(assert (not b!1895239))

(assert (not b!1894884))

(assert (not b!1895214))

(assert (not b!1895224))

(assert (not b!1895186))

(assert (not b_next!53579))

(assert b_and!146065)

(assert (not b!1895147))

(assert (not d!580469))

(assert (not bm!116907))

(assert (not b!1895198))

(assert (not d!580449))

(assert b_and!146117)

(assert (not b!1894841))

(assert (not b_lambda!62251))

(assert (not b!1895180))

(assert (not d!580453))

(assert (not b_lambda!62247))

(assert (not b_next!53559))

(assert (not b_lambda!62175))

(assert (not b!1895178))

(assert (not b!1894880))

(assert (not b!1895194))

(assert (not b!1895150))

(assert (not b!1894892))

(assert (not b_lambda!62241))

(assert (not b!1894865))

(assert (not b!1895240))

(assert (not bm!116918))

(assert (not b!1895247))

(assert (not b!1895133))

(assert (not b!1894888))

(assert (not d!580457))

(assert (not b!1894885))

(assert (not bs!413421))

(assert (not b!1895237))

(assert (not b!1894872))

(assert (not d!580459))

(assert (not b!1895064))

(assert (not b_next!53563))

(assert (not b_next!53561))

(assert (not b!1895145))

(assert (not b!1895231))

(assert (not d!580627))

(assert (not d!580667))

(assert (not bm!116905))

(assert (not b_lambda!62239))

(assert (not b!1895236))

(assert (not b_next!53573))

(assert (not b!1895154))

(assert (not b!1895190))

(assert (not b!1895076))

(assert b_and!146071)

(assert (not b!1895228))

(assert (not b!1894846))

(assert (not b_lambda!62179))

(assert (not b!1895179))

(assert (not b!1895210))

(assert (not b!1894874))

(assert (not b!1895074))

(assert (not b!1895192))

(assert (not d!580423))

(assert (not b!1894855))

(assert (not d!580637))

(assert (not b_next!53557))

(assert (not b!1894919))

(assert (not d!580647))

(assert b_and!146105)

(assert (not d!580401))

(assert (not b_lambda!62167))

(assert (not d!580657))

(assert (not tb!115391))

(assert (not b!1895065))

(assert (not d!580471))

(assert (not b!1894806))

(assert (not d!580425))

(assert (not b!1895232))

(assert (not d!580433))

(assert (not d!580465))

(assert b_and!146075)

(assert (not b!1895163))

(assert (not d!580641))

(assert (not b_next!53577))

(assert (not d!580483))

(assert (not b!1895216))

(assert (not d!580635))

(assert (not b!1895183))

(assert (not b!1895244))

(assert (not b!1895221))

(assert (not b_lambda!62173))

(assert (not b!1894803))

(assert b_and!146113)

(assert (not b!1895248))

(assert (not bs!413420))

(assert (not d!580451))

(assert (not b!1895249))

(assert (not b_next!53537))

(assert (not b!1894843))

(assert (not b!1895148))

(assert (not b!1895142))

(assert (not b!1895196))

(assert (not d!580447))

(assert (not bm!116906))

(assert (not b_lambda!62243))

(assert (not b!1894911))

(assert (not b!1895156))

(assert (not b!1894889))

(assert b_and!146107)

(assert (not b!1895209))

(assert (not b!1895174))

(assert (not b!1895079))

(assert (not b!1894899))

(assert (not b_lambda!62163))

(assert (not b!1895157))

(assert b_and!146073)

(assert (not d!580633))

(assert (not bm!116909))

(assert (not b!1895062))

(assert (not d!580655))

(assert (not b!1895252))

(assert b_and!146109)

(assert (not b!1895173))

(assert (not d!580431))

(assert (not b!1895181))

(assert (not b!1895241))

(assert (not d!580427))

(assert (not b!1894844))

(assert b_and!146115)

(assert (not b!1894914))

(assert (not b!1895245))

(assert b_and!146069)

(assert (not b!1895193))

(assert (not b!1895205))

(assert (not b!1895212))

(assert (not b!1894901))

(assert (not b_next!53533))

(assert (not b!1894900))

(assert (not b!1895068))

(assert (not b!1895197))

(assert (not b!1894805))

(assert (not b!1895225))

(assert (not b!1895213))

(assert (not b!1894920))

(assert (not b!1894923))

(assert (not b_next!53575))

(assert (not b!1895149))

(assert (not d!580439))

(assert (not b!1894856))

(assert (not b!1895202))

(assert (not b_lambda!62253))

(assert (not d!580435))

(assert (not d!580417))

(assert (not d!580477))

(assert (not b!1894827))

(assert (not b!1894905))

(assert (not b_lambda!62177))

(assert (not b!1895141))

(assert (not b!1894857))

(assert (not d!580621))

(assert (not b!1895158))

(assert (not b!1895235))

(assert (not b!1895078))

(assert (not b!1895143))

(assert b_and!146063)

(assert (not b_lambda!62171))

(assert (not b!1895243))

(assert (not b_next!53539))

(assert (not b_lambda!62237))

(assert (not b!1895177))

(assert (not b!1895067))

(assert (not b!1894802))

(assert (not b!1895226))

(assert (not b!1895184))

(assert (not b!1895200))

(assert (not b!1895135))

(assert (not b_lambda!62165))

(assert (not b_lambda!62245))

(assert (not d!580393))

(assert (not b!1895233))

(assert (not b!1895201))

(assert (not b!1894501))

(assert (not b!1895152))

(assert (not b_next!53535))

(assert (not b!1895134))

(assert (not b!1895129))

(assert (not b!1895204))

(assert (not b!1895189))

(assert (not d!580653))

(assert (not d!580651))

(assert (not d!580497))

(assert (not b!1894859))

(assert b_and!146111)

(assert (not d!580499))

(assert (not d!580659))

(assert (not b!1895172))

(assert (not b!1895063))

(assert (not bs!413422))

(assert (not b!1895060))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!53543))

(assert b_and!146067)

(assert (not b_next!53541))

(assert b_and!146117)

(assert (not b_next!53559))

(assert (not b_next!53557))

(assert b_and!146105)

(assert b_and!146113)

(assert (not b_next!53537))

(assert b_and!146107)

(assert (not b_next!53533))

(assert (not b_next!53575))

(assert (not b_next!53535))

(assert b_and!146111)

(assert (not b_next!53579))

(assert b_and!146065)

(assert (not b_next!53563))

(assert (not b_next!53561))

(assert b_and!146071)

(assert (not b_next!53573))

(assert b_and!146075)

(assert (not b_next!53577))

(assert b_and!146073)

(assert b_and!146109)

(assert b_and!146069)

(assert b_and!146115)

(assert b_and!146063)

(assert (not b_next!53539))

(check-sat)

(pop 1)

