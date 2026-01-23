; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255658 () Bool)

(assert start!255658)

(declare-fun b!2630243 () Bool)

(declare-fun b_free!74141 () Bool)

(declare-fun b_next!74845 () Bool)

(assert (=> b!2630243 (= b_free!74141 (not b_next!74845))))

(declare-fun tp!833949 () Bool)

(declare-fun b_and!192699 () Bool)

(assert (=> b!2630243 (= tp!833949 b_and!192699)))

(declare-fun b_free!74143 () Bool)

(declare-fun b_next!74847 () Bool)

(assert (=> b!2630243 (= b_free!74143 (not b_next!74847))))

(declare-fun tp!833950 () Bool)

(declare-fun b_and!192701 () Bool)

(assert (=> b!2630243 (= tp!833950 b_and!192701)))

(declare-fun b!2630256 () Bool)

(declare-fun b_free!74145 () Bool)

(declare-fun b_next!74849 () Bool)

(assert (=> b!2630256 (= b_free!74145 (not b_next!74849))))

(declare-fun tp!833946 () Bool)

(declare-fun b_and!192703 () Bool)

(assert (=> b!2630256 (= tp!833946 b_and!192703)))

(declare-fun b_free!74147 () Bool)

(declare-fun b_next!74851 () Bool)

(assert (=> b!2630256 (= b_free!74147 (not b_next!74851))))

(declare-fun tp!833942 () Bool)

(declare-fun b_and!192705 () Bool)

(assert (=> b!2630256 (= tp!833942 b_and!192705)))

(declare-fun bs!475705 () Bool)

(declare-fun b!2630257 () Bool)

(declare-fun b!2630239 () Bool)

(assert (= bs!475705 (and b!2630257 b!2630239)))

(declare-fun lambda!98658 () Int)

(declare-fun lambda!98657 () Int)

(assert (=> bs!475705 (not (= lambda!98658 lambda!98657))))

(declare-fun b!2630268 () Bool)

(declare-fun e!1659560 () Bool)

(assert (=> b!2630268 (= e!1659560 true)))

(declare-fun b!2630267 () Bool)

(declare-fun e!1659559 () Bool)

(assert (=> b!2630267 (= e!1659559 e!1659560)))

(declare-fun b!2630266 () Bool)

(declare-fun e!1659558 () Bool)

(assert (=> b!2630266 (= e!1659558 e!1659559)))

(assert (=> b!2630257 e!1659558))

(assert (= b!2630267 b!2630268))

(assert (= b!2630266 b!2630267))

(declare-datatypes ((String!34148 0))(
  ( (String!34149 (value!149562 String)) )
))
(declare-datatypes ((List!30561 0))(
  ( (Nil!30461) (Cons!30461 (h!35881 (_ BitVec 16)) (t!216322 List!30561)) )
))
(declare-datatypes ((C!15708 0))(
  ( (C!15709 (val!9788 Int)) )
))
(declare-datatypes ((Regex!7775 0))(
  ( (ElementMatch!7775 (c!422852 C!15708)) (Concat!12628 (regOne!16062 Regex!7775) (regTwo!16062 Regex!7775)) (EmptyExpr!7775) (Star!7775 (reg!8104 Regex!7775)) (EmptyLang!7775) (Union!7775 (regOne!16063 Regex!7775) (regTwo!16063 Regex!7775)) )
))
(declare-datatypes ((TokenValue!4853 0))(
  ( (FloatLiteralValue!9706 (text!34416 List!30561)) (TokenValueExt!4852 (__x!19539 Int)) (Broken!24265 (value!149563 List!30561)) (Object!4952) (End!4853) (Def!4853) (Underscore!4853) (Match!4853) (Else!4853) (Error!4853) (Case!4853) (If!4853) (Extends!4853) (Abstract!4853) (Class!4853) (Val!4853) (DelimiterValue!9706 (del!4913 List!30561)) (KeywordValue!4859 (value!149564 List!30561)) (CommentValue!9706 (value!149565 List!30561)) (WhitespaceValue!9706 (value!149566 List!30561)) (IndentationValue!4853 (value!149567 List!30561)) (String!34150) (Int32!4853) (Broken!24266 (value!149568 List!30561)) (Boolean!4854) (Unit!44478) (OperatorValue!4856 (op!4913 List!30561)) (IdentifierValue!9706 (value!149569 List!30561)) (IdentifierValue!9707 (value!149570 List!30561)) (WhitespaceValue!9707 (value!149571 List!30561)) (True!9706) (False!9706) (Broken!24267 (value!149572 List!30561)) (Broken!24268 (value!149573 List!30561)) (True!9707) (RightBrace!4853) (RightBracket!4853) (Colon!4853) (Null!4853) (Comma!4853) (LeftBracket!4853) (False!9707) (LeftBrace!4853) (ImaginaryLiteralValue!4853 (text!34417 List!30561)) (StringLiteralValue!14559 (value!149574 List!30561)) (EOFValue!4853 (value!149575 List!30561)) (IdentValue!4853 (value!149576 List!30561)) (DelimiterValue!9707 (value!149577 List!30561)) (DedentValue!4853 (value!149578 List!30561)) (NewLineValue!4853 (value!149579 List!30561)) (IntegerValue!14559 (value!149580 (_ BitVec 32)) (text!34418 List!30561)) (IntegerValue!14560 (value!149581 Int) (text!34419 List!30561)) (Times!4853) (Or!4853) (Equal!4853) (Minus!4853) (Broken!24269 (value!149582 List!30561)) (And!4853) (Div!4853) (LessEqual!4853) (Mod!4853) (Concat!12629) (Not!4853) (Plus!4853) (SpaceValue!4853 (value!149583 List!30561)) (IntegerValue!14561 (value!149584 Int) (text!34420 List!30561)) (StringLiteralValue!14560 (text!34421 List!30561)) (FloatLiteralValue!9707 (text!34422 List!30561)) (BytesLiteralValue!4853 (value!149585 List!30561)) (CommentValue!9707 (value!149586 List!30561)) (StringLiteralValue!14561 (value!149587 List!30561)) (ErrorTokenValue!4853 (msg!4914 List!30561)) )
))
(declare-datatypes ((List!30562 0))(
  ( (Nil!30462) (Cons!30462 (h!35882 C!15708) (t!216323 List!30562)) )
))
(declare-datatypes ((IArray!19013 0))(
  ( (IArray!19014 (innerList!9564 List!30562)) )
))
(declare-datatypes ((Conc!9504 0))(
  ( (Node!9504 (left!23527 Conc!9504) (right!23857 Conc!9504) (csize!19238 Int) (cheight!9715 Int)) (Leaf!14560 (xs!12504 IArray!19013) (csize!19239 Int)) (Empty!9504) )
))
(declare-datatypes ((BalanceConc!18622 0))(
  ( (BalanceConc!18623 (c!422853 Conc!9504)) )
))
(declare-datatypes ((TokenValueInjection!9146 0))(
  ( (TokenValueInjection!9147 (toValue!6545 Int) (toChars!6404 Int)) )
))
(declare-datatypes ((Rule!9062 0))(
  ( (Rule!9063 (regex!4631 Regex!7775) (tag!5125 String!34148) (isSeparator!4631 Bool) (transformation!4631 TokenValueInjection!9146)) )
))
(declare-datatypes ((List!30563 0))(
  ( (Nil!30463) (Cons!30463 (h!35883 Rule!9062) (t!216324 List!30563)) )
))
(declare-fun rules!1726 () List!30563)

(get-info :version)

(assert (= (and b!2630257 ((_ is Cons!30463) rules!1726)) b!2630266))

(declare-fun order!16487 () Int)

(declare-fun order!16489 () Int)

(declare-fun dynLambda!13035 (Int Int) Int)

(declare-fun dynLambda!13036 (Int Int) Int)

(assert (=> b!2630268 (< (dynLambda!13035 order!16487 (toValue!6545 (transformation!4631 (h!35883 rules!1726)))) (dynLambda!13036 order!16489 lambda!98658))))

(declare-fun order!16491 () Int)

(declare-fun dynLambda!13037 (Int Int) Int)

(assert (=> b!2630268 (< (dynLambda!13037 order!16491 (toChars!6404 (transformation!4631 (h!35883 rules!1726)))) (dynLambda!13036 order!16489 lambda!98658))))

(assert (=> b!2630257 true))

(declare-fun b!2630237 () Bool)

(declare-fun e!1659538 () Bool)

(declare-fun e!1659545 () Bool)

(declare-fun tp!833945 () Bool)

(declare-fun inv!41280 (String!34148) Bool)

(declare-fun inv!41285 (TokenValueInjection!9146) Bool)

(assert (=> b!2630237 (= e!1659545 (and tp!833945 (inv!41280 (tag!5125 (h!35883 rules!1726))) (inv!41285 (transformation!4631 (h!35883 rules!1726))) e!1659538))))

(declare-fun b!2630238 () Bool)

(declare-fun res!1107437 () Bool)

(declare-fun e!1659549 () Bool)

(assert (=> b!2630238 (=> (not res!1107437) (not e!1659549))))

(declare-fun sepAndNonSepRulesDisjointChars!1204 (List!30563 List!30563) Bool)

(assert (=> b!2630238 (= res!1107437 (sepAndNonSepRulesDisjointChars!1204 rules!1726 rules!1726))))

(declare-fun res!1107424 () Bool)

(assert (=> b!2630239 (=> (not res!1107424) (not e!1659549))))

(declare-datatypes ((Token!8732 0))(
  ( (Token!8733 (value!149588 TokenValue!4853) (rule!7013 Rule!9062) (size!23544 Int) (originalCharacters!5397 List!30562)) )
))
(declare-datatypes ((List!30564 0))(
  ( (Nil!30464) (Cons!30464 (h!35884 Token!8732) (t!216325 List!30564)) )
))
(declare-datatypes ((IArray!19015 0))(
  ( (IArray!19016 (innerList!9565 List!30564)) )
))
(declare-datatypes ((Conc!9505 0))(
  ( (Node!9505 (left!23528 Conc!9505) (right!23858 Conc!9505) (csize!19240 Int) (cheight!9716 Int)) (Leaf!14561 (xs!12505 IArray!19015) (csize!19241 Int)) (Empty!9505) )
))
(declare-datatypes ((BalanceConc!18624 0))(
  ( (BalanceConc!18625 (c!422854 Conc!9505)) )
))
(declare-fun v!6381 () BalanceConc!18624)

(declare-fun forall!6365 (BalanceConc!18624 Int) Bool)

(assert (=> b!2630239 (= res!1107424 (forall!6365 v!6381 lambda!98657))))

(declare-fun e!1659537 () Bool)

(declare-fun e!1659550 () Bool)

(declare-fun tp!833947 () Bool)

(declare-fun separatorToken!156 () Token!8732)

(declare-fun b!2630240 () Bool)

(declare-fun inv!21 (TokenValue!4853) Bool)

(assert (=> b!2630240 (= e!1659550 (and (inv!21 (value!149588 separatorToken!156)) e!1659537 tp!833947))))

(declare-fun b!2630241 () Bool)

(declare-fun e!1659544 () Bool)

(assert (=> b!2630241 (= e!1659549 e!1659544)))

(declare-fun res!1107435 () Bool)

(assert (=> b!2630241 (=> (not res!1107435) (not e!1659544))))

(declare-fun from!862 () Int)

(declare-fun lt!925535 () Int)

(assert (=> b!2630241 (= res!1107435 (< from!862 lt!925535))))

(declare-datatypes ((Unit!44479 0))(
  ( (Unit!44480) )
))
(declare-fun lt!925534 () Unit!44479)

(declare-fun lt!925533 () List!30564)

(declare-fun lt!925536 () List!30564)

(declare-fun lemmaContentSubsetPreservesForall!300 (List!30564 List!30564 Int) Unit!44479)

(assert (=> b!2630241 (= lt!925534 (lemmaContentSubsetPreservesForall!300 lt!925536 lt!925533 lambda!98657))))

(declare-fun dropList!934 (BalanceConc!18624 Int) List!30564)

(assert (=> b!2630241 (= lt!925533 (dropList!934 v!6381 from!862))))

(declare-fun list!11447 (BalanceConc!18624) List!30564)

(assert (=> b!2630241 (= lt!925536 (list!11447 v!6381))))

(declare-fun b!2630242 () Bool)

(declare-fun res!1107434 () Bool)

(declare-fun e!1659546 () Bool)

(assert (=> b!2630242 (=> res!1107434 e!1659546)))

(declare-datatypes ((LexerInterface!4228 0))(
  ( (LexerInterfaceExt!4225 (__x!19540 Int)) (Lexer!4226) )
))
(declare-fun thiss!14197 () LexerInterface!4228)

(declare-fun rulesProduceEachTokenIndividuallyList!1461 (LexerInterface!4228 List!30563 List!30564) Bool)

(assert (=> b!2630242 (= res!1107434 (not (rulesProduceEachTokenIndividuallyList!1461 thiss!14197 rules!1726 lt!925533)))))

(declare-fun e!1659541 () Bool)

(assert (=> b!2630243 (= e!1659541 (and tp!833949 tp!833950))))

(declare-fun b!2630244 () Bool)

(assert (=> b!2630244 (= e!1659546 true)))

(declare-fun b!2630245 () Bool)

(declare-fun res!1107425 () Bool)

(declare-fun e!1659547 () Bool)

(assert (=> b!2630245 (=> res!1107425 e!1659547)))

(declare-fun lt!925541 () Token!8732)

(declare-fun contains!5764 (List!30564 Token!8732) Bool)

(assert (=> b!2630245 (= res!1107425 (not (contains!5764 lt!925536 lt!925541)))))

(declare-fun b!2630246 () Bool)

(declare-fun res!1107436 () Bool)

(assert (=> b!2630246 (=> (not res!1107436) (not e!1659549))))

(declare-fun rulesInvariant!3728 (LexerInterface!4228 List!30563) Bool)

(assert (=> b!2630246 (= res!1107436 (rulesInvariant!3728 thiss!14197 rules!1726))))

(declare-fun b!2630247 () Bool)

(declare-fun res!1107427 () Bool)

(assert (=> b!2630247 (=> (not res!1107427) (not e!1659549))))

(declare-fun rulesProduceEachTokenIndividually!1048 (LexerInterface!4228 List!30563 BalanceConc!18624) Bool)

(assert (=> b!2630247 (= res!1107427 (rulesProduceEachTokenIndividually!1048 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2630248 () Bool)

(declare-fun e!1659542 () Bool)

(declare-fun tp!833948 () Bool)

(declare-fun inv!41286 (Conc!9505) Bool)

(assert (=> b!2630248 (= e!1659542 (and (inv!41286 (c!422854 v!6381)) tp!833948))))

(declare-fun b!2630249 () Bool)

(declare-fun res!1107429 () Bool)

(assert (=> b!2630249 (=> (not res!1107429) (not e!1659549))))

(assert (=> b!2630249 (= res!1107429 (isSeparator!4631 (rule!7013 separatorToken!156)))))

(declare-fun b!2630250 () Bool)

(declare-fun e!1659539 () Bool)

(declare-fun tp!833943 () Bool)

(assert (=> b!2630250 (= e!1659539 (and e!1659545 tp!833943))))

(declare-fun b!2630251 () Bool)

(declare-fun res!1107432 () Bool)

(assert (=> b!2630251 (=> (not res!1107432) (not e!1659549))))

(declare-fun isEmpty!17370 (List!30563) Bool)

(assert (=> b!2630251 (= res!1107432 (not (isEmpty!17370 rules!1726)))))

(declare-fun b!2630252 () Bool)

(declare-fun e!1659551 () Bool)

(assert (=> b!2630252 (= e!1659551 e!1659549)))

(declare-fun res!1107431 () Bool)

(assert (=> b!2630252 (=> (not res!1107431) (not e!1659549))))

(assert (=> b!2630252 (= res!1107431 (<= from!862 lt!925535))))

(declare-fun size!23545 (BalanceConc!18624) Int)

(assert (=> b!2630252 (= lt!925535 (size!23545 v!6381))))

(declare-fun res!1107426 () Bool)

(assert (=> start!255658 (=> (not res!1107426) (not e!1659551))))

(assert (=> start!255658 (= res!1107426 (and ((_ is Lexer!4226) thiss!14197) (>= from!862 0)))))

(assert (=> start!255658 e!1659551))

(assert (=> start!255658 true))

(assert (=> start!255658 e!1659539))

(declare-fun inv!41287 (Token!8732) Bool)

(assert (=> start!255658 (and (inv!41287 separatorToken!156) e!1659550)))

(declare-fun inv!41288 (BalanceConc!18624) Bool)

(assert (=> start!255658 (and (inv!41288 v!6381) e!1659542)))

(declare-fun b!2630253 () Bool)

(assert (=> b!2630253 (= e!1659544 (not e!1659547))))

(declare-fun res!1107428 () Bool)

(assert (=> b!2630253 (=> res!1107428 e!1659547)))

(declare-fun contains!5765 (BalanceConc!18624 Token!8732) Bool)

(assert (=> b!2630253 (= res!1107428 (not (contains!5765 v!6381 lt!925541)))))

(declare-fun apply!7244 (BalanceConc!18624 Int) Token!8732)

(assert (=> b!2630253 (= lt!925541 (apply!7244 v!6381 from!862))))

(declare-fun lt!925543 () List!30564)

(declare-fun tail!4268 (List!30564) List!30564)

(declare-fun drop!1627 (List!30564 Int) List!30564)

(assert (=> b!2630253 (= (tail!4268 lt!925543) (drop!1627 lt!925536 (+ 1 from!862)))))

(declare-fun lt!925538 () Unit!44479)

(declare-fun lemmaDropTail!816 (List!30564 Int) Unit!44479)

(assert (=> b!2630253 (= lt!925538 (lemmaDropTail!816 lt!925536 from!862))))

(declare-fun head!6030 (List!30564) Token!8732)

(declare-fun apply!7245 (List!30564 Int) Token!8732)

(assert (=> b!2630253 (= (head!6030 lt!925543) (apply!7245 lt!925536 from!862))))

(assert (=> b!2630253 (= lt!925543 (drop!1627 lt!925536 from!862))))

(declare-fun lt!925540 () Unit!44479)

(declare-fun lemmaDropApply!842 (List!30564 Int) Unit!44479)

(assert (=> b!2630253 (= lt!925540 (lemmaDropApply!842 lt!925536 from!862))))

(declare-fun b!2630254 () Bool)

(declare-fun res!1107433 () Bool)

(assert (=> b!2630254 (=> (not res!1107433) (not e!1659549))))

(declare-fun rulesProduceIndividualToken!1940 (LexerInterface!4228 List!30563 Token!8732) Bool)

(assert (=> b!2630254 (= res!1107433 (rulesProduceIndividualToken!1940 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun tp!833944 () Bool)

(declare-fun b!2630255 () Bool)

(assert (=> b!2630255 (= e!1659537 (and tp!833944 (inv!41280 (tag!5125 (rule!7013 separatorToken!156))) (inv!41285 (transformation!4631 (rule!7013 separatorToken!156))) e!1659541))))

(assert (=> b!2630256 (= e!1659538 (and tp!833946 tp!833942))))

(assert (=> b!2630257 (= e!1659547 e!1659546)))

(declare-fun res!1107430 () Bool)

(assert (=> b!2630257 (=> res!1107430 e!1659546)))

(declare-fun lt!925539 () Bool)

(declare-datatypes ((tuple2!29968 0))(
  ( (tuple2!29969 (_1!17526 Token!8732) (_2!17526 BalanceConc!18622)) )
))
(declare-datatypes ((Option!6022 0))(
  ( (None!6021) (Some!6021 (v!32408 tuple2!29968)) )
))
(declare-fun lt!925537 () Option!6022)

(assert (=> b!2630257 (= res!1107430 (or (and (not lt!925539) (= (_1!17526 (v!32408 lt!925537)) lt!925541)) (and (not lt!925539) (not (= (_1!17526 (v!32408 lt!925537)) lt!925541))) ((_ is None!6021) lt!925537)))))

(assert (=> b!2630257 (= lt!925539 (not ((_ is Some!6021) lt!925537)))))

(declare-fun maxPrefixZipperSequence!958 (LexerInterface!4228 List!30563 BalanceConc!18622) Option!6022)

(declare-fun ++!7417 (BalanceConc!18622 BalanceConc!18622) BalanceConc!18622)

(declare-fun charsOf!2922 (Token!8732) BalanceConc!18622)

(declare-fun printWithSeparatorTokenWhenNeededRec!506 (LexerInterface!4228 List!30563 BalanceConc!18624 Token!8732 Int) BalanceConc!18622)

(assert (=> b!2630257 (= lt!925537 (maxPrefixZipperSequence!958 thiss!14197 rules!1726 (++!7417 (charsOf!2922 lt!925541) (printWithSeparatorTokenWhenNeededRec!506 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!925542 () Unit!44479)

(declare-fun forallContained!987 (List!30564 Int Token!8732) Unit!44479)

(assert (=> b!2630257 (= lt!925542 (forallContained!987 lt!925536 lambda!98658 lt!925541))))

(assert (= (and start!255658 res!1107426) b!2630252))

(assert (= (and b!2630252 res!1107431) b!2630251))

(assert (= (and b!2630251 res!1107432) b!2630246))

(assert (= (and b!2630246 res!1107436) b!2630247))

(assert (= (and b!2630247 res!1107427) b!2630254))

(assert (= (and b!2630254 res!1107433) b!2630249))

(assert (= (and b!2630249 res!1107429) b!2630239))

(assert (= (and b!2630239 res!1107424) b!2630238))

(assert (= (and b!2630238 res!1107437) b!2630241))

(assert (= (and b!2630241 res!1107435) b!2630253))

(assert (= (and b!2630253 (not res!1107428)) b!2630245))

(assert (= (and b!2630245 (not res!1107425)) b!2630257))

(assert (= (and b!2630257 (not res!1107430)) b!2630242))

(assert (= (and b!2630242 (not res!1107434)) b!2630244))

(assert (= b!2630237 b!2630256))

(assert (= b!2630250 b!2630237))

(assert (= (and start!255658 ((_ is Cons!30463) rules!1726)) b!2630250))

(assert (= b!2630255 b!2630243))

(assert (= b!2630240 b!2630255))

(assert (= start!255658 b!2630240))

(assert (= start!255658 b!2630248))

(declare-fun m!2973297 () Bool)

(assert (=> b!2630237 m!2973297))

(declare-fun m!2973299 () Bool)

(assert (=> b!2630237 m!2973299))

(declare-fun m!2973301 () Bool)

(assert (=> b!2630247 m!2973301))

(declare-fun m!2973303 () Bool)

(assert (=> b!2630254 m!2973303))

(declare-fun m!2973305 () Bool)

(assert (=> start!255658 m!2973305))

(declare-fun m!2973307 () Bool)

(assert (=> start!255658 m!2973307))

(declare-fun m!2973309 () Bool)

(assert (=> b!2630251 m!2973309))

(declare-fun m!2973311 () Bool)

(assert (=> b!2630240 m!2973311))

(declare-fun m!2973313 () Bool)

(assert (=> b!2630248 m!2973313))

(declare-fun m!2973315 () Bool)

(assert (=> b!2630252 m!2973315))

(declare-fun m!2973317 () Bool)

(assert (=> b!2630255 m!2973317))

(declare-fun m!2973319 () Bool)

(assert (=> b!2630255 m!2973319))

(declare-fun m!2973321 () Bool)

(assert (=> b!2630257 m!2973321))

(declare-fun m!2973323 () Bool)

(assert (=> b!2630257 m!2973323))

(declare-fun m!2973325 () Bool)

(assert (=> b!2630257 m!2973325))

(declare-fun m!2973327 () Bool)

(assert (=> b!2630257 m!2973327))

(declare-fun m!2973329 () Bool)

(assert (=> b!2630257 m!2973329))

(assert (=> b!2630257 m!2973327))

(assert (=> b!2630257 m!2973325))

(assert (=> b!2630257 m!2973321))

(declare-fun m!2973331 () Bool)

(assert (=> b!2630246 m!2973331))

(declare-fun m!2973333 () Bool)

(assert (=> b!2630241 m!2973333))

(declare-fun m!2973335 () Bool)

(assert (=> b!2630241 m!2973335))

(declare-fun m!2973337 () Bool)

(assert (=> b!2630241 m!2973337))

(declare-fun m!2973339 () Bool)

(assert (=> b!2630238 m!2973339))

(declare-fun m!2973341 () Bool)

(assert (=> b!2630239 m!2973341))

(declare-fun m!2973343 () Bool)

(assert (=> b!2630245 m!2973343))

(declare-fun m!2973345 () Bool)

(assert (=> b!2630253 m!2973345))

(declare-fun m!2973347 () Bool)

(assert (=> b!2630253 m!2973347))

(declare-fun m!2973349 () Bool)

(assert (=> b!2630253 m!2973349))

(declare-fun m!2973351 () Bool)

(assert (=> b!2630253 m!2973351))

(declare-fun m!2973353 () Bool)

(assert (=> b!2630253 m!2973353))

(declare-fun m!2973355 () Bool)

(assert (=> b!2630253 m!2973355))

(declare-fun m!2973357 () Bool)

(assert (=> b!2630253 m!2973357))

(declare-fun m!2973359 () Bool)

(assert (=> b!2630253 m!2973359))

(declare-fun m!2973361 () Bool)

(assert (=> b!2630253 m!2973361))

(declare-fun m!2973363 () Bool)

(assert (=> b!2630242 m!2973363))

(check-sat (not b!2630239) b_and!192701 (not b!2630253) (not b!2630252) (not b_next!74847) (not b!2630238) (not b_next!74849) (not b!2630246) (not b_next!74845) (not b!2630237) (not b!2630248) (not b!2630251) (not b!2630247) (not b!2630245) (not b!2630242) (not b!2630240) b_and!192703 (not b!2630257) (not b!2630266) (not b!2630255) (not b!2630254) (not start!255658) b_and!192699 (not b!2630241) (not b!2630250) b_and!192705 (not b_next!74851))
(check-sat b_and!192701 (not b_next!74847) (not b_next!74849) (not b_next!74845) b_and!192703 b_and!192699 b_and!192705 (not b_next!74851))
