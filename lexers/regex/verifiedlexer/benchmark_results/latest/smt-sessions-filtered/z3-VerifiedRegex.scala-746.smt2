; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38274 () Bool)

(assert start!38274)

(declare-fun b!383810 () Bool)

(declare-fun b_free!11809 () Bool)

(declare-fun b_next!11809 () Bool)

(assert (=> b!383810 (= b_free!11809 (not b_next!11809))))

(declare-fun tp!118221 () Bool)

(declare-fun b_and!38581 () Bool)

(assert (=> b!383810 (= tp!118221 b_and!38581)))

(declare-fun b_free!11811 () Bool)

(declare-fun b_next!11811 () Bool)

(assert (=> b!383810 (= b_free!11811 (not b_next!11811))))

(declare-fun tp!118216 () Bool)

(declare-fun b_and!38583 () Bool)

(assert (=> b!383810 (= tp!118216 b_and!38583)))

(declare-fun b!383811 () Bool)

(declare-fun b_free!11813 () Bool)

(declare-fun b_next!11813 () Bool)

(assert (=> b!383811 (= b_free!11813 (not b_next!11813))))

(declare-fun tp!118225 () Bool)

(declare-fun b_and!38585 () Bool)

(assert (=> b!383811 (= tp!118225 b_and!38585)))

(declare-fun b_free!11815 () Bool)

(declare-fun b_next!11815 () Bool)

(assert (=> b!383811 (= b_free!11815 (not b_next!11815))))

(declare-fun tp!118220 () Bool)

(declare-fun b_and!38587 () Bool)

(assert (=> b!383811 (= tp!118220 b_and!38587)))

(declare-fun b!383770 () Bool)

(declare-fun b_free!11817 () Bool)

(declare-fun b_next!11817 () Bool)

(assert (=> b!383770 (= b_free!11817 (not b_next!11817))))

(declare-fun tp!118218 () Bool)

(declare-fun b_and!38589 () Bool)

(assert (=> b!383770 (= tp!118218 b_and!38589)))

(declare-fun b_free!11819 () Bool)

(declare-fun b_next!11819 () Bool)

(assert (=> b!383770 (= b_free!11819 (not b_next!11819))))

(declare-fun tp!118224 () Bool)

(declare-fun b_and!38591 () Bool)

(assert (=> b!383770 (= tp!118224 b_and!38591)))

(declare-fun bs!46720 () Bool)

(declare-fun b!383809 () Bool)

(declare-fun b!383790 () Bool)

(assert (= bs!46720 (and b!383809 b!383790)))

(declare-fun lambda!11918 () Int)

(declare-fun lambda!11917 () Int)

(assert (=> bs!46720 (not (= lambda!11918 lambda!11917))))

(declare-fun b!383822 () Bool)

(declare-fun e!236053 () Bool)

(assert (=> b!383822 (= e!236053 true)))

(declare-fun b!383821 () Bool)

(declare-fun e!236052 () Bool)

(assert (=> b!383821 (= e!236052 e!236053)))

(declare-fun b!383820 () Bool)

(declare-fun e!236051 () Bool)

(assert (=> b!383820 (= e!236051 e!236052)))

(assert (=> b!383809 e!236051))

(assert (= b!383821 b!383822))

(assert (= b!383820 b!383821))

(declare-datatypes ((List!4230 0))(
  ( (Nil!4220) (Cons!4220 (h!9617 (_ BitVec 16)) (t!58718 List!4230)) )
))
(declare-datatypes ((TokenValue!837 0))(
  ( (FloatLiteralValue!1674 (text!6304 List!4230)) (TokenValueExt!836 (__x!3161 Int)) (Broken!4185 (value!27517 List!4230)) (Object!846) (End!837) (Def!837) (Underscore!837) (Match!837) (Else!837) (Error!837) (Case!837) (If!837) (Extends!837) (Abstract!837) (Class!837) (Val!837) (DelimiterValue!1674 (del!897 List!4230)) (KeywordValue!843 (value!27518 List!4230)) (CommentValue!1674 (value!27519 List!4230)) (WhitespaceValue!1674 (value!27520 List!4230)) (IndentationValue!837 (value!27521 List!4230)) (String!5264) (Int32!837) (Broken!4186 (value!27522 List!4230)) (Boolean!838) (Unit!6845) (OperatorValue!840 (op!897 List!4230)) (IdentifierValue!1674 (value!27523 List!4230)) (IdentifierValue!1675 (value!27524 List!4230)) (WhitespaceValue!1675 (value!27525 List!4230)) (True!1674) (False!1674) (Broken!4187 (value!27526 List!4230)) (Broken!4188 (value!27527 List!4230)) (True!1675) (RightBrace!837) (RightBracket!837) (Colon!837) (Null!837) (Comma!837) (LeftBracket!837) (False!1675) (LeftBrace!837) (ImaginaryLiteralValue!837 (text!6305 List!4230)) (StringLiteralValue!2511 (value!27528 List!4230)) (EOFValue!837 (value!27529 List!4230)) (IdentValue!837 (value!27530 List!4230)) (DelimiterValue!1675 (value!27531 List!4230)) (DedentValue!837 (value!27532 List!4230)) (NewLineValue!837 (value!27533 List!4230)) (IntegerValue!2511 (value!27534 (_ BitVec 32)) (text!6306 List!4230)) (IntegerValue!2512 (value!27535 Int) (text!6307 List!4230)) (Times!837) (Or!837) (Equal!837) (Minus!837) (Broken!4189 (value!27536 List!4230)) (And!837) (Div!837) (LessEqual!837) (Mod!837) (Concat!1876) (Not!837) (Plus!837) (SpaceValue!837 (value!27537 List!4230)) (IntegerValue!2513 (value!27538 Int) (text!6308 List!4230)) (StringLiteralValue!2512 (text!6309 List!4230)) (FloatLiteralValue!1675 (text!6310 List!4230)) (BytesLiteralValue!837 (value!27539 List!4230)) (CommentValue!1675 (value!27540 List!4230)) (StringLiteralValue!2513 (value!27541 List!4230)) (ErrorTokenValue!837 (msg!898 List!4230)) )
))
(declare-datatypes ((C!3000 0))(
  ( (C!3001 (val!1386 Int)) )
))
(declare-datatypes ((List!4231 0))(
  ( (Nil!4221) (Cons!4221 (h!9618 C!3000) (t!58719 List!4231)) )
))
(declare-datatypes ((IArray!2905 0))(
  ( (IArray!2906 (innerList!1510 List!4231)) )
))
(declare-datatypes ((Conc!1452 0))(
  ( (Node!1452 (left!3530 Conc!1452) (right!3860 Conc!1452) (csize!3134 Int) (cheight!1663 Int)) (Leaf!2199 (xs!4071 IArray!2905) (csize!3135 Int)) (Empty!1452) )
))
(declare-datatypes ((BalanceConc!2912 0))(
  ( (BalanceConc!2913 (c!75635 Conc!1452)) )
))
(declare-datatypes ((String!5265 0))(
  ( (String!5266 (value!27542 String)) )
))
(declare-datatypes ((TokenValueInjection!1446 0))(
  ( (TokenValueInjection!1447 (toValue!1606 Int) (toChars!1465 Int)) )
))
(declare-datatypes ((Regex!1039 0))(
  ( (ElementMatch!1039 (c!75636 C!3000)) (Concat!1877 (regOne!2590 Regex!1039) (regTwo!2590 Regex!1039)) (EmptyExpr!1039) (Star!1039 (reg!1368 Regex!1039)) (EmptyLang!1039) (Union!1039 (regOne!2591 Regex!1039) (regTwo!2591 Regex!1039)) )
))
(declare-datatypes ((Rule!1430 0))(
  ( (Rule!1431 (regex!815 Regex!1039) (tag!1053 String!5265) (isSeparator!815 Bool) (transformation!815 TokenValueInjection!1446)) )
))
(declare-datatypes ((List!4232 0))(
  ( (Nil!4222) (Cons!4222 (h!9619 Rule!1430) (t!58720 List!4232)) )
))
(declare-fun rules!1920 () List!4232)

(get-info :version)

(assert (= (and b!383809 ((_ is Cons!4222) rules!1920)) b!383820))

(declare-fun order!3583 () Int)

(declare-fun order!3581 () Int)

(declare-fun dynLambda!2441 (Int Int) Int)

(declare-fun dynLambda!2442 (Int Int) Int)

(assert (=> b!383822 (< (dynLambda!2441 order!3581 (toValue!1606 (transformation!815 (h!9619 rules!1920)))) (dynLambda!2442 order!3583 lambda!11918))))

(declare-fun order!3585 () Int)

(declare-fun dynLambda!2443 (Int Int) Int)

(assert (=> b!383822 (< (dynLambda!2443 order!3585 (toChars!1465 (transformation!815 (h!9619 rules!1920)))) (dynLambda!2442 order!3583 lambda!11918))))

(assert (=> b!383809 true))

(declare-fun b!383765 () Bool)

(declare-fun res!171900 () Bool)

(declare-fun e!236040 () Bool)

(assert (=> b!383765 (=> (not res!171900) (not e!236040))))

(declare-datatypes ((LexerInterface!701 0))(
  ( (LexerInterfaceExt!698 (__x!3162 Int)) (Lexer!699) )
))
(declare-fun thiss!17480 () LexerInterface!701)

(declare-fun rulesInvariant!667 (LexerInterface!701 List!4232) Bool)

(assert (=> b!383765 (= res!171900 (rulesInvariant!667 thiss!17480 rules!1920))))

(declare-fun b!383766 () Bool)

(declare-fun res!171920 () Bool)

(declare-fun e!236035 () Bool)

(assert (=> b!383766 (=> res!171920 e!236035)))

(declare-fun lt!168240 () List!4231)

(declare-datatypes ((Token!1374 0))(
  ( (Token!1375 (value!27543 TokenValue!837) (rule!1468 Rule!1430) (size!3428 Int) (originalCharacters!858 List!4231)) )
))
(declare-datatypes ((List!4233 0))(
  ( (Nil!4223) (Cons!4223 (h!9620 Token!1374) (t!58721 List!4233)) )
))
(declare-datatypes ((IArray!2907 0))(
  ( (IArray!2908 (innerList!1511 List!4233)) )
))
(declare-datatypes ((Conc!1453 0))(
  ( (Node!1453 (left!3531 Conc!1453) (right!3861 Conc!1453) (csize!3136 Int) (cheight!1664 Int)) (Leaf!2200 (xs!4072 IArray!2907) (csize!3137 Int)) (Empty!1453) )
))
(declare-datatypes ((BalanceConc!2914 0))(
  ( (BalanceConc!2915 (c!75637 Conc!1453)) )
))
(declare-fun isEmpty!3060 (BalanceConc!2914) Bool)

(declare-datatypes ((tuple2!5006 0))(
  ( (tuple2!5007 (_1!2719 BalanceConc!2914) (_2!2719 BalanceConc!2912)) )
))
(declare-fun lex!493 (LexerInterface!701 List!4232 BalanceConc!2912) tuple2!5006)

(declare-fun seqFromList!995 (List!4231) BalanceConc!2912)

(assert (=> b!383766 (= res!171920 (isEmpty!3060 (_1!2719 (lex!493 thiss!17480 rules!1920 (seqFromList!995 lt!168240)))))))

(declare-fun b!383767 () Bool)

(declare-fun e!236018 () Bool)

(assert (=> b!383767 (= e!236018 true)))

(assert (=> b!383767 false))

(declare-fun lt!168273 () C!3000)

(declare-fun lt!168239 () Token!1374)

(declare-fun separatorToken!170 () Token!1374)

(declare-datatypes ((Unit!6846 0))(
  ( (Unit!6847) )
))
(declare-fun lt!168249 () Unit!6846)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!74 (LexerInterface!701 List!4232 List!4232 Rule!1430 Rule!1430 C!3000) Unit!6846)

(assert (=> b!383767 (= lt!168249 (lemmaSepRuleNotContainsCharContainedInANonSepRule!74 thiss!17480 rules!1920 rules!1920 (rule!1468 lt!168239) (rule!1468 separatorToken!170) lt!168273))))

(declare-fun b!383768 () Bool)

(declare-fun e!236019 () Bool)

(declare-fun tp!118213 () Bool)

(declare-fun e!236030 () Bool)

(declare-fun inv!5243 (String!5265) Bool)

(declare-fun inv!5246 (TokenValueInjection!1446) Bool)

(assert (=> b!383768 (= e!236030 (and tp!118213 (inv!5243 (tag!1053 (rule!1468 separatorToken!170))) (inv!5246 (transformation!815 (rule!1468 separatorToken!170))) e!236019))))

(declare-fun tp!118222 () Bool)

(declare-fun e!236025 () Bool)

(declare-fun b!383769 () Bool)

(declare-fun inv!21 (TokenValue!837) Bool)

(assert (=> b!383769 (= e!236025 (and (inv!21 (value!27543 separatorToken!170)) e!236030 tp!118222))))

(declare-fun e!236011 () Bool)

(assert (=> b!383770 (= e!236011 (and tp!118218 tp!118224))))

(declare-fun b!383771 () Bool)

(declare-fun e!236015 () Bool)

(assert (=> b!383771 (= e!236015 e!236035)))

(declare-fun res!171902 () Bool)

(assert (=> b!383771 (=> res!171902 e!236035)))

(declare-fun lt!168274 () List!4231)

(declare-fun lt!168276 () List!4231)

(assert (=> b!383771 (= res!171902 (or (not (= lt!168274 lt!168276)) (not (= lt!168276 lt!168240)) (not (= lt!168274 lt!168240))))))

(declare-fun tokens!465 () List!4233)

(declare-fun printList!375 (LexerInterface!701 List!4233) List!4231)

(assert (=> b!383771 (= lt!168276 (printList!375 thiss!17480 (Cons!4223 (h!9620 tokens!465) Nil!4223)))))

(declare-fun lt!168245 () BalanceConc!2912)

(declare-fun list!1835 (BalanceConc!2912) List!4231)

(assert (=> b!383771 (= lt!168274 (list!1835 lt!168245))))

(declare-fun lt!168241 () BalanceConc!2914)

(declare-fun printTailRec!387 (LexerInterface!701 BalanceConc!2914 Int BalanceConc!2912) BalanceConc!2912)

(assert (=> b!383771 (= lt!168245 (printTailRec!387 thiss!17480 lt!168241 0 (BalanceConc!2913 Empty!1452)))))

(declare-fun print!426 (LexerInterface!701 BalanceConc!2914) BalanceConc!2912)

(assert (=> b!383771 (= lt!168245 (print!426 thiss!17480 lt!168241))))

(declare-fun singletonSeq!361 (Token!1374) BalanceConc!2914)

(assert (=> b!383771 (= lt!168241 (singletonSeq!361 (h!9620 tokens!465)))))

(declare-fun b!383772 () Bool)

(declare-fun res!171904 () Bool)

(declare-fun e!236027 () Bool)

(assert (=> b!383772 (=> (not res!171904) (not e!236027))))

(declare-fun sepAndNonSepRulesDisjointChars!404 (List!4232 List!4232) Bool)

(assert (=> b!383772 (= res!171904 (sepAndNonSepRulesDisjointChars!404 rules!1920 rules!1920))))

(declare-fun res!171922 () Bool)

(assert (=> start!38274 (=> (not res!171922) (not e!236040))))

(assert (=> start!38274 (= res!171922 ((_ is Lexer!699) thiss!17480))))

(assert (=> start!38274 e!236040))

(assert (=> start!38274 true))

(declare-fun e!236026 () Bool)

(assert (=> start!38274 e!236026))

(declare-fun inv!5247 (Token!1374) Bool)

(assert (=> start!38274 (and (inv!5247 separatorToken!170) e!236025)))

(declare-fun e!236038 () Bool)

(assert (=> start!38274 e!236038))

(declare-fun b!383773 () Bool)

(declare-fun e!236023 () Bool)

(assert (=> b!383773 (= e!236023 e!236015)))

(declare-fun res!171911 () Bool)

(assert (=> b!383773 (=> res!171911 e!236015)))

(declare-fun e!236037 () Bool)

(assert (=> b!383773 (= res!171911 e!236037)))

(declare-fun res!171905 () Bool)

(assert (=> b!383773 (=> (not res!171905) (not e!236037))))

(declare-fun lt!168263 () Bool)

(assert (=> b!383773 (= res!171905 (not lt!168263))))

(declare-fun lt!168257 () List!4231)

(declare-fun lt!168267 () List!4231)

(assert (=> b!383773 (= lt!168263 (= lt!168257 lt!168267))))

(declare-fun b!383774 () Bool)

(assert (=> b!383774 (= e!236040 e!236027)))

(declare-fun res!171913 () Bool)

(assert (=> b!383774 (=> (not res!171913) (not e!236027))))

(declare-fun lt!168251 () BalanceConc!2914)

(declare-fun rulesProduceEachTokenIndividually!493 (LexerInterface!701 List!4232 BalanceConc!2914) Bool)

(assert (=> b!383774 (= res!171913 (rulesProduceEachTokenIndividually!493 thiss!17480 rules!1920 lt!168251))))

(declare-fun seqFromList!996 (List!4233) BalanceConc!2914)

(assert (=> b!383774 (= lt!168251 (seqFromList!996 tokens!465))))

(declare-fun b!383775 () Bool)

(declare-fun e!236039 () Bool)

(declare-datatypes ((tuple2!5008 0))(
  ( (tuple2!5009 (_1!2720 Token!1374) (_2!2720 List!4231)) )
))
(declare-datatypes ((Option!1027 0))(
  ( (None!1026) (Some!1026 (v!15193 tuple2!5008)) )
))
(declare-fun lt!168275 () Option!1027)

(declare-fun get!1494 (Option!1027) tuple2!5008)

(declare-fun head!1031 (List!4233) Token!1374)

(assert (=> b!383775 (= e!236039 (= (_1!2720 (get!1494 lt!168275)) (head!1031 tokens!465)))))

(declare-fun e!236013 () Bool)

(declare-fun e!236008 () Bool)

(declare-fun b!383776 () Bool)

(declare-fun tp!118214 () Bool)

(assert (=> b!383776 (= e!236008 (and tp!118214 (inv!5243 (tag!1053 (rule!1468 (h!9620 tokens!465)))) (inv!5246 (transformation!815 (rule!1468 (h!9620 tokens!465)))) e!236013))))

(declare-fun b!383777 () Bool)

(declare-fun res!171915 () Bool)

(declare-fun e!236029 () Bool)

(assert (=> b!383777 (=> (not res!171915) (not e!236029))))

(declare-fun lt!168238 () tuple2!5006)

(declare-fun apply!1008 (BalanceConc!2914 Int) Token!1374)

(assert (=> b!383777 (= res!171915 (= (apply!1008 (_1!2719 lt!168238) 0) lt!168239))))

(declare-fun b!383778 () Bool)

(declare-fun e!236044 () Unit!6846)

(declare-fun Unit!6848 () Unit!6846)

(assert (=> b!383778 (= e!236044 Unit!6848)))

(declare-fun b!383779 () Bool)

(declare-fun res!171908 () Bool)

(assert (=> b!383779 (=> (not res!171908) (not e!236027))))

(assert (=> b!383779 (= res!171908 (isSeparator!815 (rule!1468 separatorToken!170)))))

(declare-fun b!383780 () Bool)

(declare-fun res!171921 () Bool)

(assert (=> b!383780 (=> (not res!171921) (not e!236027))))

(assert (=> b!383780 (= res!171921 ((_ is Cons!4223) tokens!465))))

(declare-fun b!383781 () Bool)

(declare-fun e!236031 () Bool)

(declare-fun tp!118219 () Bool)

(assert (=> b!383781 (= e!236026 (and e!236031 tp!118219))))

(declare-fun b!383782 () Bool)

(declare-fun res!171892 () Bool)

(declare-fun e!236021 () Bool)

(assert (=> b!383782 (=> (not res!171892) (not e!236021))))

(declare-fun lt!168261 () List!4231)

(assert (=> b!383782 (= res!171892 (= (list!1835 (seqFromList!995 lt!168257)) lt!168261))))

(declare-fun b!383783 () Bool)

(declare-fun e!236024 () Bool)

(declare-fun e!236014 () Bool)

(assert (=> b!383783 (= e!236024 e!236014)))

(declare-fun res!171910 () Bool)

(assert (=> b!383783 (=> (not res!171910) (not e!236014))))

(declare-fun lt!168262 () Rule!1430)

(declare-fun lt!168277 () List!4231)

(declare-fun matchR!357 (Regex!1039 List!4231) Bool)

(assert (=> b!383783 (= res!171910 (matchR!357 (regex!815 lt!168262) lt!168277))))

(declare-datatypes ((Option!1028 0))(
  ( (None!1027) (Some!1027 (v!15194 Rule!1430)) )
))
(declare-fun lt!168270 () Option!1028)

(declare-fun get!1495 (Option!1028) Rule!1430)

(assert (=> b!383783 (= lt!168262 (get!1495 lt!168270))))

(declare-fun b!383784 () Bool)

(assert (=> b!383784 (= e!236014 (= (rule!1468 separatorToken!170) lt!168262))))

(declare-fun b!383785 () Bool)

(declare-fun e!236041 () Bool)

(assert (=> b!383785 (= e!236041 e!236018)))

(declare-fun res!171896 () Bool)

(assert (=> b!383785 (=> res!171896 e!236018)))

(declare-fun contains!887 (List!4231 C!3000) Bool)

(declare-fun usedCharacters!116 (Regex!1039) List!4231)

(assert (=> b!383785 (= res!171896 (not (contains!887 (usedCharacters!116 (regex!815 (rule!1468 separatorToken!170))) lt!168273)))))

(declare-fun lt!168254 () List!4231)

(declare-fun head!1032 (List!4231) C!3000)

(assert (=> b!383785 (= lt!168273 (head!1032 lt!168254))))

(declare-fun lt!168252 () Unit!6846)

(declare-fun e!236043 () Unit!6846)

(assert (=> b!383785 (= lt!168252 e!236043)))

(declare-fun c!75633 () Bool)

(declare-fun lt!168278 () C!3000)

(assert (=> b!383785 (= c!75633 (not (contains!887 (usedCharacters!116 (regex!815 (rule!1468 lt!168239))) lt!168278)))))

(declare-fun lt!168247 () List!4231)

(assert (=> b!383785 (= lt!168278 (head!1032 lt!168247))))

(declare-fun e!236033 () Bool)

(assert (=> b!383785 e!236033))

(declare-fun res!171893 () Bool)

(assert (=> b!383785 (=> (not res!171893) (not e!236033))))

(declare-fun lt!168269 () Option!1028)

(declare-fun isDefined!866 (Option!1028) Bool)

(assert (=> b!383785 (= res!171893 (isDefined!866 lt!168269))))

(declare-fun getRuleFromTag!174 (LexerInterface!701 List!4232 String!5265) Option!1028)

(assert (=> b!383785 (= lt!168269 (getRuleFromTag!174 thiss!17480 rules!1920 (tag!1053 (rule!1468 lt!168239))))))

(declare-fun lt!168253 () Unit!6846)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!174 (LexerInterface!701 List!4232 List!4231 Token!1374) Unit!6846)

(assert (=> b!383785 (= lt!168253 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!174 thiss!17480 rules!1920 lt!168247 lt!168239))))

(declare-fun charsOf!458 (Token!1374) BalanceConc!2912)

(assert (=> b!383785 (= lt!168247 (list!1835 (charsOf!458 lt!168239)))))

(declare-fun lt!168244 () Unit!6846)

(declare-fun forallContained!368 (List!4233 Int Token!1374) Unit!6846)

(assert (=> b!383785 (= lt!168244 (forallContained!368 tokens!465 lambda!11918 lt!168239))))

(assert (=> b!383785 e!236029))

(declare-fun res!171906 () Bool)

(assert (=> b!383785 (=> (not res!171906) (not e!236029))))

(declare-fun size!3429 (BalanceConc!2914) Int)

(assert (=> b!383785 (= res!171906 (= (size!3429 (_1!2719 lt!168238)) 1))))

(declare-fun lt!168260 () BalanceConc!2912)

(assert (=> b!383785 (= lt!168238 (lex!493 thiss!17480 rules!1920 lt!168260))))

(declare-fun lt!168271 () BalanceConc!2914)

(assert (=> b!383785 (= lt!168260 (printTailRec!387 thiss!17480 lt!168271 0 (BalanceConc!2913 Empty!1452)))))

(assert (=> b!383785 (= lt!168260 (print!426 thiss!17480 lt!168271))))

(assert (=> b!383785 (= lt!168271 (singletonSeq!361 lt!168239))))

(assert (=> b!383785 e!236024))

(declare-fun res!171912 () Bool)

(assert (=> b!383785 (=> (not res!171912) (not e!236024))))

(assert (=> b!383785 (= res!171912 (isDefined!866 lt!168270))))

(assert (=> b!383785 (= lt!168270 (getRuleFromTag!174 thiss!17480 rules!1920 (tag!1053 (rule!1468 separatorToken!170))))))

(declare-fun lt!168266 () Unit!6846)

(assert (=> b!383785 (= lt!168266 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!174 thiss!17480 rules!1920 lt!168277 separatorToken!170))))

(declare-fun e!236036 () Bool)

(assert (=> b!383785 e!236036))

(declare-fun res!171897 () Bool)

(assert (=> b!383785 (=> (not res!171897) (not e!236036))))

(declare-fun lt!168236 () tuple2!5006)

(assert (=> b!383785 (= res!171897 (= (size!3429 (_1!2719 lt!168236)) 1))))

(declare-fun lt!168259 () BalanceConc!2912)

(assert (=> b!383785 (= lt!168236 (lex!493 thiss!17480 rules!1920 lt!168259))))

(declare-fun lt!168280 () BalanceConc!2914)

(assert (=> b!383785 (= lt!168259 (printTailRec!387 thiss!17480 lt!168280 0 (BalanceConc!2913 Empty!1452)))))

(assert (=> b!383785 (= lt!168259 (print!426 thiss!17480 lt!168280))))

(assert (=> b!383785 (= lt!168280 (singletonSeq!361 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!450 (LexerInterface!701 List!4232 Token!1374) Bool)

(assert (=> b!383785 (rulesProduceIndividualToken!450 thiss!17480 rules!1920 lt!168239)))

(declare-fun lt!168237 () Unit!6846)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!164 (LexerInterface!701 List!4232 List!4233 Token!1374) Unit!6846)

(assert (=> b!383785 (= lt!168237 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!164 thiss!17480 rules!1920 tokens!465 lt!168239))))

(assert (=> b!383785 (= lt!168239 (head!1031 (t!58721 tokens!465)))))

(declare-fun lt!168248 () Unit!6846)

(assert (=> b!383785 (= lt!168248 e!236044)))

(declare-fun c!75634 () Bool)

(declare-fun isEmpty!3061 (List!4233) Bool)

(assert (=> b!383785 (= c!75634 (isEmpty!3061 (t!58721 tokens!465)))))

(declare-fun lt!168235 () Option!1027)

(declare-fun lt!168242 () List!4231)

(declare-fun maxPrefix!417 (LexerInterface!701 List!4232 List!4231) Option!1027)

(assert (=> b!383785 (= lt!168235 (maxPrefix!417 thiss!17480 rules!1920 lt!168242))))

(declare-fun lt!168256 () tuple2!5008)

(assert (=> b!383785 (= lt!168242 (_2!2720 lt!168256))))

(declare-fun lt!168250 () Unit!6846)

(declare-fun lemmaSamePrefixThenSameSuffix!260 (List!4231 List!4231 List!4231 List!4231 List!4231) Unit!6846)

(assert (=> b!383785 (= lt!168250 (lemmaSamePrefixThenSameSuffix!260 lt!168240 lt!168242 lt!168240 (_2!2720 lt!168256) lt!168257))))

(assert (=> b!383785 (= lt!168256 (get!1494 (maxPrefix!417 thiss!17480 rules!1920 lt!168257)))))

(declare-fun isPrefix!475 (List!4231 List!4231) Bool)

(assert (=> b!383785 (isPrefix!475 lt!168240 lt!168267)))

(declare-fun lt!168264 () Unit!6846)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!366 (List!4231 List!4231) Unit!6846)

(assert (=> b!383785 (= lt!168264 (lemmaConcatTwoListThenFirstIsPrefix!366 lt!168240 lt!168242))))

(declare-fun e!236017 () Bool)

(assert (=> b!383785 e!236017))

(declare-fun res!171901 () Bool)

(assert (=> b!383785 (=> res!171901 e!236017)))

(assert (=> b!383785 (= res!171901 (isEmpty!3061 tokens!465))))

(declare-fun lt!168255 () Unit!6846)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!222 (LexerInterface!701 List!4232 List!4233 Token!1374) Unit!6846)

(assert (=> b!383785 (= lt!168255 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!222 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!383786 () Bool)

(declare-fun e!236042 () Bool)

(declare-fun lt!168279 () Rule!1430)

(assert (=> b!383786 (= e!236042 (= (rule!1468 lt!168239) lt!168279))))

(declare-fun b!383787 () Bool)

(declare-fun res!171917 () Bool)

(assert (=> b!383787 (=> (not res!171917) (not e!236040))))

(declare-fun isEmpty!3062 (List!4232) Bool)

(assert (=> b!383787 (= res!171917 (not (isEmpty!3062 rules!1920)))))

(declare-fun b!383788 () Bool)

(declare-fun res!171918 () Bool)

(declare-fun e!236028 () Bool)

(assert (=> b!383788 (=> (not res!171918) (not e!236028))))

(declare-fun lt!168272 () tuple2!5008)

(declare-fun isEmpty!3063 (List!4231) Bool)

(assert (=> b!383788 (= res!171918 (isEmpty!3063 (_2!2720 lt!168272)))))

(declare-fun b!383789 () Bool)

(declare-fun res!171898 () Bool)

(assert (=> b!383789 (=> (not res!171898) (not e!236036))))

(assert (=> b!383789 (= res!171898 (= (apply!1008 (_1!2719 lt!168236) 0) separatorToken!170))))

(declare-fun res!171914 () Bool)

(assert (=> b!383790 (=> (not res!171914) (not e!236027))))

(declare-fun forall!1178 (List!4233 Int) Bool)

(assert (=> b!383790 (= res!171914 (forall!1178 tokens!465 lambda!11917))))

(declare-fun b!383791 () Bool)

(assert (=> b!383791 (= e!236028 (matchR!357 (regex!815 (rule!1468 (h!9620 tokens!465))) lt!168240))))

(declare-fun b!383792 () Bool)

(declare-fun res!171907 () Bool)

(assert (=> b!383792 (=> res!171907 e!236035)))

(assert (=> b!383792 (= res!171907 (not (rulesProduceIndividualToken!450 thiss!17480 rules!1920 (h!9620 tokens!465))))))

(declare-fun b!383793 () Bool)

(declare-fun Unit!6849 () Unit!6846)

(assert (=> b!383793 (= e!236043 Unit!6849)))

(declare-fun b!383794 () Bool)

(declare-fun res!171894 () Bool)

(assert (=> b!383794 (=> (not res!171894) (not e!236027))))

(assert (=> b!383794 (= res!171894 (rulesProduceIndividualToken!450 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!383795 () Bool)

(assert (=> b!383795 (= e!236033 e!236042)))

(declare-fun res!171903 () Bool)

(assert (=> b!383795 (=> (not res!171903) (not e!236042))))

(assert (=> b!383795 (= res!171903 (matchR!357 (regex!815 lt!168279) lt!168247))))

(assert (=> b!383795 (= lt!168279 (get!1495 lt!168269))))

(declare-fun b!383796 () Bool)

(declare-fun Unit!6850 () Unit!6846)

(assert (=> b!383796 (= e!236043 Unit!6850)))

(declare-fun lt!168258 () Unit!6846)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!94 (Regex!1039 List!4231 C!3000) Unit!6846)

(assert (=> b!383796 (= lt!168258 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!94 (regex!815 (rule!1468 lt!168239)) lt!168247 lt!168278))))

(declare-fun res!171924 () Bool)

(assert (=> b!383796 (= res!171924 (not (matchR!357 (regex!815 (rule!1468 lt!168239)) lt!168247)))))

(declare-fun e!236032 () Bool)

(assert (=> b!383796 (=> (not res!171924) (not e!236032))))

(assert (=> b!383796 e!236032))

(declare-fun b!383797 () Bool)

(declare-fun tp!118215 () Bool)

(declare-fun e!236022 () Bool)

(assert (=> b!383797 (= e!236022 (and (inv!21 (value!27543 (h!9620 tokens!465))) e!236008 tp!118215))))

(declare-fun b!383798 () Bool)

(declare-fun isEmpty!3064 (BalanceConc!2912) Bool)

(assert (=> b!383798 (= e!236029 (isEmpty!3064 (_2!2719 lt!168238)))))

(declare-fun b!383799 () Bool)

(declare-fun tp!118223 () Bool)

(assert (=> b!383799 (= e!236031 (and tp!118223 (inv!5243 (tag!1053 (h!9619 rules!1920))) (inv!5246 (transformation!815 (h!9619 rules!1920))) e!236011))))

(declare-fun b!383800 () Bool)

(assert (=> b!383800 (= e!236032 false)))

(declare-fun b!383801 () Bool)

(declare-fun ++!1192 (List!4231 List!4231) List!4231)

(assert (=> b!383801 (= e!236037 (not (= lt!168257 (++!1192 lt!168240 lt!168254))))))

(declare-fun b!383802 () Bool)

(declare-fun e!236010 () Bool)

(assert (=> b!383802 (= e!236010 e!236041)))

(declare-fun res!171909 () Bool)

(assert (=> b!383802 (=> res!171909 e!236041)))

(assert (=> b!383802 (= res!171909 (not lt!168263))))

(assert (=> b!383802 e!236028))

(declare-fun res!171899 () Bool)

(assert (=> b!383802 (=> (not res!171899) (not e!236028))))

(assert (=> b!383802 (= res!171899 (= (_1!2720 lt!168272) (h!9620 tokens!465)))))

(declare-fun lt!168268 () Option!1027)

(assert (=> b!383802 (= lt!168272 (get!1494 lt!168268))))

(declare-fun isDefined!867 (Option!1027) Bool)

(assert (=> b!383802 (isDefined!867 lt!168268)))

(assert (=> b!383802 (= lt!168268 (maxPrefix!417 thiss!17480 rules!1920 lt!168240))))

(declare-fun b!383803 () Bool)

(declare-fun Unit!6851 () Unit!6846)

(assert (=> b!383803 (= e!236044 Unit!6851)))

(assert (=> b!383803 false))

(declare-fun b!383804 () Bool)

(assert (=> b!383804 (= e!236027 e!236021)))

(declare-fun res!171923 () Bool)

(assert (=> b!383804 (=> (not res!171923) (not e!236021))))

(assert (=> b!383804 (= res!171923 (= lt!168257 lt!168261))))

(declare-fun printWithSeparatorTokenWhenNeededRec!374 (LexerInterface!701 List!4232 BalanceConc!2914 Token!1374 Int) BalanceConc!2912)

(assert (=> b!383804 (= lt!168261 (list!1835 (printWithSeparatorTokenWhenNeededRec!374 thiss!17480 rules!1920 lt!168251 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!382 (LexerInterface!701 List!4232 List!4233 Token!1374) List!4231)

(assert (=> b!383804 (= lt!168257 (printWithSeparatorTokenWhenNeededList!382 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!383805 () Bool)

(assert (=> b!383805 (= e!236017 e!236039)))

(declare-fun res!171916 () Bool)

(assert (=> b!383805 (=> (not res!171916) (not e!236039))))

(assert (=> b!383805 (= res!171916 (isDefined!867 lt!168275))))

(assert (=> b!383805 (= lt!168275 (maxPrefix!417 thiss!17480 rules!1920 lt!168257))))

(declare-fun b!383806 () Bool)

(assert (=> b!383806 (= e!236036 (isEmpty!3064 (_2!2719 lt!168236)))))

(declare-fun b!383807 () Bool)

(declare-fun tp!118217 () Bool)

(assert (=> b!383807 (= e!236038 (and (inv!5247 (h!9620 tokens!465)) e!236022 tp!118217))))

(declare-fun b!383808 () Bool)

(assert (=> b!383808 (= e!236021 (not e!236023))))

(declare-fun res!171919 () Bool)

(assert (=> b!383808 (=> res!171919 e!236023)))

(assert (=> b!383808 (= res!171919 (not (= lt!168254 (list!1835 (printWithSeparatorTokenWhenNeededRec!374 thiss!17480 rules!1920 (seqFromList!996 (t!58721 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!168243 () List!4231)

(assert (=> b!383808 (= lt!168243 lt!168267)))

(assert (=> b!383808 (= lt!168267 (++!1192 lt!168240 lt!168242))))

(assert (=> b!383808 (= lt!168243 (++!1192 (++!1192 lt!168240 lt!168277) lt!168254))))

(declare-fun lt!168246 () Unit!6846)

(declare-fun lemmaConcatAssociativity!538 (List!4231 List!4231 List!4231) Unit!6846)

(assert (=> b!383808 (= lt!168246 (lemmaConcatAssociativity!538 lt!168240 lt!168277 lt!168254))))

(assert (=> b!383808 (= lt!168240 (list!1835 (charsOf!458 (h!9620 tokens!465))))))

(assert (=> b!383808 (= lt!168242 (++!1192 lt!168277 lt!168254))))

(assert (=> b!383808 (= lt!168254 (printWithSeparatorTokenWhenNeededList!382 thiss!17480 rules!1920 (t!58721 tokens!465) separatorToken!170))))

(assert (=> b!383808 (= lt!168277 (list!1835 (charsOf!458 separatorToken!170)))))

(assert (=> b!383809 (= e!236035 e!236010)))

(declare-fun res!171895 () Bool)

(assert (=> b!383809 (=> res!171895 e!236010)))

(declare-datatypes ((tuple2!5010 0))(
  ( (tuple2!5011 (_1!2721 Token!1374) (_2!2721 BalanceConc!2912)) )
))
(declare-datatypes ((Option!1029 0))(
  ( (None!1028) (Some!1028 (v!15195 tuple2!5010)) )
))
(declare-fun isDefined!868 (Option!1029) Bool)

(declare-fun maxPrefixZipperSequence!380 (LexerInterface!701 List!4232 BalanceConc!2912) Option!1029)

(assert (=> b!383809 (= res!171895 (not (isDefined!868 (maxPrefixZipperSequence!380 thiss!17480 rules!1920 (seqFromList!995 (originalCharacters!858 (h!9620 tokens!465)))))))))

(declare-fun lt!168265 () Unit!6846)

(assert (=> b!383809 (= lt!168265 (forallContained!368 tokens!465 lambda!11918 (h!9620 tokens!465)))))

(assert (=> b!383809 (= lt!168240 (originalCharacters!858 (h!9620 tokens!465)))))

(assert (=> b!383810 (= e!236019 (and tp!118221 tp!118216))))

(assert (=> b!383811 (= e!236013 (and tp!118225 tp!118220))))

(assert (= (and start!38274 res!171922) b!383787))

(assert (= (and b!383787 res!171917) b!383765))

(assert (= (and b!383765 res!171900) b!383774))

(assert (= (and b!383774 res!171913) b!383794))

(assert (= (and b!383794 res!171894) b!383779))

(assert (= (and b!383779 res!171908) b!383790))

(assert (= (and b!383790 res!171914) b!383772))

(assert (= (and b!383772 res!171904) b!383780))

(assert (= (and b!383780 res!171921) b!383804))

(assert (= (and b!383804 res!171923) b!383782))

(assert (= (and b!383782 res!171892) b!383808))

(assert (= (and b!383808 (not res!171919)) b!383773))

(assert (= (and b!383773 res!171905) b!383801))

(assert (= (and b!383773 (not res!171911)) b!383771))

(assert (= (and b!383771 (not res!171902)) b!383792))

(assert (= (and b!383792 (not res!171907)) b!383766))

(assert (= (and b!383766 (not res!171920)) b!383809))

(assert (= (and b!383809 (not res!171895)) b!383802))

(assert (= (and b!383802 res!171899) b!383788))

(assert (= (and b!383788 res!171918) b!383791))

(assert (= (and b!383802 (not res!171909)) b!383785))

(assert (= (and b!383785 (not res!171901)) b!383805))

(assert (= (and b!383805 res!171916) b!383775))

(assert (= (and b!383785 c!75634) b!383803))

(assert (= (and b!383785 (not c!75634)) b!383778))

(assert (= (and b!383785 res!171897) b!383789))

(assert (= (and b!383789 res!171898) b!383806))

(assert (= (and b!383785 res!171912) b!383783))

(assert (= (and b!383783 res!171910) b!383784))

(assert (= (and b!383785 res!171906) b!383777))

(assert (= (and b!383777 res!171915) b!383798))

(assert (= (and b!383785 res!171893) b!383795))

(assert (= (and b!383795 res!171903) b!383786))

(assert (= (and b!383785 c!75633) b!383796))

(assert (= (and b!383785 (not c!75633)) b!383793))

(assert (= (and b!383796 res!171924) b!383800))

(assert (= (and b!383785 (not res!171896)) b!383767))

(assert (= b!383799 b!383770))

(assert (= b!383781 b!383799))

(assert (= (and start!38274 ((_ is Cons!4222) rules!1920)) b!383781))

(assert (= b!383768 b!383810))

(assert (= b!383769 b!383768))

(assert (= start!38274 b!383769))

(assert (= b!383776 b!383811))

(assert (= b!383797 b!383776))

(assert (= b!383807 b!383797))

(assert (= (and start!38274 ((_ is Cons!4223) tokens!465)) b!383807))

(declare-fun m!574361 () Bool)

(assert (=> b!383787 m!574361))

(declare-fun m!574363 () Bool)

(assert (=> b!383768 m!574363))

(declare-fun m!574365 () Bool)

(assert (=> b!383768 m!574365))

(declare-fun m!574367 () Bool)

(assert (=> start!38274 m!574367))

(declare-fun m!574369 () Bool)

(assert (=> b!383798 m!574369))

(declare-fun m!574371 () Bool)

(assert (=> b!383769 m!574371))

(declare-fun m!574373 () Bool)

(assert (=> b!383783 m!574373))

(declare-fun m!574375 () Bool)

(assert (=> b!383783 m!574375))

(declare-fun m!574377 () Bool)

(assert (=> b!383785 m!574377))

(declare-fun m!574379 () Bool)

(assert (=> b!383785 m!574379))

(declare-fun m!574381 () Bool)

(assert (=> b!383785 m!574381))

(declare-fun m!574383 () Bool)

(assert (=> b!383785 m!574383))

(declare-fun m!574385 () Bool)

(assert (=> b!383785 m!574385))

(declare-fun m!574387 () Bool)

(assert (=> b!383785 m!574387))

(declare-fun m!574389 () Bool)

(assert (=> b!383785 m!574389))

(declare-fun m!574391 () Bool)

(assert (=> b!383785 m!574391))

(declare-fun m!574393 () Bool)

(assert (=> b!383785 m!574393))

(declare-fun m!574395 () Bool)

(assert (=> b!383785 m!574395))

(declare-fun m!574397 () Bool)

(assert (=> b!383785 m!574397))

(declare-fun m!574399 () Bool)

(assert (=> b!383785 m!574399))

(declare-fun m!574401 () Bool)

(assert (=> b!383785 m!574401))

(declare-fun m!574403 () Bool)

(assert (=> b!383785 m!574403))

(declare-fun m!574405 () Bool)

(assert (=> b!383785 m!574405))

(declare-fun m!574407 () Bool)

(assert (=> b!383785 m!574407))

(declare-fun m!574409 () Bool)

(assert (=> b!383785 m!574409))

(declare-fun m!574411 () Bool)

(assert (=> b!383785 m!574411))

(declare-fun m!574413 () Bool)

(assert (=> b!383785 m!574413))

(declare-fun m!574415 () Bool)

(assert (=> b!383785 m!574415))

(declare-fun m!574417 () Bool)

(assert (=> b!383785 m!574417))

(declare-fun m!574419 () Bool)

(assert (=> b!383785 m!574419))

(assert (=> b!383785 m!574415))

(declare-fun m!574421 () Bool)

(assert (=> b!383785 m!574421))

(declare-fun m!574423 () Bool)

(assert (=> b!383785 m!574423))

(declare-fun m!574425 () Bool)

(assert (=> b!383785 m!574425))

(declare-fun m!574427 () Bool)

(assert (=> b!383785 m!574427))

(declare-fun m!574429 () Bool)

(assert (=> b!383785 m!574429))

(assert (=> b!383785 m!574383))

(declare-fun m!574431 () Bool)

(assert (=> b!383785 m!574431))

(declare-fun m!574433 () Bool)

(assert (=> b!383785 m!574433))

(assert (=> b!383785 m!574421))

(declare-fun m!574435 () Bool)

(assert (=> b!383785 m!574435))

(declare-fun m!574437 () Bool)

(assert (=> b!383785 m!574437))

(declare-fun m!574439 () Bool)

(assert (=> b!383785 m!574439))

(assert (=> b!383785 m!574409))

(declare-fun m!574441 () Bool)

(assert (=> b!383785 m!574441))

(declare-fun m!574443 () Bool)

(assert (=> b!383785 m!574443))

(declare-fun m!574445 () Bool)

(assert (=> b!383785 m!574445))

(declare-fun m!574447 () Bool)

(assert (=> b!383785 m!574447))

(declare-fun m!574449 () Bool)

(assert (=> b!383785 m!574449))

(declare-fun m!574451 () Bool)

(assert (=> b!383772 m!574451))

(declare-fun m!574453 () Bool)

(assert (=> b!383792 m!574453))

(declare-fun m!574455 () Bool)

(assert (=> b!383806 m!574455))

(declare-fun m!574457 () Bool)

(assert (=> b!383791 m!574457))

(declare-fun m!574459 () Bool)

(assert (=> b!383767 m!574459))

(declare-fun m!574461 () Bool)

(assert (=> b!383801 m!574461))

(declare-fun m!574463 () Bool)

(assert (=> b!383790 m!574463))

(declare-fun m!574465 () Bool)

(assert (=> b!383774 m!574465))

(declare-fun m!574467 () Bool)

(assert (=> b!383774 m!574467))

(declare-fun m!574469 () Bool)

(assert (=> b!383788 m!574469))

(declare-fun m!574471 () Bool)

(assert (=> b!383794 m!574471))

(declare-fun m!574473 () Bool)

(assert (=> b!383766 m!574473))

(assert (=> b!383766 m!574473))

(declare-fun m!574475 () Bool)

(assert (=> b!383766 m!574475))

(declare-fun m!574477 () Bool)

(assert (=> b!383766 m!574477))

(declare-fun m!574479 () Bool)

(assert (=> b!383799 m!574479))

(declare-fun m!574481 () Bool)

(assert (=> b!383799 m!574481))

(declare-fun m!574483 () Bool)

(assert (=> b!383776 m!574483))

(declare-fun m!574485 () Bool)

(assert (=> b!383776 m!574485))

(declare-fun m!574487 () Bool)

(assert (=> b!383789 m!574487))

(declare-fun m!574489 () Bool)

(assert (=> b!383797 m!574489))

(declare-fun m!574491 () Bool)

(assert (=> b!383807 m!574491))

(declare-fun m!574493 () Bool)

(assert (=> b!383808 m!574493))

(declare-fun m!574495 () Bool)

(assert (=> b!383808 m!574495))

(declare-fun m!574497 () Bool)

(assert (=> b!383808 m!574497))

(declare-fun m!574499 () Bool)

(assert (=> b!383808 m!574499))

(declare-fun m!574501 () Bool)

(assert (=> b!383808 m!574501))

(declare-fun m!574503 () Bool)

(assert (=> b!383808 m!574503))

(declare-fun m!574505 () Bool)

(assert (=> b!383808 m!574505))

(declare-fun m!574507 () Bool)

(assert (=> b!383808 m!574507))

(assert (=> b!383808 m!574499))

(assert (=> b!383808 m!574493))

(declare-fun m!574509 () Bool)

(assert (=> b!383808 m!574509))

(assert (=> b!383808 m!574505))

(declare-fun m!574511 () Bool)

(assert (=> b!383808 m!574511))

(declare-fun m!574513 () Bool)

(assert (=> b!383808 m!574513))

(assert (=> b!383808 m!574511))

(declare-fun m!574515 () Bool)

(assert (=> b!383808 m!574515))

(assert (=> b!383808 m!574509))

(declare-fun m!574517 () Bool)

(assert (=> b!383808 m!574517))

(declare-fun m!574519 () Bool)

(assert (=> b!383805 m!574519))

(assert (=> b!383805 m!574421))

(declare-fun m!574521 () Bool)

(assert (=> b!383765 m!574521))

(declare-fun m!574523 () Bool)

(assert (=> b!383771 m!574523))

(declare-fun m!574525 () Bool)

(assert (=> b!383771 m!574525))

(declare-fun m!574527 () Bool)

(assert (=> b!383771 m!574527))

(declare-fun m!574529 () Bool)

(assert (=> b!383771 m!574529))

(declare-fun m!574531 () Bool)

(assert (=> b!383771 m!574531))

(declare-fun m!574533 () Bool)

(assert (=> b!383795 m!574533))

(declare-fun m!574535 () Bool)

(assert (=> b!383795 m!574535))

(declare-fun m!574537 () Bool)

(assert (=> b!383796 m!574537))

(declare-fun m!574539 () Bool)

(assert (=> b!383796 m!574539))

(declare-fun m!574541 () Bool)

(assert (=> b!383782 m!574541))

(assert (=> b!383782 m!574541))

(declare-fun m!574543 () Bool)

(assert (=> b!383782 m!574543))

(declare-fun m!574545 () Bool)

(assert (=> b!383809 m!574545))

(assert (=> b!383809 m!574545))

(declare-fun m!574547 () Bool)

(assert (=> b!383809 m!574547))

(assert (=> b!383809 m!574547))

(declare-fun m!574549 () Bool)

(assert (=> b!383809 m!574549))

(declare-fun m!574551 () Bool)

(assert (=> b!383809 m!574551))

(declare-fun m!574553 () Bool)

(assert (=> b!383775 m!574553))

(declare-fun m!574555 () Bool)

(assert (=> b!383775 m!574555))

(declare-fun m!574557 () Bool)

(assert (=> b!383804 m!574557))

(assert (=> b!383804 m!574557))

(declare-fun m!574559 () Bool)

(assert (=> b!383804 m!574559))

(declare-fun m!574561 () Bool)

(assert (=> b!383804 m!574561))

(declare-fun m!574563 () Bool)

(assert (=> b!383777 m!574563))

(declare-fun m!574565 () Bool)

(assert (=> b!383802 m!574565))

(declare-fun m!574567 () Bool)

(assert (=> b!383802 m!574567))

(declare-fun m!574569 () Bool)

(assert (=> b!383802 m!574569))

(check-sat (not b!383790) (not b!383765) b_and!38587 (not b!383808) (not b!383777) (not b!383775) (not b!383795) (not b!383794) (not b!383797) (not b!383789) (not b!383772) (not b_next!11815) (not b!383809) b_and!38591 (not b!383785) (not b!383806) (not b!383776) (not start!38274) (not b_next!11809) b_and!38583 (not b!383820) (not b!383799) (not b!383801) (not b!383796) (not b_next!11819) (not b!383807) (not b!383802) (not b!383768) (not b!383766) (not b!383769) (not b!383783) (not b!383788) (not b!383798) (not b!383792) (not b!383805) (not b!383791) (not b!383782) (not b!383804) (not b!383767) (not b!383787) (not b_next!11811) b_and!38589 (not b_next!11813) (not b_next!11817) b_and!38581 b_and!38585 (not b!383771) (not b!383774) (not b!383781))
(check-sat (not b_next!11815) b_and!38591 b_and!38587 (not b_next!11819) (not b_next!11811) b_and!38585 (not b_next!11809) b_and!38583 b_and!38589 (not b_next!11813) (not b_next!11817) b_and!38581)
