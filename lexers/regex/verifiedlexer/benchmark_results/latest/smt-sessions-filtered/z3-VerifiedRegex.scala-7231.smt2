; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385036 () Bool)

(assert start!385036)

(declare-fun b!4077206 () Bool)

(declare-fun b_free!113681 () Bool)

(declare-fun b_next!114385 () Bool)

(assert (=> b!4077206 (= b_free!113681 (not b_next!114385))))

(declare-fun tp!1234260 () Bool)

(declare-fun b_and!313507 () Bool)

(assert (=> b!4077206 (= tp!1234260 b_and!313507)))

(declare-fun b_free!113683 () Bool)

(declare-fun b_next!114387 () Bool)

(assert (=> b!4077206 (= b_free!113683 (not b_next!114387))))

(declare-fun tp!1234262 () Bool)

(declare-fun b_and!313509 () Bool)

(assert (=> b!4077206 (= tp!1234262 b_and!313509)))

(declare-fun b!4077194 () Bool)

(declare-fun b_free!113685 () Bool)

(declare-fun b_next!114389 () Bool)

(assert (=> b!4077194 (= b_free!113685 (not b_next!114389))))

(declare-fun tp!1234264 () Bool)

(declare-fun b_and!313511 () Bool)

(assert (=> b!4077194 (= tp!1234264 b_and!313511)))

(declare-fun b_free!113687 () Bool)

(declare-fun b_next!114391 () Bool)

(assert (=> b!4077194 (= b_free!113687 (not b_next!114391))))

(declare-fun tp!1234265 () Bool)

(declare-fun b_and!313513 () Bool)

(assert (=> b!4077194 (= tp!1234265 b_and!313513)))

(declare-fun b!4077192 () Bool)

(declare-fun res!1665361 () Bool)

(declare-fun e!2530597 () Bool)

(assert (=> b!4077192 (=> (not res!1665361) (not e!2530597))))

(declare-datatypes ((LexerInterface!6623 0))(
  ( (LexerInterfaceExt!6620 (__x!26745 Int)) (Lexer!6621) )
))
(declare-fun thiss!26199 () LexerInterface!6623)

(declare-datatypes ((List!43769 0))(
  ( (Nil!43645) (Cons!43645 (h!49065 (_ BitVec 16)) (t!337432 List!43769)) )
))
(declare-datatypes ((TokenValue!7264 0))(
  ( (FloatLiteralValue!14528 (text!51293 List!43769)) (TokenValueExt!7263 (__x!26746 Int)) (Broken!36320 (value!221095 List!43769)) (Object!7387) (End!7264) (Def!7264) (Underscore!7264) (Match!7264) (Else!7264) (Error!7264) (Case!7264) (If!7264) (Extends!7264) (Abstract!7264) (Class!7264) (Val!7264) (DelimiterValue!14528 (del!7324 List!43769)) (KeywordValue!7270 (value!221096 List!43769)) (CommentValue!14528 (value!221097 List!43769)) (WhitespaceValue!14528 (value!221098 List!43769)) (IndentationValue!7264 (value!221099 List!43769)) (String!50069) (Int32!7264) (Broken!36321 (value!221100 List!43769)) (Boolean!7265) (Unit!63186) (OperatorValue!7267 (op!7324 List!43769)) (IdentifierValue!14528 (value!221101 List!43769)) (IdentifierValue!14529 (value!221102 List!43769)) (WhitespaceValue!14529 (value!221103 List!43769)) (True!14528) (False!14528) (Broken!36322 (value!221104 List!43769)) (Broken!36323 (value!221105 List!43769)) (True!14529) (RightBrace!7264) (RightBracket!7264) (Colon!7264) (Null!7264) (Comma!7264) (LeftBracket!7264) (False!14529) (LeftBrace!7264) (ImaginaryLiteralValue!7264 (text!51294 List!43769)) (StringLiteralValue!21792 (value!221106 List!43769)) (EOFValue!7264 (value!221107 List!43769)) (IdentValue!7264 (value!221108 List!43769)) (DelimiterValue!14529 (value!221109 List!43769)) (DedentValue!7264 (value!221110 List!43769)) (NewLineValue!7264 (value!221111 List!43769)) (IntegerValue!21792 (value!221112 (_ BitVec 32)) (text!51295 List!43769)) (IntegerValue!21793 (value!221113 Int) (text!51296 List!43769)) (Times!7264) (Or!7264) (Equal!7264) (Minus!7264) (Broken!36324 (value!221114 List!43769)) (And!7264) (Div!7264) (LessEqual!7264) (Mod!7264) (Concat!19203) (Not!7264) (Plus!7264) (SpaceValue!7264 (value!221115 List!43769)) (IntegerValue!21794 (value!221116 Int) (text!51297 List!43769)) (StringLiteralValue!21793 (text!51298 List!43769)) (FloatLiteralValue!14529 (text!51299 List!43769)) (BytesLiteralValue!7264 (value!221117 List!43769)) (CommentValue!14529 (value!221118 List!43769)) (StringLiteralValue!21794 (value!221119 List!43769)) (ErrorTokenValue!7264 (msg!7325 List!43769)) )
))
(declare-datatypes ((C!24064 0))(
  ( (C!24065 (val!14142 Int)) )
))
(declare-datatypes ((Regex!11939 0))(
  ( (ElementMatch!11939 (c!703312 C!24064)) (Concat!19204 (regOne!24390 Regex!11939) (regTwo!24390 Regex!11939)) (EmptyExpr!11939) (Star!11939 (reg!12268 Regex!11939)) (EmptyLang!11939) (Union!11939 (regOne!24391 Regex!11939) (regTwo!24391 Regex!11939)) )
))
(declare-datatypes ((String!50070 0))(
  ( (String!50071 (value!221120 String)) )
))
(declare-datatypes ((List!43770 0))(
  ( (Nil!43646) (Cons!43646 (h!49066 C!24064) (t!337433 List!43770)) )
))
(declare-datatypes ((IArray!26495 0))(
  ( (IArray!26496 (innerList!13305 List!43770)) )
))
(declare-datatypes ((Conc!13245 0))(
  ( (Node!13245 (left!32804 Conc!13245) (right!33134 Conc!13245) (csize!26720 Int) (cheight!13456 Int)) (Leaf!20477 (xs!16551 IArray!26495) (csize!26721 Int)) (Empty!13245) )
))
(declare-datatypes ((BalanceConc!26084 0))(
  ( (BalanceConc!26085 (c!703313 Conc!13245)) )
))
(declare-datatypes ((TokenValueInjection!13956 0))(
  ( (TokenValueInjection!13957 (toValue!9602 Int) (toChars!9461 Int)) )
))
(declare-datatypes ((Rule!13868 0))(
  ( (Rule!13869 (regex!7034 Regex!11939) (tag!7894 String!50070) (isSeparator!7034 Bool) (transformation!7034 TokenValueInjection!13956)) )
))
(declare-datatypes ((List!43771 0))(
  ( (Nil!43647) (Cons!43647 (h!49067 Rule!13868) (t!337434 List!43771)) )
))
(declare-fun rules!3870 () List!43771)

(declare-fun rulesInvariant!5966 (LexerInterface!6623 List!43771) Bool)

(assert (=> b!4077192 (= res!1665361 (rulesInvariant!5966 thiss!26199 rules!3870))))

(declare-fun b!4077193 () Bool)

(declare-fun e!2530601 () Bool)

(declare-fun e!2530593 () Bool)

(assert (=> b!4077193 (= e!2530601 (not e!2530593))))

(declare-fun res!1665360 () Bool)

(assert (=> b!4077193 (=> res!1665360 e!2530593)))

(declare-fun r!4213 () Rule!13868)

(declare-fun p!2988 () List!43770)

(declare-fun matchR!5884 (Regex!11939 List!43770) Bool)

(assert (=> b!4077193 (= res!1665360 (not (matchR!5884 (regex!7034 r!4213) p!2988)))))

(declare-fun ruleValid!2958 (LexerInterface!6623 Rule!13868) Bool)

(assert (=> b!4077193 (ruleValid!2958 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63187 0))(
  ( (Unit!63188) )
))
(declare-fun lt!1458916 () Unit!63187)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2026 (LexerInterface!6623 Rule!13868 List!43771) Unit!63187)

(assert (=> b!4077193 (= lt!1458916 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2026 thiss!26199 r!4213 rules!3870))))

(declare-fun e!2530590 () Bool)

(assert (=> b!4077194 (= e!2530590 (and tp!1234264 tp!1234265))))

(declare-fun b!4077195 () Bool)

(declare-fun res!1665365 () Bool)

(assert (=> b!4077195 (=> (not res!1665365) (not e!2530597))))

(declare-fun isEmpty!26069 (List!43770) Bool)

(assert (=> b!4077195 (= res!1665365 (not (isEmpty!26069 p!2988)))))

(declare-fun tp!1234266 () Bool)

(declare-fun b!4077196 () Bool)

(declare-fun e!2530592 () Bool)

(declare-fun inv!58299 (String!50070) Bool)

(declare-fun inv!58301 (TokenValueInjection!13956) Bool)

(assert (=> b!4077196 (= e!2530592 (and tp!1234266 (inv!58299 (tag!7894 r!4213)) (inv!58301 (transformation!7034 r!4213)) e!2530590))))

(declare-fun b!4077197 () Bool)

(declare-fun e!2530600 () Bool)

(declare-fun tp_is_empty!20881 () Bool)

(declare-fun tp!1234261 () Bool)

(assert (=> b!4077197 (= e!2530600 (and tp_is_empty!20881 tp!1234261))))

(declare-fun b!4077198 () Bool)

(declare-fun res!1665364 () Bool)

(assert (=> b!4077198 (=> (not res!1665364) (not e!2530597))))

(declare-fun isEmpty!26070 (List!43771) Bool)

(assert (=> b!4077198 (= res!1665364 (not (isEmpty!26070 rules!3870)))))

(declare-fun e!2530599 () Bool)

(declare-fun e!2530594 () Bool)

(declare-fun tp!1234263 () Bool)

(declare-fun b!4077199 () Bool)

(assert (=> b!4077199 (= e!2530599 (and tp!1234263 (inv!58299 (tag!7894 (h!49067 rules!3870))) (inv!58301 (transformation!7034 (h!49067 rules!3870))) e!2530594))))

(declare-fun b!4077200 () Bool)

(declare-fun res!1665369 () Bool)

(assert (=> b!4077200 (=> (not res!1665369) (not e!2530597))))

(declare-fun contains!8703 (List!43771 Rule!13868) Bool)

(assert (=> b!4077200 (= res!1665369 (contains!8703 rules!3870 r!4213))))

(declare-fun b!4077201 () Bool)

(declare-fun e!2530598 () Bool)

(declare-datatypes ((Token!13194 0))(
  ( (Token!13195 (value!221121 TokenValue!7264) (rule!10142 Rule!13868) (size!32603 Int) (originalCharacters!7628 List!43770)) )
))
(declare-datatypes ((tuple2!42618 0))(
  ( (tuple2!42619 (_1!24443 Token!13194) (_2!24443 List!43770)) )
))
(declare-datatypes ((Option!9442 0))(
  ( (None!9441) (Some!9441 (v!39889 tuple2!42618)) )
))
(declare-fun lt!1458914 () Option!9442)

(declare-fun isDefined!7154 (Option!9442) Bool)

(assert (=> b!4077201 (= e!2530598 (isDefined!7154 lt!1458914))))

(declare-fun b!4077202 () Bool)

(declare-fun e!2530589 () Bool)

(declare-fun tp!1234257 () Bool)

(assert (=> b!4077202 (= e!2530589 (and tp_is_empty!20881 tp!1234257))))

(declare-fun b!4077203 () Bool)

(assert (=> b!4077203 (= e!2530597 e!2530601)))

(declare-fun res!1665363 () Bool)

(assert (=> b!4077203 (=> (not res!1665363) (not e!2530601))))

(declare-fun suffix!1518 () List!43770)

(declare-fun lt!1458915 () BalanceConc!26084)

(declare-fun input!3411 () List!43770)

(declare-fun maxPrefix!3915 (LexerInterface!6623 List!43771 List!43770) Option!9442)

(declare-fun apply!10217 (TokenValueInjection!13956 BalanceConc!26084) TokenValue!7264)

(declare-fun size!32604 (List!43770) Int)

(assert (=> b!4077203 (= res!1665363 (= (maxPrefix!3915 thiss!26199 rules!3870 input!3411) (Some!9441 (tuple2!42619 (Token!13195 (apply!10217 (transformation!7034 r!4213) lt!1458915) r!4213 (size!32604 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458917 () Unit!63187)

(declare-fun lemmaSemiInverse!2001 (TokenValueInjection!13956 BalanceConc!26084) Unit!63187)

(assert (=> b!4077203 (= lt!1458917 (lemmaSemiInverse!2001 (transformation!7034 r!4213) lt!1458915))))

(declare-fun seqFromList!5251 (List!43770) BalanceConc!26084)

(assert (=> b!4077203 (= lt!1458915 (seqFromList!5251 p!2988))))

(declare-fun b!4077204 () Bool)

(assert (=> b!4077204 (= e!2530593 e!2530598)))

(declare-fun res!1665370 () Bool)

(assert (=> b!4077204 (=> res!1665370 e!2530598)))

(declare-fun isEmpty!26071 (Option!9442) Bool)

(assert (=> b!4077204 (= res!1665370 (isEmpty!26071 lt!1458914))))

(declare-fun maxPrefixOneRule!2909 (LexerInterface!6623 Rule!13868 List!43770) Option!9442)

(assert (=> b!4077204 (= lt!1458914 (maxPrefixOneRule!2909 thiss!26199 (h!49067 rules!3870) input!3411))))

(assert (=> b!4077204 (rulesInvariant!5966 thiss!26199 (t!337434 rules!3870))))

(declare-fun lt!1458913 () Unit!63187)

(declare-fun lemmaInvariantOnRulesThenOnTail!752 (LexerInterface!6623 Rule!13868 List!43771) Unit!63187)

(assert (=> b!4077204 (= lt!1458913 (lemmaInvariantOnRulesThenOnTail!752 thiss!26199 (h!49067 rules!3870) (t!337434 rules!3870)))))

(declare-fun b!4077205 () Bool)

(declare-fun e!2530602 () Bool)

(declare-fun tp!1234259 () Bool)

(assert (=> b!4077205 (= e!2530602 (and e!2530599 tp!1234259))))

(assert (=> b!4077206 (= e!2530594 (and tp!1234260 tp!1234262))))

(declare-fun b!4077207 () Bool)

(declare-fun res!1665367 () Bool)

(assert (=> b!4077207 (=> (not res!1665367) (not e!2530597))))

(declare-fun ++!11440 (List!43770 List!43770) List!43770)

(assert (=> b!4077207 (= res!1665367 (= input!3411 (++!11440 p!2988 suffix!1518)))))

(declare-fun b!4077208 () Bool)

(declare-fun res!1665362 () Bool)

(assert (=> b!4077208 (=> res!1665362 e!2530598)))

(declare-fun get!14311 (Option!9442) tuple2!42618)

(assert (=> b!4077208 (= res!1665362 (not (= (rule!10142 (_1!24443 (get!14311 lt!1458914))) (h!49067 rules!3870))))))

(declare-fun b!4077209 () Bool)

(declare-fun e!2530596 () Bool)

(declare-fun tp!1234258 () Bool)

(assert (=> b!4077209 (= e!2530596 (and tp_is_empty!20881 tp!1234258))))

(declare-fun res!1665366 () Bool)

(assert (=> start!385036 (=> (not res!1665366) (not e!2530597))))

(get-info :version)

(assert (=> start!385036 (= res!1665366 ((_ is Lexer!6621) thiss!26199))))

(assert (=> start!385036 e!2530597))

(assert (=> start!385036 true))

(assert (=> start!385036 e!2530596))

(assert (=> start!385036 e!2530602))

(assert (=> start!385036 e!2530600))

(assert (=> start!385036 e!2530589))

(assert (=> start!385036 e!2530592))

(declare-fun b!4077210 () Bool)

(declare-fun res!1665368 () Bool)

(assert (=> b!4077210 (=> res!1665368 e!2530593)))

(assert (=> b!4077210 (= res!1665368 (or (and ((_ is Cons!43647) rules!3870) (= (h!49067 rules!3870) r!4213)) (not ((_ is Cons!43647) rules!3870)) (= (h!49067 rules!3870) r!4213)))))

(assert (= (and start!385036 res!1665366) b!4077198))

(assert (= (and b!4077198 res!1665364) b!4077192))

(assert (= (and b!4077192 res!1665361) b!4077200))

(assert (= (and b!4077200 res!1665369) b!4077207))

(assert (= (and b!4077207 res!1665367) b!4077195))

(assert (= (and b!4077195 res!1665365) b!4077203))

(assert (= (and b!4077203 res!1665363) b!4077193))

(assert (= (and b!4077193 (not res!1665360)) b!4077210))

(assert (= (and b!4077210 (not res!1665368)) b!4077204))

(assert (= (and b!4077204 (not res!1665370)) b!4077208))

(assert (= (and b!4077208 (not res!1665362)) b!4077201))

(assert (= (and start!385036 ((_ is Cons!43646) suffix!1518)) b!4077209))

(assert (= b!4077199 b!4077206))

(assert (= b!4077205 b!4077199))

(assert (= (and start!385036 ((_ is Cons!43647) rules!3870)) b!4077205))

(assert (= (and start!385036 ((_ is Cons!43646) p!2988)) b!4077197))

(assert (= (and start!385036 ((_ is Cons!43646) input!3411)) b!4077202))

(assert (= b!4077196 b!4077194))

(assert (= start!385036 b!4077196))

(declare-fun m!4685351 () Bool)

(assert (=> b!4077192 m!4685351))

(declare-fun m!4685353 () Bool)

(assert (=> b!4077201 m!4685353))

(declare-fun m!4685355 () Bool)

(assert (=> b!4077195 m!4685355))

(declare-fun m!4685357 () Bool)

(assert (=> b!4077203 m!4685357))

(declare-fun m!4685359 () Bool)

(assert (=> b!4077203 m!4685359))

(declare-fun m!4685361 () Bool)

(assert (=> b!4077203 m!4685361))

(declare-fun m!4685363 () Bool)

(assert (=> b!4077203 m!4685363))

(declare-fun m!4685365 () Bool)

(assert (=> b!4077203 m!4685365))

(declare-fun m!4685367 () Bool)

(assert (=> b!4077207 m!4685367))

(declare-fun m!4685369 () Bool)

(assert (=> b!4077196 m!4685369))

(declare-fun m!4685371 () Bool)

(assert (=> b!4077196 m!4685371))

(declare-fun m!4685373 () Bool)

(assert (=> b!4077199 m!4685373))

(declare-fun m!4685375 () Bool)

(assert (=> b!4077199 m!4685375))

(declare-fun m!4685377 () Bool)

(assert (=> b!4077193 m!4685377))

(declare-fun m!4685379 () Bool)

(assert (=> b!4077193 m!4685379))

(declare-fun m!4685381 () Bool)

(assert (=> b!4077193 m!4685381))

(declare-fun m!4685383 () Bool)

(assert (=> b!4077200 m!4685383))

(declare-fun m!4685385 () Bool)

(assert (=> b!4077204 m!4685385))

(declare-fun m!4685387 () Bool)

(assert (=> b!4077204 m!4685387))

(declare-fun m!4685389 () Bool)

(assert (=> b!4077204 m!4685389))

(declare-fun m!4685391 () Bool)

(assert (=> b!4077204 m!4685391))

(declare-fun m!4685393 () Bool)

(assert (=> b!4077208 m!4685393))

(declare-fun m!4685395 () Bool)

(assert (=> b!4077198 m!4685395))

(check-sat (not b!4077205) (not b!4077201) b_and!313511 b_and!313509 (not b!4077193) (not b_next!114391) tp_is_empty!20881 (not b_next!114385) b_and!313507 (not b_next!114387) (not b!4077197) (not b!4077196) (not b!4077204) (not b!4077203) (not b!4077198) (not b_next!114389) (not b!4077202) (not b!4077195) (not b!4077208) (not b!4077207) (not b!4077192) b_and!313513 (not b!4077209) (not b!4077200) (not b!4077199))
(check-sat b_and!313511 b_and!313509 (not b_next!114389) (not b_next!114391) (not b_next!114385) b_and!313507 (not b_next!114387) b_and!313513)
(get-model)

(declare-fun d!1211316 () Bool)

(assert (=> d!1211316 (= (get!14311 lt!1458914) (v!39889 lt!1458914))))

(assert (=> b!4077208 d!1211316))

(declare-fun b!4077220 () Bool)

(declare-fun e!2530607 () List!43770)

(assert (=> b!4077220 (= e!2530607 (Cons!43646 (h!49066 p!2988) (++!11440 (t!337433 p!2988) suffix!1518)))))

(declare-fun b!4077219 () Bool)

(assert (=> b!4077219 (= e!2530607 suffix!1518)))

(declare-fun e!2530608 () Bool)

(declare-fun b!4077222 () Bool)

(declare-fun lt!1458920 () List!43770)

(assert (=> b!4077222 (= e!2530608 (or (not (= suffix!1518 Nil!43646)) (= lt!1458920 p!2988)))))

(declare-fun d!1211318 () Bool)

(assert (=> d!1211318 e!2530608))

(declare-fun res!1665379 () Bool)

(assert (=> d!1211318 (=> (not res!1665379) (not e!2530608))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6682 (List!43770) (InoxSet C!24064))

(assert (=> d!1211318 (= res!1665379 (= (content!6682 lt!1458920) ((_ map or) (content!6682 p!2988) (content!6682 suffix!1518))))))

(assert (=> d!1211318 (= lt!1458920 e!2530607)))

(declare-fun c!703316 () Bool)

(assert (=> d!1211318 (= c!703316 ((_ is Nil!43646) p!2988))))

(assert (=> d!1211318 (= (++!11440 p!2988 suffix!1518) lt!1458920)))

(declare-fun b!4077221 () Bool)

(declare-fun res!1665380 () Bool)

(assert (=> b!4077221 (=> (not res!1665380) (not e!2530608))))

(assert (=> b!4077221 (= res!1665380 (= (size!32604 lt!1458920) (+ (size!32604 p!2988) (size!32604 suffix!1518))))))

(assert (= (and d!1211318 c!703316) b!4077219))

(assert (= (and d!1211318 (not c!703316)) b!4077220))

(assert (= (and d!1211318 res!1665379) b!4077221))

(assert (= (and b!4077221 res!1665380) b!4077222))

(declare-fun m!4685397 () Bool)

(assert (=> b!4077220 m!4685397))

(declare-fun m!4685399 () Bool)

(assert (=> d!1211318 m!4685399))

(declare-fun m!4685401 () Bool)

(assert (=> d!1211318 m!4685401))

(declare-fun m!4685403 () Bool)

(assert (=> d!1211318 m!4685403))

(declare-fun m!4685405 () Bool)

(assert (=> b!4077221 m!4685405))

(assert (=> b!4077221 m!4685365))

(declare-fun m!4685407 () Bool)

(assert (=> b!4077221 m!4685407))

(assert (=> b!4077207 d!1211318))

(declare-fun d!1211320 () Bool)

(assert (=> d!1211320 (= (inv!58299 (tag!7894 r!4213)) (= (mod (str.len (value!221120 (tag!7894 r!4213))) 2) 0))))

(assert (=> b!4077196 d!1211320))

(declare-fun d!1211322 () Bool)

(declare-fun res!1665386 () Bool)

(declare-fun e!2530611 () Bool)

(assert (=> d!1211322 (=> (not res!1665386) (not e!2530611))))

(declare-fun semiInverseModEq!3010 (Int Int) Bool)

(assert (=> d!1211322 (= res!1665386 (semiInverseModEq!3010 (toChars!9461 (transformation!7034 r!4213)) (toValue!9602 (transformation!7034 r!4213))))))

(assert (=> d!1211322 (= (inv!58301 (transformation!7034 r!4213)) e!2530611)))

(declare-fun b!4077225 () Bool)

(declare-fun equivClasses!2909 (Int Int) Bool)

(assert (=> b!4077225 (= e!2530611 (equivClasses!2909 (toChars!9461 (transformation!7034 r!4213)) (toValue!9602 (transformation!7034 r!4213))))))

(assert (= (and d!1211322 res!1665386) b!4077225))

(declare-fun m!4685409 () Bool)

(assert (=> d!1211322 m!4685409))

(declare-fun m!4685411 () Bool)

(assert (=> b!4077225 m!4685411))

(assert (=> b!4077196 d!1211322))

(declare-fun d!1211324 () Bool)

(assert (=> d!1211324 (= (isEmpty!26069 p!2988) ((_ is Nil!43646) p!2988))))

(assert (=> b!4077195 d!1211324))

(declare-fun d!1211328 () Bool)

(assert (=> d!1211328 (= (isEmpty!26071 lt!1458914) (not ((_ is Some!9441) lt!1458914)))))

(assert (=> b!4077204 d!1211328))

(declare-fun b!4077316 () Bool)

(declare-fun res!1665453 () Bool)

(declare-fun e!2530665 () Bool)

(assert (=> b!4077316 (=> (not res!1665453) (not e!2530665))))

(declare-fun lt!1458946 () Option!9442)

(declare-fun list!16233 (BalanceConc!26084) List!43770)

(declare-fun charsOf!4817 (Token!13194) BalanceConc!26084)

(assert (=> b!4077316 (= res!1665453 (= (++!11440 (list!16233 (charsOf!4817 (_1!24443 (get!14311 lt!1458946)))) (_2!24443 (get!14311 lt!1458946))) input!3411))))

(declare-fun b!4077317 () Bool)

(declare-fun res!1665449 () Bool)

(assert (=> b!4077317 (=> (not res!1665449) (not e!2530665))))

(assert (=> b!4077317 (= res!1665449 (= (rule!10142 (_1!24443 (get!14311 lt!1458946))) (h!49067 rules!3870)))))

(declare-fun d!1211330 () Bool)

(declare-fun e!2530662 () Bool)

(assert (=> d!1211330 e!2530662))

(declare-fun res!1665455 () Bool)

(assert (=> d!1211330 (=> res!1665455 e!2530662)))

(assert (=> d!1211330 (= res!1665455 (isEmpty!26071 lt!1458946))))

(declare-fun e!2530664 () Option!9442)

(assert (=> d!1211330 (= lt!1458946 e!2530664)))

(declare-fun c!703331 () Bool)

(declare-datatypes ((tuple2!42620 0))(
  ( (tuple2!42621 (_1!24444 List!43770) (_2!24444 List!43770)) )
))
(declare-fun lt!1458943 () tuple2!42620)

(assert (=> d!1211330 (= c!703331 (isEmpty!26069 (_1!24444 lt!1458943)))))

(declare-fun findLongestMatch!1341 (Regex!11939 List!43770) tuple2!42620)

(assert (=> d!1211330 (= lt!1458943 (findLongestMatch!1341 (regex!7034 (h!49067 rules!3870)) input!3411))))

(assert (=> d!1211330 (ruleValid!2958 thiss!26199 (h!49067 rules!3870))))

(assert (=> d!1211330 (= (maxPrefixOneRule!2909 thiss!26199 (h!49067 rules!3870) input!3411) lt!1458946)))

(declare-fun b!4077318 () Bool)

(assert (=> b!4077318 (= e!2530664 None!9441)))

(declare-fun b!4077319 () Bool)

(declare-fun res!1665454 () Bool)

(assert (=> b!4077319 (=> (not res!1665454) (not e!2530665))))

(assert (=> b!4077319 (= res!1665454 (= (value!221121 (_1!24443 (get!14311 lt!1458946))) (apply!10217 (transformation!7034 (rule!10142 (_1!24443 (get!14311 lt!1458946)))) (seqFromList!5251 (originalCharacters!7628 (_1!24443 (get!14311 lt!1458946)))))))))

(declare-fun b!4077320 () Bool)

(declare-fun e!2530663 () Bool)

(declare-fun findLongestMatchInner!1429 (Regex!11939 List!43770 Int List!43770 List!43770 Int) tuple2!42620)

(assert (=> b!4077320 (= e!2530663 (matchR!5884 (regex!7034 (h!49067 rules!3870)) (_1!24444 (findLongestMatchInner!1429 (regex!7034 (h!49067 rules!3870)) Nil!43646 (size!32604 Nil!43646) input!3411 input!3411 (size!32604 input!3411)))))))

(declare-fun b!4077321 () Bool)

(declare-fun res!1665452 () Bool)

(assert (=> b!4077321 (=> (not res!1665452) (not e!2530665))))

(assert (=> b!4077321 (= res!1665452 (< (size!32604 (_2!24443 (get!14311 lt!1458946))) (size!32604 input!3411)))))

(declare-fun b!4077322 () Bool)

(assert (=> b!4077322 (= e!2530665 (= (size!32603 (_1!24443 (get!14311 lt!1458946))) (size!32604 (originalCharacters!7628 (_1!24443 (get!14311 lt!1458946))))))))

(declare-fun b!4077323 () Bool)

(declare-fun size!32605 (BalanceConc!26084) Int)

(assert (=> b!4077323 (= e!2530664 (Some!9441 (tuple2!42619 (Token!13195 (apply!10217 (transformation!7034 (h!49067 rules!3870)) (seqFromList!5251 (_1!24444 lt!1458943))) (h!49067 rules!3870) (size!32605 (seqFromList!5251 (_1!24444 lt!1458943))) (_1!24444 lt!1458943)) (_2!24444 lt!1458943))))))

(declare-fun lt!1458945 () Unit!63187)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1401 (Regex!11939 List!43770) Unit!63187)

(assert (=> b!4077323 (= lt!1458945 (longestMatchIsAcceptedByMatchOrIsEmpty!1401 (regex!7034 (h!49067 rules!3870)) input!3411))))

(declare-fun res!1665450 () Bool)

(assert (=> b!4077323 (= res!1665450 (isEmpty!26069 (_1!24444 (findLongestMatchInner!1429 (regex!7034 (h!49067 rules!3870)) Nil!43646 (size!32604 Nil!43646) input!3411 input!3411 (size!32604 input!3411)))))))

(assert (=> b!4077323 (=> res!1665450 e!2530663)))

(assert (=> b!4077323 e!2530663))

(declare-fun lt!1458944 () Unit!63187)

(assert (=> b!4077323 (= lt!1458944 lt!1458945)))

(declare-fun lt!1458947 () Unit!63187)

(assert (=> b!4077323 (= lt!1458947 (lemmaSemiInverse!2001 (transformation!7034 (h!49067 rules!3870)) (seqFromList!5251 (_1!24444 lt!1458943))))))

(declare-fun b!4077324 () Bool)

(assert (=> b!4077324 (= e!2530662 e!2530665)))

(declare-fun res!1665451 () Bool)

(assert (=> b!4077324 (=> (not res!1665451) (not e!2530665))))

(assert (=> b!4077324 (= res!1665451 (matchR!5884 (regex!7034 (h!49067 rules!3870)) (list!16233 (charsOf!4817 (_1!24443 (get!14311 lt!1458946))))))))

(assert (= (and d!1211330 c!703331) b!4077318))

(assert (= (and d!1211330 (not c!703331)) b!4077323))

(assert (= (and b!4077323 (not res!1665450)) b!4077320))

(assert (= (and d!1211330 (not res!1665455)) b!4077324))

(assert (= (and b!4077324 res!1665451) b!4077316))

(assert (= (and b!4077316 res!1665453) b!4077321))

(assert (= (and b!4077321 res!1665452) b!4077317))

(assert (= (and b!4077317 res!1665449) b!4077319))

(assert (= (and b!4077319 res!1665454) b!4077322))

(declare-fun m!4685455 () Bool)

(assert (=> b!4077319 m!4685455))

(declare-fun m!4685457 () Bool)

(assert (=> b!4077319 m!4685457))

(assert (=> b!4077319 m!4685457))

(declare-fun m!4685459 () Bool)

(assert (=> b!4077319 m!4685459))

(assert (=> b!4077316 m!4685455))

(declare-fun m!4685461 () Bool)

(assert (=> b!4077316 m!4685461))

(assert (=> b!4077316 m!4685461))

(declare-fun m!4685463 () Bool)

(assert (=> b!4077316 m!4685463))

(assert (=> b!4077316 m!4685463))

(declare-fun m!4685465 () Bool)

(assert (=> b!4077316 m!4685465))

(declare-fun m!4685467 () Bool)

(assert (=> b!4077320 m!4685467))

(declare-fun m!4685469 () Bool)

(assert (=> b!4077320 m!4685469))

(assert (=> b!4077320 m!4685467))

(assert (=> b!4077320 m!4685469))

(declare-fun m!4685471 () Bool)

(assert (=> b!4077320 m!4685471))

(declare-fun m!4685473 () Bool)

(assert (=> b!4077320 m!4685473))

(assert (=> b!4077317 m!4685455))

(declare-fun m!4685475 () Bool)

(assert (=> d!1211330 m!4685475))

(declare-fun m!4685477 () Bool)

(assert (=> d!1211330 m!4685477))

(declare-fun m!4685479 () Bool)

(assert (=> d!1211330 m!4685479))

(declare-fun m!4685481 () Bool)

(assert (=> d!1211330 m!4685481))

(assert (=> b!4077322 m!4685455))

(declare-fun m!4685483 () Bool)

(assert (=> b!4077322 m!4685483))

(assert (=> b!4077321 m!4685455))

(declare-fun m!4685485 () Bool)

(assert (=> b!4077321 m!4685485))

(assert (=> b!4077321 m!4685469))

(declare-fun m!4685487 () Bool)

(assert (=> b!4077323 m!4685487))

(declare-fun m!4685489 () Bool)

(assert (=> b!4077323 m!4685489))

(declare-fun m!4685491 () Bool)

(assert (=> b!4077323 m!4685491))

(assert (=> b!4077323 m!4685467))

(assert (=> b!4077323 m!4685469))

(assert (=> b!4077323 m!4685471))

(assert (=> b!4077323 m!4685489))

(declare-fun m!4685493 () Bool)

(assert (=> b!4077323 m!4685493))

(assert (=> b!4077323 m!4685467))

(assert (=> b!4077323 m!4685489))

(declare-fun m!4685495 () Bool)

(assert (=> b!4077323 m!4685495))

(assert (=> b!4077323 m!4685489))

(assert (=> b!4077323 m!4685469))

(declare-fun m!4685497 () Bool)

(assert (=> b!4077323 m!4685497))

(assert (=> b!4077324 m!4685455))

(assert (=> b!4077324 m!4685461))

(assert (=> b!4077324 m!4685461))

(assert (=> b!4077324 m!4685463))

(assert (=> b!4077324 m!4685463))

(declare-fun m!4685499 () Bool)

(assert (=> b!4077324 m!4685499))

(assert (=> b!4077204 d!1211330))

(declare-fun d!1211354 () Bool)

(declare-fun res!1665472 () Bool)

(declare-fun e!2530676 () Bool)

(assert (=> d!1211354 (=> (not res!1665472) (not e!2530676))))

(declare-fun rulesValid!2744 (LexerInterface!6623 List!43771) Bool)

(assert (=> d!1211354 (= res!1665472 (rulesValid!2744 thiss!26199 (t!337434 rules!3870)))))

(assert (=> d!1211354 (= (rulesInvariant!5966 thiss!26199 (t!337434 rules!3870)) e!2530676)))

(declare-fun b!4077345 () Bool)

(declare-datatypes ((List!43773 0))(
  ( (Nil!43649) (Cons!43649 (h!49069 String!50070) (t!337460 List!43773)) )
))
(declare-fun noDuplicateTag!2745 (LexerInterface!6623 List!43771 List!43773) Bool)

(assert (=> b!4077345 (= e!2530676 (noDuplicateTag!2745 thiss!26199 (t!337434 rules!3870) Nil!43649))))

(assert (= (and d!1211354 res!1665472) b!4077345))

(declare-fun m!4685501 () Bool)

(assert (=> d!1211354 m!4685501))

(declare-fun m!4685503 () Bool)

(assert (=> b!4077345 m!4685503))

(assert (=> b!4077204 d!1211354))

(declare-fun d!1211356 () Bool)

(assert (=> d!1211356 (rulesInvariant!5966 thiss!26199 (t!337434 rules!3870))))

(declare-fun lt!1458965 () Unit!63187)

(declare-fun choose!24890 (LexerInterface!6623 Rule!13868 List!43771) Unit!63187)

(assert (=> d!1211356 (= lt!1458965 (choose!24890 thiss!26199 (h!49067 rules!3870) (t!337434 rules!3870)))))

(assert (=> d!1211356 (rulesInvariant!5966 thiss!26199 (Cons!43647 (h!49067 rules!3870) (t!337434 rules!3870)))))

(assert (=> d!1211356 (= (lemmaInvariantOnRulesThenOnTail!752 thiss!26199 (h!49067 rules!3870) (t!337434 rules!3870)) lt!1458965)))

(declare-fun bs!592776 () Bool)

(assert (= bs!592776 d!1211356))

(assert (=> bs!592776 m!4685389))

(declare-fun m!4685541 () Bool)

(assert (=> bs!592776 m!4685541))

(declare-fun m!4685543 () Bool)

(assert (=> bs!592776 m!4685543))

(assert (=> b!4077204 d!1211356))

(declare-fun b!4077385 () Bool)

(declare-fun res!1665498 () Bool)

(declare-fun e!2530701 () Bool)

(assert (=> b!4077385 (=> res!1665498 e!2530701)))

(assert (=> b!4077385 (= res!1665498 (not ((_ is ElementMatch!11939) (regex!7034 r!4213))))))

(declare-fun e!2530703 () Bool)

(assert (=> b!4077385 (= e!2530703 e!2530701)))

(declare-fun b!4077386 () Bool)

(declare-fun e!2530698 () Bool)

(declare-fun nullable!4202 (Regex!11939) Bool)

(assert (=> b!4077386 (= e!2530698 (nullable!4202 (regex!7034 r!4213)))))

(declare-fun bm!288513 () Bool)

(declare-fun call!288518 () Bool)

(assert (=> bm!288513 (= call!288518 (isEmpty!26069 p!2988))))

(declare-fun b!4077387 () Bool)

(declare-fun res!1665500 () Bool)

(assert (=> b!4077387 (=> res!1665500 e!2530701)))

(declare-fun e!2530697 () Bool)

(assert (=> b!4077387 (= res!1665500 e!2530697)))

(declare-fun res!1665501 () Bool)

(assert (=> b!4077387 (=> (not res!1665501) (not e!2530697))))

(declare-fun lt!1458971 () Bool)

(assert (=> b!4077387 (= res!1665501 lt!1458971)))

(declare-fun b!4077388 () Bool)

(declare-fun res!1665505 () Bool)

(assert (=> b!4077388 (=> (not res!1665505) (not e!2530697))))

(assert (=> b!4077388 (= res!1665505 (not call!288518))))

(declare-fun b!4077389 () Bool)

(declare-fun e!2530702 () Bool)

(declare-fun e!2530700 () Bool)

(assert (=> b!4077389 (= e!2530702 e!2530700)))

(declare-fun res!1665499 () Bool)

(assert (=> b!4077389 (=> res!1665499 e!2530700)))

(assert (=> b!4077389 (= res!1665499 call!288518)))

(declare-fun b!4077391 () Bool)

(declare-fun head!8613 (List!43770) C!24064)

(assert (=> b!4077391 (= e!2530697 (= (head!8613 p!2988) (c!703312 (regex!7034 r!4213))))))

(declare-fun b!4077392 () Bool)

(assert (=> b!4077392 (= e!2530700 (not (= (head!8613 p!2988) (c!703312 (regex!7034 r!4213)))))))

(declare-fun b!4077393 () Bool)

(declare-fun derivativeStep!3603 (Regex!11939 C!24064) Regex!11939)

(declare-fun tail!6347 (List!43770) List!43770)

(assert (=> b!4077393 (= e!2530698 (matchR!5884 (derivativeStep!3603 (regex!7034 r!4213) (head!8613 p!2988)) (tail!6347 p!2988)))))

(declare-fun b!4077394 () Bool)

(assert (=> b!4077394 (= e!2530703 (not lt!1458971))))

(declare-fun b!4077395 () Bool)

(declare-fun e!2530699 () Bool)

(assert (=> b!4077395 (= e!2530699 (= lt!1458971 call!288518))))

(declare-fun b!4077396 () Bool)

(assert (=> b!4077396 (= e!2530699 e!2530703)))

(declare-fun c!703341 () Bool)

(assert (=> b!4077396 (= c!703341 ((_ is EmptyLang!11939) (regex!7034 r!4213)))))

(declare-fun b!4077397 () Bool)

(declare-fun res!1665502 () Bool)

(assert (=> b!4077397 (=> (not res!1665502) (not e!2530697))))

(assert (=> b!4077397 (= res!1665502 (isEmpty!26069 (tail!6347 p!2988)))))

(declare-fun b!4077398 () Bool)

(declare-fun res!1665504 () Bool)

(assert (=> b!4077398 (=> res!1665504 e!2530700)))

(assert (=> b!4077398 (= res!1665504 (not (isEmpty!26069 (tail!6347 p!2988))))))

(declare-fun b!4077390 () Bool)

(assert (=> b!4077390 (= e!2530701 e!2530702)))

(declare-fun res!1665503 () Bool)

(assert (=> b!4077390 (=> (not res!1665503) (not e!2530702))))

(assert (=> b!4077390 (= res!1665503 (not lt!1458971))))

(declare-fun d!1211358 () Bool)

(assert (=> d!1211358 e!2530699))

(declare-fun c!703343 () Bool)

(assert (=> d!1211358 (= c!703343 ((_ is EmptyExpr!11939) (regex!7034 r!4213)))))

(assert (=> d!1211358 (= lt!1458971 e!2530698)))

(declare-fun c!703342 () Bool)

(assert (=> d!1211358 (= c!703342 (isEmpty!26069 p!2988))))

(declare-fun validRegex!5402 (Regex!11939) Bool)

(assert (=> d!1211358 (validRegex!5402 (regex!7034 r!4213))))

(assert (=> d!1211358 (= (matchR!5884 (regex!7034 r!4213) p!2988) lt!1458971)))

(assert (= (and d!1211358 c!703342) b!4077386))

(assert (= (and d!1211358 (not c!703342)) b!4077393))

(assert (= (and d!1211358 c!703343) b!4077395))

(assert (= (and d!1211358 (not c!703343)) b!4077396))

(assert (= (and b!4077396 c!703341) b!4077394))

(assert (= (and b!4077396 (not c!703341)) b!4077385))

(assert (= (and b!4077385 (not res!1665498)) b!4077387))

(assert (= (and b!4077387 res!1665501) b!4077388))

(assert (= (and b!4077388 res!1665505) b!4077397))

(assert (= (and b!4077397 res!1665502) b!4077391))

(assert (= (and b!4077387 (not res!1665500)) b!4077390))

(assert (= (and b!4077390 res!1665503) b!4077389))

(assert (= (and b!4077389 (not res!1665499)) b!4077398))

(assert (= (and b!4077398 (not res!1665504)) b!4077392))

(assert (= (or b!4077395 b!4077388 b!4077389) bm!288513))

(declare-fun m!4685567 () Bool)

(assert (=> b!4077393 m!4685567))

(assert (=> b!4077393 m!4685567))

(declare-fun m!4685569 () Bool)

(assert (=> b!4077393 m!4685569))

(declare-fun m!4685571 () Bool)

(assert (=> b!4077393 m!4685571))

(assert (=> b!4077393 m!4685569))

(assert (=> b!4077393 m!4685571))

(declare-fun m!4685573 () Bool)

(assert (=> b!4077393 m!4685573))

(declare-fun m!4685575 () Bool)

(assert (=> b!4077386 m!4685575))

(assert (=> bm!288513 m!4685355))

(assert (=> b!4077392 m!4685567))

(assert (=> b!4077398 m!4685571))

(assert (=> b!4077398 m!4685571))

(declare-fun m!4685577 () Bool)

(assert (=> b!4077398 m!4685577))

(assert (=> d!1211358 m!4685355))

(declare-fun m!4685579 () Bool)

(assert (=> d!1211358 m!4685579))

(assert (=> b!4077391 m!4685567))

(assert (=> b!4077397 m!4685571))

(assert (=> b!4077397 m!4685571))

(assert (=> b!4077397 m!4685577))

(assert (=> b!4077193 d!1211358))

(declare-fun d!1211370 () Bool)

(declare-fun res!1665510 () Bool)

(declare-fun e!2530708 () Bool)

(assert (=> d!1211370 (=> (not res!1665510) (not e!2530708))))

(assert (=> d!1211370 (= res!1665510 (validRegex!5402 (regex!7034 r!4213)))))

(assert (=> d!1211370 (= (ruleValid!2958 thiss!26199 r!4213) e!2530708)))

(declare-fun b!4077407 () Bool)

(declare-fun res!1665511 () Bool)

(assert (=> b!4077407 (=> (not res!1665511) (not e!2530708))))

(assert (=> b!4077407 (= res!1665511 (not (nullable!4202 (regex!7034 r!4213))))))

(declare-fun b!4077408 () Bool)

(assert (=> b!4077408 (= e!2530708 (not (= (tag!7894 r!4213) (String!50071 ""))))))

(assert (= (and d!1211370 res!1665510) b!4077407))

(assert (= (and b!4077407 res!1665511) b!4077408))

(assert (=> d!1211370 m!4685579))

(assert (=> b!4077407 m!4685575))

(assert (=> b!4077193 d!1211370))

(declare-fun d!1211372 () Bool)

(assert (=> d!1211372 (ruleValid!2958 thiss!26199 r!4213)))

(declare-fun lt!1458984 () Unit!63187)

(declare-fun choose!24892 (LexerInterface!6623 Rule!13868 List!43771) Unit!63187)

(assert (=> d!1211372 (= lt!1458984 (choose!24892 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1211372 (contains!8703 rules!3870 r!4213)))

(assert (=> d!1211372 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2026 thiss!26199 r!4213 rules!3870) lt!1458984)))

(declare-fun bs!592778 () Bool)

(assert (= bs!592778 d!1211372))

(assert (=> bs!592778 m!4685379))

(declare-fun m!4685581 () Bool)

(assert (=> bs!592778 m!4685581))

(assert (=> bs!592778 m!4685383))

(assert (=> b!4077193 d!1211372))

(declare-fun b!4077456 () Bool)

(declare-fun res!1665551 () Bool)

(declare-fun e!2530725 () Bool)

(assert (=> b!4077456 (=> (not res!1665551) (not e!2530725))))

(declare-fun lt!1459009 () Option!9442)

(assert (=> b!4077456 (= res!1665551 (= (list!16233 (charsOf!4817 (_1!24443 (get!14311 lt!1459009)))) (originalCharacters!7628 (_1!24443 (get!14311 lt!1459009)))))))

(declare-fun b!4077457 () Bool)

(declare-fun e!2530726 () Option!9442)

(declare-fun lt!1459008 () Option!9442)

(declare-fun lt!1459007 () Option!9442)

(assert (=> b!4077457 (= e!2530726 (ite (and ((_ is None!9441) lt!1459008) ((_ is None!9441) lt!1459007)) None!9441 (ite ((_ is None!9441) lt!1459007) lt!1459008 (ite ((_ is None!9441) lt!1459008) lt!1459007 (ite (>= (size!32603 (_1!24443 (v!39889 lt!1459008))) (size!32603 (_1!24443 (v!39889 lt!1459007)))) lt!1459008 lt!1459007)))))))

(declare-fun call!288524 () Option!9442)

(assert (=> b!4077457 (= lt!1459008 call!288524)))

(assert (=> b!4077457 (= lt!1459007 (maxPrefix!3915 thiss!26199 (t!337434 rules!3870) input!3411))))

(declare-fun bm!288519 () Bool)

(assert (=> bm!288519 (= call!288524 (maxPrefixOneRule!2909 thiss!26199 (h!49067 rules!3870) input!3411))))

(declare-fun d!1211374 () Bool)

(declare-fun e!2530727 () Bool)

(assert (=> d!1211374 e!2530727))

(declare-fun res!1665553 () Bool)

(assert (=> d!1211374 (=> res!1665553 e!2530727)))

(assert (=> d!1211374 (= res!1665553 (isEmpty!26071 lt!1459009))))

(assert (=> d!1211374 (= lt!1459009 e!2530726)))

(declare-fun c!703353 () Bool)

(assert (=> d!1211374 (= c!703353 (and ((_ is Cons!43647) rules!3870) ((_ is Nil!43647) (t!337434 rules!3870))))))

(declare-fun lt!1459006 () Unit!63187)

(declare-fun lt!1459005 () Unit!63187)

(assert (=> d!1211374 (= lt!1459006 lt!1459005)))

(declare-fun isPrefix!4105 (List!43770 List!43770) Bool)

(assert (=> d!1211374 (isPrefix!4105 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2656 (List!43770 List!43770) Unit!63187)

(assert (=> d!1211374 (= lt!1459005 (lemmaIsPrefixRefl!2656 input!3411 input!3411))))

(declare-fun rulesValidInductive!2585 (LexerInterface!6623 List!43771) Bool)

(assert (=> d!1211374 (rulesValidInductive!2585 thiss!26199 rules!3870)))

(assert (=> d!1211374 (= (maxPrefix!3915 thiss!26199 rules!3870 input!3411) lt!1459009)))

(declare-fun b!4077458 () Bool)

(declare-fun res!1665550 () Bool)

(assert (=> b!4077458 (=> (not res!1665550) (not e!2530725))))

(assert (=> b!4077458 (= res!1665550 (matchR!5884 (regex!7034 (rule!10142 (_1!24443 (get!14311 lt!1459009)))) (list!16233 (charsOf!4817 (_1!24443 (get!14311 lt!1459009))))))))

(declare-fun b!4077459 () Bool)

(assert (=> b!4077459 (= e!2530726 call!288524)))

(declare-fun b!4077460 () Bool)

(assert (=> b!4077460 (= e!2530725 (contains!8703 rules!3870 (rule!10142 (_1!24443 (get!14311 lt!1459009)))))))

(declare-fun b!4077461 () Bool)

(declare-fun res!1665552 () Bool)

(assert (=> b!4077461 (=> (not res!1665552) (not e!2530725))))

(assert (=> b!4077461 (= res!1665552 (= (value!221121 (_1!24443 (get!14311 lt!1459009))) (apply!10217 (transformation!7034 (rule!10142 (_1!24443 (get!14311 lt!1459009)))) (seqFromList!5251 (originalCharacters!7628 (_1!24443 (get!14311 lt!1459009)))))))))

(declare-fun b!4077462 () Bool)

(declare-fun res!1665549 () Bool)

(assert (=> b!4077462 (=> (not res!1665549) (not e!2530725))))

(assert (=> b!4077462 (= res!1665549 (< (size!32604 (_2!24443 (get!14311 lt!1459009))) (size!32604 input!3411)))))

(declare-fun b!4077463 () Bool)

(declare-fun res!1665547 () Bool)

(assert (=> b!4077463 (=> (not res!1665547) (not e!2530725))))

(assert (=> b!4077463 (= res!1665547 (= (++!11440 (list!16233 (charsOf!4817 (_1!24443 (get!14311 lt!1459009)))) (_2!24443 (get!14311 lt!1459009))) input!3411))))

(declare-fun b!4077464 () Bool)

(assert (=> b!4077464 (= e!2530727 e!2530725)))

(declare-fun res!1665548 () Bool)

(assert (=> b!4077464 (=> (not res!1665548) (not e!2530725))))

(assert (=> b!4077464 (= res!1665548 (isDefined!7154 lt!1459009))))

(assert (= (and d!1211374 c!703353) b!4077459))

(assert (= (and d!1211374 (not c!703353)) b!4077457))

(assert (= (or b!4077459 b!4077457) bm!288519))

(assert (= (and d!1211374 (not res!1665553)) b!4077464))

(assert (= (and b!4077464 res!1665548) b!4077456))

(assert (= (and b!4077456 res!1665551) b!4077462))

(assert (= (and b!4077462 res!1665549) b!4077463))

(assert (= (and b!4077463 res!1665547) b!4077461))

(assert (= (and b!4077461 res!1665552) b!4077458))

(assert (= (and b!4077458 res!1665550) b!4077460))

(declare-fun m!4685617 () Bool)

(assert (=> b!4077458 m!4685617))

(declare-fun m!4685619 () Bool)

(assert (=> b!4077458 m!4685619))

(assert (=> b!4077458 m!4685619))

(declare-fun m!4685621 () Bool)

(assert (=> b!4077458 m!4685621))

(assert (=> b!4077458 m!4685621))

(declare-fun m!4685623 () Bool)

(assert (=> b!4077458 m!4685623))

(assert (=> b!4077463 m!4685617))

(assert (=> b!4077463 m!4685619))

(assert (=> b!4077463 m!4685619))

(assert (=> b!4077463 m!4685621))

(assert (=> b!4077463 m!4685621))

(declare-fun m!4685625 () Bool)

(assert (=> b!4077463 m!4685625))

(declare-fun m!4685627 () Bool)

(assert (=> b!4077457 m!4685627))

(declare-fun m!4685629 () Bool)

(assert (=> d!1211374 m!4685629))

(declare-fun m!4685631 () Bool)

(assert (=> d!1211374 m!4685631))

(declare-fun m!4685633 () Bool)

(assert (=> d!1211374 m!4685633))

(declare-fun m!4685635 () Bool)

(assert (=> d!1211374 m!4685635))

(assert (=> bm!288519 m!4685387))

(declare-fun m!4685637 () Bool)

(assert (=> b!4077464 m!4685637))

(assert (=> b!4077461 m!4685617))

(declare-fun m!4685639 () Bool)

(assert (=> b!4077461 m!4685639))

(assert (=> b!4077461 m!4685639))

(declare-fun m!4685641 () Bool)

(assert (=> b!4077461 m!4685641))

(assert (=> b!4077462 m!4685617))

(declare-fun m!4685643 () Bool)

(assert (=> b!4077462 m!4685643))

(assert (=> b!4077462 m!4685469))

(assert (=> b!4077456 m!4685617))

(assert (=> b!4077456 m!4685619))

(assert (=> b!4077456 m!4685619))

(assert (=> b!4077456 m!4685621))

(assert (=> b!4077460 m!4685617))

(declare-fun m!4685645 () Bool)

(assert (=> b!4077460 m!4685645))

(assert (=> b!4077203 d!1211374))

(declare-fun d!1211382 () Bool)

(declare-fun lt!1459012 () Int)

(assert (=> d!1211382 (>= lt!1459012 0)))

(declare-fun e!2530730 () Int)

(assert (=> d!1211382 (= lt!1459012 e!2530730)))

(declare-fun c!703356 () Bool)

(assert (=> d!1211382 (= c!703356 ((_ is Nil!43646) p!2988))))

(assert (=> d!1211382 (= (size!32604 p!2988) lt!1459012)))

(declare-fun b!4077469 () Bool)

(assert (=> b!4077469 (= e!2530730 0)))

(declare-fun b!4077470 () Bool)

(assert (=> b!4077470 (= e!2530730 (+ 1 (size!32604 (t!337433 p!2988))))))

(assert (= (and d!1211382 c!703356) b!4077469))

(assert (= (and d!1211382 (not c!703356)) b!4077470))

(declare-fun m!4685647 () Bool)

(assert (=> b!4077470 m!4685647))

(assert (=> b!4077203 d!1211382))

(declare-fun d!1211384 () Bool)

(declare-fun fromListB!2396 (List!43770) BalanceConc!26084)

(assert (=> d!1211384 (= (seqFromList!5251 p!2988) (fromListB!2396 p!2988))))

(declare-fun bs!592780 () Bool)

(assert (= bs!592780 d!1211384))

(declare-fun m!4685649 () Bool)

(assert (=> bs!592780 m!4685649))

(assert (=> b!4077203 d!1211384))

(declare-fun d!1211386 () Bool)

(declare-fun dynLambda!18556 (Int BalanceConc!26084) TokenValue!7264)

(assert (=> d!1211386 (= (apply!10217 (transformation!7034 r!4213) lt!1458915) (dynLambda!18556 (toValue!9602 (transformation!7034 r!4213)) lt!1458915))))

(declare-fun b_lambda!119143 () Bool)

(assert (=> (not b_lambda!119143) (not d!1211386)))

(declare-fun t!337436 () Bool)

(declare-fun tb!244889 () Bool)

(assert (=> (and b!4077206 (= (toValue!9602 (transformation!7034 (h!49067 rules!3870))) (toValue!9602 (transformation!7034 r!4213))) t!337436) tb!244889))

(declare-fun result!296958 () Bool)

(declare-fun inv!21 (TokenValue!7264) Bool)

(assert (=> tb!244889 (= result!296958 (inv!21 (dynLambda!18556 (toValue!9602 (transformation!7034 r!4213)) lt!1458915)))))

(declare-fun m!4685651 () Bool)

(assert (=> tb!244889 m!4685651))

(assert (=> d!1211386 t!337436))

(declare-fun b_and!313515 () Bool)

(assert (= b_and!313507 (and (=> t!337436 result!296958) b_and!313515)))

(declare-fun t!337438 () Bool)

(declare-fun tb!244891 () Bool)

(assert (=> (and b!4077194 (= (toValue!9602 (transformation!7034 r!4213)) (toValue!9602 (transformation!7034 r!4213))) t!337438) tb!244891))

(declare-fun result!296962 () Bool)

(assert (= result!296962 result!296958))

(assert (=> d!1211386 t!337438))

(declare-fun b_and!313517 () Bool)

(assert (= b_and!313511 (and (=> t!337438 result!296962) b_and!313517)))

(declare-fun m!4685653 () Bool)

(assert (=> d!1211386 m!4685653))

(assert (=> b!4077203 d!1211386))

(declare-fun b!4077525 () Bool)

(declare-fun e!2530766 () Bool)

(assert (=> b!4077525 (= e!2530766 true)))

(declare-fun d!1211388 () Bool)

(assert (=> d!1211388 e!2530766))

(assert (= d!1211388 b!4077525))

(declare-fun order!22819 () Int)

(declare-fun order!22817 () Int)

(declare-fun lambda!127717 () Int)

(declare-fun dynLambda!18557 (Int Int) Int)

(declare-fun dynLambda!18558 (Int Int) Int)

(assert (=> b!4077525 (< (dynLambda!18557 order!22817 (toValue!9602 (transformation!7034 r!4213))) (dynLambda!18558 order!22819 lambda!127717))))

(declare-fun order!22821 () Int)

(declare-fun dynLambda!18559 (Int Int) Int)

(assert (=> b!4077525 (< (dynLambda!18559 order!22821 (toChars!9461 (transformation!7034 r!4213))) (dynLambda!18558 order!22819 lambda!127717))))

(declare-fun dynLambda!18560 (Int TokenValue!7264) BalanceConc!26084)

(assert (=> d!1211388 (= (list!16233 (dynLambda!18560 (toChars!9461 (transformation!7034 r!4213)) (dynLambda!18556 (toValue!9602 (transformation!7034 r!4213)) lt!1458915))) (list!16233 lt!1458915))))

(declare-fun lt!1459016 () Unit!63187)

(declare-fun ForallOf!849 (Int BalanceConc!26084) Unit!63187)

(assert (=> d!1211388 (= lt!1459016 (ForallOf!849 lambda!127717 lt!1458915))))

(assert (=> d!1211388 (= (lemmaSemiInverse!2001 (transformation!7034 r!4213) lt!1458915) lt!1459016)))

(declare-fun b_lambda!119157 () Bool)

(assert (=> (not b_lambda!119157) (not d!1211388)))

(declare-fun t!337452 () Bool)

(declare-fun tb!244905 () Bool)

(assert (=> (and b!4077206 (= (toChars!9461 (transformation!7034 (h!49067 rules!3870))) (toChars!9461 (transformation!7034 r!4213))) t!337452) tb!244905))

(declare-fun tp!1234309 () Bool)

(declare-fun b!4077530 () Bool)

(declare-fun e!2530769 () Bool)

(declare-fun inv!58304 (Conc!13245) Bool)

(assert (=> b!4077530 (= e!2530769 (and (inv!58304 (c!703313 (dynLambda!18560 (toChars!9461 (transformation!7034 r!4213)) (dynLambda!18556 (toValue!9602 (transformation!7034 r!4213)) lt!1458915)))) tp!1234309))))

(declare-fun result!296986 () Bool)

(declare-fun inv!58305 (BalanceConc!26084) Bool)

(assert (=> tb!244905 (= result!296986 (and (inv!58305 (dynLambda!18560 (toChars!9461 (transformation!7034 r!4213)) (dynLambda!18556 (toValue!9602 (transformation!7034 r!4213)) lt!1458915))) e!2530769))))

(assert (= tb!244905 b!4077530))

(declare-fun m!4685675 () Bool)

(assert (=> b!4077530 m!4685675))

(declare-fun m!4685677 () Bool)

(assert (=> tb!244905 m!4685677))

(assert (=> d!1211388 t!337452))

(declare-fun b_and!313535 () Bool)

(assert (= b_and!313509 (and (=> t!337452 result!296986) b_and!313535)))

(declare-fun t!337454 () Bool)

(declare-fun tb!244907 () Bool)

(assert (=> (and b!4077194 (= (toChars!9461 (transformation!7034 r!4213)) (toChars!9461 (transformation!7034 r!4213))) t!337454) tb!244907))

(declare-fun result!296990 () Bool)

(assert (= result!296990 result!296986))

(assert (=> d!1211388 t!337454))

(declare-fun b_and!313537 () Bool)

(assert (= b_and!313513 (and (=> t!337454 result!296990) b_and!313537)))

(declare-fun b_lambda!119159 () Bool)

(assert (=> (not b_lambda!119159) (not d!1211388)))

(assert (=> d!1211388 t!337436))

(declare-fun b_and!313539 () Bool)

(assert (= b_and!313515 (and (=> t!337436 result!296958) b_and!313539)))

(assert (=> d!1211388 t!337438))

(declare-fun b_and!313541 () Bool)

(assert (= b_and!313517 (and (=> t!337438 result!296962) b_and!313541)))

(declare-fun m!4685679 () Bool)

(assert (=> d!1211388 m!4685679))

(declare-fun m!4685681 () Bool)

(assert (=> d!1211388 m!4685681))

(assert (=> d!1211388 m!4685653))

(declare-fun m!4685683 () Bool)

(assert (=> d!1211388 m!4685683))

(declare-fun m!4685685 () Bool)

(assert (=> d!1211388 m!4685685))

(assert (=> d!1211388 m!4685653))

(assert (=> d!1211388 m!4685683))

(assert (=> b!4077203 d!1211388))

(declare-fun d!1211396 () Bool)

(declare-fun res!1665554 () Bool)

(declare-fun e!2530770 () Bool)

(assert (=> d!1211396 (=> (not res!1665554) (not e!2530770))))

(assert (=> d!1211396 (= res!1665554 (rulesValid!2744 thiss!26199 rules!3870))))

(assert (=> d!1211396 (= (rulesInvariant!5966 thiss!26199 rules!3870) e!2530770)))

(declare-fun b!4077531 () Bool)

(assert (=> b!4077531 (= e!2530770 (noDuplicateTag!2745 thiss!26199 rules!3870 Nil!43649))))

(assert (= (and d!1211396 res!1665554) b!4077531))

(declare-fun m!4685687 () Bool)

(assert (=> d!1211396 m!4685687))

(declare-fun m!4685689 () Bool)

(assert (=> b!4077531 m!4685689))

(assert (=> b!4077192 d!1211396))

(declare-fun d!1211398 () Bool)

(assert (=> d!1211398 (= (isDefined!7154 lt!1458914) (not (isEmpty!26071 lt!1458914)))))

(declare-fun bs!592782 () Bool)

(assert (= bs!592782 d!1211398))

(assert (=> bs!592782 m!4685385))

(assert (=> b!4077201 d!1211398))

(declare-fun d!1211400 () Bool)

(declare-fun lt!1459019 () Bool)

(declare-fun content!6683 (List!43771) (InoxSet Rule!13868))

(assert (=> d!1211400 (= lt!1459019 (select (content!6683 rules!3870) r!4213))))

(declare-fun e!2530775 () Bool)

(assert (=> d!1211400 (= lt!1459019 e!2530775)))

(declare-fun res!1665560 () Bool)

(assert (=> d!1211400 (=> (not res!1665560) (not e!2530775))))

(assert (=> d!1211400 (= res!1665560 ((_ is Cons!43647) rules!3870))))

(assert (=> d!1211400 (= (contains!8703 rules!3870 r!4213) lt!1459019)))

(declare-fun b!4077536 () Bool)

(declare-fun e!2530776 () Bool)

(assert (=> b!4077536 (= e!2530775 e!2530776)))

(declare-fun res!1665559 () Bool)

(assert (=> b!4077536 (=> res!1665559 e!2530776)))

(assert (=> b!4077536 (= res!1665559 (= (h!49067 rules!3870) r!4213))))

(declare-fun b!4077537 () Bool)

(assert (=> b!4077537 (= e!2530776 (contains!8703 (t!337434 rules!3870) r!4213))))

(assert (= (and d!1211400 res!1665560) b!4077536))

(assert (= (and b!4077536 (not res!1665559)) b!4077537))

(declare-fun m!4685691 () Bool)

(assert (=> d!1211400 m!4685691))

(declare-fun m!4685693 () Bool)

(assert (=> d!1211400 m!4685693))

(declare-fun m!4685695 () Bool)

(assert (=> b!4077537 m!4685695))

(assert (=> b!4077200 d!1211400))

(declare-fun d!1211402 () Bool)

(assert (=> d!1211402 (= (inv!58299 (tag!7894 (h!49067 rules!3870))) (= (mod (str.len (value!221120 (tag!7894 (h!49067 rules!3870)))) 2) 0))))

(assert (=> b!4077199 d!1211402))

(declare-fun d!1211404 () Bool)

(declare-fun res!1665561 () Bool)

(declare-fun e!2530777 () Bool)

(assert (=> d!1211404 (=> (not res!1665561) (not e!2530777))))

(assert (=> d!1211404 (= res!1665561 (semiInverseModEq!3010 (toChars!9461 (transformation!7034 (h!49067 rules!3870))) (toValue!9602 (transformation!7034 (h!49067 rules!3870)))))))

(assert (=> d!1211404 (= (inv!58301 (transformation!7034 (h!49067 rules!3870))) e!2530777)))

(declare-fun b!4077538 () Bool)

(assert (=> b!4077538 (= e!2530777 (equivClasses!2909 (toChars!9461 (transformation!7034 (h!49067 rules!3870))) (toValue!9602 (transformation!7034 (h!49067 rules!3870)))))))

(assert (= (and d!1211404 res!1665561) b!4077538))

(declare-fun m!4685697 () Bool)

(assert (=> d!1211404 m!4685697))

(declare-fun m!4685699 () Bool)

(assert (=> b!4077538 m!4685699))

(assert (=> b!4077199 d!1211404))

(declare-fun d!1211406 () Bool)

(assert (=> d!1211406 (= (isEmpty!26070 rules!3870) ((_ is Nil!43647) rules!3870))))

(assert (=> b!4077198 d!1211406))

(declare-fun b!4077543 () Bool)

(declare-fun e!2530780 () Bool)

(declare-fun tp!1234312 () Bool)

(assert (=> b!4077543 (= e!2530780 (and tp_is_empty!20881 tp!1234312))))

(assert (=> b!4077197 (= tp!1234261 e!2530780)))

(assert (= (and b!4077197 ((_ is Cons!43646) (t!337433 p!2988))) b!4077543))

(declare-fun b!4077544 () Bool)

(declare-fun e!2530781 () Bool)

(declare-fun tp!1234313 () Bool)

(assert (=> b!4077544 (= e!2530781 (and tp_is_empty!20881 tp!1234313))))

(assert (=> b!4077202 (= tp!1234257 e!2530781)))

(assert (= (and b!4077202 ((_ is Cons!43646) (t!337433 input!3411))) b!4077544))

(declare-fun e!2530784 () Bool)

(assert (=> b!4077196 (= tp!1234266 e!2530784)))

(declare-fun b!4077556 () Bool)

(declare-fun tp!1234326 () Bool)

(declare-fun tp!1234324 () Bool)

(assert (=> b!4077556 (= e!2530784 (and tp!1234326 tp!1234324))))

(declare-fun b!4077557 () Bool)

(declare-fun tp!1234328 () Bool)

(assert (=> b!4077557 (= e!2530784 tp!1234328)))

(declare-fun b!4077558 () Bool)

(declare-fun tp!1234327 () Bool)

(declare-fun tp!1234325 () Bool)

(assert (=> b!4077558 (= e!2530784 (and tp!1234327 tp!1234325))))

(declare-fun b!4077555 () Bool)

(assert (=> b!4077555 (= e!2530784 tp_is_empty!20881)))

(assert (= (and b!4077196 ((_ is ElementMatch!11939) (regex!7034 r!4213))) b!4077555))

(assert (= (and b!4077196 ((_ is Concat!19204) (regex!7034 r!4213))) b!4077556))

(assert (= (and b!4077196 ((_ is Star!11939) (regex!7034 r!4213))) b!4077557))

(assert (= (and b!4077196 ((_ is Union!11939) (regex!7034 r!4213))) b!4077558))

(declare-fun b!4077569 () Bool)

(declare-fun b_free!113693 () Bool)

(declare-fun b_next!114397 () Bool)

(assert (=> b!4077569 (= b_free!113693 (not b_next!114397))))

(declare-fun t!337456 () Bool)

(declare-fun tb!244909 () Bool)

(assert (=> (and b!4077569 (= (toValue!9602 (transformation!7034 (h!49067 (t!337434 rules!3870)))) (toValue!9602 (transformation!7034 r!4213))) t!337456) tb!244909))

(declare-fun result!296998 () Bool)

(assert (= result!296998 result!296958))

(assert (=> d!1211386 t!337456))

(assert (=> d!1211388 t!337456))

(declare-fun b_and!313543 () Bool)

(declare-fun tp!1234340 () Bool)

(assert (=> b!4077569 (= tp!1234340 (and (=> t!337456 result!296998) b_and!313543))))

(declare-fun b_free!113695 () Bool)

(declare-fun b_next!114399 () Bool)

(assert (=> b!4077569 (= b_free!113695 (not b_next!114399))))

(declare-fun t!337458 () Bool)

(declare-fun tb!244911 () Bool)

(assert (=> (and b!4077569 (= (toChars!9461 (transformation!7034 (h!49067 (t!337434 rules!3870)))) (toChars!9461 (transformation!7034 r!4213))) t!337458) tb!244911))

(declare-fun result!297000 () Bool)

(assert (= result!297000 result!296986))

(assert (=> d!1211388 t!337458))

(declare-fun b_and!313545 () Bool)

(declare-fun tp!1234339 () Bool)

(assert (=> b!4077569 (= tp!1234339 (and (=> t!337458 result!297000) b_and!313545))))

(declare-fun e!2530795 () Bool)

(assert (=> b!4077569 (= e!2530795 (and tp!1234340 tp!1234339))))

(declare-fun tp!1234338 () Bool)

(declare-fun e!2530793 () Bool)

(declare-fun b!4077568 () Bool)

(assert (=> b!4077568 (= e!2530793 (and tp!1234338 (inv!58299 (tag!7894 (h!49067 (t!337434 rules!3870)))) (inv!58301 (transformation!7034 (h!49067 (t!337434 rules!3870)))) e!2530795))))

(declare-fun b!4077567 () Bool)

(declare-fun e!2530794 () Bool)

(declare-fun tp!1234337 () Bool)

(assert (=> b!4077567 (= e!2530794 (and e!2530793 tp!1234337))))

(assert (=> b!4077205 (= tp!1234259 e!2530794)))

(assert (= b!4077568 b!4077569))

(assert (= b!4077567 b!4077568))

(assert (= (and b!4077205 ((_ is Cons!43647) (t!337434 rules!3870))) b!4077567))

(declare-fun m!4685701 () Bool)

(assert (=> b!4077568 m!4685701))

(declare-fun m!4685703 () Bool)

(assert (=> b!4077568 m!4685703))

(declare-fun e!2530797 () Bool)

(assert (=> b!4077199 (= tp!1234263 e!2530797)))

(declare-fun b!4077571 () Bool)

(declare-fun tp!1234343 () Bool)

(declare-fun tp!1234341 () Bool)

(assert (=> b!4077571 (= e!2530797 (and tp!1234343 tp!1234341))))

(declare-fun b!4077572 () Bool)

(declare-fun tp!1234345 () Bool)

(assert (=> b!4077572 (= e!2530797 tp!1234345)))

(declare-fun b!4077573 () Bool)

(declare-fun tp!1234344 () Bool)

(declare-fun tp!1234342 () Bool)

(assert (=> b!4077573 (= e!2530797 (and tp!1234344 tp!1234342))))

(declare-fun b!4077570 () Bool)

(assert (=> b!4077570 (= e!2530797 tp_is_empty!20881)))

(assert (= (and b!4077199 ((_ is ElementMatch!11939) (regex!7034 (h!49067 rules!3870)))) b!4077570))

(assert (= (and b!4077199 ((_ is Concat!19204) (regex!7034 (h!49067 rules!3870)))) b!4077571))

(assert (= (and b!4077199 ((_ is Star!11939) (regex!7034 (h!49067 rules!3870)))) b!4077572))

(assert (= (and b!4077199 ((_ is Union!11939) (regex!7034 (h!49067 rules!3870)))) b!4077573))

(declare-fun b!4077574 () Bool)

(declare-fun e!2530798 () Bool)

(declare-fun tp!1234346 () Bool)

(assert (=> b!4077574 (= e!2530798 (and tp_is_empty!20881 tp!1234346))))

(assert (=> b!4077209 (= tp!1234258 e!2530798)))

(assert (= (and b!4077209 ((_ is Cons!43646) (t!337433 suffix!1518))) b!4077574))

(declare-fun b_lambda!119161 () Bool)

(assert (= b_lambda!119143 (or (and b!4077206 b_free!113681 (= (toValue!9602 (transformation!7034 (h!49067 rules!3870))) (toValue!9602 (transformation!7034 r!4213)))) (and b!4077194 b_free!113685) (and b!4077569 b_free!113693 (= (toValue!9602 (transformation!7034 (h!49067 (t!337434 rules!3870)))) (toValue!9602 (transformation!7034 r!4213)))) b_lambda!119161)))

(declare-fun b_lambda!119163 () Bool)

(assert (= b_lambda!119157 (or (and b!4077206 b_free!113683 (= (toChars!9461 (transformation!7034 (h!49067 rules!3870))) (toChars!9461 (transformation!7034 r!4213)))) (and b!4077194 b_free!113687) (and b!4077569 b_free!113695 (= (toChars!9461 (transformation!7034 (h!49067 (t!337434 rules!3870)))) (toChars!9461 (transformation!7034 r!4213)))) b_lambda!119163)))

(declare-fun b_lambda!119165 () Bool)

(assert (= b_lambda!119159 (or (and b!4077206 b_free!113681 (= (toValue!9602 (transformation!7034 (h!49067 rules!3870))) (toValue!9602 (transformation!7034 r!4213)))) (and b!4077194 b_free!113685) (and b!4077569 b_free!113693 (= (toValue!9602 (transformation!7034 (h!49067 (t!337434 rules!3870)))) (toValue!9602 (transformation!7034 r!4213)))) b_lambda!119165)))

(check-sat (not b!4077319) (not b_next!114389) (not b!4077407) (not b_next!114385) (not b!4077323) (not d!1211374) b_and!313537 (not b!4077531) (not b!4077392) (not b!4077345) (not b_lambda!119161) (not tb!244905) (not b!4077458) (not d!1211358) (not b!4077572) (not bm!288513) (not d!1211354) (not b!4077568) (not b!4077574) (not b!4077220) (not d!1211356) (not b!4077221) (not bm!288519) (not b!4077530) (not b!4077225) (not b!4077391) (not b_next!114397) (not d!1211330) (not d!1211370) (not d!1211398) (not b!4077386) (not b!4077463) b_and!313543 (not b!4077557) (not b_next!114399) (not b_next!114391) b_and!313539 (not d!1211388) (not b!4077556) (not b!4077567) (not b!4077558) (not tb!244889) b_and!313541 (not b!4077571) (not d!1211404) (not b!4077397) b_and!313545 (not b!4077464) b_and!313535 (not b_lambda!119165) (not b!4077543) (not b!4077324) tp_is_empty!20881 (not d!1211400) (not b!4077460) (not b!4077322) (not d!1211318) (not b!4077470) (not b!4077320) (not b!4077321) (not b_next!114387) (not d!1211384) (not b!4077537) (not d!1211322) (not b!4077457) (not b_lambda!119163) (not b!4077316) (not d!1211396) (not b!4077398) (not b!4077462) (not b!4077573) (not b!4077317) (not d!1211372) (not b!4077456) (not b!4077538) (not b!4077461) (not b!4077544) (not b!4077393))
(check-sat (not b_next!114397) (not b_next!114389) b_and!313541 b_and!313545 b_and!313535 (not b_next!114385) (not b_next!114387) b_and!313537 b_and!313543 (not b_next!114399) (not b_next!114391) b_and!313539)
