; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!255660 () Bool)

(assert start!255660)

(declare-fun b!2630312 () Bool)

(declare-fun b_free!74149 () Bool)

(declare-fun b_next!74853 () Bool)

(assert (=> b!2630312 (= b_free!74149 (not b_next!74853))))

(declare-fun tp!833977 () Bool)

(declare-fun b_and!192707 () Bool)

(assert (=> b!2630312 (= tp!833977 b_and!192707)))

(declare-fun b_free!74151 () Bool)

(declare-fun b_next!74855 () Bool)

(assert (=> b!2630312 (= b_free!74151 (not b_next!74855))))

(declare-fun tp!833971 () Bool)

(declare-fun b_and!192709 () Bool)

(assert (=> b!2630312 (= tp!833971 b_and!192709)))

(declare-fun b!2630309 () Bool)

(declare-fun b_free!74153 () Bool)

(declare-fun b_next!74857 () Bool)

(assert (=> b!2630309 (= b_free!74153 (not b_next!74857))))

(declare-fun tp!833975 () Bool)

(declare-fun b_and!192711 () Bool)

(assert (=> b!2630309 (= tp!833975 b_and!192711)))

(declare-fun b_free!74155 () Bool)

(declare-fun b_next!74859 () Bool)

(assert (=> b!2630309 (= b_free!74155 (not b_next!74859))))

(declare-fun tp!833976 () Bool)

(declare-fun b_and!192713 () Bool)

(assert (=> b!2630309 (= tp!833976 b_and!192713)))

(declare-fun tp!833969 () Bool)

(declare-fun e!1659596 () Bool)

(declare-fun b!2630305 () Bool)

(declare-fun e!1659591 () Bool)

(declare-datatypes ((List!30565 0))(
  ( (Nil!30465) (Cons!30465 (h!35885 (_ BitVec 16)) (t!216328 List!30565)) )
))
(declare-datatypes ((C!15710 0))(
  ( (C!15711 (val!9789 Int)) )
))
(declare-datatypes ((TokenValue!4854 0))(
  ( (FloatLiteralValue!9708 (text!34423 List!30565)) (TokenValueExt!4853 (__x!19541 Int)) (Broken!24270 (value!149592 List!30565)) (Object!4953) (End!4854) (Def!4854) (Underscore!4854) (Match!4854) (Else!4854) (Error!4854) (Case!4854) (If!4854) (Extends!4854) (Abstract!4854) (Class!4854) (Val!4854) (DelimiterValue!9708 (del!4914 List!30565)) (KeywordValue!4860 (value!149593 List!30565)) (CommentValue!9708 (value!149594 List!30565)) (WhitespaceValue!9708 (value!149595 List!30565)) (IndentationValue!4854 (value!149596 List!30565)) (String!34155) (Int32!4854) (Broken!24271 (value!149597 List!30565)) (Boolean!4855) (Unit!44481) (OperatorValue!4857 (op!4914 List!30565)) (IdentifierValue!9708 (value!149598 List!30565)) (IdentifierValue!9709 (value!149599 List!30565)) (WhitespaceValue!9709 (value!149600 List!30565)) (True!9708) (False!9708) (Broken!24272 (value!149601 List!30565)) (Broken!24273 (value!149602 List!30565)) (True!9709) (RightBrace!4854) (RightBracket!4854) (Colon!4854) (Null!4854) (Comma!4854) (LeftBracket!4854) (False!9709) (LeftBrace!4854) (ImaginaryLiteralValue!4854 (text!34424 List!30565)) (StringLiteralValue!14562 (value!149603 List!30565)) (EOFValue!4854 (value!149604 List!30565)) (IdentValue!4854 (value!149605 List!30565)) (DelimiterValue!9709 (value!149606 List!30565)) (DedentValue!4854 (value!149607 List!30565)) (NewLineValue!4854 (value!149608 List!30565)) (IntegerValue!14562 (value!149609 (_ BitVec 32)) (text!34425 List!30565)) (IntegerValue!14563 (value!149610 Int) (text!34426 List!30565)) (Times!4854) (Or!4854) (Equal!4854) (Minus!4854) (Broken!24274 (value!149611 List!30565)) (And!4854) (Div!4854) (LessEqual!4854) (Mod!4854) (Concat!12630) (Not!4854) (Plus!4854) (SpaceValue!4854 (value!149612 List!30565)) (IntegerValue!14564 (value!149613 Int) (text!34427 List!30565)) (StringLiteralValue!14563 (text!34428 List!30565)) (FloatLiteralValue!9709 (text!34429 List!30565)) (BytesLiteralValue!4854 (value!149614 List!30565)) (CommentValue!9709 (value!149615 List!30565)) (StringLiteralValue!14564 (value!149616 List!30565)) (ErrorTokenValue!4854 (msg!4915 List!30565)) )
))
(declare-datatypes ((Regex!7776 0))(
  ( (ElementMatch!7776 (c!422855 C!15710)) (Concat!12631 (regOne!16064 Regex!7776) (regTwo!16064 Regex!7776)) (EmptyExpr!7776) (Star!7776 (reg!8105 Regex!7776)) (EmptyLang!7776) (Union!7776 (regOne!16065 Regex!7776) (regTwo!16065 Regex!7776)) )
))
(declare-datatypes ((String!34156 0))(
  ( (String!34157 (value!149617 String)) )
))
(declare-datatypes ((List!30566 0))(
  ( (Nil!30466) (Cons!30466 (h!35886 C!15710) (t!216329 List!30566)) )
))
(declare-datatypes ((IArray!19017 0))(
  ( (IArray!19018 (innerList!9566 List!30566)) )
))
(declare-datatypes ((Conc!9506 0))(
  ( (Node!9506 (left!23530 Conc!9506) (right!23860 Conc!9506) (csize!19242 Int) (cheight!9717 Int)) (Leaf!14563 (xs!12506 IArray!19017) (csize!19243 Int)) (Empty!9506) )
))
(declare-datatypes ((BalanceConc!18626 0))(
  ( (BalanceConc!18627 (c!422856 Conc!9506)) )
))
(declare-datatypes ((TokenValueInjection!9148 0))(
  ( (TokenValueInjection!9149 (toValue!6546 Int) (toChars!6405 Int)) )
))
(declare-datatypes ((Rule!9064 0))(
  ( (Rule!9065 (regex!4632 Regex!7776) (tag!5126 String!34156) (isSeparator!4632 Bool) (transformation!4632 TokenValueInjection!9148)) )
))
(declare-datatypes ((Token!8734 0))(
  ( (Token!8735 (value!149618 TokenValue!4854) (rule!7014 Rule!9064) (size!23546 Int) (originalCharacters!5398 List!30566)) )
))
(declare-fun separatorToken!156 () Token!8734)

(declare-fun inv!41289 (String!34156) Bool)

(declare-fun inv!41292 (TokenValueInjection!9148) Bool)

(assert (=> b!2630305 (= e!1659591 (and tp!833969 (inv!41289 (tag!5126 (rule!7014 separatorToken!156))) (inv!41292 (transformation!4632 (rule!7014 separatorToken!156))) e!1659596))))

(declare-fun b!2630306 () Bool)

(declare-fun e!1659595 () Bool)

(declare-fun e!1659592 () Bool)

(assert (=> b!2630306 (= e!1659595 e!1659592)))

(declare-fun res!1107464 () Bool)

(assert (=> b!2630306 (=> (not res!1107464) (not e!1659592))))

(declare-fun from!862 () Int)

(declare-fun lt!925559 () Int)

(assert (=> b!2630306 (= res!1107464 (< from!862 lt!925559))))

(declare-datatypes ((Unit!44482 0))(
  ( (Unit!44483) )
))
(declare-fun lt!925557 () Unit!44482)

(declare-datatypes ((List!30567 0))(
  ( (Nil!30467) (Cons!30467 (h!35887 Token!8734) (t!216330 List!30567)) )
))
(declare-datatypes ((IArray!19019 0))(
  ( (IArray!19020 (innerList!9567 List!30567)) )
))
(declare-datatypes ((Conc!9507 0))(
  ( (Node!9507 (left!23531 Conc!9507) (right!23861 Conc!9507) (csize!19244 Int) (cheight!9718 Int)) (Leaf!14564 (xs!12507 IArray!19019) (csize!19245 Int)) (Empty!9507) )
))
(declare-datatypes ((BalanceConc!18628 0))(
  ( (BalanceConc!18629 (c!422857 Conc!9507)) )
))
(declare-fun v!6381 () BalanceConc!18628)

(declare-fun lambda!98663 () Int)

(declare-fun lt!925558 () List!30567)

(declare-fun lemmaContentSubsetPreservesForall!301 (List!30567 List!30567 Int) Unit!44482)

(declare-fun dropList!935 (BalanceConc!18628 Int) List!30567)

(assert (=> b!2630306 (= lt!925557 (lemmaContentSubsetPreservesForall!301 lt!925558 (dropList!935 v!6381 from!862) lambda!98663))))

(declare-fun list!11448 (BalanceConc!18628) List!30567)

(assert (=> b!2630306 (= lt!925558 (list!11448 v!6381))))

(declare-fun b!2630307 () Bool)

(declare-fun res!1107465 () Bool)

(assert (=> b!2630307 (=> (not res!1107465) (not e!1659595))))

(declare-fun forall!6366 (BalanceConc!18628 Int) Bool)

(assert (=> b!2630307 (= res!1107465 (forall!6366 v!6381 lambda!98663))))

(declare-fun b!2630308 () Bool)

(declare-fun e!1659597 () Bool)

(assert (=> b!2630308 (= e!1659597 e!1659595)))

(declare-fun res!1107461 () Bool)

(assert (=> b!2630308 (=> (not res!1107461) (not e!1659595))))

(assert (=> b!2630308 (= res!1107461 (<= from!862 lt!925559))))

(declare-fun size!23547 (BalanceConc!18628) Int)

(assert (=> b!2630308 (= lt!925559 (size!23547 v!6381))))

(assert (=> b!2630309 (= e!1659596 (and tp!833975 tp!833976))))

(declare-fun b!2630310 () Bool)

(declare-fun res!1107466 () Bool)

(assert (=> b!2630310 (=> (not res!1107466) (not e!1659595))))

(declare-datatypes ((List!30568 0))(
  ( (Nil!30468) (Cons!30468 (h!35888 Rule!9064) (t!216331 List!30568)) )
))
(declare-fun rules!1726 () List!30568)

(declare-fun isEmpty!17371 (List!30568) Bool)

(assert (=> b!2630310 (= res!1107466 (not (isEmpty!17371 rules!1726)))))

(declare-fun e!1659590 () Bool)

(assert (=> b!2630312 (= e!1659590 (and tp!833977 tp!833971))))

(declare-fun b!2630313 () Bool)

(declare-fun res!1107458 () Bool)

(assert (=> b!2630313 (=> (not res!1107458) (not e!1659595))))

(declare-datatypes ((LexerInterface!4229 0))(
  ( (LexerInterfaceExt!4226 (__x!19542 Int)) (Lexer!4227) )
))
(declare-fun thiss!14197 () LexerInterface!4229)

(declare-fun rulesProduceEachTokenIndividually!1049 (LexerInterface!4229 List!30568 BalanceConc!18628) Bool)

(assert (=> b!2630313 (= res!1107458 (rulesProduceEachTokenIndividually!1049 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2630314 () Bool)

(declare-fun res!1107463 () Bool)

(assert (=> b!2630314 (=> (not res!1107463) (not e!1659595))))

(declare-fun rulesInvariant!3729 (LexerInterface!4229 List!30568) Bool)

(assert (=> b!2630314 (= res!1107463 (rulesInvariant!3729 thiss!14197 rules!1726))))

(declare-fun b!2630315 () Bool)

(declare-fun e!1659589 () Bool)

(declare-fun e!1659599 () Bool)

(declare-fun tp!833974 () Bool)

(assert (=> b!2630315 (= e!1659589 (and e!1659599 tp!833974))))

(declare-fun b!2630316 () Bool)

(declare-fun res!1107459 () Bool)

(assert (=> b!2630316 (=> (not res!1107459) (not e!1659595))))

(assert (=> b!2630316 (= res!1107459 (isSeparator!4632 (rule!7014 separatorToken!156)))))

(declare-fun b!2630317 () Bool)

(declare-fun tp!833970 () Bool)

(declare-fun e!1659598 () Bool)

(declare-fun inv!21 (TokenValue!4854) Bool)

(assert (=> b!2630317 (= e!1659598 (and (inv!21 (value!149618 separatorToken!156)) e!1659591 tp!833970))))

(declare-fun tp!833972 () Bool)

(declare-fun b!2630318 () Bool)

(assert (=> b!2630318 (= e!1659599 (and tp!833972 (inv!41289 (tag!5126 (h!35888 rules!1726))) (inv!41292 (transformation!4632 (h!35888 rules!1726))) e!1659590))))

(declare-fun b!2630319 () Bool)

(declare-fun res!1107467 () Bool)

(assert (=> b!2630319 (=> (not res!1107467) (not e!1659595))))

(declare-fun sepAndNonSepRulesDisjointChars!1205 (List!30568 List!30568) Bool)

(assert (=> b!2630319 (= res!1107467 (sepAndNonSepRulesDisjointChars!1205 rules!1726 rules!1726))))

(declare-fun b!2630320 () Bool)

(declare-fun res!1107460 () Bool)

(assert (=> b!2630320 (=> (not res!1107460) (not e!1659595))))

(declare-fun rulesProduceIndividualToken!1941 (LexerInterface!4229 List!30568 Token!8734) Bool)

(assert (=> b!2630320 (= res!1107460 (rulesProduceIndividualToken!1941 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2630321 () Bool)

(declare-fun contains!5766 (BalanceConc!18628 Token!8734) Bool)

(declare-fun apply!7246 (BalanceConc!18628 Int) Token!8734)

(assert (=> b!2630321 (= e!1659592 (not (contains!5766 v!6381 (apply!7246 v!6381 from!862))))))

(declare-fun lt!925556 () List!30567)

(declare-fun tail!4269 (List!30567) List!30567)

(declare-fun drop!1628 (List!30567 Int) List!30567)

(assert (=> b!2630321 (= (tail!4269 lt!925556) (drop!1628 lt!925558 (+ 1 from!862)))))

(declare-fun lt!925560 () Unit!44482)

(declare-fun lemmaDropTail!817 (List!30567 Int) Unit!44482)

(assert (=> b!2630321 (= lt!925560 (lemmaDropTail!817 lt!925558 from!862))))

(declare-fun head!6031 (List!30567) Token!8734)

(declare-fun apply!7247 (List!30567 Int) Token!8734)

(assert (=> b!2630321 (= (head!6031 lt!925556) (apply!7247 lt!925558 from!862))))

(assert (=> b!2630321 (= lt!925556 (drop!1628 lt!925558 from!862))))

(declare-fun lt!925561 () Unit!44482)

(declare-fun lemmaDropApply!843 (List!30567 Int) Unit!44482)

(assert (=> b!2630321 (= lt!925561 (lemmaDropApply!843 lt!925558 from!862))))

(declare-fun b!2630311 () Bool)

(declare-fun e!1659587 () Bool)

(declare-fun tp!833973 () Bool)

(declare-fun inv!41293 (Conc!9507) Bool)

(assert (=> b!2630311 (= e!1659587 (and (inv!41293 (c!422857 v!6381)) tp!833973))))

(declare-fun res!1107462 () Bool)

(assert (=> start!255660 (=> (not res!1107462) (not e!1659597))))

(assert (=> start!255660 (= res!1107462 (and (is-Lexer!4227 thiss!14197) (>= from!862 0)))))

(assert (=> start!255660 e!1659597))

(assert (=> start!255660 true))

(assert (=> start!255660 e!1659589))

(declare-fun inv!41294 (Token!8734) Bool)

(assert (=> start!255660 (and (inv!41294 separatorToken!156) e!1659598)))

(declare-fun inv!41295 (BalanceConc!18628) Bool)

(assert (=> start!255660 (and (inv!41295 v!6381) e!1659587)))

(assert (= (and start!255660 res!1107462) b!2630308))

(assert (= (and b!2630308 res!1107461) b!2630310))

(assert (= (and b!2630310 res!1107466) b!2630314))

(assert (= (and b!2630314 res!1107463) b!2630313))

(assert (= (and b!2630313 res!1107458) b!2630320))

(assert (= (and b!2630320 res!1107460) b!2630316))

(assert (= (and b!2630316 res!1107459) b!2630307))

(assert (= (and b!2630307 res!1107465) b!2630319))

(assert (= (and b!2630319 res!1107467) b!2630306))

(assert (= (and b!2630306 res!1107464) b!2630321))

(assert (= b!2630318 b!2630312))

(assert (= b!2630315 b!2630318))

(assert (= (and start!255660 (is-Cons!30468 rules!1726)) b!2630315))

(assert (= b!2630305 b!2630309))

(assert (= b!2630317 b!2630305))

(assert (= start!255660 b!2630317))

(assert (= start!255660 b!2630311))

(declare-fun m!2973365 () Bool)

(assert (=> b!2630317 m!2973365))

(declare-fun m!2973367 () Bool)

(assert (=> b!2630314 m!2973367))

(declare-fun m!2973369 () Bool)

(assert (=> b!2630306 m!2973369))

(assert (=> b!2630306 m!2973369))

(declare-fun m!2973371 () Bool)

(assert (=> b!2630306 m!2973371))

(declare-fun m!2973373 () Bool)

(assert (=> b!2630306 m!2973373))

(declare-fun m!2973375 () Bool)

(assert (=> b!2630305 m!2973375))

(declare-fun m!2973377 () Bool)

(assert (=> b!2630305 m!2973377))

(declare-fun m!2973379 () Bool)

(assert (=> b!2630321 m!2973379))

(declare-fun m!2973381 () Bool)

(assert (=> b!2630321 m!2973381))

(declare-fun m!2973383 () Bool)

(assert (=> b!2630321 m!2973383))

(declare-fun m!2973385 () Bool)

(assert (=> b!2630321 m!2973385))

(declare-fun m!2973387 () Bool)

(assert (=> b!2630321 m!2973387))

(declare-fun m!2973389 () Bool)

(assert (=> b!2630321 m!2973389))

(declare-fun m!2973391 () Bool)

(assert (=> b!2630321 m!2973391))

(declare-fun m!2973393 () Bool)

(assert (=> b!2630321 m!2973393))

(declare-fun m!2973395 () Bool)

(assert (=> b!2630321 m!2973395))

(assert (=> b!2630321 m!2973387))

(declare-fun m!2973397 () Bool)

(assert (=> b!2630318 m!2973397))

(declare-fun m!2973399 () Bool)

(assert (=> b!2630318 m!2973399))

(declare-fun m!2973401 () Bool)

(assert (=> start!255660 m!2973401))

(declare-fun m!2973403 () Bool)

(assert (=> start!255660 m!2973403))

(declare-fun m!2973405 () Bool)

(assert (=> b!2630310 m!2973405))

(declare-fun m!2973407 () Bool)

(assert (=> b!2630313 m!2973407))

(declare-fun m!2973409 () Bool)

(assert (=> b!2630308 m!2973409))

(declare-fun m!2973411 () Bool)

(assert (=> b!2630311 m!2973411))

(declare-fun m!2973413 () Bool)

(assert (=> b!2630320 m!2973413))

(declare-fun m!2973415 () Bool)

(assert (=> b!2630307 m!2973415))

(declare-fun m!2973417 () Bool)

(assert (=> b!2630319 m!2973417))

(push 1)

(assert (not b!2630319))

(assert (not b!2630306))

(assert (not b_next!74853))

(assert (not b_next!74859))

(assert (not b!2630308))

(assert (not b_next!74857))

(assert (not b!2630321))

(assert (not b!2630314))

(assert (not b!2630318))

(assert (not b!2630317))

(assert (not b!2630315))

(assert (not b!2630307))

(assert b_and!192713)

(assert (not b_next!74855))

(assert (not b!2630320))

(assert (not b!2630310))

(assert b_and!192707)

(assert (not start!255660))

(assert b_and!192711)

(assert (not b!2630311))

(assert b_and!192709)

(assert (not b!2630305))

(assert (not b!2630313))

(check-sat)

(pop 1)

(push 1)

(assert b_and!192713)

(assert (not b_next!74853))

(assert (not b_next!74859))

(assert (not b_next!74855))

(assert b_and!192707)

(assert (not b_next!74857))

(assert b_and!192711)

(assert b_and!192709)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!746267 () Bool)

(assert (=> d!746267 (= (inv!41289 (tag!5126 (rule!7014 separatorToken!156))) (= (mod (str.len (value!149617 (tag!5126 (rule!7014 separatorToken!156)))) 2) 0))))

(assert (=> b!2630305 d!746267))

(declare-fun d!746269 () Bool)

(declare-fun res!1107503 () Bool)

(declare-fun e!1659641 () Bool)

(assert (=> d!746269 (=> (not res!1107503) (not e!1659641))))

(declare-fun semiInverseModEq!1910 (Int Int) Bool)

(assert (=> d!746269 (= res!1107503 (semiInverseModEq!1910 (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))) (toValue!6546 (transformation!4632 (rule!7014 separatorToken!156)))))))

(assert (=> d!746269 (= (inv!41292 (transformation!4632 (rule!7014 separatorToken!156))) e!1659641)))

(declare-fun b!2630375 () Bool)

(declare-fun equivClasses!1811 (Int Int) Bool)

(assert (=> b!2630375 (= e!1659641 (equivClasses!1811 (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))) (toValue!6546 (transformation!4632 (rule!7014 separatorToken!156)))))))

(assert (= (and d!746269 res!1107503) b!2630375))

(declare-fun m!2973473 () Bool)

(assert (=> d!746269 m!2973473))

(declare-fun m!2973475 () Bool)

(assert (=> b!2630375 m!2973475))

(assert (=> b!2630305 d!746269))

(declare-fun d!746271 () Bool)

(declare-fun forall!6368 (List!30567 Int) Bool)

(assert (=> d!746271 (forall!6368 (dropList!935 v!6381 from!862) lambda!98663)))

(declare-fun lt!925582 () Unit!44482)

(declare-fun choose!15600 (List!30567 List!30567 Int) Unit!44482)

(assert (=> d!746271 (= lt!925582 (choose!15600 lt!925558 (dropList!935 v!6381 from!862) lambda!98663))))

(assert (=> d!746271 (forall!6368 lt!925558 lambda!98663)))

(assert (=> d!746271 (= (lemmaContentSubsetPreservesForall!301 lt!925558 (dropList!935 v!6381 from!862) lambda!98663) lt!925582)))

(declare-fun bs!475708 () Bool)

(assert (= bs!475708 d!746271))

(assert (=> bs!475708 m!2973369))

(declare-fun m!2973477 () Bool)

(assert (=> bs!475708 m!2973477))

(assert (=> bs!475708 m!2973369))

(declare-fun m!2973479 () Bool)

(assert (=> bs!475708 m!2973479))

(declare-fun m!2973481 () Bool)

(assert (=> bs!475708 m!2973481))

(assert (=> b!2630306 d!746271))

(declare-fun d!746273 () Bool)

(declare-fun list!11450 (Conc!9507) List!30567)

(assert (=> d!746273 (= (dropList!935 v!6381 from!862) (drop!1628 (list!11450 (c!422857 v!6381)) from!862))))

(declare-fun bs!475709 () Bool)

(assert (= bs!475709 d!746273))

(declare-fun m!2973483 () Bool)

(assert (=> bs!475709 m!2973483))

(assert (=> bs!475709 m!2973483))

(declare-fun m!2973485 () Bool)

(assert (=> bs!475709 m!2973485))

(assert (=> b!2630306 d!746273))

(declare-fun d!746275 () Bool)

(assert (=> d!746275 (= (list!11448 v!6381) (list!11450 (c!422857 v!6381)))))

(declare-fun bs!475710 () Bool)

(assert (= bs!475710 d!746275))

(assert (=> bs!475710 m!2973483))

(assert (=> b!2630306 d!746275))

(declare-fun b!2630386 () Bool)

(declare-fun res!1107508 () Bool)

(declare-fun e!1659648 () Bool)

(assert (=> b!2630386 (=> res!1107508 e!1659648)))

(assert (=> b!2630386 (= res!1107508 (not (is-IntegerValue!14564 (value!149618 separatorToken!156))))))

(declare-fun e!1659649 () Bool)

(assert (=> b!2630386 (= e!1659649 e!1659648)))

(declare-fun b!2630387 () Bool)

(declare-fun inv!17 (TokenValue!4854) Bool)

(assert (=> b!2630387 (= e!1659649 (inv!17 (value!149618 separatorToken!156)))))

(declare-fun b!2630389 () Bool)

(declare-fun inv!15 (TokenValue!4854) Bool)

(assert (=> b!2630389 (= e!1659648 (inv!15 (value!149618 separatorToken!156)))))

(declare-fun b!2630390 () Bool)

(declare-fun e!1659650 () Bool)

(assert (=> b!2630390 (= e!1659650 e!1659649)))

(declare-fun c!422865 () Bool)

(assert (=> b!2630390 (= c!422865 (is-IntegerValue!14563 (value!149618 separatorToken!156)))))

(declare-fun d!746277 () Bool)

(declare-fun c!422866 () Bool)

(assert (=> d!746277 (= c!422866 (is-IntegerValue!14562 (value!149618 separatorToken!156)))))

(assert (=> d!746277 (= (inv!21 (value!149618 separatorToken!156)) e!1659650)))

(declare-fun b!2630388 () Bool)

(declare-fun inv!16 (TokenValue!4854) Bool)

(assert (=> b!2630388 (= e!1659650 (inv!16 (value!149618 separatorToken!156)))))

(assert (= (and d!746277 c!422866) b!2630388))

(assert (= (and d!746277 (not c!422866)) b!2630390))

(assert (= (and b!2630390 c!422865) b!2630387))

(assert (= (and b!2630390 (not c!422865)) b!2630386))

(assert (= (and b!2630386 (not res!1107508)) b!2630389))

(declare-fun m!2973487 () Bool)

(assert (=> b!2630387 m!2973487))

(declare-fun m!2973489 () Bool)

(assert (=> b!2630389 m!2973489))

(declare-fun m!2973491 () Bool)

(assert (=> b!2630388 m!2973491))

(assert (=> b!2630317 d!746277))

(declare-fun d!746279 () Bool)

(declare-fun lt!925585 () Bool)

(assert (=> d!746279 (= lt!925585 (forall!6368 (list!11448 v!6381) lambda!98663))))

(declare-fun forall!6369 (Conc!9507 Int) Bool)

(assert (=> d!746279 (= lt!925585 (forall!6369 (c!422857 v!6381) lambda!98663))))

(assert (=> d!746279 (= (forall!6366 v!6381 lambda!98663) lt!925585)))

(declare-fun bs!475711 () Bool)

(assert (= bs!475711 d!746279))

(assert (=> bs!475711 m!2973373))

(assert (=> bs!475711 m!2973373))

(declare-fun m!2973493 () Bool)

(assert (=> bs!475711 m!2973493))

(declare-fun m!2973495 () Bool)

(assert (=> bs!475711 m!2973495))

(assert (=> b!2630307 d!746279))

(declare-fun d!746281 () Bool)

(assert (=> d!746281 (= (inv!41289 (tag!5126 (h!35888 rules!1726))) (= (mod (str.len (value!149617 (tag!5126 (h!35888 rules!1726)))) 2) 0))))

(assert (=> b!2630318 d!746281))

(declare-fun d!746283 () Bool)

(declare-fun res!1107509 () Bool)

(declare-fun e!1659651 () Bool)

(assert (=> d!746283 (=> (not res!1107509) (not e!1659651))))

(assert (=> d!746283 (= res!1107509 (semiInverseModEq!1910 (toChars!6405 (transformation!4632 (h!35888 rules!1726))) (toValue!6546 (transformation!4632 (h!35888 rules!1726)))))))

(assert (=> d!746283 (= (inv!41292 (transformation!4632 (h!35888 rules!1726))) e!1659651)))

(declare-fun b!2630391 () Bool)

(assert (=> b!2630391 (= e!1659651 (equivClasses!1811 (toChars!6405 (transformation!4632 (h!35888 rules!1726))) (toValue!6546 (transformation!4632 (h!35888 rules!1726)))))))

(assert (= (and d!746283 res!1107509) b!2630391))

(declare-fun m!2973497 () Bool)

(assert (=> d!746283 m!2973497))

(declare-fun m!2973499 () Bool)

(assert (=> b!2630391 m!2973499))

(assert (=> b!2630318 d!746283))

(declare-fun d!746285 () Bool)

(declare-fun lt!925588 () Int)

(declare-fun size!23550 (List!30567) Int)

(assert (=> d!746285 (= lt!925588 (size!23550 (list!11448 v!6381)))))

(declare-fun size!23551 (Conc!9507) Int)

(assert (=> d!746285 (= lt!925588 (size!23551 (c!422857 v!6381)))))

(assert (=> d!746285 (= (size!23547 v!6381) lt!925588)))

(declare-fun bs!475712 () Bool)

(assert (= bs!475712 d!746285))

(assert (=> bs!475712 m!2973373))

(assert (=> bs!475712 m!2973373))

(declare-fun m!2973501 () Bool)

(assert (=> bs!475712 m!2973501))

(declare-fun m!2973503 () Bool)

(assert (=> bs!475712 m!2973503))

(assert (=> b!2630308 d!746285))

(declare-fun d!746287 () Bool)

(declare-fun res!1107514 () Bool)

(declare-fun e!1659656 () Bool)

(assert (=> d!746287 (=> res!1107514 e!1659656)))

(assert (=> d!746287 (= res!1107514 (not (is-Cons!30468 rules!1726)))))

(assert (=> d!746287 (= (sepAndNonSepRulesDisjointChars!1205 rules!1726 rules!1726) e!1659656)))

(declare-fun b!2630396 () Bool)

(declare-fun e!1659657 () Bool)

(assert (=> b!2630396 (= e!1659656 e!1659657)))

(declare-fun res!1107515 () Bool)

(assert (=> b!2630396 (=> (not res!1107515) (not e!1659657))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!517 (Rule!9064 List!30568) Bool)

(assert (=> b!2630396 (= res!1107515 (ruleDisjointCharsFromAllFromOtherType!517 (h!35888 rules!1726) rules!1726))))

(declare-fun b!2630397 () Bool)

(assert (=> b!2630397 (= e!1659657 (sepAndNonSepRulesDisjointChars!1205 rules!1726 (t!216331 rules!1726)))))

(assert (= (and d!746287 (not res!1107514)) b!2630396))

(assert (= (and b!2630396 res!1107515) b!2630397))

(declare-fun m!2973505 () Bool)

(assert (=> b!2630396 m!2973505))

(declare-fun m!2973507 () Bool)

(assert (=> b!2630397 m!2973507))

(assert (=> b!2630319 d!746287))

(declare-fun d!746289 () Bool)

(declare-fun lt!925608 () Bool)

(declare-fun e!1659680 () Bool)

(assert (=> d!746289 (= lt!925608 e!1659680)))

(declare-fun res!1107537 () Bool)

(assert (=> d!746289 (=> (not res!1107537) (not e!1659680))))

(declare-datatypes ((tuple2!29970 0))(
  ( (tuple2!29971 (_1!17527 BalanceConc!18628) (_2!17527 BalanceConc!18626)) )
))
(declare-fun lex!1893 (LexerInterface!4229 List!30568 BalanceConc!18626) tuple2!29970)

(declare-fun print!1631 (LexerInterface!4229 BalanceConc!18628) BalanceConc!18626)

(declare-fun singletonSeq!2050 (Token!8734) BalanceConc!18628)

(assert (=> d!746289 (= res!1107537 (= (list!11448 (_1!17527 (lex!1893 thiss!14197 rules!1726 (print!1631 thiss!14197 (singletonSeq!2050 separatorToken!156))))) (list!11448 (singletonSeq!2050 separatorToken!156))))))

(declare-fun e!1659681 () Bool)

(assert (=> d!746289 (= lt!925608 e!1659681)))

(declare-fun res!1107538 () Bool)

(assert (=> d!746289 (=> (not res!1107538) (not e!1659681))))

(declare-fun lt!925609 () tuple2!29970)

(assert (=> d!746289 (= res!1107538 (= (size!23547 (_1!17527 lt!925609)) 1))))

(assert (=> d!746289 (= lt!925609 (lex!1893 thiss!14197 rules!1726 (print!1631 thiss!14197 (singletonSeq!2050 separatorToken!156))))))

(assert (=> d!746289 (not (isEmpty!17371 rules!1726))))

(assert (=> d!746289 (= (rulesProduceIndividualToken!1941 thiss!14197 rules!1726 separatorToken!156) lt!925608)))

(declare-fun b!2630430 () Bool)

(declare-fun res!1107539 () Bool)

(assert (=> b!2630430 (=> (not res!1107539) (not e!1659681))))

(assert (=> b!2630430 (= res!1107539 (= (apply!7246 (_1!17527 lt!925609) 0) separatorToken!156))))

(declare-fun b!2630431 () Bool)

(declare-fun isEmpty!17373 (BalanceConc!18626) Bool)

(assert (=> b!2630431 (= e!1659681 (isEmpty!17373 (_2!17527 lt!925609)))))

(declare-fun b!2630432 () Bool)

(assert (=> b!2630432 (= e!1659680 (isEmpty!17373 (_2!17527 (lex!1893 thiss!14197 rules!1726 (print!1631 thiss!14197 (singletonSeq!2050 separatorToken!156))))))))

(assert (= (and d!746289 res!1107538) b!2630430))

(assert (= (and b!2630430 res!1107539) b!2630431))

(assert (= (and d!746289 res!1107537) b!2630432))

(declare-fun m!2973559 () Bool)

(assert (=> d!746289 m!2973559))

(declare-fun m!2973561 () Bool)

(assert (=> d!746289 m!2973561))

(declare-fun m!2973563 () Bool)

(assert (=> d!746289 m!2973563))

(assert (=> d!746289 m!2973559))

(assert (=> d!746289 m!2973563))

(declare-fun m!2973565 () Bool)

(assert (=> d!746289 m!2973565))

(declare-fun m!2973567 () Bool)

(assert (=> d!746289 m!2973567))

(declare-fun m!2973569 () Bool)

(assert (=> d!746289 m!2973569))

(assert (=> d!746289 m!2973405))

(assert (=> d!746289 m!2973563))

(declare-fun m!2973571 () Bool)

(assert (=> b!2630430 m!2973571))

(declare-fun m!2973573 () Bool)

(assert (=> b!2630431 m!2973573))

(assert (=> b!2630432 m!2973563))

(assert (=> b!2630432 m!2973563))

(assert (=> b!2630432 m!2973559))

(assert (=> b!2630432 m!2973559))

(assert (=> b!2630432 m!2973561))

(declare-fun m!2973575 () Bool)

(assert (=> b!2630432 m!2973575))

(assert (=> b!2630320 d!746289))

(declare-fun d!746315 () Bool)

(assert (=> d!746315 (= (isEmpty!17371 rules!1726) (is-Nil!30468 rules!1726))))

(assert (=> b!2630310 d!746315))

(declare-fun d!746317 () Bool)

(assert (=> d!746317 (= (head!6031 lt!925556) (h!35887 lt!925556))))

(assert (=> b!2630321 d!746317))

(declare-fun b!2630454 () Bool)

(declare-fun e!1659695 () Int)

(declare-fun call!169195 () Int)

(assert (=> b!2630454 (= e!1659695 call!169195)))

(declare-fun b!2630455 () Bool)

(declare-fun e!1659699 () Int)

(assert (=> b!2630455 (= e!1659699 (- call!169195 (+ 1 from!862)))))

(declare-fun d!746319 () Bool)

(declare-fun e!1659697 () Bool)

(assert (=> d!746319 e!1659697))

(declare-fun res!1107545 () Bool)

(assert (=> d!746319 (=> (not res!1107545) (not e!1659697))))

(declare-fun lt!925615 () List!30567)

(declare-fun content!4300 (List!30567) (Set Token!8734))

(assert (=> d!746319 (= res!1107545 (set.subset (content!4300 lt!925615) (content!4300 lt!925558)))))

(declare-fun e!1659696 () List!30567)

(assert (=> d!746319 (= lt!925615 e!1659696)))

(declare-fun c!422878 () Bool)

(assert (=> d!746319 (= c!422878 (is-Nil!30467 lt!925558))))

(assert (=> d!746319 (= (drop!1628 lt!925558 (+ 1 from!862)) lt!925615)))

(declare-fun bm!169190 () Bool)

(assert (=> bm!169190 (= call!169195 (size!23550 lt!925558))))

(declare-fun b!2630456 () Bool)

(declare-fun e!1659698 () List!30567)

(assert (=> b!2630456 (= e!1659696 e!1659698)))

(declare-fun c!422880 () Bool)

(assert (=> b!2630456 (= c!422880 (<= (+ 1 from!862) 0))))

(declare-fun b!2630457 () Bool)

(assert (=> b!2630457 (= e!1659695 e!1659699)))

(declare-fun c!422879 () Bool)

(assert (=> b!2630457 (= c!422879 (>= (+ 1 from!862) call!169195))))

(declare-fun b!2630458 () Bool)

(assert (=> b!2630458 (= e!1659699 0)))

(declare-fun b!2630459 () Bool)

(assert (=> b!2630459 (= e!1659698 lt!925558)))

(declare-fun b!2630460 () Bool)

(assert (=> b!2630460 (= e!1659698 (drop!1628 (t!216330 lt!925558) (- (+ 1 from!862) 1)))))

(declare-fun b!2630461 () Bool)

(assert (=> b!2630461 (= e!1659696 Nil!30467)))

(declare-fun b!2630462 () Bool)

(assert (=> b!2630462 (= e!1659697 (= (size!23550 lt!925615) e!1659695))))

(declare-fun c!422881 () Bool)

(assert (=> b!2630462 (= c!422881 (<= (+ 1 from!862) 0))))

(assert (= (and d!746319 c!422878) b!2630461))

(assert (= (and d!746319 (not c!422878)) b!2630456))

(assert (= (and b!2630456 c!422880) b!2630459))

(assert (= (and b!2630456 (not c!422880)) b!2630460))

(assert (= (and d!746319 res!1107545) b!2630462))

(assert (= (and b!2630462 c!422881) b!2630454))

(assert (= (and b!2630462 (not c!422881)) b!2630457))

(assert (= (and b!2630457 c!422879) b!2630458))

(assert (= (and b!2630457 (not c!422879)) b!2630455))

(assert (= (or b!2630454 b!2630457 b!2630455) bm!169190))

(declare-fun m!2973583 () Bool)

(assert (=> d!746319 m!2973583))

(declare-fun m!2973585 () Bool)

(assert (=> d!746319 m!2973585))

(declare-fun m!2973587 () Bool)

(assert (=> bm!169190 m!2973587))

(declare-fun m!2973589 () Bool)

(assert (=> b!2630460 m!2973589))

(declare-fun m!2973591 () Bool)

(assert (=> b!2630462 m!2973591))

(assert (=> b!2630321 d!746319))

(declare-fun d!746323 () Bool)

(declare-fun lt!925618 () Token!8734)

(assert (=> d!746323 (= lt!925618 (apply!7247 (list!11448 v!6381) from!862))))

(declare-fun apply!7250 (Conc!9507 Int) Token!8734)

(assert (=> d!746323 (= lt!925618 (apply!7250 (c!422857 v!6381) from!862))))

(declare-fun e!1659702 () Bool)

(assert (=> d!746323 e!1659702))

(declare-fun res!1107548 () Bool)

(assert (=> d!746323 (=> (not res!1107548) (not e!1659702))))

(assert (=> d!746323 (= res!1107548 (<= 0 from!862))))

(assert (=> d!746323 (= (apply!7246 v!6381 from!862) lt!925618)))

(declare-fun b!2630465 () Bool)

(assert (=> b!2630465 (= e!1659702 (< from!862 (size!23547 v!6381)))))

(assert (= (and d!746323 res!1107548) b!2630465))

(assert (=> d!746323 m!2973373))

(assert (=> d!746323 m!2973373))

(declare-fun m!2973593 () Bool)

(assert (=> d!746323 m!2973593))

(declare-fun m!2973595 () Bool)

(assert (=> d!746323 m!2973595))

(assert (=> b!2630465 m!2973409))

(assert (=> b!2630321 d!746323))

(declare-fun d!746325 () Bool)

(declare-fun lt!925624 () Token!8734)

(declare-fun contains!5768 (List!30567 Token!8734) Bool)

(assert (=> d!746325 (contains!5768 lt!925558 lt!925624)))

(declare-fun e!1659710 () Token!8734)

(assert (=> d!746325 (= lt!925624 e!1659710)))

(declare-fun c!422884 () Bool)

(assert (=> d!746325 (= c!422884 (= from!862 0))))

(declare-fun e!1659711 () Bool)

(assert (=> d!746325 e!1659711))

(declare-fun res!1107554 () Bool)

(assert (=> d!746325 (=> (not res!1107554) (not e!1659711))))

(assert (=> d!746325 (= res!1107554 (<= 0 from!862))))

(assert (=> d!746325 (= (apply!7247 lt!925558 from!862) lt!925624)))

(declare-fun b!2630475 () Bool)

(assert (=> b!2630475 (= e!1659711 (< from!862 (size!23550 lt!925558)))))

(declare-fun b!2630476 () Bool)

(assert (=> b!2630476 (= e!1659710 (head!6031 lt!925558))))

(declare-fun b!2630477 () Bool)

(assert (=> b!2630477 (= e!1659710 (apply!7247 (tail!4269 lt!925558) (- from!862 1)))))

(assert (= (and d!746325 res!1107554) b!2630475))

(assert (= (and d!746325 c!422884) b!2630476))

(assert (= (and d!746325 (not c!422884)) b!2630477))

(declare-fun m!2973599 () Bool)

(assert (=> d!746325 m!2973599))

(assert (=> b!2630475 m!2973587))

(declare-fun m!2973603 () Bool)

(assert (=> b!2630476 m!2973603))

(declare-fun m!2973605 () Bool)

(assert (=> b!2630477 m!2973605))

(assert (=> b!2630477 m!2973605))

(declare-fun m!2973607 () Bool)

(assert (=> b!2630477 m!2973607))

(assert (=> b!2630321 d!746325))

(declare-fun d!746329 () Bool)

(assert (=> d!746329 (= (head!6031 (drop!1628 lt!925558 from!862)) (apply!7247 lt!925558 from!862))))

(declare-fun lt!925627 () Unit!44482)

(declare-fun choose!15601 (List!30567 Int) Unit!44482)

(assert (=> d!746329 (= lt!925627 (choose!15601 lt!925558 from!862))))

(declare-fun e!1659714 () Bool)

(assert (=> d!746329 e!1659714))

(declare-fun res!1107557 () Bool)

(assert (=> d!746329 (=> (not res!1107557) (not e!1659714))))

(assert (=> d!746329 (= res!1107557 (>= from!862 0))))

(assert (=> d!746329 (= (lemmaDropApply!843 lt!925558 from!862) lt!925627)))

(declare-fun b!2630480 () Bool)

(assert (=> b!2630480 (= e!1659714 (< from!862 (size!23550 lt!925558)))))

(assert (= (and d!746329 res!1107557) b!2630480))

(assert (=> d!746329 m!2973385))

(assert (=> d!746329 m!2973385))

(declare-fun m!2973609 () Bool)

(assert (=> d!746329 m!2973609))

(assert (=> d!746329 m!2973391))

(declare-fun m!2973611 () Bool)

(assert (=> d!746329 m!2973611))

(assert (=> b!2630480 m!2973587))

(assert (=> b!2630321 d!746329))

(declare-fun d!746331 () Bool)

(assert (=> d!746331 (= (tail!4269 (drop!1628 lt!925558 from!862)) (drop!1628 lt!925558 (+ from!862 1)))))

(declare-fun lt!925630 () Unit!44482)

(declare-fun choose!15602 (List!30567 Int) Unit!44482)

(assert (=> d!746331 (= lt!925630 (choose!15602 lt!925558 from!862))))

(declare-fun e!1659717 () Bool)

(assert (=> d!746331 e!1659717))

(declare-fun res!1107560 () Bool)

(assert (=> d!746331 (=> (not res!1107560) (not e!1659717))))

(assert (=> d!746331 (= res!1107560 (>= from!862 0))))

(assert (=> d!746331 (= (lemmaDropTail!817 lt!925558 from!862) lt!925630)))

(declare-fun b!2630483 () Bool)

(assert (=> b!2630483 (= e!1659717 (< from!862 (size!23550 lt!925558)))))

(assert (= (and d!746331 res!1107560) b!2630483))

(assert (=> d!746331 m!2973385))

(assert (=> d!746331 m!2973385))

(declare-fun m!2973613 () Bool)

(assert (=> d!746331 m!2973613))

(declare-fun m!2973615 () Bool)

(assert (=> d!746331 m!2973615))

(declare-fun m!2973617 () Bool)

(assert (=> d!746331 m!2973617))

(assert (=> b!2630483 m!2973587))

(assert (=> b!2630321 d!746331))

(declare-fun d!746333 () Bool)

(declare-fun lt!925635 () Bool)

(assert (=> d!746333 (= lt!925635 (contains!5768 (list!11448 v!6381) (apply!7246 v!6381 from!862)))))

(declare-fun contains!5769 (Conc!9507 Token!8734) Bool)

(assert (=> d!746333 (= lt!925635 (contains!5769 (c!422857 v!6381) (apply!7246 v!6381 from!862)))))

(assert (=> d!746333 (= (contains!5766 v!6381 (apply!7246 v!6381 from!862)) lt!925635)))

(declare-fun bs!475719 () Bool)

(assert (= bs!475719 d!746333))

(assert (=> bs!475719 m!2973373))

(assert (=> bs!475719 m!2973373))

(assert (=> bs!475719 m!2973387))

(declare-fun m!2973619 () Bool)

(assert (=> bs!475719 m!2973619))

(assert (=> bs!475719 m!2973387))

(declare-fun m!2973621 () Bool)

(assert (=> bs!475719 m!2973621))

(assert (=> b!2630321 d!746333))

(declare-fun d!746335 () Bool)

(assert (=> d!746335 (= (tail!4269 lt!925556) (t!216330 lt!925556))))

(assert (=> b!2630321 d!746335))

(declare-fun b!2630502 () Bool)

(declare-fun e!1659728 () Int)

(declare-fun call!169196 () Int)

(assert (=> b!2630502 (= e!1659728 call!169196)))

(declare-fun b!2630503 () Bool)

(declare-fun e!1659732 () Int)

(assert (=> b!2630503 (= e!1659732 (- call!169196 from!862))))

(declare-fun d!746337 () Bool)

(declare-fun e!1659730 () Bool)

(assert (=> d!746337 e!1659730))

(declare-fun res!1107563 () Bool)

(assert (=> d!746337 (=> (not res!1107563) (not e!1659730))))

(declare-fun lt!925636 () List!30567)

(assert (=> d!746337 (= res!1107563 (set.subset (content!4300 lt!925636) (content!4300 lt!925558)))))

(declare-fun e!1659729 () List!30567)

(assert (=> d!746337 (= lt!925636 e!1659729)))

(declare-fun c!422893 () Bool)

(assert (=> d!746337 (= c!422893 (is-Nil!30467 lt!925558))))

(assert (=> d!746337 (= (drop!1628 lt!925558 from!862) lt!925636)))

(declare-fun bm!169191 () Bool)

(assert (=> bm!169191 (= call!169196 (size!23550 lt!925558))))

(declare-fun b!2630504 () Bool)

(declare-fun e!1659731 () List!30567)

(assert (=> b!2630504 (= e!1659729 e!1659731)))

(declare-fun c!422895 () Bool)

(assert (=> b!2630504 (= c!422895 (<= from!862 0))))

(declare-fun b!2630505 () Bool)

(assert (=> b!2630505 (= e!1659728 e!1659732)))

(declare-fun c!422894 () Bool)

(assert (=> b!2630505 (= c!422894 (>= from!862 call!169196))))

(declare-fun b!2630506 () Bool)

(assert (=> b!2630506 (= e!1659732 0)))

(declare-fun b!2630507 () Bool)

(assert (=> b!2630507 (= e!1659731 lt!925558)))

(declare-fun b!2630508 () Bool)

(assert (=> b!2630508 (= e!1659731 (drop!1628 (t!216330 lt!925558) (- from!862 1)))))

(declare-fun b!2630509 () Bool)

(assert (=> b!2630509 (= e!1659729 Nil!30467)))

(declare-fun b!2630510 () Bool)

(assert (=> b!2630510 (= e!1659730 (= (size!23550 lt!925636) e!1659728))))

(declare-fun c!422896 () Bool)

(assert (=> b!2630510 (= c!422896 (<= from!862 0))))

(assert (= (and d!746337 c!422893) b!2630509))

(assert (= (and d!746337 (not c!422893)) b!2630504))

(assert (= (and b!2630504 c!422895) b!2630507))

(assert (= (and b!2630504 (not c!422895)) b!2630508))

(assert (= (and d!746337 res!1107563) b!2630510))

(assert (= (and b!2630510 c!422896) b!2630502))

(assert (= (and b!2630510 (not c!422896)) b!2630505))

(assert (= (and b!2630505 c!422894) b!2630506))

(assert (= (and b!2630505 (not c!422894)) b!2630503))

(assert (= (or b!2630502 b!2630505 b!2630503) bm!169191))

(declare-fun m!2973623 () Bool)

(assert (=> d!746337 m!2973623))

(assert (=> d!746337 m!2973585))

(assert (=> bm!169191 m!2973587))

(declare-fun m!2973625 () Bool)

(assert (=> b!2630508 m!2973625))

(declare-fun m!2973627 () Bool)

(assert (=> b!2630510 m!2973627))

(assert (=> b!2630321 d!746337))

(declare-fun d!746339 () Bool)

(declare-fun c!422899 () Bool)

(assert (=> d!746339 (= c!422899 (is-Node!9507 (c!422857 v!6381)))))

(declare-fun e!1659737 () Bool)

(assert (=> d!746339 (= (inv!41293 (c!422857 v!6381)) e!1659737)))

(declare-fun b!2630517 () Bool)

(declare-fun inv!41300 (Conc!9507) Bool)

(assert (=> b!2630517 (= e!1659737 (inv!41300 (c!422857 v!6381)))))

(declare-fun b!2630518 () Bool)

(declare-fun e!1659738 () Bool)

(assert (=> b!2630518 (= e!1659737 e!1659738)))

(declare-fun res!1107566 () Bool)

(assert (=> b!2630518 (= res!1107566 (not (is-Leaf!14564 (c!422857 v!6381))))))

(assert (=> b!2630518 (=> res!1107566 e!1659738)))

(declare-fun b!2630519 () Bool)

(declare-fun inv!41301 (Conc!9507) Bool)

(assert (=> b!2630519 (= e!1659738 (inv!41301 (c!422857 v!6381)))))

(assert (= (and d!746339 c!422899) b!2630517))

(assert (= (and d!746339 (not c!422899)) b!2630518))

(assert (= (and b!2630518 (not res!1107566)) b!2630519))

(declare-fun m!2973629 () Bool)

(assert (=> b!2630517 m!2973629))

(declare-fun m!2973631 () Bool)

(assert (=> b!2630519 m!2973631))

(assert (=> b!2630311 d!746339))

(declare-fun bs!475720 () Bool)

(declare-fun d!746341 () Bool)

(assert (= bs!475720 (and d!746341 b!2630307)))

(declare-fun lambda!98673 () Int)

(assert (=> bs!475720 (not (= lambda!98673 lambda!98663))))

(declare-fun b!2630551 () Bool)

(declare-fun e!1659760 () Bool)

(assert (=> b!2630551 (= e!1659760 true)))

(declare-fun b!2630550 () Bool)

(declare-fun e!1659759 () Bool)

(assert (=> b!2630550 (= e!1659759 e!1659760)))

(declare-fun b!2630549 () Bool)

(declare-fun e!1659758 () Bool)

(assert (=> b!2630549 (= e!1659758 e!1659759)))

(assert (=> d!746341 e!1659758))

(assert (= b!2630550 b!2630551))

(assert (= b!2630549 b!2630550))

(assert (= (and d!746341 (is-Cons!30468 rules!1726)) b!2630549))

(declare-fun order!16495 () Int)

(declare-fun order!16493 () Int)

(declare-fun dynLambda!13038 (Int Int) Int)

(declare-fun dynLambda!13039 (Int Int) Int)

(assert (=> b!2630551 (< (dynLambda!13038 order!16493 (toValue!6546 (transformation!4632 (h!35888 rules!1726)))) (dynLambda!13039 order!16495 lambda!98673))))

(declare-fun order!16497 () Int)

(declare-fun dynLambda!13040 (Int Int) Int)

(assert (=> b!2630551 (< (dynLambda!13040 order!16497 (toChars!6405 (transformation!4632 (h!35888 rules!1726)))) (dynLambda!13039 order!16495 lambda!98673))))

(assert (=> d!746341 true))

(declare-fun e!1659751 () Bool)

(assert (=> d!746341 e!1659751))

(declare-fun res!1107571 () Bool)

(assert (=> d!746341 (=> (not res!1107571) (not e!1659751))))

(declare-fun lt!925643 () Bool)

(assert (=> d!746341 (= res!1107571 (= lt!925643 (forall!6368 (list!11448 v!6381) lambda!98673)))))

(assert (=> d!746341 (= lt!925643 (forall!6366 v!6381 lambda!98673))))

(assert (=> d!746341 (not (isEmpty!17371 rules!1726))))

(assert (=> d!746341 (= (rulesProduceEachTokenIndividually!1049 thiss!14197 rules!1726 v!6381) lt!925643)))

(declare-fun b!2630540 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1462 (LexerInterface!4229 List!30568 List!30567) Bool)

(assert (=> b!2630540 (= e!1659751 (= lt!925643 (rulesProduceEachTokenIndividuallyList!1462 thiss!14197 rules!1726 (list!11448 v!6381))))))

(assert (= (and d!746341 res!1107571) b!2630540))

(assert (=> d!746341 m!2973373))

(assert (=> d!746341 m!2973373))

(declare-fun m!2973647 () Bool)

(assert (=> d!746341 m!2973647))

(declare-fun m!2973649 () Bool)

(assert (=> d!746341 m!2973649))

(assert (=> d!746341 m!2973405))

(assert (=> b!2630540 m!2973373))

(assert (=> b!2630540 m!2973373))

(declare-fun m!2973651 () Bool)

(assert (=> b!2630540 m!2973651))

(assert (=> b!2630313 d!746341))

(declare-fun d!746349 () Bool)

(declare-fun res!1107574 () Bool)

(declare-fun e!1659763 () Bool)

(assert (=> d!746349 (=> (not res!1107574) (not e!1659763))))

(declare-fun rulesValid!1715 (LexerInterface!4229 List!30568) Bool)

(assert (=> d!746349 (= res!1107574 (rulesValid!1715 thiss!14197 rules!1726))))

(assert (=> d!746349 (= (rulesInvariant!3729 thiss!14197 rules!1726) e!1659763)))

(declare-fun b!2630556 () Bool)

(declare-datatypes ((List!30573 0))(
  ( (Nil!30473) (Cons!30473 (h!35893 String!34156) (t!216357 List!30573)) )
))
(declare-fun noDuplicateTag!1711 (LexerInterface!4229 List!30568 List!30573) Bool)

(assert (=> b!2630556 (= e!1659763 (noDuplicateTag!1711 thiss!14197 rules!1726 Nil!30473))))

(assert (= (and d!746349 res!1107574) b!2630556))

(declare-fun m!2973653 () Bool)

(assert (=> d!746349 m!2973653))

(declare-fun m!2973655 () Bool)

(assert (=> b!2630556 m!2973655))

(assert (=> b!2630314 d!746349))

(declare-fun d!746351 () Bool)

(declare-fun res!1107579 () Bool)

(declare-fun e!1659766 () Bool)

(assert (=> d!746351 (=> (not res!1107579) (not e!1659766))))

(declare-fun isEmpty!17374 (List!30566) Bool)

(assert (=> d!746351 (= res!1107579 (not (isEmpty!17374 (originalCharacters!5398 separatorToken!156))))))

(assert (=> d!746351 (= (inv!41294 separatorToken!156) e!1659766)))

(declare-fun b!2630561 () Bool)

(declare-fun res!1107580 () Bool)

(assert (=> b!2630561 (=> (not res!1107580) (not e!1659766))))

(declare-fun list!11451 (BalanceConc!18626) List!30566)

(declare-fun dynLambda!13041 (Int TokenValue!4854) BalanceConc!18626)

(assert (=> b!2630561 (= res!1107580 (= (originalCharacters!5398 separatorToken!156) (list!11451 (dynLambda!13041 (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))) (value!149618 separatorToken!156)))))))

(declare-fun b!2630562 () Bool)

(declare-fun size!23552 (List!30566) Int)

(assert (=> b!2630562 (= e!1659766 (= (size!23546 separatorToken!156) (size!23552 (originalCharacters!5398 separatorToken!156))))))

(assert (= (and d!746351 res!1107579) b!2630561))

(assert (= (and b!2630561 res!1107580) b!2630562))

(declare-fun b_lambda!79209 () Bool)

(assert (=> (not b_lambda!79209) (not b!2630561)))

(declare-fun tb!143563 () Bool)

(declare-fun t!216350 () Bool)

(assert (=> (and b!2630312 (= (toChars!6405 (transformation!4632 (h!35888 rules!1726))) (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156)))) t!216350) tb!143563))

(declare-fun b!2630567 () Bool)

(declare-fun e!1659769 () Bool)

(declare-fun tp!834010 () Bool)

(declare-fun inv!41302 (Conc!9506) Bool)

(assert (=> b!2630567 (= e!1659769 (and (inv!41302 (c!422856 (dynLambda!13041 (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))) (value!149618 separatorToken!156)))) tp!834010))))

(declare-fun result!178380 () Bool)

(declare-fun inv!41303 (BalanceConc!18626) Bool)

(assert (=> tb!143563 (= result!178380 (and (inv!41303 (dynLambda!13041 (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))) (value!149618 separatorToken!156))) e!1659769))))

(assert (= tb!143563 b!2630567))

(declare-fun m!2973657 () Bool)

(assert (=> b!2630567 m!2973657))

(declare-fun m!2973659 () Bool)

(assert (=> tb!143563 m!2973659))

(assert (=> b!2630561 t!216350))

(declare-fun b_and!192727 () Bool)

(assert (= b_and!192709 (and (=> t!216350 result!178380) b_and!192727)))

(declare-fun t!216352 () Bool)

(declare-fun tb!143565 () Bool)

(assert (=> (and b!2630309 (= (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))) (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156)))) t!216352) tb!143565))

(declare-fun result!178384 () Bool)

(assert (= result!178384 result!178380))

(assert (=> b!2630561 t!216352))

(declare-fun b_and!192729 () Bool)

(assert (= b_and!192713 (and (=> t!216352 result!178384) b_and!192729)))

(declare-fun m!2973661 () Bool)

(assert (=> d!746351 m!2973661))

(declare-fun m!2973663 () Bool)

(assert (=> b!2630561 m!2973663))

(assert (=> b!2630561 m!2973663))

(declare-fun m!2973665 () Bool)

(assert (=> b!2630561 m!2973665))

(declare-fun m!2973667 () Bool)

(assert (=> b!2630562 m!2973667))

(assert (=> start!255660 d!746351))

(declare-fun d!746353 () Bool)

(declare-fun isBalanced!2868 (Conc!9507) Bool)

(assert (=> d!746353 (= (inv!41295 v!6381) (isBalanced!2868 (c!422857 v!6381)))))

(declare-fun bs!475721 () Bool)

(assert (= bs!475721 d!746353))

(declare-fun m!2973669 () Bool)

(assert (=> bs!475721 m!2973669))

(assert (=> start!255660 d!746353))

(declare-fun b!2630578 () Bool)

(declare-fun b_free!74165 () Bool)

(declare-fun b_next!74869 () Bool)

(assert (=> b!2630578 (= b_free!74165 (not b_next!74869))))

(declare-fun tp!834022 () Bool)

(declare-fun b_and!192731 () Bool)

(assert (=> b!2630578 (= tp!834022 b_and!192731)))

(declare-fun b_free!74167 () Bool)

(declare-fun b_next!74871 () Bool)

(assert (=> b!2630578 (= b_free!74167 (not b_next!74871))))

(declare-fun tb!143567 () Bool)

(declare-fun t!216354 () Bool)

(assert (=> (and b!2630578 (= (toChars!6405 (transformation!4632 (h!35888 (t!216331 rules!1726)))) (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156)))) t!216354) tb!143567))

(declare-fun result!178388 () Bool)

(assert (= result!178388 result!178380))

(assert (=> b!2630561 t!216354))

(declare-fun tp!834020 () Bool)

(declare-fun b_and!192733 () Bool)

(assert (=> b!2630578 (= tp!834020 (and (=> t!216354 result!178388) b_and!192733))))

(declare-fun e!1659779 () Bool)

(assert (=> b!2630578 (= e!1659779 (and tp!834022 tp!834020))))

(declare-fun e!1659781 () Bool)

(declare-fun tp!834021 () Bool)

(declare-fun b!2630577 () Bool)

(assert (=> b!2630577 (= e!1659781 (and tp!834021 (inv!41289 (tag!5126 (h!35888 (t!216331 rules!1726)))) (inv!41292 (transformation!4632 (h!35888 (t!216331 rules!1726)))) e!1659779))))

(declare-fun b!2630576 () Bool)

(declare-fun e!1659780 () Bool)

(declare-fun tp!834019 () Bool)

(assert (=> b!2630576 (= e!1659780 (and e!1659781 tp!834019))))

(assert (=> b!2630315 (= tp!833974 e!1659780)))

(assert (= b!2630577 b!2630578))

(assert (= b!2630576 b!2630577))

(assert (= (and b!2630315 (is-Cons!30468 (t!216331 rules!1726))) b!2630576))

(declare-fun m!2973671 () Bool)

(assert (=> b!2630577 m!2973671))

(declare-fun m!2973673 () Bool)

(assert (=> b!2630577 m!2973673))

(declare-fun e!1659784 () Bool)

(assert (=> b!2630305 (= tp!833969 e!1659784)))

(declare-fun b!2630589 () Bool)

(declare-fun tp_is_empty!13747 () Bool)

(assert (=> b!2630589 (= e!1659784 tp_is_empty!13747)))

(declare-fun b!2630591 () Bool)

(declare-fun tp!834033 () Bool)

(assert (=> b!2630591 (= e!1659784 tp!834033)))

(declare-fun b!2630592 () Bool)

(declare-fun tp!834034 () Bool)

(declare-fun tp!834035 () Bool)

(assert (=> b!2630592 (= e!1659784 (and tp!834034 tp!834035))))

(declare-fun b!2630590 () Bool)

(declare-fun tp!834036 () Bool)

(declare-fun tp!834037 () Bool)

(assert (=> b!2630590 (= e!1659784 (and tp!834036 tp!834037))))

(assert (= (and b!2630305 (is-ElementMatch!7776 (regex!4632 (rule!7014 separatorToken!156)))) b!2630589))

(assert (= (and b!2630305 (is-Concat!12631 (regex!4632 (rule!7014 separatorToken!156)))) b!2630590))

(assert (= (and b!2630305 (is-Star!7776 (regex!4632 (rule!7014 separatorToken!156)))) b!2630591))

(assert (= (and b!2630305 (is-Union!7776 (regex!4632 (rule!7014 separatorToken!156)))) b!2630592))

(declare-fun b!2630601 () Bool)

(declare-fun tp!834044 () Bool)

(declare-fun e!1659790 () Bool)

(declare-fun tp!834046 () Bool)

(assert (=> b!2630601 (= e!1659790 (and (inv!41293 (left!23531 (c!422857 v!6381))) tp!834044 (inv!41293 (right!23861 (c!422857 v!6381))) tp!834046))))

(declare-fun b!2630603 () Bool)

(declare-fun e!1659789 () Bool)

(declare-fun tp!834045 () Bool)

(assert (=> b!2630603 (= e!1659789 tp!834045)))

(declare-fun b!2630602 () Bool)

(declare-fun inv!41304 (IArray!19019) Bool)

(assert (=> b!2630602 (= e!1659790 (and (inv!41304 (xs!12507 (c!422857 v!6381))) e!1659789))))

(assert (=> b!2630311 (= tp!833973 (and (inv!41293 (c!422857 v!6381)) e!1659790))))

(assert (= (and b!2630311 (is-Node!9507 (c!422857 v!6381))) b!2630601))

(assert (= b!2630602 b!2630603))

(assert (= (and b!2630311 (is-Leaf!14564 (c!422857 v!6381))) b!2630602))

(declare-fun m!2973675 () Bool)

(assert (=> b!2630601 m!2973675))

(declare-fun m!2973677 () Bool)

(assert (=> b!2630601 m!2973677))

(declare-fun m!2973679 () Bool)

(assert (=> b!2630602 m!2973679))

(assert (=> b!2630311 m!2973411))

(declare-fun b!2630608 () Bool)

(declare-fun e!1659793 () Bool)

(declare-fun tp!834049 () Bool)

(assert (=> b!2630608 (= e!1659793 (and tp_is_empty!13747 tp!834049))))

(assert (=> b!2630317 (= tp!833970 e!1659793)))

(assert (= (and b!2630317 (is-Cons!30466 (originalCharacters!5398 separatorToken!156))) b!2630608))

(declare-fun e!1659794 () Bool)

(assert (=> b!2630318 (= tp!833972 e!1659794)))

(declare-fun b!2630609 () Bool)

(assert (=> b!2630609 (= e!1659794 tp_is_empty!13747)))

(declare-fun b!2630611 () Bool)

(declare-fun tp!834050 () Bool)

(assert (=> b!2630611 (= e!1659794 tp!834050)))

(declare-fun b!2630612 () Bool)

(declare-fun tp!834051 () Bool)

(declare-fun tp!834052 () Bool)

(assert (=> b!2630612 (= e!1659794 (and tp!834051 tp!834052))))

(declare-fun b!2630610 () Bool)

(declare-fun tp!834053 () Bool)

(declare-fun tp!834054 () Bool)

(assert (=> b!2630610 (= e!1659794 (and tp!834053 tp!834054))))

(assert (= (and b!2630318 (is-ElementMatch!7776 (regex!4632 (h!35888 rules!1726)))) b!2630609))

(assert (= (and b!2630318 (is-Concat!12631 (regex!4632 (h!35888 rules!1726)))) b!2630610))

(assert (= (and b!2630318 (is-Star!7776 (regex!4632 (h!35888 rules!1726)))) b!2630611))

(assert (= (and b!2630318 (is-Union!7776 (regex!4632 (h!35888 rules!1726)))) b!2630612))

(declare-fun b_lambda!79211 () Bool)

(assert (= b_lambda!79209 (or (and b!2630312 b_free!74151 (= (toChars!6405 (transformation!4632 (h!35888 rules!1726))) (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))))) (and b!2630309 b_free!74155) (and b!2630578 b_free!74167 (= (toChars!6405 (transformation!4632 (h!35888 (t!216331 rules!1726)))) (toChars!6405 (transformation!4632 (rule!7014 separatorToken!156))))) b_lambda!79211)))

(push 1)

(assert (not b!2630508))

(assert (not d!746337))

(assert (not tb!143563))

(assert (not d!746331))

(assert (not b!2630480))

(assert (not b!2630431))

(assert (not b!2630577))

(assert (not b!2630561))

(assert (not bm!169191))

(assert (not b!2630483))

(assert (not b!2630603))

(assert (not b!2630592))

(assert (not d!746279))

(assert (not d!746271))

(assert (not d!746275))

(assert (not b_next!74869))

(assert (not d!746329))

(assert (not b!2630396))

(assert (not d!746341))

(assert b_and!192731)

(assert (not b!2630611))

(assert (not b!2630590))

(assert b_and!192729)

(assert (not b_next!74853))

(assert (not d!746285))

(assert (not d!746325))

(assert (not b_next!74859))

(assert (not b!2630540))

(assert (not b_next!74855))

(assert (not b!2630591))

(assert (not b!2630430))

(assert (not d!746349))

(assert b_and!192707)

(assert (not d!746333))

(assert (not b!2630391))

(assert (not b!2630517))

(assert (not b!2630375))

(assert (not d!746283))

(assert (not bm!169190))

(assert (not b!2630608))

(assert (not b!2630465))

(assert (not b!2630567))

(assert (not b!2630610))

(assert b_and!192733)

(assert (not d!746323))

(assert (not b!2630556))

(assert (not d!746319))

(assert (not b!2630460))

(assert (not d!746289))

(assert (not b_next!74857))

(assert (not b!2630389))

(assert (not b!2630397))

(assert b_and!192711)

(assert (not b!2630475))

(assert (not b!2630311))

(assert (not d!746273))

(assert b_and!192727)

(assert tp_is_empty!13747)

(assert (not d!746269))

(assert (not b!2630387))

(assert (not b!2630462))

(assert (not b!2630477))

(assert (not b!2630510))

(assert (not d!746351))

(assert (not b_next!74871))

(assert (not d!746353))

(assert (not b!2630549))

(assert (not b!2630562))

(assert (not b!2630602))

(assert (not b_lambda!79211))

(assert (not b!2630476))

(assert (not b!2630601))

(assert (not b!2630388))

(assert (not b!2630519))

(assert (not b!2630432))

(assert (not b!2630576))

(assert (not b!2630612))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74869))

(assert b_and!192731)

(assert (not b_next!74859))

(assert (not b_next!74855))

(assert b_and!192707)

(assert b_and!192733)

(assert (not b_next!74857))

(assert b_and!192711)

(assert b_and!192727)

(assert (not b_next!74871))

(assert b_and!192729)

(assert (not b_next!74853))

(check-sat)

(pop 1)

