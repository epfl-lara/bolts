; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190170 () Bool)

(assert start!190170)

(declare-fun b!1896682 () Bool)

(declare-fun b_free!53021 () Bool)

(declare-fun b_next!53725 () Bool)

(assert (=> b!1896682 (= b_free!53021 (not b_next!53725))))

(declare-fun tp!541397 () Bool)

(declare-fun b_and!146415 () Bool)

(assert (=> b!1896682 (= tp!541397 b_and!146415)))

(declare-fun b_free!53023 () Bool)

(declare-fun b_next!53727 () Bool)

(assert (=> b!1896682 (= b_free!53023 (not b_next!53727))))

(declare-fun tp!541407 () Bool)

(declare-fun b_and!146417 () Bool)

(assert (=> b!1896682 (= tp!541407 b_and!146417)))

(declare-fun b!1896690 () Bool)

(declare-fun b_free!53025 () Bool)

(declare-fun b_next!53729 () Bool)

(assert (=> b!1896690 (= b_free!53025 (not b_next!53729))))

(declare-fun tp!541402 () Bool)

(declare-fun b_and!146419 () Bool)

(assert (=> b!1896690 (= tp!541402 b_and!146419)))

(declare-fun b_free!53027 () Bool)

(declare-fun b_next!53731 () Bool)

(assert (=> b!1896690 (= b_free!53027 (not b_next!53731))))

(declare-fun tp!541399 () Bool)

(declare-fun b_and!146421 () Bool)

(assert (=> b!1896690 (= tp!541399 b_and!146421)))

(declare-fun b!1896676 () Bool)

(declare-fun b_free!53029 () Bool)

(declare-fun b_next!53733 () Bool)

(assert (=> b!1896676 (= b_free!53029 (not b_next!53733))))

(declare-fun tp!541403 () Bool)

(declare-fun b_and!146423 () Bool)

(assert (=> b!1896676 (= tp!541403 b_and!146423)))

(declare-fun b_free!53031 () Bool)

(declare-fun b_next!53735 () Bool)

(assert (=> b!1896676 (= b_free!53031 (not b_next!53735))))

(declare-fun tp!541398 () Bool)

(declare-fun b_and!146425 () Bool)

(assert (=> b!1896676 (= tp!541398 b_and!146425)))

(declare-fun b!1896675 () Bool)

(declare-fun res!846533 () Bool)

(declare-fun e!1210941 () Bool)

(assert (=> b!1896675 (=> (not res!846533) (not e!1210941))))

(declare-datatypes ((List!21362 0))(
  ( (Nil!21280) (Cons!21280 (h!26681 (_ BitVec 16)) (t!176311 List!21362)) )
))
(declare-datatypes ((TokenValue!3915 0))(
  ( (FloatLiteralValue!7830 (text!27850 List!21362)) (TokenValueExt!3914 (__x!13328 Int)) (Broken!19575 (value!119268 List!21362)) (Object!3996) (End!3915) (Def!3915) (Underscore!3915) (Match!3915) (Else!3915) (Error!3915) (Case!3915) (If!3915) (Extends!3915) (Abstract!3915) (Class!3915) (Val!3915) (DelimiterValue!7830 (del!3975 List!21362)) (KeywordValue!3921 (value!119269 List!21362)) (CommentValue!7830 (value!119270 List!21362)) (WhitespaceValue!7830 (value!119271 List!21362)) (IndentationValue!3915 (value!119272 List!21362)) (String!24694) (Int32!3915) (Broken!19576 (value!119273 List!21362)) (Boolean!3916) (Unit!35632) (OperatorValue!3918 (op!3975 List!21362)) (IdentifierValue!7830 (value!119274 List!21362)) (IdentifierValue!7831 (value!119275 List!21362)) (WhitespaceValue!7831 (value!119276 List!21362)) (True!7830) (False!7830) (Broken!19577 (value!119277 List!21362)) (Broken!19578 (value!119278 List!21362)) (True!7831) (RightBrace!3915) (RightBracket!3915) (Colon!3915) (Null!3915) (Comma!3915) (LeftBracket!3915) (False!7831) (LeftBrace!3915) (ImaginaryLiteralValue!3915 (text!27851 List!21362)) (StringLiteralValue!11745 (value!119279 List!21362)) (EOFValue!3915 (value!119280 List!21362)) (IdentValue!3915 (value!119281 List!21362)) (DelimiterValue!7831 (value!119282 List!21362)) (DedentValue!3915 (value!119283 List!21362)) (NewLineValue!3915 (value!119284 List!21362)) (IntegerValue!11745 (value!119285 (_ BitVec 32)) (text!27852 List!21362)) (IntegerValue!11746 (value!119286 Int) (text!27853 List!21362)) (Times!3915) (Or!3915) (Equal!3915) (Minus!3915) (Broken!19579 (value!119287 List!21362)) (And!3915) (Div!3915) (LessEqual!3915) (Mod!3915) (Concat!9119) (Not!3915) (Plus!3915) (SpaceValue!3915 (value!119288 List!21362)) (IntegerValue!11747 (value!119289 Int) (text!27854 List!21362)) (StringLiteralValue!11746 (text!27855 List!21362)) (FloatLiteralValue!7831 (text!27856 List!21362)) (BytesLiteralValue!3915 (value!119290 List!21362)) (CommentValue!7831 (value!119291 List!21362)) (StringLiteralValue!11747 (value!119292 List!21362)) (ErrorTokenValue!3915 (msg!3976 List!21362)) )
))
(declare-datatypes ((C!10554 0))(
  ( (C!10555 (val!6229 Int)) )
))
(declare-datatypes ((List!21363 0))(
  ( (Nil!21281) (Cons!21281 (h!26682 C!10554) (t!176312 List!21363)) )
))
(declare-datatypes ((IArray!14173 0))(
  ( (IArray!14174 (innerList!7144 List!21363)) )
))
(declare-datatypes ((Conc!7084 0))(
  ( (Node!7084 (left!17064 Conc!7084) (right!17394 Conc!7084) (csize!14398 Int) (cheight!7295 Int)) (Leaf!10437 (xs!9978 IArray!14173) (csize!14399 Int)) (Empty!7084) )
))
(declare-datatypes ((BalanceConc!13984 0))(
  ( (BalanceConc!13985 (c!309340 Conc!7084)) )
))
(declare-datatypes ((Regex!5204 0))(
  ( (ElementMatch!5204 (c!309341 C!10554)) (Concat!9120 (regOne!10920 Regex!5204) (regTwo!10920 Regex!5204)) (EmptyExpr!5204) (Star!5204 (reg!5533 Regex!5204)) (EmptyLang!5204) (Union!5204 (regOne!10921 Regex!5204) (regTwo!10921 Regex!5204)) )
))
(declare-datatypes ((String!24695 0))(
  ( (String!24696 (value!119293 String)) )
))
(declare-datatypes ((TokenValueInjection!7414 0))(
  ( (TokenValueInjection!7415 (toValue!5396 Int) (toChars!5255 Int)) )
))
(declare-datatypes ((Rule!7358 0))(
  ( (Rule!7359 (regex!3779 Regex!5204) (tag!4197 String!24695) (isSeparator!3779 Bool) (transformation!3779 TokenValueInjection!7414)) )
))
(declare-datatypes ((List!21364 0))(
  ( (Nil!21282) (Cons!21282 (h!26683 Rule!7358) (t!176313 List!21364)) )
))
(declare-fun rules!3198 () List!21364)

(declare-fun isEmpty!13061 (List!21364) Bool)

(assert (=> b!1896675 (= res!846533 (not (isEmpty!13061 rules!3198)))))

(declare-fun e!1210947 () Bool)

(assert (=> b!1896676 (= e!1210947 (and tp!541403 tp!541398))))

(declare-fun b!1896677 () Bool)

(declare-fun res!846530 () Bool)

(assert (=> b!1896677 (=> (not res!846530) (not e!1210941))))

(declare-datatypes ((LexerInterface!3392 0))(
  ( (LexerInterfaceExt!3389 (__x!13329 Int)) (Lexer!3390) )
))
(declare-fun thiss!23328 () LexerInterface!3392)

(declare-fun rulesInvariant!2999 (LexerInterface!3392 List!21364) Bool)

(assert (=> b!1896677 (= res!846530 (rulesInvariant!2999 thiss!23328 rules!3198))))

(declare-fun b!1896678 () Bool)

(declare-fun res!846541 () Bool)

(assert (=> b!1896678 (=> (not res!846541) (not e!1210941))))

(declare-datatypes ((Token!7110 0))(
  ( (Token!7111 (value!119294 TokenValue!3915) (rule!5972 Rule!7358) (size!16857 Int) (originalCharacters!4586 List!21363)) )
))
(declare-fun separatorToken!354 () Token!7110)

(assert (=> b!1896678 (= res!846541 (isSeparator!3779 (rule!5972 separatorToken!354)))))

(declare-fun b!1896679 () Bool)

(declare-fun e!1210942 () Bool)

(declare-datatypes ((List!21365 0))(
  ( (Nil!21283) (Cons!21283 (h!26684 Token!7110) (t!176314 List!21365)) )
))
(declare-fun tokens!598 () List!21365)

(declare-fun lt!725389 () Rule!7358)

(assert (=> b!1896679 (= e!1210942 (= (rule!5972 (h!26684 tokens!598)) lt!725389))))

(declare-fun b!1896680 () Bool)

(declare-fun e!1210931 () Bool)

(declare-fun e!1210943 () Bool)

(assert (=> b!1896680 (= e!1210931 e!1210943)))

(declare-fun res!846539 () Bool)

(assert (=> b!1896680 (=> (not res!846539) (not e!1210943))))

(declare-fun lt!725384 () Rule!7358)

(declare-fun lt!725390 () List!21363)

(declare-fun matchR!2490 (Regex!5204 List!21363) Bool)

(assert (=> b!1896680 (= res!846539 (matchR!2490 (regex!3779 lt!725384) lt!725390))))

(declare-datatypes ((Option!4263 0))(
  ( (None!4262) (Some!4262 (v!26291 Rule!7358)) )
))
(declare-fun lt!725383 () Option!4263)

(declare-fun get!6560 (Option!4263) Rule!7358)

(assert (=> b!1896680 (= lt!725384 (get!6560 lt!725383))))

(declare-fun b!1896681 () Bool)

(declare-fun res!846535 () Bool)

(assert (=> b!1896681 (=> (not res!846535) (not e!1210941))))

(declare-fun lambda!74108 () Int)

(declare-fun forall!4457 (List!21365 Int) Bool)

(assert (=> b!1896681 (= res!846535 (forall!4457 tokens!598 lambda!74108))))

(declare-fun e!1210932 () Bool)

(assert (=> b!1896682 (= e!1210932 (and tp!541397 tp!541407))))

(declare-fun tp!541406 () Bool)

(declare-fun e!1210944 () Bool)

(declare-fun b!1896683 () Bool)

(declare-fun e!1210945 () Bool)

(declare-fun inv!28384 (Token!7110) Bool)

(assert (=> b!1896683 (= e!1210944 (and (inv!28384 (h!26684 tokens!598)) e!1210945 tp!541406))))

(declare-fun b!1896684 () Bool)

(declare-fun res!846538 () Bool)

(assert (=> b!1896684 (=> (not res!846538) (not e!1210941))))

(declare-fun sepAndNonSepRulesDisjointChars!877 (List!21364 List!21364) Bool)

(assert (=> b!1896684 (= res!846538 (sepAndNonSepRulesDisjointChars!877 rules!3198 rules!3198))))

(declare-fun b!1896686 () Bool)

(assert (=> b!1896686 (= e!1210941 (not true))))

(declare-fun e!1210936 () Bool)

(assert (=> b!1896686 e!1210936))

(declare-fun res!846537 () Bool)

(assert (=> b!1896686 (=> (not res!846537) (not e!1210936))))

(declare-fun lt!725393 () Option!4263)

(declare-fun isDefined!3561 (Option!4263) Bool)

(assert (=> b!1896686 (= res!846537 (isDefined!3561 lt!725393))))

(declare-fun getRuleFromTag!622 (LexerInterface!3392 List!21364 String!24695) Option!4263)

(assert (=> b!1896686 (= lt!725393 (getRuleFromTag!622 thiss!23328 rules!3198 (tag!4197 (rule!5972 (h!26684 tokens!598)))))))

(declare-datatypes ((Unit!35633 0))(
  ( (Unit!35634) )
))
(declare-fun lt!725386 () Unit!35633)

(declare-fun lt!725388 () List!21363)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!622 (LexerInterface!3392 List!21364 List!21363 Token!7110) Unit!35633)

(assert (=> b!1896686 (= lt!725386 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!622 thiss!23328 rules!3198 lt!725388 (h!26684 tokens!598)))))

(declare-fun e!1210950 () Bool)

(assert (=> b!1896686 e!1210950))

(declare-fun res!846532 () Bool)

(assert (=> b!1896686 (=> (not res!846532) (not e!1210950))))

(declare-datatypes ((tuple2!20082 0))(
  ( (tuple2!20083 (_1!11510 Token!7110) (_2!11510 List!21363)) )
))
(declare-datatypes ((Option!4264 0))(
  ( (None!4263) (Some!4263 (v!26292 tuple2!20082)) )
))
(declare-fun lt!725392 () Option!4264)

(declare-fun isDefined!3562 (Option!4264) Bool)

(assert (=> b!1896686 (= res!846532 (isDefined!3562 lt!725392))))

(declare-fun maxPrefix!1838 (LexerInterface!3392 List!21364 List!21363) Option!4264)

(assert (=> b!1896686 (= lt!725392 (maxPrefix!1838 thiss!23328 rules!3198 lt!725388))))

(declare-fun lt!725394 () BalanceConc!13984)

(declare-fun list!8655 (BalanceConc!13984) List!21363)

(assert (=> b!1896686 (= lt!725388 (list!8655 lt!725394))))

(assert (=> b!1896686 e!1210931))

(declare-fun res!846528 () Bool)

(assert (=> b!1896686 (=> (not res!846528) (not e!1210931))))

(assert (=> b!1896686 (= res!846528 (isDefined!3561 lt!725383))))

(assert (=> b!1896686 (= lt!725383 (getRuleFromTag!622 thiss!23328 rules!3198 (tag!4197 (rule!5972 separatorToken!354))))))

(declare-fun lt!725387 () Unit!35633)

(assert (=> b!1896686 (= lt!725387 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!622 thiss!23328 rules!3198 lt!725390 separatorToken!354))))

(declare-fun charsOf!2335 (Token!7110) BalanceConc!13984)

(assert (=> b!1896686 (= lt!725390 (list!8655 (charsOf!2335 separatorToken!354)))))

(declare-fun lt!725385 () Unit!35633)

(declare-fun lemmaEqSameImage!487 (TokenValueInjection!7414 BalanceConc!13984 BalanceConc!13984) Unit!35633)

(declare-fun seqFromList!2651 (List!21363) BalanceConc!13984)

(assert (=> b!1896686 (= lt!725385 (lemmaEqSameImage!487 (transformation!3779 (rule!5972 (h!26684 tokens!598))) lt!725394 (seqFromList!2651 (originalCharacters!4586 (h!26684 tokens!598)))))))

(declare-fun lt!725391 () Unit!35633)

(declare-fun lemmaSemiInverse!758 (TokenValueInjection!7414 BalanceConc!13984) Unit!35633)

(assert (=> b!1896686 (= lt!725391 (lemmaSemiInverse!758 (transformation!3779 (rule!5972 (h!26684 tokens!598))) lt!725394))))

(assert (=> b!1896686 (= lt!725394 (charsOf!2335 (h!26684 tokens!598)))))

(declare-fun b!1896687 () Bool)

(declare-fun tp!541405 () Bool)

(declare-fun e!1210949 () Bool)

(declare-fun inv!21 (TokenValue!3915) Bool)

(assert (=> b!1896687 (= e!1210945 (and (inv!21 (value!119294 (h!26684 tokens!598))) e!1210949 tp!541405))))

(declare-fun b!1896688 () Bool)

(declare-fun e!1210937 () Bool)

(declare-fun e!1210948 () Bool)

(declare-fun tp!541408 () Bool)

(assert (=> b!1896688 (= e!1210937 (and e!1210948 tp!541408))))

(declare-fun b!1896689 () Bool)

(assert (=> b!1896689 (= e!1210936 e!1210942)))

(declare-fun res!846534 () Bool)

(assert (=> b!1896689 (=> (not res!846534) (not e!1210942))))

(assert (=> b!1896689 (= res!846534 (matchR!2490 (regex!3779 lt!725389) lt!725388))))

(assert (=> b!1896689 (= lt!725389 (get!6560 lt!725393))))

(declare-fun e!1210951 () Bool)

(assert (=> b!1896690 (= e!1210951 (and tp!541402 tp!541399))))

(declare-fun tp!541404 () Bool)

(declare-fun e!1210946 () Bool)

(declare-fun b!1896691 () Bool)

(declare-fun inv!28381 (String!24695) Bool)

(declare-fun inv!28385 (TokenValueInjection!7414) Bool)

(assert (=> b!1896691 (= e!1210946 (and tp!541404 (inv!28381 (tag!4197 (rule!5972 separatorToken!354))) (inv!28385 (transformation!3779 (rule!5972 separatorToken!354))) e!1210951))))

(declare-fun tp!541401 () Bool)

(declare-fun b!1896692 () Bool)

(assert (=> b!1896692 (= e!1210949 (and tp!541401 (inv!28381 (tag!4197 (rule!5972 (h!26684 tokens!598)))) (inv!28385 (transformation!3779 (rule!5972 (h!26684 tokens!598)))) e!1210947))))

(declare-fun b!1896693 () Bool)

(declare-fun res!846531 () Bool)

(assert (=> b!1896693 (=> (not res!846531) (not e!1210941))))

(assert (=> b!1896693 (= res!846531 (is-Cons!21283 tokens!598))))

(declare-fun b!1896694 () Bool)

(assert (=> b!1896694 (= e!1210943 (= (rule!5972 separatorToken!354) lt!725384))))

(declare-fun e!1210940 () Bool)

(declare-fun tp!541400 () Bool)

(declare-fun b!1896695 () Bool)

(assert (=> b!1896695 (= e!1210940 (and (inv!21 (value!119294 separatorToken!354)) e!1210946 tp!541400))))

(declare-fun b!1896696 () Bool)

(declare-fun tp!541409 () Bool)

(assert (=> b!1896696 (= e!1210948 (and tp!541409 (inv!28381 (tag!4197 (h!26683 rules!3198))) (inv!28385 (transformation!3779 (h!26683 rules!3198))) e!1210932))))

(declare-fun b!1896697 () Bool)

(declare-fun get!6561 (Option!4264) tuple2!20082)

(assert (=> b!1896697 (= e!1210950 (= (_1!11510 (get!6561 lt!725392)) (h!26684 tokens!598)))))

(declare-fun b!1896698 () Bool)

(declare-fun res!846536 () Bool)

(assert (=> b!1896698 (=> (not res!846536) (not e!1210941))))

(declare-fun rulesProduceIndividualToken!1564 (LexerInterface!3392 List!21364 Token!7110) Bool)

(assert (=> b!1896698 (= res!846536 (rulesProduceIndividualToken!1564 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1896685 () Bool)

(declare-fun res!846540 () Bool)

(assert (=> b!1896685 (=> (not res!846540) (not e!1210941))))

(declare-fun rulesProduceEachTokenIndividuallyList!1123 (LexerInterface!3392 List!21364 List!21365) Bool)

(assert (=> b!1896685 (= res!846540 (rulesProduceEachTokenIndividuallyList!1123 thiss!23328 rules!3198 tokens!598))))

(declare-fun res!846529 () Bool)

(assert (=> start!190170 (=> (not res!846529) (not e!1210941))))

(assert (=> start!190170 (= res!846529 (is-Lexer!3390 thiss!23328))))

(assert (=> start!190170 e!1210941))

(assert (=> start!190170 true))

(assert (=> start!190170 e!1210937))

(assert (=> start!190170 e!1210944))

(assert (=> start!190170 (and (inv!28384 separatorToken!354) e!1210940)))

(assert (= (and start!190170 res!846529) b!1896675))

(assert (= (and b!1896675 res!846533) b!1896677))

(assert (= (and b!1896677 res!846530) b!1896685))

(assert (= (and b!1896685 res!846540) b!1896698))

(assert (= (and b!1896698 res!846536) b!1896678))

(assert (= (and b!1896678 res!846541) b!1896681))

(assert (= (and b!1896681 res!846535) b!1896684))

(assert (= (and b!1896684 res!846538) b!1896693))

(assert (= (and b!1896693 res!846531) b!1896686))

(assert (= (and b!1896686 res!846528) b!1896680))

(assert (= (and b!1896680 res!846539) b!1896694))

(assert (= (and b!1896686 res!846532) b!1896697))

(assert (= (and b!1896686 res!846537) b!1896689))

(assert (= (and b!1896689 res!846534) b!1896679))

(assert (= b!1896696 b!1896682))

(assert (= b!1896688 b!1896696))

(assert (= (and start!190170 (is-Cons!21282 rules!3198)) b!1896688))

(assert (= b!1896692 b!1896676))

(assert (= b!1896687 b!1896692))

(assert (= b!1896683 b!1896687))

(assert (= (and start!190170 (is-Cons!21283 tokens!598)) b!1896683))

(assert (= b!1896691 b!1896690))

(assert (= b!1896695 b!1896691))

(assert (= start!190170 b!1896695))

(declare-fun m!2327883 () Bool)

(assert (=> b!1896685 m!2327883))

(declare-fun m!2327885 () Bool)

(assert (=> b!1896677 m!2327885))

(declare-fun m!2327887 () Bool)

(assert (=> b!1896680 m!2327887))

(declare-fun m!2327889 () Bool)

(assert (=> b!1896680 m!2327889))

(declare-fun m!2327891 () Bool)

(assert (=> b!1896687 m!2327891))

(declare-fun m!2327893 () Bool)

(assert (=> start!190170 m!2327893))

(declare-fun m!2327895 () Bool)

(assert (=> b!1896684 m!2327895))

(declare-fun m!2327897 () Bool)

(assert (=> b!1896691 m!2327897))

(declare-fun m!2327899 () Bool)

(assert (=> b!1896691 m!2327899))

(declare-fun m!2327901 () Bool)

(assert (=> b!1896683 m!2327901))

(declare-fun m!2327903 () Bool)

(assert (=> b!1896675 m!2327903))

(declare-fun m!2327905 () Bool)

(assert (=> b!1896692 m!2327905))

(declare-fun m!2327907 () Bool)

(assert (=> b!1896692 m!2327907))

(declare-fun m!2327909 () Bool)

(assert (=> b!1896686 m!2327909))

(declare-fun m!2327911 () Bool)

(assert (=> b!1896686 m!2327911))

(declare-fun m!2327913 () Bool)

(assert (=> b!1896686 m!2327913))

(declare-fun m!2327915 () Bool)

(assert (=> b!1896686 m!2327915))

(declare-fun m!2327917 () Bool)

(assert (=> b!1896686 m!2327917))

(declare-fun m!2327919 () Bool)

(assert (=> b!1896686 m!2327919))

(declare-fun m!2327921 () Bool)

(assert (=> b!1896686 m!2327921))

(declare-fun m!2327923 () Bool)

(assert (=> b!1896686 m!2327923))

(declare-fun m!2327925 () Bool)

(assert (=> b!1896686 m!2327925))

(declare-fun m!2327927 () Bool)

(assert (=> b!1896686 m!2327927))

(declare-fun m!2327929 () Bool)

(assert (=> b!1896686 m!2327929))

(assert (=> b!1896686 m!2327927))

(declare-fun m!2327931 () Bool)

(assert (=> b!1896686 m!2327931))

(declare-fun m!2327933 () Bool)

(assert (=> b!1896686 m!2327933))

(assert (=> b!1896686 m!2327911))

(declare-fun m!2327935 () Bool)

(assert (=> b!1896686 m!2327935))

(declare-fun m!2327937 () Bool)

(assert (=> b!1896686 m!2327937))

(declare-fun m!2327939 () Bool)

(assert (=> b!1896681 m!2327939))

(declare-fun m!2327941 () Bool)

(assert (=> b!1896689 m!2327941))

(declare-fun m!2327943 () Bool)

(assert (=> b!1896689 m!2327943))

(declare-fun m!2327945 () Bool)

(assert (=> b!1896696 m!2327945))

(declare-fun m!2327947 () Bool)

(assert (=> b!1896696 m!2327947))

(declare-fun m!2327949 () Bool)

(assert (=> b!1896695 m!2327949))

(declare-fun m!2327951 () Bool)

(assert (=> b!1896698 m!2327951))

(declare-fun m!2327953 () Bool)

(assert (=> b!1896697 m!2327953))

(push 1)

(assert (not b_next!53725))

(assert (not b!1896697))

(assert (not b!1896681))

(assert (not b_next!53727))

(assert (not b_next!53729))

(assert (not b!1896696))

(assert (not start!190170))

(assert b_and!146423)

(assert (not b!1896684))

(assert b_and!146419)

(assert (not b_next!53735))

(assert b_and!146421)

(assert (not b!1896695))

(assert (not b!1896686))

(assert (not b!1896688))

(assert (not b!1896689))

(assert b_and!146417)

(assert (not b!1896691))

(assert (not b!1896675))

(assert (not b_next!53731))

(assert b_and!146425)

(assert (not b!1896692))

(assert (not b!1896687))

(assert (not b!1896680))

(assert (not b!1896698))

(assert b_and!146415)

(assert (not b_next!53733))

(assert (not b!1896683))

(assert (not b!1896685))

(assert (not b!1896677))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!53725))

(assert b_and!146417)

(assert (not b_next!53727))

(assert (not b_next!53729))

(assert b_and!146423)

(assert b_and!146419)

(assert (not b_next!53735))

(assert b_and!146421)

(assert (not b_next!53731))

(assert b_and!146425)

(assert b_and!146415)

(assert (not b_next!53733))

(check-sat)

(pop 1)

